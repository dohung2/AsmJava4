package com.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import com.asm.entity.SanPham;
import com.asm.util.JpaUtils;

public class SanPhamDAO extends DAO<SanPham, String> {

	@Override
	public void insert(SanPham entity) {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction tran = em.getTransaction();
		try {
			tran.begin();
			em.persist(entity);
			tran.commit();
		} catch (Exception e) {
			tran.rollback();
			e.printStackTrace();
			throw e;
		}finally {
			em.close();
		}
	}

	@Override
	public void update(SanPham entity) {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction tran = em.getTransaction();
		try {
			tran.begin();
			em.merge(entity);
			tran.commit();
		} catch (Exception e) {
			tran.rollback();
			e.printStackTrace();
			throw e;
		}finally {
			em.close();
		}
	}

	@Override
	public void delete(String key) {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction tran = em.getTransaction();
		try {
			tran.begin();
			em.merge(key);
			tran.commit();
		} catch (Exception e) {
			tran.rollback();
			e.printStackTrace();
			throw e;
		}finally {
			em.close();
		}
	}

	@Override
	public SanPham selectById(String key) {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "Select p from SanPham p where p.id_SP = ?0";
		TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
		query.setParameter(0, key);
		return query.getSingleResult();
	}

	@Override
	public List<SanPham> selectAll() {
		// TODO Auto-generated method stub
		EntityManager em = JpaUtils.getEntityManager();
		String sql = "SELECT p FROM SanPham p";
		TypedQuery<SanPham> query = em.createQuery(sql, SanPham.class);
		return query.getResultList();
	}
	
    public List<SanPham> findAllByTenNH(String tenNH){
    	EntityManager em = JpaUtils.getEntityManager();
		String sql = "SELECT o FROM SanPham o WHERE o.tenNhanHieu.tenNhanHieu = ?0";
		TypedQuery<SanPham> query = em.createQuery(sql, SanPham.class);
		query.setParameter(0, tenNH);
		return query.getResultList();
    }
    
	public List<SanPham> findAllBySales(int sl) {
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "Select p from SanPham p where p.slTonKho >= ?0";
		TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
		query.setParameter(0, sl);
		return query.getResultList();
	}
}
