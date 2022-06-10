package com.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.asm.entity.DanhMuc;
import com.asm.util.JpaUtils;

public class DanhMucDAO {
	public List<DanhMuc> selectAll() {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		String sql = "SELECT c FROM DanhMuc c";
		TypedQuery<DanhMuc> query = em.createQuery(sql, DanhMuc.class);
		return query.getResultList();
	}
	
	public DanhMuc findByIdDM(String id_DM) {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "SELECT c FROM DanhMuc c where c.id_DM = ?0";
		TypedQuery<DanhMuc> query = em.createQuery(jpql, DanhMuc.class);
		query.setParameter(0, id_DM);
		List<DanhMuc> result = query.getResultList();
		if (result.isEmpty()) {
			return null;
		}
		return result.get(0);
	}
}
