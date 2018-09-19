package com.iyunhe.serivce;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbPermission;
import com.iyunhe.pojo.TbRole;
import com.iyunhe.pojo.TbUserAfter;

public interface UserAfterBiz {
	
	/**
	 *查看用户列表
	 * @return
	 */
	List<TbUserAfter> selectUserAfter();
	
	
	/**
	 *查看角色列表
	 * @return
	 */
	List<TbRole> selectrole();
	
	
	
	
	/**
	 *添加权限列表
	 * @return
	 */
	int addRole(String role_name);
	
	
	/**
	 *给角色添加权限
	 * @return
	 */
	void addRoleRight(String role_name,List<Integer> pmsIdList);
	
	/**
	 *给角色添加权限
	 * @return
	 */
	void addRoleRight_index(int role_id,List<Integer> pmsIdList);
	
	
	/**
	 *查看权限列表
	 * @return
	 */
	List<TbPermission> selectRight();
	
	
	/**
	 *添加权限列表
	 * @return
	 */
	void addRight(String right_name);
	
	
	/**
	 *删除权限列表
	 * @return
	 */
	void deleteRight(int permission_id);
	
	
	/**
	 *根据permission_id查询权限
	 * @return
	 */
	TbPermission selectOneRight(int permission_id);
	
	
	
	/**
	 *修改权限列表
	 * @return
	 */
	void updateRight(int permission_id,String permission_des);
	
	
	
}
