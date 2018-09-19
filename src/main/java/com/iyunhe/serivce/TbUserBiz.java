package com.iyunhe.serivce;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbUser;

/**
 * @author Administrator
 *
 */
public interface TbUserBiz {

    /**
     * @return 总用户数
     */
    long totalCount();
    
    /**
     * @return 在线用户数
     */
    long totalCountIsOnline();

    /**
     * @return index页面的用户列表
     */
    List<TbUser> selectForIndexPage();

    /**
     * @return 用户管理页面的用户列表
     */
    List<TbUser> selectForUserPage();
    
    /**
     * 根据用户ID查询用户
     * @param userId 用户Id
     * @return 用户详情
     */
    TbUser selectById(int userId);

    /**
     * 根据用户ID删除用户
     * @param userId 用户ID
     * @return
     */
    boolean delete(int userId);
    
    boolean insert(TbUser record);
    
    boolean updateById(TbUser record);

    long count(Map<String,Object> map);
    
    /**
     * @return 用户列表
     */
    List<TbUser> select(Map<String,Object> map);
}