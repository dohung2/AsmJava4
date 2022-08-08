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
import com.asm.entity.DanhMuc;
import com.asm.entity.KichCo;
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
		doGetDanhMuc(req, resp);
		
		try {
			String id_DM = req.getParameter("id_DM");
			String maSP = req.getParameter("maSP");
			
			if (!StringUtils.isEmpty(maSP)) {
				doGetPopular(req, resp, maSP);
				doGetKichCo(req, resp, maSP);
				doGetSanPham(req, resp, maSP);
			} else if (!StringUtils.isEmpty(id_DM)) {
				doGetSP_DanhMuc(req, resp, id_DM);
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
		List<SanPham> listProduct = spDAO.findAllBySP(sp.getId_DM(), sp.getLoai());
		req.setAttribute("listProductPopular", listProduct);
	}
	
	protected void doGetDanhMuc(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<DanhMuc> listCategory = dmDAO.selectAll();
		req.setAttribute("listCategory", listCategory);
	}
	
	protected void doGetSP_DanhMuc(HttpServletRequest req, HttpServletResponse resp, String id_DM) throws ServletException, IOException {
		List<SanPham> listProduct = spDAO.findAllByIdDM(id_DM);
		req.setAttribute("listProduct", listProduct);
		
		DanhMuc category = dmDAO.findByIdDM(id_DM);
		req.setAttribute("category", category);
		
		req.getRequestDispatcher("/views/web/shop-product-list.jsp").forward(req, resp);
	}
	
	protected void doGetKichCo(HttpServletRequest req, HttpServletResponse resp, String id_SP) throws ServletException, IOException {
		List<KichCo> listSize = spDAO.findByKichCo(id_SP);
		
		req.setAttribute("listSize", listSize);
	}
}
