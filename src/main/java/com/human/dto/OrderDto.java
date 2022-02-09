package com.human.dto;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.format.annotation.DateTimeFormat;

public class OrderDto {
	@DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm")
	private Date orderDate;
	private String orderNum;
	private int payPrice;
	private String productName;
	private String payMeans;
	
	/* private String recipientName; */
	
	//DB에서 꺼내 올 값(wishlist)
	private String wishlistNum;
	private String productNum;
	private int productCnt;
	private String productColor;
	private String userID;
	/*
	 * private String userID; 
	 * private int productCnt;
	 */
	//DB에서 꺼내 올 값(member)
	/* private String tel; */
	private String userName;
	private String tel;
	private String address;
	private String email;
	
	
	//DB에서 꺼내 올 값(product)
	private int productPrice;
	private String productSize;
	private String productImage;
	
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
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
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getWishlistNum() {
		return wishlistNum;
	}
	public void setWishlistNum(String wishlistNum) {
		this.wishlistNum = wishlistNum;
	}
	public String getProductColor() {
		return productColor;
	}
	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}
	
	public String getProductNum() {
		return productNum;
	}
	public void setProductNum(String productNum) {
		this.productNum = productNum;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	@Override
	public String toString() {
		return "OrderDto [orderDate=" + orderDate + ", orderNum=" + orderNum + ", payPrice=" + payPrice
				+ ", productName=" + productName + ", payMeans=" + payMeans + ", address=" + address + ", tel=" + tel
				+ ", wishlistNum=" + wishlistNum + ", productColor=" + productColor + ", productCnt=" + productCnt
				+ ", userID=" + userID + ", userName=" + userName + ", email=" + email + ", productPrice="
				+ productPrice + ", productSize=" + productSize + ", productNum=" + productNum + ", productImage="
				+ productImage + "]";
	}
	

	
	
	
	
	
	
	
	
	
	
}
