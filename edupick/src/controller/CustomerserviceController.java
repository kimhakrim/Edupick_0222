package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/Customerservice")
public class CustomerserviceController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		//절대경로
		String uri = request.getRequestURI();
		//프로젝트 이름의 길이
		int len = request.getContextPath().length();
		//프로젝트 이름을 뺀 가상경로
		String str = uri.substring(len);	
		
		if(str.equals("/Customerservice/customerservice.do")) {
			
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/customerservice.jsp");
			rd.forward(request, response);						
		
		}else if(str.equals("/Customerservice/customerservicedetail.do")) {
			
					
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/customerservicedetail.jsp");
			rd.forward(request, response);						
		
		}
	
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);

}
}		