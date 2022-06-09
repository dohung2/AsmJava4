package com.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;

import com.asm.entity.DonDatHang;
import com.asm.entity.DonHangChiTiet;
import com.asm.util.JpaUtils;

public class GioHangDAO {
	public boolean insertCart(DonDatHang donDatHang, List<DonHangChiTiet> listDHCT) {
		/*
		 	Insert vao table HoaDon truoc sau do moi insert vao table HoaDonChiTiet
		 	Neu insert vao HoaDon that bai thi khong insert vao HDCT
		 	Neu insert vao HDCT that bai thi rollback data (tuc la huy data da insert vao HoaDon)
		 */
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(donDatHang);
			int maHDVuaInsert = donDatHang.getId_DDH();
			if (maHDVuaInsert > 0) {
				// neu insert thanh cong thi insert tiep HDCT
				donDatHang.setId_DDH(maHDVuaInsert);
				listDHCT.forEach(dhct -> em.persist(dhct));
			} else {
				return false;
			}
			em.getTransaction().commit();
			System.out.println("Create succeed");
			return true;
		} catch (Exception e) {
			em.getTransaction().rollback();
			System.out.println("Cannot insert entity");
			e.printStackTrace();
			return false;
		}
	}
}
