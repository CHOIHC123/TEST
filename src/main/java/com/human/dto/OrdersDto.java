package com.human.dto;

import java.util.Date;

public class OrdersDto {
	
	private String orderNum;
	private	String address;
	private int payPrice;
	private int productCnt;
	private String productName;
	private int payMeans;
	private Date orderDate;
	private String userID;
	private String state;
	
	private String userPw;
	private String tel;
	private String userName;
	private String email;
	private String nickname;
	private int author;
	private String wishlistNum;
	private String productNum;
	private String productPrice;
	private String productImage;
	private String productKind;
	private String productSize;
	private String productColor;
	
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
	
	public int getPayMeans() {
		return payMeans;
	}
	
	public void setPayMeans(int payMeans) {
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
	
	public String getUserPw() {
		return userPw;
	}
	
	public void setUserPw(String userPw) {
		this.userPw = userPw;
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
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getAuthor() {
		return author;
	}
	
	public void setAuthor(int author) {
		this.author = author;
	}
	
	public String getWishlistNum() {
		return wishlistNum;
	}
	
	public void setWishlistNum(String wishlistNum) {
		this.wishlistNum = wishlistNum;
	}
	
	public String getProductNum() {
		return productNum;
	}
	
	public void setProductNum(String productNum) {
		this.productNum = productNum;
	}
	
	public String getProductPrice() {
		return productPrice;
	}
	
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	
	public String getProductImage() {
		return productImage;
	}
	
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	
	public String getProductKind() {
		return productKind;
	}
	
	public void setProductKind(String productKind) {
		this.productKind = productKind;
	}
	
	public String getProductSize() {
		return productSize;
	}
	
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	
	public String getProductColor() {
		return productColor;
	}
	
	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}
	@Override
	public String toString() {
		return "OrderDto [orderNum=" + orderNum + ", address=" + address + ", payPrice=" + payPrice + ", productCnt="
				+ productCnt + ", productName=" + productName + ", payMeans=" + payMeans + ", orderDate=" + orderDate
				+ ", userID=" + userID + ", state=" + state + ", userPw=" + userPw + ", tel=" + tel + ", userName="
				+ userName + ", email=" + email + ", nickname=" + nickname + ", author=" + author + ", wishlistNum="
				+ wishlistNum + ", productNum=" + productNum + ", productPrice=" + productPrice + ", productImage="
				+ productImage + ", productKind=" + productKind + ", productSize=" + productSize + ", productColor="
				+ productColor + "]";
	}
	
	
}
