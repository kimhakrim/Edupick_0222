package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


	@WebServlet("/Myservice")
	public class MyserviceController extends HttpServlet{
		private static final long serialVersionUID = 1L;
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("1");
			request.setCharacterEncoding("UTF-8");
			//절대경로
			String uri = request.getRequestURI();
			//프로젝트 이름의 길이
			int len = request.getContextPath().length();
			//프로젝트 이름을 뺀 가상경로
			String str = uri.substring(len);
			
			
			 if(str.equals("/Myservice/myservice.do")) {
				
				
				RequestDispatcher rd = request.getRequestDispatcher("/jsp/myservice.jsp");
				rd.forward(request, response);
				
			 }else if(str.equals("/Myservice/enrolment.do")) {
					
					
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/enrolment.jsp");
					rd.forward(request, response);						
				
			 }else if(str.equals("/Myservice/payment.do")) {
					
							
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/payment.jsp");
					rd.forward(request, response);						
				
			 }else if(str.equals("/Myservice/paymentcomplete.do")) {
					
							
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/paymentcomplete.jsp");
					rd.forward(request, response);						
				
			 }else if(str.equals("/Myservice/learnerinformation.do")) {
					
							
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/learnerinformation.jsp");
					rd.forward(request, response);						
				
			 }else if(str.equals("/Myservice/visitpayment.do")) {
					
							
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/visitpayment.jsp");
					rd.forward(request, response);						
				
			 }else if(str.equals("/Myservice/seecart.do")) {
					
							
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/seecart.jsp");
					rd.forward(request, response);						
				
			 }else if(str.equals("/Myservice/cart.do")) {
					
							
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/cart.jsp");
					rd.forward(request, response);						
				
			 }else if(str.equals("/Myservice/paymentmodify.do")) {
					
					
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/paymentmodify.jsp");
					rd.forward(request, response);						
				
			 }else if(str.equals("/Myservice/paymentchange.do")) {
					
					
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/paymentchange.jsp");
					rd.forward(request, response);						
				
			 }
	
			 
		}

				

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
			
			
		}
	
	
	
}
	
	
	
	
	
	

