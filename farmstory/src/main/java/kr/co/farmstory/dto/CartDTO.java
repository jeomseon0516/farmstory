package kr.co.farmstory.dto;

public class CartDTO {
	
	// Cart 테이블 속성
	private int cartId;
	private String userId;
	private int prodId;
	private int prodQty;
	
	// Cart 추가 테이블 속성
	private String prodName;
	private String prodType;
	private int prodPrice;
	private int prodPoint;
	private int prodDiscount;
	private int prodDeliveryCost;
	private int prodListImageFileId;
	private int prodTotalPrice;
	
	// Getter, Setter
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	public int getProdQty() {
		return prodQty;
	}
	public void setProdQty(int prodQty) {
		this.prodQty = prodQty;
	}
	
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdType() {
		return prodType;
	}
	public void setProdType(String prodType) {
		this.prodType = prodType;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public int getProdPoint() {
		return prodPoint;
	}
	public void setProdPoint(int prodPoint) {
		this.prodPoint = prodPoint;
	}
	public int getProdDiscount() {
		return prodDiscount;
	}
	public void setProdDiscount(int prodDiscount) {
		this.prodDiscount = prodDiscount;
	}
	public int getProdDeliveryCost() {
		return prodDeliveryCost;
	}
	public void setProdDeliveryCost(int prodDeliveryCost) {
		this.prodDeliveryCost = prodDeliveryCost;
	}
	public int getProdListImageFileId() {
		return prodListImageFileId;
	}
	public void setProdListImageFileId(int prodListImageFileId) {
		this.prodListImageFileId = prodListImageFileId;
	}
	
	
	
	public int getProdTotalPrice() {
		return prodTotalPrice;
	}
	public void setProdTotalPrice(int prodTotalPrice) {
		this.prodTotalPrice = prodTotalPrice;
	}
	@Override
	public String toString() {
		return "CartDTO [cartId=" + cartId + ", userId=" + userId + ", prodId=" + prodId + ", prodQty=" + prodQty
				+ ", prodName=" + prodName + ", prodType=" + prodType + ", prodPrice=" + prodPrice + ", prodPoint="
				+ prodPoint + ", prodDiscount=" + prodDiscount + ", prodDeliveryCost=" + prodDeliveryCost
				+ ", prodListImageFileId=" + prodListImageFileId + ", prodTotalPrice=" + prodTotalPrice + "]";
	}

	
	

	
	
}
