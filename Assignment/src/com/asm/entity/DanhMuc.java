package com.asm.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DanhMuc")
public class DanhMuc implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "ID_DM")
	private String id_DM;
	
	@Column(name = "TenDM")
	private String tenDM;
	
	public String getId_DM() {
		return id_DM;
	}

	public void setId_DM(String id_DM) {
		this.id_DM = id_DM;
	}

	public String getTenDM() {
		return tenDM;
	}

	public void setTenDM(String tenDM) {
		this.tenDM = tenDM;
	}
}
