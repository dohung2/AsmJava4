package com.asm.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="NguoiDung")
public class NguoiDung implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="ID_KH")
	private String id_KH;
	
	@Column(name="HoTen")
	private String hoTen;
	
	@Column(name="NgaySinh")
	private Date ngaySinh;
	
	@Column(name="GioiTinh")
	private boolean gioiTinh;
	
	@Column(name="SoDT")
	private String soDT;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="DiaChi")
	private String diaChi;
	
	@Column(name="NgheNghiep")
	private String ngheNghiep;
	
	@Column(name="Anh")
	private String anh;
	
	@Column(name="TenTK")
	private String tenTK;
	
	@Column(name="MatKhau")
	private String matKhau;
	
	@Column(name="VaiTro")
	private boolean vaiTro;

	public NguoiDung() {
		super();
	}

	public NguoiDung(String id_KH, String hoTen, Date ngaySinh, boolean gioiTinh, String soDT, String email,
			String diaChi, String ngheNghiep, String anh, String tenTK, String matKhau, boolean vaiTro) {
		super();
		this.id_KH = id_KH;
		this.hoTen = hoTen;
		this.ngaySinh = ngaySinh;
		this.gioiTinh = gioiTinh;
		this.soDT = soDT;
		this.email = email;
		this.diaChi = diaChi;
		this.ngheNghiep = ngheNghiep;
		this.anh  = anh;
		this.tenTK = tenTK;
		this.matKhau = matKhau;
		this.vaiTro = vaiTro;
	}

	public String getId_KH() {
		return id_KH;
	}

	public void setId_KH(String id_KH) {
		this.id_KH = id_KH;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public boolean isGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(boolean gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getSoDT() {
		return soDT;
	}

	public void setSoDT(String soDT) {
		this.soDT = soDT;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getNgheNghiep() {
		return ngheNghiep;
	}

	public void setNgheNghiep(String ngheNghiep) {
		this.ngheNghiep = ngheNghiep;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public String getTenTK() {
		return tenTK;
	}

	public void setTenTK(String tenTK) {
		this.tenTK = tenTK;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public boolean isVaiTro() {
		return vaiTro;
	}

	public void setVaiTro(boolean vaiTro) {
		this.vaiTro = vaiTro;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	
}
