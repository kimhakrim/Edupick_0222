package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
	@WebServlet("/Admin")
	public class AdminController extends HttpServlet{
		private static final long serialVersionUID = 1L;
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setCharacterEncoding("UTF-8");
			//������
			String uri = request.getRequestURI();
			//������Ʈ �̸��� ����
			int len = request.getContextPath().length();
			//������Ʈ �̸��� �� ������
			String str = uri.substring(len);
		
			//������ ����
		if (str.equals("/Admin/admin.do")) {
			
		    RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin.jsp");
			rd.forward(request, response);	
					
			//������ ��������
		}else if(str.equals("/Admin/adminManage.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminManage.jsp");
			rd.forward(request, response);	
			
		
			
		}else if(str.equals("/Admin/adminMemberDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminMemberDetail.jsp");
			rd.forward(request, response);	
			
		
		}else if(str.equals("/Admin/adminMemberManage.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminMemberManage.jsp");
			rd.forward(request, response);	
			
		
		}else if(str.equals("/Admin/adminBoardAdd.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardAdd.jsp");
			rd.forward(request, response);	
			
		
		}else if(str.equals("/Admin/adminBoardDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardDetail.jsp");
			rd.forward(request, response);	
			
		
		}else if(str.equals("/Admin/adminBoardManage.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardManage.jsp");
			rd.forward(request, response);	
			
		}else if(str.equals("/Admin/adminOther.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminOther.jsp");
			rd.forward(request, response);	
			
		}else if(str.equals("/Admin/adminQuizAdd.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminQuizAdd.jsp");
			rd.forward(request, response);	
			
		}else if(str.equals("/Admin/adminAnswer.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminAnswer.jsp");
			rd.forward(request, response);	
			
		}
	
		
	}
		
		
		
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doGet(request, response);
	}

	
	
	}


