package com.iyunhe.serivce.impl;

import java.util.List;
import java.util.Map;

import com.iyunhe.common.DaoProxy;
import com.iyunhe.mapper.TbQuestionMapper;
import com.iyunhe.pojo.TbQuestion;
import com.iyunhe.serivce.TbQuestionBiz;

public class TbQuestionBizImpl implements TbQuestionBiz {

	private TbQuestionMapper questionMapper = DaoProxy.getInstance(TbQuestionMapper.class);
	
	public long totalCount() {
		// TODO Auto-generated method stub
		return questionMapper.count(null);
	}

	public boolean delete(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return questionMapper.delete(map)>0?true:false;
	}

	public boolean deleteById(Integer questionId) {
		// TODO Auto-generated method stub
		return questionMapper.deleteById(questionId)>0?true:false;
	}

	public boolean insert(TbQuestion record) {
		// TODO Auto-generated method stub
		return questionMapper.insert(record)>0?true:false;
	}

	public List<TbQuestion> selectAll() {
		// TODO Auto-generated method stub
		return questionMapper.select(null);
	}

	public TbQuestion selectById(Integer questionId) {
		// TODO Auto-generated method stub
		return questionMapper.selectById(questionId);
	}

	public boolean update(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return questionMapper.update(map)>0?true:false;
	}

	public boolean updateById(TbQuestion record) {
		// TODO Auto-generated method stub
		return questionMapper.updateById(record)>0?true:false;
	}

}