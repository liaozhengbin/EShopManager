package com.iyunhe.serivce;

import java.util.List;
import java.util.Map;

import com.iyunhe.pojo.TbOrder;



public interface TbOrderBiz {

	/**
	 * 根据orderId查询订单
	 * @param orderId 查询条件
	 * @return 订单
	 */
	TbOrder selectById(String orderId);

	boolean updateStatus(Map<String,Object> map);
	
	boolean updateStatus(String orderId,int orderStatus);
	
	/**
	 * 根据条件查询订单
	 * @param map 查询条件
	 * @return 订单List
	 */
	List<TbOrder> select(Map<String,Object> map);

	/**
	 * 根据条件查询订单数目
	 * @param map 查询条件
	 * @return 订单数量
	 */
	long count(Map<String,Object> map);

	/**
	 * 根据条件查询订单
	 * @param map 查询条件
	 * @return 订单List
	 */
	List<TbOrder> selectIsSend(Map<String,Object> map);

    /**
     * @return 已发货待收货的订单
     */
    long countStatusIsSend();

    /**
     * @return 已收货完成的订单
     */
    long countStatusIsReceive();

    /**
     * @return 已付款待发货的订单
     */
    long countStatusIsPay();

    /**
     * @return 待付款的订单
     */
    long countStatusNoPay();

    /**
     * @return 已取消的订单
     */
    long countStatusIsCancel();

	/**
	 * 根据条件查询订单
	 * @param map 查询条件
	 * @return 订单List
	 */
	List<TbOrder> selectIsCancel(Map<String,Object> map);
	
    /**
     * @return 营业额
     */
    double sumOrderPrice();

    boolean delete(String Id);
}