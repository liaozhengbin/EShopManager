package com.iyunhe.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.iyunhe.common.FileUpload;
import com.iyunhe.common.PageUtil;
import com.iyunhe.pojo.Areas;
import com.iyunhe.pojo.Cities;
import com.iyunhe.pojo.TbUser;
import com.iyunhe.serivce.AreasBiz;
import com.iyunhe.serivce.CitiesBiz;
import com.iyunhe.serivce.ProvincesBiz;
import com.iyunhe.serivce.TbQuestionBiz;
import com.iyunhe.serivce.TbUserBiz;
import com.iyunhe.serivce.impl.AreasBizImpl;
import com.iyunhe.serivce.impl.CitiesBizImpl;
import com.iyunhe.serivce.impl.ProvincesBizImpl;
import com.iyunhe.serivce.impl.TbQuestionBizImpl;
import com.iyunhe.serivce.impl.TbUserBizImpl;
import com.iyunhe.util.ParameterUtil;

@Controller
@RequestMapping("accounts")
public class AccountsController {

	private TbUserBiz userbiz = new TbUserBizImpl();
	private AreasBiz areasbiz = new AreasBizImpl();
	private CitiesBiz citybiz = new CitiesBizImpl();
	private ProvincesBiz provincebiz = new ProvincesBizImpl();
	private TbQuestionBiz questionbiz = new TbQuestionBizImpl();

	@RequestMapping("/query")
	public String query(HttpServletRequest request,Model model ) throws Exception{

		Map<String, Object> map = ParameterUtil.fillMapFromRequest(request);
		if (map==null) {
			map = new HashMap<String, Object>();
		}
		//书籍列表分页	
		PageUtil.pageing(map.get("currentPage"), map.get("pageSize"), userbiz.count(map), model);
		//查询书籍列表
		model.addAttribute("userlist",userbiz.select(map));
		model.addAllAttributes(map);
		return "accounts_query.jsp";
	}

	@RequestMapping("/add")
	public String add(HttpServletRequest request,Model model ) throws Exception{
		//查询问题列表
		model.addAttribute("questionlist", questionbiz.selectAll());
		//查询省信息
		model.addAttribute("provincelist", provincebiz.selectAll());
		return "accounts_add.jsp";
	}

	@RequestMapping(value="/doadd",method=RequestMethod.POST)
	public String doAdd(TbUser user,HttpServletRequest request,
			@RequestParam(value="userHeadPic",required=false) MultipartFile userHead) throws Exception{
		if (userHead!=null) {
			user.setUserHead(FileUpload.fileUpload(userHead, request));
		}
		System.out.println(user);
		return "redirect:/accounts/query?result="+userbiz.insert(user);
	}

	@RequestMapping("/update/{userId}")
	public String updateSelect(@PathVariable("userId") int userId,Model model ) throws Exception{
		TbUser user = userbiz.selectById(userId);
		//查询用户信息
		model.addAttribute("user",user);
		//查询省信息
		model.addAttribute("provincelist", provincebiz.selectAll());
		if (user.getProvinceId()!=null) {
			//查询市信息
			model.addAttribute("citylist", citybiz.selectByProvinceID(user.getProvinceId()));
		}
		if (user.getCityId()!=null) {
			//查询区信息
			model.addAttribute("arealist", areasbiz.selectByCitiesId(user.getCityId()));
		}
		//查询问题列表
		model.addAttribute("questionlist", questionbiz.selectAll());
		return "accounts_update.jsp";
	}

	@RequestMapping("/cities")
	public @ResponseBody List<Cities> cities(@RequestParam("provinceId") String provinceId) throws Exception{
		//查询市信息
		return citybiz.selectByProvinceID(provinceId);
	}
	
	@RequestMapping("/areas")
	public @ResponseBody List<Areas> areas(@RequestParam("cityId") String cityId) throws Exception{
		//查询区信息
		return areasbiz.selectByCitiesId(cityId);
	}
	@RequestMapping(value="/doupdate",method=RequestMethod.POST)
	public String update(TbUser user,HttpServletRequest request,
			@RequestParam(value="userHeadPic",required=false) MultipartFile userHead) throws Exception{
		if (userHead!=null&&!userHead.isEmpty()) {
			user.setUserHead(FileUpload.fileUpload(userHead, request));
		}
		return "redirect:/accounts/query?result="+userbiz.updateById(user);
	}
	
	@RequestMapping("/delete/{userId}")
	public String delete(@PathVariable("userId") int userId) throws Exception{
		return "redirect:/accounts/query?result="+userbiz.delete(userId);
	}

}
