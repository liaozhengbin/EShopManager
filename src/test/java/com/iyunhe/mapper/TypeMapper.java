package com.iyunhe.mapper;

import java.util.List;

import org.junit.Test;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.pojo.TbBook;
import com.iyunhe.pojo.TbType;

public class TypeMapper {

	@Test
	
	public void aaa(){
		
//		TbTypeMapper tbmapper=DaoProxy.getInstance(TbTypeMapper.class);
//		
//		List<TbType> typeList=tbmapper.selectAllType();
//		for (TbType tbType : typeList) {
//			System.out.println("tbType is "+tbType);
//		}
		
		TbBookMapper tbmapper=DaoProxy.getInstance(TbBookMapper.class);
		
	}
}

