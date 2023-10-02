package javaweb;

import java.math.BigDecimal;

public class Item {
	
	private String productCd;
	private String productNm;
	private BigDecimal unitPrice;
	private String productImg;
	private String description;
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public void setProductCd(String productCd) {
		this.productCd = productCd;
	}
	public void setProductNm(String productNm) {
		this.productNm = productNm;
	}
	public void setUnitPrice(BigDecimal bigDecimal) {
		this.unitPrice = bigDecimal;
	}
	public String getProductCd() {
		return productCd;
	}
	public String getProductNm() {
		return productNm;
	}
	public BigDecimal getUnitPrice() {
		return unitPrice;
	}
	
	
}
