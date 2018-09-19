package com.iyunhe.serivce;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbBook;

public interface TbBookBiz {

	long count(Map<String, Object> map);

    List<TbBook> select(Map<String,Object> map);
    
    int update(Map<String,Object> map);
    
	long count(String bookName,String bookAuthor,Integer status,Integer typeId);

	
    List<TbBook> select(String bookName,String bookAuthor,Integer status,Integer typeId,Integer beginIndex,Integer endIndex);

    //修改书籍是否上下架
    int updateOnline(int status,int book_id);
    
    //修改书籍是否热销
    int updateIsHot(int is_hot,int book_id);
    
    //修改书籍是否新品
    int updateNew(int is_new,int book_id);
    
    //修改图书信息  根据bookId查询其图书信息
    TbBook selectupdatebook(int bookId);
    
    //添加图书
    int insert(TbBook book);
    
    //查询回收站
    List<TbBook> selectrecycle();
    
    //根据书籍ID查询书籍信息
    TbBook selectbook(int bookId);
    
    //插入到回收站
    int insertrecycle(int bookId,String bookName, double bookPrice, int typeId);
    int updateBookIsGarbage(int book_id);
    
    //移入回收站后  在图书管理页删除
    int deleteBookmanager(int book_id);
    
    //从回收站彻底删除该图书
    int deleterecycle(int book_id);
    
    //查询图书页修改图书状态(两个参数 一个为书籍ID的数组  另一个为修改状态 )
    String updateBookInfo(List<Integer> ids,int book_id);
   
    
    
    
    
    
    
}