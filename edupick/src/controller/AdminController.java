package controller;

import java.io.IOException; 
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Domain.PageMaker;
import Domain.SearchCriteria;
import service.AdminDao;
import service.MemberDao;
import service.MemberVo;
	@WebServlet("/Admin")
	public class AdminController extends HttpServlet{
		private static final long serialVersionUID = 1L;
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setCharacterEncoding("UTF-8");
			//절대경로
			String uri = request.getRequestURI();
			//프로젝트 이름의 길이
			int len = request.getContextPath().length();
			//프로젝트 이름을 뺀 가상경로
			String str = uri.substring(len);
		
			//관리자 메인
		if (str.equals("/Admin/admin.do")) {
			
		    RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin.jsp");
			rd.forward(request, response);	
					
			//관리자 계정관리
		}else if(str.equals("/Admin/adminManage.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminManage.jsp");
			rd.forward(request, response);	
			
			
			
		}else if(str.equals("/Admin/adminMemberDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminMemberDetail.jsp");
			rd.forward(request, response);	
			
		
		}
			
			else if(str.equals("/Admin/adminMemberManage.do")) {
				
				//페이징값 파라미터로 넘겨주기
				String page = request.getParameter("page");
				//리스트에 아무런 게시물이 없어도 1이 보이도록 한다.
				if (page == null) page = "1";
				int pagex = Integer.parseInt(page);
				System.out.println(pagex);
				
				String keyword = request.getParameter("keyword");
				if(keyword == null) keyword = "";
					
				SearchCriteria scri = new SearchCriteria();
				scri.setPage(pagex);
				scri.setKeyword(keyword);
				
				PageMaker pm = new PageMaker();
				pm.setScri(scri);
				
				AdminDao ad = new AdminDao();
				int cnt = ad.memberTotal(keyword);
				
				pm.setTotalCount(cnt);
				
				
				ArrayList<MemberVo> alist = ad.memberSelectAll();
				
				request.setAttribute("alist", alist);
				request.setAttribute("pm", pm);
				
				RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminMemberManage.jsp");
				rd.forward(request, response);
				
			
			
			
			
		}
			else if(str.equals("/Admin/adminBoardAdd.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardAdd.jsp");
			rd.forward(request, response);	
			
		
		}
			else if(str.equals("/Admin/adminBoardDetail.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardDetail.jsp");
			rd.forward(request, response);	
			
		
		}
			else if(str.equals("/Admin/adminBoardManage.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminBoardManage.jsp");
			rd.forward(request, response);	
			
		}
			else if(str.equals("/Admin/adminOther.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminOther.jsp");
			rd.forward(request, response);	
			
		}
			else if(str.equals("/Admin/adminQuizAdd.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminQuizAdd.jsp");
			rd.forward(request, response);	
			
		}
			else if(str.equals("/Admin/adminAnswer.do")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminAnswer.jsp");
			rd.forward(request, response);	
			
		}
	
		
	}
		
		
		
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doGet(request, response);
	}

	
	
	}


