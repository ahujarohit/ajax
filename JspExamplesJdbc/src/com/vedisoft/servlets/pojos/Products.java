package com.vedisoft.servlets.pojos;

public class Products {
	private int productId;
	private String productName;
	private float productPrice;
	private int stockInHand;
	private int reorderLevel;
	private int categoryId;

	public Products() {
		productName = new String();

	}

	public Products(String productName, float productPrice, int stockInHand, int reorderLevel, int categoryId) {
		super();
		this.productName = productName;
		this.productPrice = productPrice;
		this.stockInHand = stockInHand;
		this.reorderLevel = reorderLevel;
		this.categoryId = categoryId;
	}

	public Products(int productId, String productName, float productPrice, int stockInHand, int reorderLevel,
			int categoryId) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productPrice = productPrice;
		this.stockInHand = stockInHand;
		this.reorderLevel = reorderLevel;
		this.categoryId = categoryId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public float getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}

	public int getStockInHand() {
		return stockInHand;
	}

	public void setStockInHand(int stockInHand) {
		this.stockInHand = stockInHand;
	}

	public int getReorderLevel() {
		return reorderLevel;
	}

	public void setReorderLevel(int reorderLevel) {
		this.reorderLevel = reorderLevel;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	@Override
	public String toString() {
		return "Products [productId=" + productId + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", stockInHand=" + stockInHand + ", reorderLevel=" + reorderLevel + ", categoryId=" + categoryId
				+ "]";
	}
}
