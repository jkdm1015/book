package com.hompage.member.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"/member/Agree.soso","/member/loginForm.soso",
							"/member/SignUpNew.soso","/member/loginProc.soso"})
public class MeberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
	switch (request.getServletPath()) {
	
	case "/member/loginForm.soso" :
		RequestDispatcher dispatcher1 = request.getRequestDispatcher("/views/member/loginForm.jsp");
		dispatcher1.forward(request, response);
		break;
	
	case "/member/Agree.soso" :
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/member/Agree.jsp");
		dispatcher.forward(request, response);
		break;
		
	case "/member/SignUpNew.soso" :
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/member/SignUpNew.jsp");
		dispatcher2.forward(request, response);
		break;
		
	case "/member/loginProc.soso" :
		RequestDispatcher dispatcher3 = request.getRequestDispatcher("/views/member/SignUpNew.jsp");
		dispatcher3.forward(request, response);
		break;

	default:
		break;
	}
	}

}
