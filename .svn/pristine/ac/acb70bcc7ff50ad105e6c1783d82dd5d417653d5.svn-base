package com.iyunhe.mapper;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbInvoice;

public interface TbInvoiceMapper {

    /**
     * @return 总记录数
     */
    long count(Map<String,Object> map);
    
    /**
     * @return 总记录数
     */
    List<TbInvoice> select(Map<String,Object> map);

    List<TbInvoice> selectAll();
    
    TbInvoice selectById(String invoiceId);

    int delete(String invoiceId);

    int insert(TbInvoice record);

    int updateById(TbInvoice record);

    int update(Map<String,Object> map);
}