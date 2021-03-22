package controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.imgscalr.Scalr;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
	@WebServlet("/Admin2")
	public class Admin2Controller extends HttpServlet{
		private static final long serialVersionUID = 1L;
		
		 //���ε� ���� ���
		String uploadPath = "D:\\dev\\newproject\\webcontent\\";
		//��������
		String savedPath = "newfilefolder";
		//����� �� ���
		String saveFullPath = uploadPath + savedPath;
		
		
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setCharacterEncoding("UTF-8");
			//������
			String uri = request.getRequestURI();
			//������Ʈ �̸��� ����
			int len = request.getContextPath().length();
			//������Ʈ �̸��� �� ������
			String str = uri.substring(len);
		
			
			if (str.equals("/Admin2/adminInstituteAdd.do")) {
			
		    RequestDispatcher rd = request.getRequestDispatcher("/jsp/adminInstituteAdd.jsp");
			rd.forward(request, response);	
					
			//������ ��������
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
		
			
	
		
		}else if(str.equals("/Admin2/adminProductWriteAction.do")) {
				
				
			int sizeLimit = 1024*1024*15;
			String fileName = null;
			String originFileName = null;
			
			//MultipartRequest ��ü����
			MultipartRequest multi = new MultipartRequest(request, saveFullPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy()); 
			
			//�����ڿ�  ����Name�Ӽ��� �̸��� ��´�
			Enumeration files = multi.getFileNames();
			//��� ���� ��ü�� Name���� ��´�.
			String file = (String)files.nextElement();
			//����Ǵ� �����̸�
			fileName = multi.getFilesystemName(file); 
			//�������� �̸�
			originFileName = multi.getOriginalFileName(file);
			System.out.println("file ->"+file);
			String ThumbnailFileName = null;
					
			try {
				if(fileName != null)
				ThumbnailFileName = makeThumbnail(uploadPath,savedPath, fileName);
			} catch (Exception e) {
				e.printStackTrace();
			}		
			
			
			//1. input name���� �Ѱ� �޴´�
			String iName = multi.getParameter("iname");
			String iPostCode = multi.getParameter("ipostcode");
			String iRoadAddr  = multi.getParameter("iroadaddr");
			String iJibunAddr = multi.getParameter("ijibunaddr");
			String iDetailAddr = multi.getParameter("idetailaddr");
			String iExtraAddr = multi.getParameter("iextraaddr");
			String iTel = multi.getParameter("itel");
			String iMin = multi.getParameter("imin");
			String iMax = multi.getParameter("imax");
			String iSubjects = multi.getParameter("isubjects");
			String iNeeds = multi.getParameter("ineeds");
			String iIntroduce = multi.getParameter("iintroduce");
			String iFile = multi.getParameter("ifile");
			
			
			response.sendRedirect(request.getContextPath()+"/Admin2/adminProductManage.do");
			
			
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
	
	}private static String makeThumbnail(String uploadPath,String path,String fileName) throws Exception{
		
		//�ø� �ҽ������� �о�帰��
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath+path+File.separator+fileName));
		//�̹����� ������¡�Ѵ�(���� 100�� ���缭 �����̹��� ������ �����Ѵ�)
		BufferedImage destImg = Scalr.resize(sourceImg,Scalr.Method.AUTOMATIC,Scalr.Mode.FIT_TO_HEIGHT,100);
		//����� Ǯ���
		String thumbnailPath = uploadPath + path + File.separator + "s-"+fileName;
		//���� ��ü����
		File newFile = new File(thumbnailPath);
		//Ȯ���� ����
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		//����� �̹��� �����(������¡�� �̹����� �ش� �̹����������� �ش� ��ġ�� ���� ��ü�����Ѵ�)
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		
		//����� ���� �̸� ����
		return thumbnailPath.substring((uploadPath+path).length()).replace(File.separatorChar, ' ');
	}

	
	}


