package com.iyunhe.common;

import org.junit.Test;

import com.iyunhe.mapper.TbUserMapper;

public class DaoProxyTest {
	@Test
	public void test1() {
		TbUserMapper userMapper = DaoProxy.getInstance(TbUserMapper.class);
		System.out.println(userMapper);
	}
}

