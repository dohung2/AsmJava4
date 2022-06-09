package com.asm.entity;

import java.io.Serializable;

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
@Table(name = "DonHangChiTiet")
public class DonHangChiTiet implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "ID_DHCT")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_DHCT;
	
	@Column(name = "SoLuong")
	private int soLuong;
	
	@Column(name = "Gia")
	private double gia;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "ID_DDH", referencedColumnName = "ID_DDH")
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	private DonDatHang donDatHang;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "ID_SP", referencedColumnName = "ID_SP")
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	private SanPham sanPham;

	public DonHangChiTiet() {
	}

	public DonHangChiTiet(int id_DHCT, int soLuong, double gia, DonDatHang donDatHang, SanPham sanPham) {
		this.id_DHCT = id_DHCT;
		this.soLuong = soLuong;
		this.gia = gia;
		this.donDatHang = donDatHang;
		this.sanPham = sanPham;
	}

	public int getId_DHCT() {
		return id_DHCT;
	}

	public void setId_DHCT(int id_DHCT) {
		this.id_DHCT = id_DHCT;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public double getGia() {
		return gia;
	}

	public void setGia(double gia) {
		this.gia = gia;
	}

	public DonDatHang getDonDatHang() {
		return donDatHang;
	}

	public void setDonDatHang(DonDatHang donDatHang) {
		this.donDatHang = donDatHang;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}
}
