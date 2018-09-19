package com.iyunhe.pojo;

import java.util.Date;

public class TbOrder {

    private String orderId;

    private Integer userId;

    private String address;

    private String person;

    private String phone;

    private Double orderPrice;

    private Date orderDate;

    private Integer statusPay;

    private Integer statusSend;

    private Integer statusReceive;

    private Integer status;

    private Date payTime;

    private TbUser tbUser;
    
    public String getOrderId() {
        return orderId;
    }

    public TbUser getTbUser() {
		return tbUser;
	}

	public void setTbUser(TbUser tbUser) {
		this.tbUser = tbUser;
	}

	public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPerson() {
        return person;
    }

    public void setPerson(String person) {
        this.person = person;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Double orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Integer getStatusPay() {
        return statusPay;
    }

    public void setStatusPay(Integer statusPay) {
        this.statusPay = statusPay;
    }

    public Integer getStatusSend() {
        return statusSend;
    }

    public void setStatusSend(Integer statusSend) {
        this.statusSend = statusSend;
    }

    public Integer getStatusReceive() {
        return statusReceive;
    }

    public void setStatusReceive(Integer statusReceive) {
        this.statusReceive = statusReceive;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }
}