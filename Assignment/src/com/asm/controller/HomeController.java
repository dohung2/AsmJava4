package com.asm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.asm.dao.NguoiDungDAO;
import com.asm.dao.NhanHieuDAO;
import com.asm.dao.SanPhamDAO;
import com.asm.entity.NguoiDung;
import com.asm.entity.SanPham;


@WebServlet({"/index", "/sign-in", "/sign-up", "/sign-out"})
public class HomeController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	SanPhamDAO spDAO = new SanPhamDAO();
	NhanHieuDAO nhDAO = new NhanHieuDAO();
	NguoiDungDAO ndDAO = new NguoiDungDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGetIndex(req, resp);
		doGetPopular(req, resp);
		doGetSales(req, resp);
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
}
