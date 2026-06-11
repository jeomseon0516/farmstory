package kr.co.farmstory.dto;

public class OrderItemDTO {
	
	// OrderItem 테이블 속성
	private int orderItemId;
	private int orderId;
	private int prodId;
	private int prodPrice;
	private int prodDiscount;
	private int prodQty;
	public int getOrderItemId() {
		return orderItemId;
	}
	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public int getProdDiscount() {
		return prodDiscount;
	}
	public void setProdDiscount(int prodDiscount) {
		this.prodDiscount = prodDiscount;
	}
	public int getProdQty() {
		return prodQty;
	}
	public void setProdQty(int prodQty) {
		this.prodQty = prodQty;
	}
	@Override
	public String toString() {
		return "OrderItemDTO [orderItemId=" + orderItemId + ", orderId=" + orderId + ", prodId=" + prodId
				+ ", prodPrice=" + prodPrice + ", prodDiscount=" + prodDiscount + ", prodQty=" + prodQty + "]";
	}

	
	
}
