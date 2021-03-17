package controller;

import java.io.IOException;      
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





import service.LicenseeDao;
import service.LicenseeVo;
import service.MemberDao;
import service.MemberVo;




@WebServlet("/Common")
public class CommonController extends HttpServlet{
   private static final long serialVersionUID = 1L;
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("1");
      request.setCharacterEncoding("UTF-8");
      //������
      String uri = request.getRequestURI();
      //������Ʈ �̸��� ����
      int len = request.getContextPath().length();
      //������Ʈ �̸��� �� ������
      String str = uri.substring(len);
      
      
      
         //intro ������ ������
      if (str.equals("/Common/intro.do")) {
            
          RequestDispatcher rd = request.getRequestDispatcher("/jsp/intro.jsp");
         rd.forward(request, response);   
               
         
      }else if(str.equals("/Common/main.do")) {
         
         RequestDispatcher rd = request.getRequestDispatcher("/jsp/main.jsp");
         rd.forward(request, response);   
         
      
         //main���������� ȸ������ ��ư ���� �� ������   
      }else if(str.equals("/Common/joinstart.do")) {
         
         RequestDispatcher rd = request.getRequestDispatcher("/jsp/joinstart.jsp");
         rd.forward(request, response);   
      
         //ID �ߺ�Ȯ�� jsp����
       }else if(str.equals("/Common/checkid.do")) {                         
          
             String id = (String)request.getParameter("id");
             
             System.out.println("ȭ�鿡�� �Ѿ�� id->"+id);
             
             MemberDao md = new MemberDao();
             
             //LicenseeDao ld = new LicenseeDao();
             
             boolean r = md.checkId(id);
             
             request.setAttribute("id", id);
             request.setAttribute("b", r);
             System.out.println("rrr" + id);
             System.out.println("ddd"+r);
             //dao�� ���Ͽ� ȭ�鿡�� �Ѿ�� id �� �̿��� id üũ
            RequestDispatcher rd = request.getRequestDispatcher("/jsp/check_id.jsp");
            rd.forward(request, response);
      
      }else if(str.equals("/Common/InputOk.do")) {
         
         RequestDispatcher rd = request.getRequestDispatcher("/jsp/InputOk.jsp");
         rd.forward(request, response);   
   
      }else if(str.equals("/Common/login.do")) {
         
         RequestDispatcher rd = request.getRequestDispatcher("/jsp/login.jsp");
         rd.forward(request, response);   
      
      
      }else if (str.equals("/Common/loginAction.do")) {
      
         
         
         String tabs = request.getParameter("tabs");
         HttpSession session = request.getSession();   
         
         if (tabs.equals("member")) {
            String mId =  request.getParameter("loginmid");
            String mPwd = request.getParameter("loginmpwd");
            
            MemberDao md = new MemberDao();
            int value = md.loginCheck(mId, mPwd);
            System.out.println("���� �α���üũ:"+ value);
            
         
            if(value != 0) {
               String mName  = md.getName(mId, mPwd);
               session.setAttribute("loginname",mName);
               session.setAttribute("mId", mId);
               session.setAttribute("userType", "M");
               response.sendRedirect(request.getContextPath()+"/Common/main.do"); 
            }else {
               response.setContentType("text/html; charset=UTF-8");
               PrintWriter out = response.getWriter();
               out.println("<script>alert('���̵� �� �н����带 �ٽ� �Է����ּ���.')");
               out.println("history.back();");
               out.println("</script>");
               out.println("documenet.location.href="+request.getContextPath()+"/Common/login.do");;
            }
         
         }else {
            String lId =  request.getParameter("loginlid");
            String lPwd = request.getParameter("loginlpwd");
            
            LicenseeDao ld = new LicenseeDao();
            int value2 = ld.loginCheck(lId, lPwd);
          System.out.println("value2-"+value2);
            
            if(value2 != 0) {               
               LicenseeVo lvo = ld.getName(lId, lPwd);
               session.setAttribute("loginname", lvo.getLname());
               session.setAttribute("lgrade", lvo.getLgrade());
               session.setAttribute("lId" , lId);
               session.setAttribute("userType", "L");
              
    
               // �α��� ���� �����ö� ȸ�� �̸� �� ȸ�� ������ ���� �ʵ� ���� �����ؼ� vo�� ��ƿ�
               // vo�� �ִ� ���� ���� session�� set���ִµ� �̶�, ���� vo ���� �� �α����� �õ��ϴ� ȸ���� ������ �� ���
               // session�� admin ���θ� Y�� �ش�.
               response.sendRedirect(request.getContextPath()+"/Common/main.do"); // �α���ȭ������ �����̷�Ʈ         
          
            }else {
               response.setContentType("text/html; charset=UTF-8");
               PrintWriter out = response.getWriter();
               out.println("<script>alert('���̵� �� �н����带 �ٽ� �Է����ּ���.')");
               out.println("history.back();");
               out.println("</script>");
               out.println("documenet.location.href="+request.getContextPath()+"/Common/login.do");
            }
         
            
         }         
         
         
   
      }else if(str.equals("/Common/find.do")){
         
         RequestDispatcher rd = request.getRequestDispatcher("/jsp/find.jsp");
         rd.forward(request, response);   
      
      //���̵�ã��
      }else if(str.equals("/Common/findIdAction.do")){
      
         String tabs = request.getParameter("tabs");
         
         if (tabs.equals("id")) {
            String mName =  request.getParameter("idname");
            String mTel = request.getParameter("idtel");
            
            MemberDao md = new MemberDao();
            String findmid = md.findId(mName, mTel);
            
            System.out.println("���� ���̵�ã��üũ:"+ findmid);
            
            String mId = null;
            if(findmid != null) {
                mId = md.findId(mName, mTel);
               request.setAttribute("mlid", mId );
               
               RequestDispatcher rd = request.getRequestDispatcher("/Common/searchid.do");
               rd.forward(request, response); 
               
               System.out.println("�Ѿ�� ���ξ��̵�->>"+mId);
            }else {
               response.setContentType("text/html; charset=UTF-8");
               PrintWriter out = response.getWriter();
               out.println("<script>alert('��ϵ� ������ ���Ե� ���̵� �����ϴ�.')");
               out.println("history.back();");
               out.println("</script>");
               out.println("documenet.location.href="+request.getContextPath()+"/Common/find.do");;
            }
         
         }else {
            String lName =  request.getParameter("idname");
            String lTel = request.getParameter("idtel");
         
            LicenseeDao ld = new LicenseeDao();
            String findlid = ld.findId(lName, lTel);
            System.out.println("����� ���̵�ã��üũ:"+ findlid);
         
            if(findlid != null) {
               String lId = ld.findId(lName, lTel);
               request.setAttribute("mlid", lId );
               
               RequestDispatcher rd = request.getRequestDispatcher("/Common/searchid.do");
               rd.forward(request, response); 
              
            }else {
               response.setContentType("text/html; charset=UTF-8");
               PrintWriter out = response.getWriter();
               out.println("<script>alert('��ϵ� ������ ���Ե� ���̵� �����ϴ�.')");
               out.println("history.back();");
               out.println("</script>");
               out.println("documenet.location.href="+request.getContextPath()+"/Common/find.do");;
               }
            }
         
      }else if(str.equals("/Common/findPwdAction.do")){
            
            String tabs = request.getParameter("tabs");
            System.out.println("tabs="+tabs);
            if (tabs.equals("pwd")) {
               String mId =  request.getParameter("pwdid");
               String mName = request.getParameter("pwdname");
               String mJumin1 = request.getParameter("pwdjumin1");
               String mJumin2 = request.getParameter("pwdjumin2");
               String mJumin = mJumin1 + mJumin2; 
               MemberDao md = new MemberDao();
               String findmpwd = md.findPwd(mId, mName, mJumin);
               
               System.out.println("���� ��й�ȣã��üũ:"+ findmpwd);
               
               if(findmpwd != null) {
                  String mPwd = md.findPwd(mId ,mName, mJumin);
                  request.setAttribute("mlpwd", mPwd );
                  
                  RequestDispatcher rd = request.getRequestDispatcher("/Common/searchid.do");
                  rd.forward(request, response); 
                  System.out.println("�Ѿ�� ���κ�й�ȣ->>"+mPwd);
               }else {
                  response.setContentType("text/html; charset=UTF-8");
                  PrintWriter out = response.getWriter();
                  out.println("<script>alert('���Ե� ���̵� ���� ��й�ȣ�� ã�� �� �����ϴ�.')");
                  out.println("history.back();");
                  out.println("</script>");
                  out.println("documenet.location.href="+request.getContextPath()+"/Common/find.do");;
               }
            
            }else {
               String lId =  request.getParameter("pwdid");
               String lName = request.getParameter("pwdname");
               String lJumin1 = request.getParameter("pwdjumin1");
               String lJumin2 = request.getParameter("pwdjumin2");
               String lJumin = lJumin1 + lJumin2;
            
               LicenseeDao ld = new LicenseeDao();
               String findlpwd = ld.findPwd(lId, lName, lJumin);
               System.out.println("����� ��й�ȣã��üũ:"+ findlpwd);
            
               if(findlpwd != null) {
                  String lPwd = ld.findPwd(lId ,lName, lJumin);
                  request.setAttribute("mlpwd", lId );
                  
                  RequestDispatcher rd = request.getRequestDispatcher("/Common/searchid.do");
                  rd.forward(request, response); 
                  System.out.println("�Ѿ�� ���κ�й�ȣ->>"+lPwd);
               }else {
                  response.setContentType("text/html; charset=UTF-8");
                  PrintWriter out = response.getWriter();
                  out.println("<script>alert('���Ե� ���̵� ���� ��й�ȣ�� ã�� �� �����ϴ�.')");
                  out.println("history.back();");
                  out.println("</script>");
                  out.println("documenet.location.href="+request.getContextPath()+"/Common/find.do");;
               }   
            }
      
      }else if (str.equals("/Common/logout.do")) {
      
      HttpSession session = request.getSession();
      session.invalidate();
      response.sendRedirect(request.getContextPath()+"/Common/main.do");                     
   
      }else if(str.equals("/Common/searchid.do")){
         
         RequestDispatcher rd = request.getRequestDispatcher("/jsp/searchid.jsp");
         rd.forward(request, response);   
   
      }else if(str.equals("/Common/searchpwd.do")){
         
         RequestDispatcher rd = request.getRequestDispatcher("/jsp/searchpwd.jsp");
         rd.forward(request, response);   
      
      
      }
      else if(str.equals("/Common/Modify.do")){
         
         
         HttpSession session = request.getSession();
         
         String userType = (String)session.getAttribute("userType");
         if(userType.equals("M")) {
            
            String midx =(String)session.getAttribute("midx");
        	String mId = (String)session.getAttribute("mId");
            MemberDao md = new MemberDao();
            MemberVo mv = md.getInForm(mId);
            request.setAttribute("vo", mv);
            System.out.println("mv->>>"+mv);
         }else {
            String lidx = (String)session.getAttribute("lidx");
        	String lId = (String)session.getAttribute("lId");
            LicenseeDao ld = new LicenseeDao();
            LicenseeVo lv = ld.getInForm(lId);
            request.setAttribute("vo", lv);
            System.out.println("lv--->>"+lv);
         }
         
         RequestDispatcher rd = request.getRequestDispatcher("/jsp/modify.jsp");
         rd.forward(request, response);
      
      }
      
   
   }
   



   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }
   
}