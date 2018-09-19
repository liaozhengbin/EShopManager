package com.iyunhe.service;

import org.junit.Test;

import com.iyunhe.serivce.TbUserBiz;
import com.iyunhe.serivce.impl.TbUserBizImpl;

public class TbUserBizTest {
//	@Test
//	public void totalCountTest() {
//		TbUserBiz userbiz = new TbUserBizImpl();
//		System.out.println(userbiz.totalCount());
//	}
	@Test
	public void totalCountIsOnlineTest() {
		TbUserBiz userbiz = new TbUserBizImpl();
		System.out.println(userbiz.totalCountIsOnline());
	}
}

