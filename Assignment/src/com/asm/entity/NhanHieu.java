package com.asm.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NhanHieu")
public class NhanHieu implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "TenNhanHieu")
	private String tenNhanHieu;

	public NhanHieu() {
	}
	
	public NhanHieu(String tenNhanHieu) {
		this.tenNhanHieu = tenNhanHieu;
	}

	public String getTenNhanHieu() {
		return tenNhanHieu;
	}

	public void setTenNhanHieu(String tenNhanHieu) {
		this.tenNhanHieu = tenNhanHieu;
	}	
}
