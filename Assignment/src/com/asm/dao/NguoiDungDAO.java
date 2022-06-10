package com.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.asm.entity.NguoiDung;
import com.asm.entity.SanPham;
import com.asm.util.JpaUtils;

public class NguoiDungDAO extends DAO<NguoiDung, String> {

	@Override
	public void insert(NguoiDung entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(NguoiDung entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String key) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public NguoiDung selectById(String key) {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		NguoiDung entity = em.find(NguoiDung.class, key);
		return entity;
	}

	@Override
	public List<NguoiDung> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}


}
