package com.gigsforgeeks.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gigsforgeeks.member.model.service.MemberService;
import com.gigsforgeeks.member.model.vo.Career;
import com.gigsforgeeks.member.model.vo.Certificate;
import com.gigsforgeeks.member.model.vo.Education;
import com.gigsforgeeks.member.model.vo.Member;
import com.gigsforgeeks.member.model.vo.Portfolio;
import com.gigsforgeeks.member.model.vo.Publication;

/**
 * Servlet implementation class MyAccountServlet
 */
@WebServlet("/MyAccount.me")
public class MyAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyAccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("loginUser") == null) {
			
			session.setAttribute("alertMsg", "로그인 후 이용가능한 서비스입니다.");
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);
			
		}else {
			
			
			
			RequestDispatcher view = request.getRequestDispatcher("views/member/myAccount.jsp");
			view.forward(request, response);
			
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
