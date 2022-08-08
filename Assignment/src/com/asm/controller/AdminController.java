package com.asm.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

import com.asm.dao.NguoiDungDAO;
import com.asm.dao.SanPhamDAO;
import com.asm.entity.NguoiDung;
import com.asm.entity.SanPham;


@WebServlet({"/Admin", "/Admin/User", "/Admin/UserCreate", "/Admin/UserUpdate", "/Admin/UserDelete", "/Admin/UserReset", "/Admin/UserEdit", "/Admin/Product", "/Admin/ProductCreate", "/Admin/ProductUpdate", "/Admin/ProductDelete", "/Admin/ProductReset", "/Admin/ProductEdit"})
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	NguoiDungDAO ndDAO = new NguoiDungDAO();
	SanPhamDAO spDAO = new SanPhamDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		
		if(uri.contains("/User")) {
			if(uri.contains("UserDelete")) {
				deleteU(req, resp);
			}
			if(uri.contains("UserEdit")) {
				editU(req, resp);
			}
			findAllUser(req, resp);
			req.getRequestDispatcher("/views/web/admin-users.jsp").forward(req, resp);
		}else if(uri.contains("/Product")) {
			if(uri.contains("ProductDelete")) {
				deleteP(req, resp);
			}
			if(uri.contains("ProductEdit")) {
				editP(req, resp);
			}
			findAllProduct(req, resp);
			req.getRequestDispatcher("/views/web/admin-products.jsp").forward(req, resp);
		}else {
			req.getRequestDispatcher("/views/web/admin-index.jsp").forward(req, resp);
		}

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String uri = req.getRequestURI();
		if (uri.contains("/User")) {
			if(uri.contains("UserCreate")) {
				createU(req, resp);
			}
			if(uri.contains("UserUpdate")) {
				updateU(req, resp);
			}
			if(uri.contains("UserDelete")) {
				deleteU(req, resp);
			}
			if(uri.contains("UserEdit")) {
				editU(req, resp);
			}
			if(uri.contains("UserReset")) {
				resetU(req, resp);
			}
			
			findAllUser(req, resp);
			req.getRequestDispatcher("/views/web/admin-users.jsp").forward(req, resp);
		}else {
			if(uri.contains("ProductCreate")) {
				createP(req, resp);
			}
			if(uri.contains("ProductUpdate")) {
				updateP(req, resp);
			}
			if(uri.contains("ProductDelete")) {
				deleteP(req, resp);
			}
			if(uri.contains("ProductEdit")) {
				editP(req, resp);
			}
			if(uri.contains("ProductReset")) {
				resetP(req, resp);
			}
			findAllProduct(req, resp);
			req.getRequestDispatcher("/views/web/admin-products.jsp").forward(req, resp);
		}	
	}
	
	private void findAllUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {			
			List<NguoiDung> list = ndDAO.selectAll();	
			req.setAttribute("users", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Error: "+e.getMessage());
		}
	}
	
	private void findAllProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {			
			List<SanPham> list = spDAO.selectAll();	
			req.setAttribute("products", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Error: "+e.getMessage());
		}
	}
	
	private void createU(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			NguoiDung user = new NguoiDung();
			
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("ngaySinh"));
			DateTimeConverter dateConverter = new DateConverter(date);
			dateConverter.setPattern("yyyy-MM-dd");
			ConvertUtils.register(dateConverter, Date.class);
			
			BeanUtils.populate(user, request.getParameterMap());
			
			ndDAO.insert(user);
			request.setAttribute("message", "User created Successfully!");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "Database Error or User existed!");
		}
	}
	
	private void updateU(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			NguoiDung user = new NguoiDung();
			BeanUtils.populate(user, request.getParameterMap());
			
			ndDAO.update(user);
			request.setAttribute("disabled", "");
			request.setAttribute("message", "User updated Successfully!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("disabled", "disabled");
			request.setAttribute("message", e.getMessage());
		}
	}
	
	private void deleteU(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String getID = req.getParameter("id_KH");
			if(getID != null) {
				ndDAO.delete(getID);
				req.setAttribute("disabled", "");
				req.setAttribute("message", "User deleted Successfully!");
			}else {
				req.setAttribute("message", "No user selected?");
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", e.getMessage());
		}
	}
	
	private void editU(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String getID = req.getParameter("id_KH");
			System.out.println("Edit: id: "+ getID);
			NguoiDung user = ndDAO.selectById(getID);
			
			Date date = user.getNgaySinh(); 
		    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
		    String strDate= formatter.format(date);
		    
		    req.setAttribute("disabled", "disabled");
		    req.setAttribute("user_bdate", strDate);
			req.setAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", e.getMessage());
			req.setAttribute("disabled", "");
		}
	}
	
	private void resetU(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("user", new NguoiDung());
		request.setAttribute("disabled", "");
	}
	
	private void createP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			SanPham prod = new SanPham();
			BeanUtils.populate(prod, request.getParameterMap());
			
			File dir = new File(request.getServletContext().getRealPath("img/products"));
			if(!dir.exists()) {
				dir.mkdirs();
			}
			
			Part prodImage = request.getPart("anh");		
			System.out.println("prodImage: " + prodImage);
			File imageFile = new File(dir,prodImage.getSubmittedFileName());
			
			File dst = new File("img/products",imageFile.getName());
			if(!dst.getParentFile().exists()) {
				dst.mkdirs();
			}
			
			prodImage.write(imageFile.getAbsolutePath());
			
			Path from = Paths.get(imageFile.getAbsolutePath());
			Path to = Paths.get(dst.getAbsolutePath());
			Files.copy(from, to,StandardCopyOption.REPLACE_EXISTING);
			
			prod.setAnh(imageFile.getName());
			System.out.println("anh " + imageFile.getName());
			/*System.out.println("id: "+prod.getId_KH()+"|name: "+user.getHoTen()+"|birtday: " +user.getNgaySinh() +"|user: "+user.getTenTK()+ "|pass: " + user.getMatKhau() +"|Role: "+user.getVaiTro()+"|Email: "+user.getEmail());*/
			spDAO.insert(prod);
			request.setAttribute("message", "Sản phẩm created Successfully!");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "Database Error or Sản phẩm existed!");
		}
	}
	
	private void updateP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			SanPham prod = new SanPham();
			BeanUtils.populate(prod, request.getParameterMap());
			
			spDAO.update(prod);
			request.setAttribute("disabled", "");
			request.setAttribute("message", "Sản phẩm updated Successfully!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("disabled", "disabled");
			request.setAttribute("message", e.getMessage());
		}
	}
	
	private void deleteP(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String getID = req.getParameter("id_SP");
			if(getID != null) {
				spDAO.delete(getID);
				req.setAttribute("disabled", "");
				req.setAttribute("message", "Sản phẩm deleted Successfully!");
			}else {
				req.setAttribute("message", "No Sản phẩm selected?");
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", e.getMessage());
		}
	}
	
	private void editP(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String getID = req.getParameter("id_SP");
			System.out.println("Edit: id: "+ getID);
			SanPham prod = spDAO.selectById(getID);
			
		    req.setAttribute("disabled", "disabled");
			req.setAttribute("prod", prod);
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", e.getMessage());
			req.setAttribute("disabled", "");
		}
	}
	
	private void resetP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("prod", new SanPham());
		request.setAttribute("disabled", "");
	}
	
	
	
}
