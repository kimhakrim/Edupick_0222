package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

	@WebServlet("/Notice")
	public class NoticeController extends HttpServlet {
	
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setCharacterEncoding("UTF-8");
			//������
			String uri = request.getRequestURI();
			//������Ʈ �̸��� ����
			int len = request.getContextPath().length();
			//������Ʈ �̸��� �� ������
			String str = uri.substring(len);	

			if(str.equals("/Notice/notice.do")) {
				
				
				RequestDispatcher rd = request.getRequestDispatcher("/jsp/notice.jsp");
				rd.forward(request, response);						
			
			}else if(str.equals("/Notice/noticedetail.do")) {
				
						
				RequestDispatcher rd = request.getRequestDispatcher("/jsp/noticedetail.jsp");
				rd.forward(request, response);	
		
			}
		}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

}
}		