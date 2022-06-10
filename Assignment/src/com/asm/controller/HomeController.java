package com.asm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asm.dao.DanhMucDAO;
import com.asm.dao.NguoiDungDAO;
import com.asm.dao.SanPhamDAO;
import com.asm.entity.DanhMuc;
import com.asm.entity.SanPham;

@WebServlet({"/index", "/sign-in", "/sign-up", "/sign-out"})
public class HomeController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	SanPhamDAO spDAO = new SanPhamDAO();
	NguoiDungDAO ndDAO = new NguoiDungDAO();
	DanhMucDAO dmDAO = new DanhMucDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String tenDM = req.getParameter("tenDM");
		
		doGetIndex(req, resp);
		doGetPopular(req, resp);
		doGetSales(req, resp);
		doGetDanhMuc(req, resp);
		req.getRequestDispatcher("/views/web/shop-index.jsp").forward(req, resp);
	}
	
	protected void doGetIndex(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<SanPham> listProduct = spDAO.selectAll();
		System.out.println(listProduct.size());
		req.setAttribute("listProduct", listProduct);
	}
	
	protected void doGetPopular(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<SanPham> listProduct = spDAO.findAllByTenNH("Nike");
		System.out.println(listProduct.size());
		req.setAttribute("listProductPopular", listProduct);
	}
	
	protected void doGetSales(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<SanPham> listProduct = spDAO.findAllBySales(30);
		System.out.println(listProduct.size());
		req.setAttribute("listProductSales", listProduct);
	}
	
	protected void doGetDanhMuc(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<DanhMuc> listCategory = dmDAO.selectAll();
		System.out.println("danh muc" + listCategory.size());
		req.setAttribute("listCategory", listCategory);
	}
}
