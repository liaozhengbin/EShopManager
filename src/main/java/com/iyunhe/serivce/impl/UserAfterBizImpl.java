package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.mapper.UserAfterMapper;
import com.iyunhe.pojo.TbPermission;
import com.iyunhe.pojo.TbRole;
import com.iyunhe.pojo.TbUserAfter;
import com.iyunhe.serivce.UserAfterBiz;

public class UserAfterBizImpl implements UserAfterBiz {
	private UserAfterMapper userAfterMapper = DaoProxy.getInstance(UserAfterMapper.class);
	
	public List<TbUserAfter> selectUserAfter() {
		// TODO Auto-generated method stub
		return userAfterMapper.selectUserAfter();
	}

	public List<TbRole> selectrole() {
		// TODO Auto-generated method stub
		return userAfterMapper.selectrole();
	}

	public List<TbPermission> selectRight() {
		// TODO Auto-generated method stub
		return userAfterMapper.selectRight();
	}

	public void addRight(String right_name) {
		// TODO Auto-generated method stub
		userAfterMapper.addRight(right_name);
	}

	public void deleteRight(int permission_id) {
		// TODO Auto-generated method stub
		userAfterMapper.deleteRight(permission_id);
	}

	public void updateRight(int permission_id, String permission_des) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("permission_id", permission_id);
		map.put("permission_des", permission_des);
		userAfterMapper.updateRight(map);
	}

	public TbPermission selectOneRight(int permission_id) {
		// TODO Auto-generated method stub
		List<TbPermission> tbPermission=userAfterMapper.selectOneRight(permission_id);
		
		return tbPermission.size()>0?tbPermission.get(0):null;
	}

	public int addRole(String role_name) {
		// TODO Auto-generated method stub
		TbRole tbRole=new TbRole();
		tbRole.setRole_name(role_name);
		return userAfterMapper.addRole(tbRole);
	}

	public void addRoleRight(String role_name, List<Integer> pmsIdList) {
		// TODO Auto-generated method stub
		
		int role_id=addRole(role_name);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("role_id", role_id);
		map.put("pmsIdList", pmsIdList);
		userAfterMapper.addRoleRight_index(map);
	}

	public void addRoleRight_index(int role_id, List<Integer> pmsIdList) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("role_id", role_id);
		map.put("pmsIdList", pmsIdList);
		userAfterMapper.addRoleRight_index(map);
	}
	
	
	
}
