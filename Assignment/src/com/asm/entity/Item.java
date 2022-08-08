package com.asm.entity;

public class Item {
	private SanPham product;
	private int quanlity;
	private double price;
	
	public Item() {
	}

	public Item(SanPham product, int quanlity, double price) {
		this.product = product;
		this.quanlity = quanlity;
		this.price = price;
	}

	public SanPham getProduct() {
		return product;
	}

	public void setProduct(SanPham product) {
		this.product = product;
	}

	public int getQuanlity() {
		return quanlity;
	}

	public void setQuanlity(int quanlity) {
		this.quanlity = quanlity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	
}
