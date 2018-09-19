package com.iyunhe.util;
import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

//import org.apache.log4j.Logger;

/**
 * @author Administrator
 * 数据库反射技术解析数据库的结果集
 * 将List<Map<String,Object>>数据解析成List<T>
 */
public class ORMUtil {

//	private static Logger logger = Logger.getLogger(ORMUtil.class);
	public static <T> List<T> setToList(List<Map<String,Object>> sourceList, Class<T> clazz) {
		List<T> list = new ArrayList<T>();
		if (sourceList.size()>0) {
			for (Map<String,Object> map  : sourceList) {
				list.add(getJavaBeans(map, clazz));
			}	
		}
		return list;
	}
	
	/**
	 * get a object from a map by ORM style
	 * @param meta	 a data source: map 
	 * @param objs	 a object type
	 * @return a 	object from map
	 */
	public static <T> T getJavaBeans(Map<String,Object> map, Class<T> clazz){
		T obj = null;
		try {
			obj = clazz.newInstance();
			// get javabean information
			BeanInfo beanInfo = Introspector.getBeanInfo(clazz);
			// get javabean's properties 
			PropertyDescriptor[] proDescrtptors = beanInfo.getPropertyDescriptors();
			// search for each property
			if (proDescrtptors != null && proDescrtptors.length > 0) {
			    for (PropertyDescriptor propDesc : proDescrtptors) {
			    	Object value = map.get(propDesc.getName());
			        // finding and writing
			        if (value!=null) {
			            Method methodSet = propDesc.getWriteMethod();
			            //do writer
			            try {
							methodSet.invoke(obj, value);
						} catch (InvocationTargetException e) {
							try {
								methodSet.invoke(obj, commonTypeParse(methodSet.getReturnType(), value));
							} catch (InvocationTargetException e1) {
//								logger.error(e1);
							}
						}  
			        }
			    }
			}
		} catch (InstantiationException e) {
//			logger.error(e);
		} catch (IllegalAccessException e) {
//			logger.error(e);
		} catch (IllegalArgumentException e) {
//			logger.error(e);
		} catch (IntrospectionException e) {
//			logger.error(e);
		}
		return obj;
	}
	
	public static <T> T getJavaBeans(Class<T> clazz,HttpServletRequest request){
		Map<String,Object> map = getParameters(request);
		return getJavaBeans(map, clazz);
	}

	/**
	 * 填充ResultSet数据到List<Map<String,Object>>集合中
	 * @param connection 数据库连接对象
	 * @param set 要解析的ResultSet
	 * @return List集合
	 */
	public static List<Map<String,Object>> setToList(ResultSet set){
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try {
			//得到ResultSet结构信息
			ResultSetMetaData meta=set.getMetaData();
			Map<String, Object> map= null;
			while (set.next()) {
				map= new HashMap<String, Object>();
				//得到一行数据
				for (int i = 1; i <= meta.getColumnCount(); i++) {
					map.put(meta.getColumnLabel(i).toLowerCase(),set.getObject(i));
				}
				//将这行记录添加进集合中
				list.add(map);
			}
		} catch (SQLException e) {
//			logger.error(e);
			//e.printStackTrace();
		}
		return list;
	}

	/**
	 * get all parameters from request and filled to Map<String,String>
	 * @param request
	 * @return the Map<String,String[]>  from request
	 */
	public static Map<String,Object> getParameters(HttpServletRequest request){
		Map<String,Object> map = new HashMap<String,Object>(); 
		if (request!=null) {
			Enumeration<String> paramNames = request.getParameterNames();  
			while (paramNames.hasMoreElements()) {  
				String paramName = paramNames.nextElement();
				String[] paramValues = request.getParameterValues(paramName);  
				if (paramValues!=null) {  
					if (paramValues.length > 1) {
						map.put(paramName, paramValues);
			        }else{
			        	if (!paramValues[0].trim().isEmpty()) {
							map.put(paramName, paramValues[0]);
						}
			        }
		        }
			}  
		}
		return map;
	}
	
	/**
	 * SQL or Java Type parse to Java Type 
	 * parse a type to another type which is can be to parse
	 * @param type the target type that parse to
	 * @param value the source type to be parse to the target type 
	 * @return the target type value
	 */
	public static Object commonTypeParse(Class<?> type,Object value){
		Object obj = value;
		if (value !=null) {
			try {
				//type of String
				if (String.class.equals(type)) {
					//time to String
					if (java.util.Date.class.isAssignableFrom(value.getClass())) {
						obj = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
								.format(value);
					}else{// the others to String 
						obj = String.valueOf(value);
					}
					//type of Number
				} else if (Number.class.isAssignableFrom(type)) {
					if (int.class.equals(type)) {
						obj = Integer.parseInt(String.valueOf(value));
					} else if (Integer.class.equals(type)) {
						obj = Integer.valueOf(String.valueOf(value));
					}else if (double.class.equals(type)) {
						obj = Double.parseDouble(String.valueOf(value));
					} else if (Double.class.equals(type)) {
						obj = Double.valueOf(String.valueOf(value));
					} else if (float.class.equals(type)) {
						obj = Float.parseFloat(String.valueOf(value));
					} else if (Float.class.equals(type)) {
						obj = Float.valueOf(String.valueOf(value));
					} else if (short.class.equals(type)) {
						obj = Short.parseShort(String.valueOf(value));
					} else if (Short.class.equals(type)) {
						obj = Short.valueOf(String.valueOf(value));
					} else if (Byte.class.equals(type)) {
						obj = Byte.valueOf(String.valueOf(value));
					}else {
						obj = Byte.parseByte(String.valueOf(value));
					}
				} else if (java.util.Date.class.isAssignableFrom(type)) {
					if (type.isAssignableFrom(java.util.Date.class)) {
						SimpleDateFormat strTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						obj = strTime.parse(strTime.format(value));
					}
				} else if (char.class.isAssignableFrom(type)) {
					obj = String.valueOf(value).charAt(0);
				} else if (Character.class.isAssignableFrom(type)) {
					obj = String.valueOf(value).charAt(0);
				}else{
					obj = value;
				}
			} catch (NumberFormatException e) {
//				logger.error(e);
			} catch (ParseException e) {
//				logger.error(e);
			}
		}
		return obj;
	}
	
}
