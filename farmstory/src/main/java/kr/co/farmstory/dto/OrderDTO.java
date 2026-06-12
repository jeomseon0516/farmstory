package kr.co.farmstory.dto;

public class OrderDTO {
	
	// Order 테이블 속성
	private int orderId;
	private String userId;
	private int totProdPrice;
	private int totProdQty;
	private int totDeliveryCost;
	private String ReceiverName;
	private String ReceiverHp;
	private int usedPoint;
	private int totPrice;
	private String ReceiverZip;
	private String ReceiverAddr;
	private String ReceiverDetailAddr;
	private String payment;
	private String etc;
	// 관리자 메인 주문현황 출력용
	private String prodName;
	private String createdAt;
	
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getTotProdPrice() {
		return totProdPrice;
	}
	public void setTotProdPrice(int totProdPrice) {
		this.totProdPrice = totProdPrice;
	}
	public int getTotProdQty() {
		return totProdQty;
	}
	public void setTotProdQty(int totProdQty) {
		this.totProdQty = totProdQty;
	}
	public int getTotDeliveryCost() {
		return totDeliveryCost;
	}
	public void setTotDeliveryCost(int totDeliveryCost) {
		this.totDeliveryCost = totDeliveryCost;
	}
	public String getReceiverName() {
		return ReceiverName;
	}
	public void setReceiverName(String receiverName) {
		ReceiverName = receiverName;
	}
	public String getReceiverHp() {
		return ReceiverHp;
	}
	public void setReceiverHp(String receiverHp) {
		ReceiverHp = receiverHp;
	}
	public int getUsedPoint() {
		return usedPoint;
	}
	public void setUsedPoint(int usedPoint) {
		this.usedPoint = usedPoint;
	}
	public int getTotPrice() {
		return totPrice;
	}
	public void setTotPrice(int totPrice) {
		this.totPrice = totPrice;
	}
	public String getReceiverZip() {
		return ReceiverZip;
	}
	public void setReceiverZip(String receiverZip) {
		ReceiverZip = receiverZip;
	}
	public String getReceiverAddr() {
		return ReceiverAddr;
	}
	public void setReceiverAddr(String receiverAddr) {
		ReceiverAddr = receiverAddr;
	}
	public String getReceiverDetailAddr() {
		return ReceiverDetailAddr;
	}
	public void setReceiverDetailAddr(String receiverDetailAddr) {
		ReceiverDetailAddr = receiverDetailAddr;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	
	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	
	@Override
	public String toString() {
		return "OrderDTO [orderId=" + orderId + ", userId=" + userId + ", totProdPrice=" + totProdPrice
				+ ", totProdQty=" + totProdQty + ", totDeliveryCost=" + totDeliveryCost + ", ReceiverName="
				+ ReceiverName + ", ReceiverHp=" + ReceiverHp + ", usedPoint=" + usedPoint + ", totPrice=" + totPrice
				+ ", ReceiverZip=" + ReceiverZip + ", ReceiverAddr=" + ReceiverAddr + ", ReceiverDetailAddr="
				+ ReceiverDetailAddr + ", payment=" + payment + ", etc=" + etc + "]";
	}
	
	

}
