package com.iyunhe.mapper;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbPermission;
import com.iyunhe.pojo.TbRole;
import com.iyunhe.pojo.TbUserAfter;

public interface UserAfterMapper {
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
	 *添加角色
	 * @return
	 */
	int addRole(TbRole tbRole);
	
	/**
	 *给角色添加权限
	 * @return
	 */
	void addRoleRight(Map<String, Object> map);
	
	/**
	 *给角色添加权限
	 * @return
	 */
	void addRoleRight_index(Map<String, Object> map);
	
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
	List<TbPermission> selectOneRight(int permission_id);
	
	
	/**
	 *修改权限列表
	 * @return
	 */
	void updateRight(Map<String, Object> map);
	
}
