package com.iyunhe.serivce.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.common.PageUtil;
import com.iyunhe.mapper.TbBookMapper;
import com.iyunhe.pojo.TbBook;
import com.iyunhe.serivce.TbBookBiz;

public class TbBookBizImpl implements TbBookBiz {
	
	private TbBookMapper bookMapper = DaoProxy.getInstance(TbBookMapper.class);
	
	public long count(Map<String, Object> map) {
		return bookMapper.count(map);
	}

	public List<TbBook> select(Map<String, Object> map) {
		PageUtil.initPage(map);
		return bookMapper.select(map);
	}

	public long count(String bookName, String bookAuthor, Integer status,
			Integer typeId) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("bookName", bookName);
		map.put("bookAuthor", bookAuthor);
		map.put("status", status);
		map.put("typeId", typeId);
		return count(map);
	}

	public List<TbBook> select(String bookName, String bookAuthor,
			Integer status, Integer typeId, Integer beginIndex, Integer endIndex) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("bookName", bookName);
		map.put("bookAuthor", bookAuthor);
		map.put("status", status);
		map.put("typeId", typeId);
		map.put("beginIndex", beginIndex);
		map.put("endIndex", endIndex);
		return select(map);
	}

	public int update(Map<String, Object> map) {
		// TODO Auto-generated method stub
		Map<String,Object> conditionMap = new HashMap<String, Object>();
		Map<String,Object> commitMap = new HashMap<String, Object>();
		
		conditionMap.put("bookId", map.get("bookId"));
		map.remove("bookId");
		
		commitMap.put("condition", conditionMap);
		commitMap.put("record", map);
		return bookMapper.update(map);
	}

	public int updateOnline(int status,int book_id) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("status", status);
		map.put("book_id", book_id);
		return bookMapper.updateOnline(map);
	}

	public int updateIsHot(int is_hot, int book_id) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("is_hot", is_hot);
		map.put("book_id", book_id);
		return bookMapper.updateIsHot(map);
	}

	public int updateNew(int is_new, int book_id) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("is_new", is_new);
		map.put("book_id", book_id);
		return bookMapper.updateNew(map);
	}

	public TbBook selectupdatebook(int bookId) {
		// TODO Auto-generated method stub
		return bookMapper.selectupdatebook(bookId);
	}

	public int insert(String bookName, Integer typeId, double bookPrice,
			double bookPriceOld, String bookAuthor, String bookPress,
			String bookDescription, Integer storeCount, Integer isNew,
			Integer isHot, Integer status, String bookLogoSmall,
			String bookLogoBig) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("bookName", bookName);
		map.put("typeId",typeId );
		map.put("bookPrice",bookPrice );
		map.put("bookPriceOld", bookPriceOld);
		map.put("bookAuthor",bookAuthor );
		map.put("bookPress", bookPress);
		map.put("bookDescription",bookDescription );
		map.put("storeCount",storeCount );
		map.put("isNew", isNew);
		map.put("isHot", isHot);
		map.put("status", status);
		map.put("bookLogoSmall",bookLogoSmall);
		map.put("bookLogoBig", bookLogoBig);
		return bookMapper.insert(map);
	}

	public List<TbBook> selectrecycle() {
		// TODO Auto-generated method stub
		return bookMapper.selectrecycle();
	}

	public TbBook selectbook(int bookId) {
		// TODO Auto-generated method stub
		return bookMapper.selectbook(bookId);
	}

	public int insertrecycle(int bookId, String bookName, double bookPrice,int typeId) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("bookId", bookId);
		map.put("bookName", bookName);
		map.put("bookPrice", bookPrice);
		map.put("typeId", typeId);
		return bookMapper.insertrecycle(map);
	}
	
	public int updateBookIsGarbage(int book_id) {
		// TODO Auto-generated method stub
		return bookMapper.updateBookIsGarbage(book_id);
	}

	public int deleteBookmanager(int book_id) {
		// TODO Auto-generated method stub
		return bookMapper.deleteBookmanager(book_id);
	}

	public int deleterecycle(int book_id) {
		// TODO Auto-generated method stub
		return bookMapper.deleterecycle(book_id);
	}

	public int insert(TbBook book) {
		// TODO Auto-generated method stub
		return bookMapper.insert(book);
	}

	public String updateBookInfo(List<Integer> ids, int book_id) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("ids", ids);
		map.put("book_id", book_id);
		return bookMapper.updateBookInfo(map);
	}

	

	

}