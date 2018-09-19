package com.iyunhe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iyunhe.serivce.TbOrderBiz;
import com.iyunhe.serivce.TbUserBiz;
import com.iyunhe.serivce.impl.TbOrderBizImpl;
import com.iyunhe.serivce.impl.TbUserBizImpl;

@Controller
public class IndexController {

	private TbUserBiz userbiz = new TbUserBizImpl();
	private TbOrderBiz orderbiz = new TbOrderBizImpl();
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request,HttpServletResponse response) throws Exception{
		ModelAndView model = new ModelAndView();
		//总人数
		model.addObject("totalCountUser", userbiz.totalCount());
		//在线总人数
		model.addObject("totalCountUserIsOnline", userbiz.totalCountIsOnline());
		//营业额
		model.addObject("totalOrderPrice", orderbiz.sumOrderPrice());
		//待发货订单
		model.addObject("totalCountStatusIsPay", orderbiz.countStatusIsPay());
		//待付款订单
		model.addObject("totalCountStatusNoPay", orderbiz.countStatusNoPay());
		//已完成订单
		model.addObject("totalCountStatusIsReceive", orderbiz.countStatusIsReceive());
		//已取消订单
		model.addObject("totalCountStatusIsCancel", orderbiz.countStatusIsCancel());
		//PV
		
		//用户统计
		model.addObject("userlist", userbiz.selectForIndexPage());
		model.setViewName("index.jsp");
		return model;
	}
}
