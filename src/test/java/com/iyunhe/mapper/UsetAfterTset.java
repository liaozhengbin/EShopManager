package com.iyunhe.mapper;

import java.util.List;

import org.junit.Test;

import com.iyunhe.pojo.TbUserAfter;
import com.iyunhe.serivce.UserAfterBiz;
import com.iyunhe.serivce.impl.UserAfterBizImpl;

public class UsetAfterTset {
	
	@Test
	public void aaa(){
		
		UserAfterBiz userAfterBizImpl=new UserAfterBizImpl();
		List<TbUserAfter> userList=userAfterBizImpl.selectUserAfter();
		for (TbUserAfter tbUserAfter : userList) {
			
			System.out.println(tbUserAfter);
		}
		
	}
	
}
