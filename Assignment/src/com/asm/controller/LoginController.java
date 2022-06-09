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

@WebServlet({"/views/web/sign-in", "/views/web/sign-up", "/views/web/sign-out", "/views/web/forgot-password",
		"/views/web/change-password", "/views/web/edit-profile","/views/web/shop-index" })
public class LoginController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		if (uri.contains("sign-in")) {
			this.doSignIn(req, resp);
		} else if (uri.contains("sign-up")) {
			this.doSignUp(req, resp);
		} else if (uri.contains("sign-out")) {

		} else if (uri.contains("forgot-password")) {
		} else if (uri.contains("change-password")) {
		} else if (uri.contains("edit-profile")) {
			this.doEditProfile(req, resp);
		}
	}

	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			String id = req.getParameter("username");
			String pw = req.getParameter("password");
			try {
				NguoiDungDAO dao = new NguoiDungDAO();
				NguoiDung user = dao.selectById(id);

				if (!user.getMatKhau().equals(pw)) {
					req.setAttribute("message", "Sai mật khẩu!");
					
				} else {
					req.setAttribute("message", "Đăng nhập thành công!");
					req.getSession().setAttribute("user", user);
				//	resp.sendRedirect("/views/web/shop-index.jsp");
					req.getRequestDispatcher("/views/web/shop-index.jsp").forward(req, resp);

					return;
					
				}
			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("message", "Sai tên đăng nhập!");
			}
		}
		req.getRequestDispatcher("/views/web/shop-login.jsp").forward(req, resp);

	}

	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	private void doEditProfile(HttpServletRequest req, HttpServletResponse resp) {

	}
}
