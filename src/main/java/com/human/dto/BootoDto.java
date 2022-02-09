package com.human.dto;


public class BootoDto {
	
	private String userID;
	private int productCnt;
	private String productNum;
	private String productName;
	private int productPrice;
	private String productImage;
	private String productKind;
	private String productSize;
	private String productColor;
	private String wishlistNum;
	
	
	
	/**
	 * @return the wishlistNum
	 */
	public String getWishlistNum() {
		return wishlistNum;
	}

	/**
	 * @param wishlistNum the wishlistNum to set
	 */
	public void setWishlistNum(String wishlistNum) {
		this.wishlistNum = wishlistNum;
	}

	public String getUserID() {
		return userID;
	}
	
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	public int getProductCnt() {
		return productCnt;
	}
	
	public void setProductCnt(int productCnt) {
		this.productCnt = productCnt;
	}
	
	public String getProductNum() {
		return productNum;
	}
	
	public void setProductNum(String productNum) {
		this.productNum = productNum;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public int getProductPrice() {
		return productPrice;
	}
	
	public void setProductPrice(int productPrice) {
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
		return "BootoDto [userID=" + userID + ", productCnt=" + productCnt + ", productNum=" + productNum
				+ ", productName=" + productName + ", productPrice=" + productPrice + ", productImage=" + productImage
				+ ", productKind=" + productKind + ", productSize=" + productSize + ", productColor=" + productColor
				+ "]";
	}
}
