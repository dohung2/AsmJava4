package com.asm.dto;

import java.io.Serializable;

public class GioHangChiTietDTO implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String maSP;
	private String tenSP;
	private double giaSP;
	private int slMua;
	private String hinh;
	
	public String getMaSP() {
		return maSP;
	}
	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public double getGiaSP() {
		return giaSP;
	}
	public void setGiaSP(double giaSP) {
		this.giaSP = giaSP;
	}
	public int getSlMua() {
		return slMua;
	}
	public void setSlMua(int slMua) {
		this.slMua = slMua;
	}
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
