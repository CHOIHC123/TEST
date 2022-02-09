package com.human.dto;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.format.annotation.DateTimeFormat;

public class OrderDto3 {
	private String orderNum;
	private String addressee;
	private String address;
	private String tel;
	private int payPrice;
	private int productCnt;
	private String productName;
	private String payMeans;
	private Date orderDate;
	private String userID;
	private String state;
	private String productNum;
	private String productImage;
	private int productPrice;
	
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
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
	public String getProductNum() {
		return productNum;
	}
	public void setProductNum(String productNum) {
		this.productNum = productNum;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	@Override
	public String toString() {
		return "OrderDto3 [orderNum=" + orderNum + ", addressee=" + addressee + ", address=" + address + ", tel=" + tel
				+ ", payPrice=" + payPrice + ", productCnt=" + productCnt + ", productName=" + productName
				+ ", payMeans=" + payMeans + ", orderDate=" + orderDate + ", userID=" + userID + ", state=" + state
				+ ", productNum=" + productNum + ", productImage=" + productImage + "]";
	}
	
	

	

	
	
	
	
	
	
	
	
	
	
}
