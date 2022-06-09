package com.asm.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "DonDatHang")
public class DonDatHang implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "ID_DDH")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_DDH;
	
	@Column(name = "NgayDat")
	private Date ngayDat;
	
	@Column(name = "GhiChu")
	private String ghiChu;
	
	@Column(name = "TongTien")
	private double tongTien;
	
	@Column(name = "TrangThai")
	private String trangThai;
	
	@Column(name = "SoDT")
	private String soDT;
	
	@Column(name = "DiaChi")
	private String diaChi;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "ID_KH", referencedColumnName = "ID_KH")
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	private NguoiDung nguoiDung;

	public DonDatHang() {
	}

	public DonDatHang(int id_DDH, Date ngayDat, String ghiChu, double tongTien, String trangThai, String diaChi, NguoiDung nguoiDung) {
		this.id_DDH = id_DDH;
		this.ngayDat = ngayDat;
		this.ghiChu = ghiChu;
		this.tongTien = tongTien;
		this.trangThai = trangThai;
		this.diaChi = diaChi;
		this.nguoiDung = nguoiDung;
	}

	public int getId_DDH() {
		return id_DDH;
	}

	public void setId_DDH(int id_DDH) {
		this.id_DDH = id_DDH;
	}

	public Date getNgayDat() {
		return ngayDat;
	}

	public void setNgayDat(Date ngayDat) {
		this.ngayDat = ngayDat;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public String getSoDT() {
		return soDT;
	}

	public void setSoDT(String soDT) {
		this.soDT = soDT;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public NguoiDung getNguoiDung() {
		return nguoiDung;
	}

	public void setNguoiDung(NguoiDung nguoiDung) {
		this.nguoiDung = nguoiDung;
	}
}
