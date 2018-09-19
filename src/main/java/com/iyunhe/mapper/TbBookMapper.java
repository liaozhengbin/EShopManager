package com.iyunhe.mapper;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbBook;

public interface TbBookMapper {

    long count(Map<String, Object> map);

    List<TbBook> select(Map<String,Object> map);
    
    int update(Map<String, Object> map);
    
    int delete(Map<String, Object> map);

    int insert(Map<String, Object> map);

    int insert(TbBook book);
    
    //修改书籍是否上下架
    int updateOnline(Map<String, Object> map);
    
    //修改书籍是否新品
    int updateNew(Map<String, Object> map);
    
    //修改书籍是否热销
    int updateIsHot(Map<String, Object> map);
    
    //修改图书信息  根据bookId查询其图书信息
    TbBook selectupdatebook(int book_id);
    
    //查询回收站
    List<TbBook> selectrecycle();
    
    //根据书籍ID查询书籍信息
    TbBook selectbook(int bookId);
    
    //插入回收站   的同时将书籍“isGarbage” 修改为1
    int insertrecycle(Map<String, Object> map);
    int updateBookIsGarbage(int book_id);
    
    
    //移入回收站后  在图书管理页删除
    int deleteBookmanager(int book_id);
    
    //从回收站彻底删除该图书
    int deleterecycle(int book_id);
    
    //TbBook cscssv(int book_id);
    //查询图书页修改图书状态(两个参数 一个为书籍ID的数组  另一个为修改状态 )
    String updateBookInfo(Map<String, Object> map);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}