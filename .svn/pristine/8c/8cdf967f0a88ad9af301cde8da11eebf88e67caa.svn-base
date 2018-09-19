package com.iyunhe.serivce;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.iyunhe.pojo.TbBookPic;

public interface TbBookPicBiz {
   
    long countByExample(TbBookPic example);

    int deleteByExample(TbBookPic example);

    int deleteByPrimaryKey(Integer picId);

    int insert(TbBookPic record);

    int insertSelective(TbBookPic record);

    List<TbBookPic> selectByExample(TbBookPic example);

    TbBookPic selectByPrimaryKey(Integer picId);

    int updateByExampleSelective(@Param("record") TbBookPic record, @Param("example") TbBookPic example);

    int updateByExample(@Param("record") TbBookPic record, @Param("example") TbBookPic example);

    int updateByPrimaryKeySelective(TbBookPic record);

    int updateByPrimaryKey(TbBookPic record);
}