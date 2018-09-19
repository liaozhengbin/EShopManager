package com.iyunhe.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class MyHandlerException implements HandlerExceptionResolver {

	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exception) {
		//exception对象就是捕获到的异常对象（可以将该异常信息写入log4j日志）
		StringBuffer sb=new StringBuffer();
		//异常类型、异常描述
		sb.append(exception.getClass()+"：");
		sb.append(exception.getMessage());
		sb.append("\n");
		//运行栈列表信息
		StackTraceElement[] stackArray =exception.getStackTrace();
		for(StackTraceElement element:stackArray){
			sb.append(element.toString());
			sb.append("\n");
		}
		System.err.println(sb);
		ModelAndView modelAndView = new ModelAndView();
		//指向错误页面
		modelAndView.setViewName("forward:/500.jsp");
		return modelAndView;
	}

}
