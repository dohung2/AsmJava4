package com.asm.dto;

import java.io.Serializable;
import java.util.HashMap;


public class GioHangDTO implements Serializable {
	private int id_SP;
	private String id_ND;
	private int tongsl = 0;
	private double tongtien = 0;
	private String dienthoai;
	private String diachi;
	private HashMap<String, GioHangChiTietDTO> detail = new HashMap<>();
	
	public int getId_SP() {
		return id_SP;
	}
	public void setId_SP(int id_SP) {
		this.id_SP = id_SP;
	}	
	public String getId_ND() {
		return id_ND;
	}
	public void setId_ND(String id_ND) {
		this.id_ND = id_ND;
	}
	public int getTongsl() {
		return tongsl;
	}
	public void setTongsl(int tongsl) {
		this.tongsl = tongsl;
	}
	public double getTongtien() {
		return tongtien;
	}
	public void setTongtien(double tongtien) {
		this.tongtien = tongtien;
	}
	public String getDienthoai() {
		return dienthoai;
	}
	public void setDienthoai(String dienthoai) {
		this.dienthoai = dienthoai;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public HashMap<String, GioHangChiTietDTO> getDetail() {
		return detail;
	}
	public void setDetail(HashMap<String, GioHangChiTietDTO> detail) {
		this.detail = detail;
	}
}
