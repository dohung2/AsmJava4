package com.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.asm.entity.NguoiDung;
import com.asm.entity.SanPham;
import com.asm.util.JpaUtils;

public class NguoiDungDAO extends DAO<NguoiDung, String> {

	private EntityManager em = JpaUtils.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}
	
	
	@Override
	public void insert (NguoiDung entity) {
		try { 
			em.getTransaction().begin(); 
			em.persist(entity);
			em.getTransaction().commit();
			System.out.println("Thêm mới thành công!");
		} catch (Exception e) { 
			em.getTransaction().rollback(); // Hủy thao tác
			System.out.println("Thêm mới thất bại! " + e);
		}
		
	}

	@Override
	public void update (NguoiDung entity) {
		try { 
			em.getTransaction().begin(); 
			em.merge(entity);
			em.getTransaction().commit();
			System.out.println("Cập nhật thành công!");
		} catch (Exception e) { 
			em.getTransaction().rollback(); // Hủy thao tác
			System.out.println("Cập nhật thất bại!");
		}
		
	}

	@Override
	public void delete(String key) {
		NguoiDung entity = em.find(NguoiDung.class, key);
		try {
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
			System.out.println("Xóa thành công !");
		} catch (Exception e) {
			em.getTransaction().rollback();
			System.out.println("Xóa thất bại !"+ e);
		}
		
	}

	@Override
	public NguoiDung selectById(String key) {
		// TODO Auto-generated method stub
		//EntityManager em = JpaUtils.getEntityManager();
//		NguoiDung entity = em.find(NguoiDung.class, key);
//		return entity;
		String jpql = "Select u from NguoiDung u where u.tenTK = :TenTK"; //u.tenTK => đặc tên thuộc tính class N.Dùng
		TypedQuery<NguoiDung> query = em.createQuery(jpql, NguoiDung.class);
		query.setParameter("TenTK", key);
		return query.getSingleResult();
		
	}

	 @Override
	public List<NguoiDung> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}



}
