package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;
import com.model.UserModel;

@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AdminController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("logout")) {
			HttpSession session = request.getSession(false);
			if(session != null) {
				session.invalidate();
			}
			response.sendRedirect("index.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("register")) {
			UserModel registerModel = new UserModel();
			registerModel.setFirstname(request.getParameter("firstname"));
			registerModel.setLastname(request.getParameter("lastname"));
			registerModel.setMobile(request.getParameter("mobile"));
			registerModel.setAddress(request.getParameter("address"));
			registerModel.setGender(request.getParameter("gender"));
			registerModel.setEmail(request.getParameter("email"));
			registerModel.setPassword(request.getParameter("password"));
			registerModel.setConfirm(request.getParameter("confirm"));				
			
			int x = new AdminDao().register(registerModel);
			if(x > 0) {
				response.sendRedirect("login.jsp");
			}else {
				response.sendRedirect("registration.jsp");
			}
		}
		
		else if(action.equalsIgnoreCase("login")) {
			UserModel loginModel = new UserModel();
			loginModel.setEmail(request.getParameter("email"));
			loginModel.setPassword(request.getParameter("password"));
			
			UserModel model = new AdminDao().login(loginModel);
			if(model != null) {
				HttpSession session = request.getSession(true);
				session.setAttribute("model", model);
				response.sendRedirect("afterLogin_index.jsp");
			}else {
				response.sendRedirect("login.jsp");
			}
		}
	}

}
