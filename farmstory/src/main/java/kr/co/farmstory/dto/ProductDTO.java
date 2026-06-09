package kr.co.farmstory.dto;

public class ProductDTO {
	
	// Product 테이블 속성 확인
	private int prodId;
	private String prodName;
	private String prodType;
	private int prodPrice;
	private int prodPoint;
	private int prodDiscount;
	private int prodDeliveryCost;
	private int prodStock;
	private int prodListImageFileId;
	private int prodInfoImageFileId;
	private int prodDescriptionImageFileId;
	private String prodRemark;
	
	
	
	// Product Getter와 Setter
	public String getProdType() {
		return prodType;
	}
	public int getProdListImageFileId() {
		return prodListImageFileId;
	}
	public void setProdListImageFileId(int prodListImageFileId) {
		this.prodListImageFileId = prodListImageFileId;
	}
	public int getProdInfoImageFileId() {
		return prodInfoImageFileId;
	}
	public void setProdInfoImageFileId(int prodInfoImageFileId) {
		this.prodInfoImageFileId = prodInfoImageFileId;
	}
	public int getProdDescriptionImageFileId() {
		return prodDescriptionImageFileId;
	}
	public void setProdDescriptionImageFileId(int prodDescriptionImageFileId) {
		this.prodDescriptionImageFileId = prodDescriptionImageFileId;
	}
	public String getProdRemark() {
		return prodRemark;
	}
	public void setProdRemark(String prodRemark) {
		this.prodRemark = prodRemark;
	}
	public void setProdType(String prodType) {
		this.prodType = prodType;
	}
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
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
	public int getProdStock() {
		return prodStock;
	}
	public void setProdStock(int prodStock) {
		this.prodStock = prodStock;
	}
	
	@Override
	public String toString() {
		return "ProductDTO [prodId=" + prodId + ", prodName=" + prodName + ", prodType=" + prodType + ", prodPrice="
				+ prodPrice + ", prodPoint=" + prodPoint + ", prodDiscount=" + prodDiscount + ", prodDeliveryCost="
				+ prodDeliveryCost + ", prodStock=" + prodStock + ", prodListImageFileId=" + prodListImageFileId
				+ ", prodInfoImageFileId=" + prodInfoImageFileId + ", prodDescriptionImageFileId="
				+ prodDescriptionImageFileId + ", prodRemark=" + prodRemark + "]";
	}
	
	
}
