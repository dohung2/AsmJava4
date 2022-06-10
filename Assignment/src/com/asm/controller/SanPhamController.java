package com.asm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.asm.dao.DanhMucDAO;
import com.asm.dao.SanPhamDAO;
import com.asm.dto.GioHangDTO;
import com.asm.entity.DanhMuc;
import com.asm.entity.SanPham;
import com.microsoft.sqlserver.jdbc.StringUtils;

@WebServlet("/sanpham")
public class SanPhamController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	DanhMucDAO dmDAO = new DanhMucDAO();
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
			List<DanhMuc> dsDanhMuc = dmDAO.selectAll();
			req.setAttribute("listCategory", dsDanhMuc);
			
			String id_DM = req.getParameter("id_DM");
			String tenDM = req.getParameter("tenDM");
			String maSP = req.getParameter("maSP");
			doGetPopular(req, resp, maSP);
			if (!StringUtils.isEmpty(maSP)) {
				doGetSanPham(req, resp, maSP);
				
			} else if (!StringUtils.isEmpty(tenDM)) {
				doGetDanhMuc(req, resp, tenDM);
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
	
	protected void doGetPopular(HttpServletRequest req, HttpServletResponse resp, String maSP) throws ServletException, IOException {
		SanPham sp = spDAO.selectById(maSP);
		List<SanPham> listProduct = spDAO.findAllBySP(sp.getTenDM(), sp.getLoai());
		System.out.println(listProduct.size());
		req.setAttribute("listProductPopular", listProduct);
	}
	
	protected void doGetDanhMuc(HttpServletRequest req, HttpServletResponse resp, String id_DM) throws ServletException, IOException {
		List<SanPham> listProduct = spDAO.findAllByIdDM(id_DM);
		req.setAttribute("listProduct", listProduct);
		
		DanhMuc category = dmDAO.findByIdDM(id_DM);
		req.setAttribute("category", category);
		
		req.getRequestDispatcher("/views/web/shop-product-list.jsp").forward(req, resp);
	}
}
