package com.iyunhe.controller;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.iyunhe.pojo.TbPermission;
import com.iyunhe.pojo.TbRole;
import com.iyunhe.pojo.TbUserAfter;
import com.iyunhe.serivce.UserAfterBiz;
import com.iyunhe.serivce.impl.UserAfterBizImpl;

@Controller
public class UserAfterController {
	private UserAfterBiz userAfterBizImpl=new UserAfterBizImpl();
	//查看所有用户
	@RequestMapping("/userAfter")
	public ModelAndView userAfter() throws Exception{
		ModelAndView map=new ModelAndView();
		map.setViewName("user_manager.jsp");

		List<TbUserAfter> userList=userAfterBizImpl.selectUserAfter();
		map.addObject("userList", userList);
		
		return map;
	}
	
	//查看所有角色
	@RequestMapping("/selectrRole")
	public ModelAndView selectrRole() throws Exception{
		ModelAndView map=new ModelAndView();
		map.setViewName("role_manager.jsp");

		List<TbRole> roleList=userAfterBizImpl.selectrole();
		map.addObject("roleList", roleList);
		
		return map;
	}
	
	//查询可以添加角色的所有权限
	@RequestMapping("/selectAddRole")
	public ModelAndView selectAddRole() throws Exception{
		ModelAndView map=new ModelAndView();
		map.setViewName("role_add.jsp");

		List<TbPermission> rightList=userAfterBizImpl.selectRight();
		map.addObject("rightList", rightList);
		
		return map;
	}
	
	
	//添加角色分配权限
	@RequestMapping("/addRole")
	public String addRole(HttpServletRequest request,
			@RequestParam("role_name") String role_name,
			@RequestParam("permission") Integer[] permission
			) throws Exception {
		
		List<Integer> permissionList=new ArrayList<Integer>();
		for(int i=0;i<permission.length;i++){
			Integer str=permission[i];
			permissionList.add(str);
		}
		System.out.println(permissionList);
		userAfterBizImpl.addRoleRight(role_name, permissionList);
		
		return "redirect:/selectrRole";
	}
	
	
	
	//查询权限
	@RequestMapping("/selectRight")
	public ModelAndView selectRight() throws Exception{
		ModelAndView map=new ModelAndView();
		map.setViewName("right_managers.jsp");

		List<TbPermission> rightList=userAfterBizImpl.selectRight();
		map.addObject("rightList", rightList);
		
		return map;
	}
	
	//添加权限
	@RequestMapping("/addRight")
	public String addRight(HttpServletRequest request,
			@RequestParam("right_name") String right_name
			) throws Exception {
		if(right_name!=null && !right_name.isEmpty()){
			userAfterBizImpl.addRight(right_name);
		}
		return "redirect:/selectRight";
	}
	
	//删除权限
	@RequestMapping("/deleteRight/{permission_id}")
	public String deleteRight(HttpServletRequest request,
			@PathVariable("permission_id") Integer permission_id
			) throws Exception {
		
			userAfterBizImpl.deleteRight(permission_id);;
		
		return "redirect:/selectRight";
	}
	
	//查询一个权限
	@RequestMapping("/selectUpdateRight/{permission_id}")
	public ModelAndView selectUpdateRight(HttpServletRequest request,
			@PathVariable("permission_id") int permission_id
			) throws Exception{
		ModelAndView map=new ModelAndView();
		map.setViewName("right_update.jsp");
		
		TbPermission right=userAfterBizImpl.selectOneRight(permission_id);
		map.addObject("right", right);
		
		return map;
	}
	
	
	
	//更改权限
	@RequestMapping("/updateRight/{right_id}")
	public String updateRight(HttpServletRequest request,
			@PathVariable("right_id") Integer right_id,
			@RequestParam("right_name") String right_name
			) throws Exception {
		
		userAfterBizImpl.updateRight(right_id, right_name);
		return "redirect:/selectRight";
	}
	
}
