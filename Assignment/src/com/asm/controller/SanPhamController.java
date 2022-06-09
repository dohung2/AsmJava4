package com.asm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.asm.dao.NhanHieuDAO;
import com.asm.dao.SanPhamDAO;
import com.asm.dto.GioHangDTO;
import com.asm.entity.NhanHieu;
import com.asm.entity.SanPham;
import com.microsoft.sqlserver.jdbc.StringUtils;

@WebServlet("/sanpham")
public class SanPhamController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	NhanHieuDAO nhDAO = new NhanHieuDAO();
	SanPhamDAO spDAO = new SanPhamDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		GioHangDTO cart = (GioHangDTO) session.getAttribute("gioHang");
		if (cart == null) {
			session.setAttribute("gioHang", new GioHangDTO());
		}
		
		try {
			List<NhanHieu> dsNhanHieu = nhDAO.selectAll();
			req.setAttribute("listCategory", dsNhanHieu);
			
			String tenNH = req.getParameter("tenNH");
			String maSP = req.getParameter("maSP");
			if (!StringUtils.isEmpty(maSP)) {
				doGetSanPham(req, resp, maSP);
			} else if (!StringUtils.isEmpty(tenNH)) {
				doGetDanhMuc(req, resp, tenNH);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void doGetSanPham(HttpServletRequest req, HttpServletResponse resp, String maSP) throws ServletException, IOException {
		SanPham sp = spDAO.selectById(maSP);
		req.setAttribute("product", sp);
		req.getRequestDispatcher("/views/web/shop-item.jsp").forward(req, resp);
	}
	
	protected void doGetDanhMuc(HttpServletRequest req, HttpServletResponse resp, String tenNH) throws ServletException, IOException {
		try {
			List<SanPham> dsSanPham = spDAO.findAllByTenNH(tenNH);
			req.setAttribute("listProduct", dsSanPham);
			
			NhanHieu nhanhieu = nhDAO.selectById(tenNH);
			req.setAttribute("category", nhanhieu);	
			req.getRequestDispatcher("/views/web/shop-product-list.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
