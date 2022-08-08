package com.asm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.asm.dao.NguoiDungDAO;
import com.asm.entity.NguoiDung;


@WebServlet({"/sign-in", "/sign-up", "/sign-out", "/edit-profile"})
public class LoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String method = req.getMethod();
		if (method.equalsIgnoreCase("GET")) {
			String uri = req.getRequestURI();
			if (uri.contains("sign-out")) {
				this.doSignOut(req, resp);
				return;
			}
		}

		req.getRequestDispatcher("/views/web/shop-login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = req.getMethod();	
		if (method.equalsIgnoreCase("POST")) {
			String uri = req.getRequestURI();
			if (uri.contains("sign-in")) {
				this.doSignIn(req, resp);
				
			} else if (uri.contains("sign-up")) {
				this.doSignUp(req, resp);
				
			} else if (uri.contains("forgot-password")) {
			} else if (uri.contains("change-password")) {
			} else if (uri.contains("edit-profile")) {
				this.doEditProfile(req, resp);
			}
		}
	}

	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
				String tk = req.getParameter("username");
				String pw = req.getParameter("password");
				
				NguoiDungDAO dao = new NguoiDungDAO();
				NguoiDung user = dao.selectByAccount(tk);
				if (!user.getMatKhau().equals(pw)) {
				/* req.setAttribute("message", "Sai mật khẩu!"); */
					req.getSession().setAttribute("message", "Sai mật khẩu!");
					resp.sendRedirect("sign-in");
				} else {
					HttpSession session = req.getSession();
					session.setAttribute("user", user);
					if (user.getVaiTro()) {
						resp.sendRedirect("admin");
					}else {
						resp.sendRedirect("index");
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				req.getSession().setAttribute("message", "Tài khoản không tồn tại!");
				resp.sendRedirect("sign-in");
			}
	}
	
	private void doSignOut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.removeAttribute("user");
		session.removeAttribute("cart");
		resp.sendRedirect("index");
	}

	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	private void doEditProfile(HttpServletRequest req, HttpServletResponse resp) {

	}
}
