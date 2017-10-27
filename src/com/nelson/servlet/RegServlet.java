package com.nelson.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;







import com.nelson.dao.UserDao;
import com.nelson.domain.User;
import com.nelson.utils.C3p0;


@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		User u = new User();
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setSex(request.getParameter("sex"));
		u.setEmail(request.getParameter("email"));
		u.setPhone(request.getParameter("phone"));
		
		
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		String sex = request.getParameter("sex");
//		String email = request.getParameter("email");
//		String phone = request.getParameter("phone");
		Connection con = C3p0.getConnection();
		if (con != null) {
			UserDao ud = new UserDao();
			try {
				ud.add(u);
				
				
//				String sql = "insert into user_ifon(username,password,sex,email,phone) values(?,?,?,?,?) ";
//				PreparedStatement pstm = con.prepareStatement(sql);
//				pstm.setString(1, username);
//				pstm.setString(2, password);
//				pstm.setString(3, sex);
//				pstm.setString(4, email);
//				pstm.setString(5, phone);
//				pstm.executeUpdate();
				
				request.getRequestDispatcher("/login.jsp").forward(request, response);
		
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}else {
			  response.sendError(500, "���ݿ����Ӵ���");
		}
	}

}
