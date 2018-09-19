package com.iyunhe.common;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
public class DaoProxy {
	private static SqlSessionFactory factory = MySqlSessionFactory.getInstance().getFactory();
	
	public static <T> T getInstance(Class<T> clazz){
		@SuppressWarnings("unchecked")
		T obj = (T) Proxy.newProxyInstance(clazz.getClassLoader(), new Class[]{clazz}, new MyInvocationHandler<T>(clazz));
		return obj;
	}
	
	private static class MyInvocationHandler<T> implements InvocationHandler{

		private Class<T> clazz = null;
		public MyInvocationHandler(Class<T> clazz) {
			this.clazz = clazz;
		}
		
		public Object invoke(Object proxy, Method method, Object[] args)
				throws Throwable {
			SqlSession session = factory.openSession();
			Object obj = session.getMapper(clazz);
			Object result =  method.invoke(obj, args);
			session.commit();
			session.close();
			return result;
		}
		
	}
}
