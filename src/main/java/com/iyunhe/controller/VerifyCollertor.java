package com.iyunhe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.iyunhe.util.VerifyCodeUtil;

@Controller("/verify")
public class VerifyCollertor {
	
	@RequestMapping("/verifycode")
	public void getVerifyCode(HttpServletRequest req, HttpServletResponse response)
			throws ServletException, IOException {
		
		//设置为浏览器不保存验证码
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		
		String vcode=VerifyCodeUtil.generateVerifyCode(4);
		req.getSession().setAttribute("vcode", vcode);
		ServletOutputStream out = response.getOutputStream();
		VerifyCodeUtil.outputImageStream(180, 50, out, vcode);
		out.close();
	}
	

	@RequestMapping("/checkverifycode")
	public void verifycode(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String j_captcha=request.getParameter("authCode");
		String vcode = (String) request.getSession().getAttribute("vcode");
		if (vcode!=null&&vcode.equalsIgnoreCase(j_captcha)) {//验证码验证失败status=500
			response.getWriter().write("{\"status\":200}");
		}else{
			response.getWriter().write("{\"status\":500}");
		}
	}

}
