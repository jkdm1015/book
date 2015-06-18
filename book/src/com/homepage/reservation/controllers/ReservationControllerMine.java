package com.homepage.reservation.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.reservation.beans.R​eservationBean;

/**
 * Servlet implementation class reservationControllerMine
 */
@WebServlet({"/result.soso","/del.soso","/reservation.soso"})
public class ReservationControllerMine extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 String memberId;
	 String pass;
	 R​eservationBean bean = new R​eservationBean();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  switch (request.getServletPath()) {
		  case "/reservation.soso" : RequestDispatcher dispatcher = request.getRequestDispatcher("/views/reservation/reservationSeatForm.jsp");
		  							dispatcher.forward(request, response); break;
		  case "/result.soso" : goResult(request, response); break;
		  case "/del.soso" : goDel(request, response); break;
		  default:
			   System.out.println("페이지 없음");
			   break;
		  }
	}
	private void goResult(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  goData(request);
	  RequestDispatcher dispatcher = request.getRequestDispatcher("/views/reservation/resultForm.jsp");
	  dispatcher.forward(request, response);
	  
	}
	 private void goDel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  request.setAttribute("memberId", memberId);
	  request.setAttribute("seatNo", Integer.toString(bean.getSeatNo()));
	  request.setAttribute("wanted", bean.getDateAndTime());
	  RequestDispatcher dispatcher = request.getRequestDispatcher("/views/reservation/delForm.jsp");
	  dispatcher.forward(request, response);
	 }
	 private void goData(HttpServletRequest request) {
	  
	  memberId = request.getParameter("memberId");
	  pass = request.getParameter("pass");
	  bean.setSeatNo(Integer.parseInt(request.getParameter("seatNo")));
	  bean.setDateAndTime(request.getParameter("wanted"));
	  
	  /*time = request.getParameter("time");*/
	  request.setAttribute("memberId", memberId);
	  request.setAttribute("seatNo", bean.getSeatNo());
	  request.setAttribute("wanted", bean.getDateAndTime());
	  /*request.setAttribute("time", time);*/
	 }

}
