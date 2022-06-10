package com.asm.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "KichCo")
public class KichCo implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "Id_KC")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id_KC;
	
	@Column(name = "Id_SP")
	private String id_SP;
	
	@Column(name = "KichCo")
	private String kichCo;

	public KichCo() {
		super();
	}

	public KichCo(String id_SP, String kichCo) {
		this.id_SP = id_SP;
		this.kichCo = kichCo;
	}

	public String getId_KC() {
		return id_KC;
	}

	public void setId_KC(String id_KC) {
		this.id_KC = id_KC;
	}

	public String getId_SP() {
		return id_SP;
	}

	public void setId_SP(String id_SP) {
		this.id_SP = id_SP;
	}

	public String getKichCo() {
		return kichCo;
	}

	public void setKichCo(String kichCo) {
		this.kichCo = kichCo;
	}
	
}
