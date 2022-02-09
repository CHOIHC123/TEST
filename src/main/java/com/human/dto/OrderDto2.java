package com.human.dto;

import java.util.Date;


public class OrderDto2 {
	private String orderNum;
	private String addressee;
	private String tel;
	private String address;
	private int payPrice;
	private int productCnt;
	private String productName;
	private String payMeans;
	private Date orderDate;
	private String userID;
	private String state;
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getAddressee() {
		return addressee;
	}
	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPayPrice() {
		return payPrice;
	}
	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}
	public int getProductCnt() {
		return productCnt;
	}
	public void setProductCnt(int productCnt) {
		this.productCnt = productCnt;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getPayMeans() {
		return payMeans;
	}
	public void setPayMeans(String payMeans) {
		this.payMeans = payMeans;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "OrderDto2 [orderNum=" + orderNum + ", addressee=" + addressee + ", tel=" + tel + ", address=" + address
				+ ", payPrice=" + payPrice + ", productCnt=" + productCnt + ", productName=" + productName
				+ ", payMeans=" + payMeans + ", orderDate=" + orderDate + ", userID=" + userID + ", state=" + state
				+ "]";
	}
	
	
	
	
	
}
