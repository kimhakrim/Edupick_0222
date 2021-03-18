package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
	@WebServlet("/Admin2")
	public class Admin2Controller extends HttpServlet{
		private static final long serialVersionUID = 1L;
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setCharacterEncoding("UTF-8");
			//절대경로
			String uri = request.getRequestURI();
			//프로젝트 이름의 길이
			int len = request.getContextPath().length();
			//프로젝트 이름을 뺀 가상경로
			String str = uri.substring(len);
		
			
			if (str.equals("/Admin2/adminInstituteAdd.do")) {
			
		    RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminInstituteAdd.jsp");
			rd.forward(request, response);	
					
			//관리자 계정관리
		}else if(str.equals("/Admin2/adminInstituteDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminInstituteDetail.jsp");
			rd.forward(request, response);	
			
		
			
		}else if(str.equals("/Admin2/adminInstituteModify.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminInstituteModify.jsp");
			rd.forward(request, response);	
			
		
			
		}else if(str.equals("/Admin2/adminCoures.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminCoures.jsp");
			rd.forward(request, response);	
		
	
		}else if(str.equals("/Admin2/adminCouresDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminCouresDetail.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminCouresModify.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminCouresModify.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminCommunityDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminCommunityDetail.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminOrderManage.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminOrderManage.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminPayDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminPayDetail.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminProductManage.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminProductManage.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminReviewDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminReviewDetail.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminStudentDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminStudentDetail.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminStudentModify.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminStudentModify.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminVisitDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminVisitDetail.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminPageManage.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminPageManage.jsp");
			rd.forward(request, response);	
		
		
		}else if(str.equals("/Admin2/adminAdviceDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminAdviceDetail.jsp");
			rd.forward(request, response);	
		
		}else if(str.equals("/Admin2/adminBoardManage.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardManage.jsp");
			rd.forward(request, response);	
		
		}else if(str.equals("/Admin2/adminBoardModify.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardModify.jsp");
			rd.forward(request, response);	
		
		}else if(str.equals("/Admin2/adminBoardDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardDetail.jsp");
			rd.forward(request, response);	
		
		}else if(str.equals("/Admin2/adminBoardAdd.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardAdd.jsp");
			rd.forward(request, response);	
		
		}else if(str.equals("/Admin2/adminOther.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminOther.jsp");
			rd.forward(request, response);	
		
		}
			
			
	
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doGet(request, response);
	}
}


