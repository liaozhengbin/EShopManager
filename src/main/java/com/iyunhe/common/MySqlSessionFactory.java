package com.iyunhe.common;

import java.io.InputStream;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MySqlSessionFactory {
	private static MySqlSessionFactory instance = new MySqlSessionFactory();
	private InputStream input = MySqlSessionFactory.class.getResourceAsStream("/SQLMapperConfig.xml");
	private SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(input);
	private MySqlSessionFactory(){}
	
	public static MySqlSessionFactory getInstance(){
		return instance;
	}
	public SqlSessionFactory getFactory(){
		return factory;
	}
}
