package com.asm.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="SanPham")
public class SanPham implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "ID_SP")
	private String id_SP;
	
	@Column(name = "TenSP")
	private String tenSP;
	
	@Column(name = "TrangThai")
	private boolean trangThai;
	
	@Column(name = "Anh")
	private String anh;
	
	@Column(name = "Gia")
	private double gia;
	
	@Column(name = "SLTonKho")
	private int slTonKho;
	
	@Column(name = "MoTa")
	private String moTa;
	
	@Column(name = "MauSac")
	private String mauSac;
	
	@Column(name = "TenNhanHieu")
	private String tenNhanHieu;
	
	@Column(name = "ID_DM")
	private String id_DM;
	
	@Column(name = "Loai")
	private String loai;

	public SanPham() {
	}

	public SanPham(String id_SP, String tenSP, boolean trangThai, String anh, double gia, int slTonKho, String moTa,
			String mauSac, String tenNhanHieu, String id_DM, String loai) {
		this.id_SP = id_SP;
		this.tenSP = tenSP;
		this.trangThai = trangThai;
		this.anh = anh;
		this.gia = gia;
		this.slTonKho = slTonKho;
		this.moTa = moTa;
		this.mauSac = mauSac;
		this.tenNhanHieu = tenNhanHieu;
		this.id_DM = id_DM;
		this.loai = loai;
	}

	public String getId_SP() {
		return id_SP;
	}

	public void setId_SP(String id_SP) {
		this.id_SP = id_SP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public boolean getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(boolean trangThai) {
		this.trangThai = trangThai;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public double getGia() {
		return gia;
	}

	public void setGia(double gia) {
		this.gia = gia;
	}

	public int getSlTonKho() {
		return slTonKho;
	}

	public void setSlTonKho(int slTonKho) {
		this.slTonKho = slTonKho;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getMauSac() {
		return mauSac;
	}

	public void setMauSac(String mauSac) {
		this.mauSac = mauSac;
	}

	public String getTenNhanHieu() {
		return tenNhanHieu;
	}

	public void setTenNhanHieu(String tenNhanHieu) {
		this.tenNhanHieu = tenNhanHieu;
	}

	public String getId_DM() {
		return id_DM;
	}

	public void setId_DM(String id_DM) {
		this.id_DM = id_DM;
	}

	public String getLoai() {
		return loai;
	}

	public void setLoai(String loai) {
		this.loai = loai;
	}
}
