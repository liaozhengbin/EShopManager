package com.iyunhe.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.iyunhe.pojo.SalesInfo;
import com.iyunhe.serivce.TbSalesBiz;
import com.iyunhe.serivce.impl.TbSalesBizImpl;

@Controller
@RequestMapping("sales")
public class SalesController {

	private TbSalesBiz tbsalesbiz=new TbSalesBizImpl();
	
	
	//查询所有促销公告板
	@RequestMapping("/selectAllSales")
	public ModelAndView selectAllSales(){
		ModelAndView model=new ModelAndView();
		
		List<SalesInfo> salesList= tbsalesbiz.selectAllSales();
		model.addObject("salesList", salesList);
		model.setViewName("salesmanager.jsp");
		
		return model;
	}
	
	//删除公告板单条记录
	@RequestMapping("/deletesales/{book_id}")
	public @ResponseBody int deletesales(@PathVariable("book_id") int book_id){
	
		int num=tbsalesbiz.deletesales(book_id);
		return num;
		
	}
	
	//添加公告板单条记录
	@RequestMapping("/insertsales/{news_contents}/{book_id}")
	public @ResponseBody int insertsales(@PathVariable("news_contents") String sales_name,
										@PathVariable("book_id") int book_id){
		int addnum=tbsalesbiz.insertsales(sales_name, book_id);
		return addnum;
	}
 	
	
	//修改公告板公告内容
	@RequestMapping("/updatesales/{salesname}/{book_id}")
	public @ResponseBody int update(@PathVariable("salesname") String salesname,
						@PathVariable("book_id") int book_id){
		System.out.println("-------------------------------------------------");
		System.out.println("salesname is"+salesname+", book_id id "+book_id);
		int updatenum=tbsalesbiz.updatesalesname(salesname, book_id);
		return updatenum;
		
	}
	
}
