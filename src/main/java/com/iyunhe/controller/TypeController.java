package com.iyunhe.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.iyunhe.pojo.TbType;
import com.iyunhe.serivce.TbTypeBiz;
import com.iyunhe.serivce.impl.TbTypeBizImpl;

@Controller
@RequestMapping("/type")
public class TypeController {

	private TbTypeBiz tbtypebiz=new TbTypeBizImpl();
	
	
	//查询所有的分类
	@RequestMapping("/selectAllType")
	public ModelAndView selectAllType(HttpServletRequest request) throws Exception{
		ModelAndView model=new ModelAndView();
		
//		List<TbType> typeList=tbtypebiz.selectAllType();
//		model.addObject("typeList", typeList);
		model.setViewName("type_manager.jsp");
		
		
		return model;
	}
	
	//查询所有的二级分类
	@RequestMapping("/selectAllTypeSon")
	public @ResponseBody List<TbType> selectAllTypeSon(@RequestParam(value="typeId") int typeId) throws Exception{
		
		List<TbType> typeListSon=tbtypebiz.selectAllTypeSon(typeId);
		
		
		return typeListSon;
	}
			
	//删除指定分类
	@RequestMapping("/deleteType/{type_id}")
	public @ResponseBody int deleteType(@PathVariable("type_id") int type_id) throws Exception{
		
		int num=tbtypebiz.deleteType(type_id);
		
		return num;
		
	}
	
	
	
}
	
