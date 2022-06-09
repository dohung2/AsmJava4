package com.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.asm.entity.NhanHieu;
import com.asm.util.JpaUtils;

public class NhanHieuDAO {
	
	public List<NhanHieu> selectAll() throws Exception {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		String sql = "SELECT c FROM NhanHieu c";
		TypedQuery<NhanHieu> query = em.createQuery(sql, NhanHieu.class);
		return query.getResultList();
	}
	
	public NhanHieu selectById(String key) throws Exception {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "Select c from NhanHieu c where c.tenNhanHieu = ?0";
		TypedQuery<NhanHieu> query = em.createQuery(jpql, NhanHieu.class);
		query.setParameter(0, key);
		return query.getSingleResult();
	}
}
