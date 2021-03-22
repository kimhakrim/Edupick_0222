package controller;

import java.awt.image.BufferedImage; 
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
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

import service.InstituteDao;



@WebServlet("/Institute")
public class InstituteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//���ε� ���� ���
			String uploadPath = "D:\\dev\\newproject\\webcontent\\";
			//��������
			String savedPath = "institutefilefolder";
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
		
		
		 
		if(str.equals("/Institute/institute.do")) {
			
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/institute.jsp");
			rd.forward(request, response);						
		}
			else if(str.equals("/Institute/instituteInsertAction.do")) {
				
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
				String iRoadAddr = multi.getParameter("iroadaddr");
				String iJibunAddr = multi.getParameter("ijibunaddr");
				String iDetailAddr = multi.getParameter("idetailaddr");
				String iExtraAddr = multi.getParameter("iextraaddr");
				String iTel = multi.getParameter("itel");
				String iMin = multi.getParameter("imin");
				String iMax = multi.getParameter("imax");
				String iCategory = multi.getParameter("icategory");
				String iSubjects = multi.getParameter("isubjects");
				String iNeeds = multi.getParameter("ineeds");
				String iIntroduce = multi.getParameter("iintroduce");
				String iFile = multi.getParameter("ifile");
				
			    System.out.println("Ciname--->"+ iName);
			    System.out.println("CiPostCode--->" + iPostCode);
			    System.out.println("Ciroadaddr--->"+iRoadAddr);
			    System.out.println("CiJibunaddr--->"+iJibunAddr);
			    System.out.println("Cidetailaddr--->"+iDetailAddr);
			    System.out.println("Ciextraaddr--->"+iExtraAddr);
			    System.out.println("Citel--->"+iTel);
			    System.out.println("Cimin--->"+iMin);
			    System.out.println("Cimax--->"+iMax);
			    System.out.println("Cicategory--->"+iCategory);
			    System.out.println("CiSubjects--->"+iSubjects);
			    System.out.println("Cineeds--->"+iNeeds);
			    System.out.println("Ciintroduce--->"+iIntroduce);
			    System.out.println("Cifile--->"+iFile);	
				//2.Dao ��ü�� ���� ���Ѽ� �Ѿ�� ���� �Է��Ѵ�.
				
				
				InstituteDao id = new InstituteDao();	
				id.InstituteInsert(iName, iPostCode, iRoadAddr, iJibunAddr ,iDetailAddr, iExtraAddr ,iTel, iMin, iMax, iCategory,iSubjects, iNeeds, iIntroduce,iFile);
				
				//3.ó���� �� �̵��Ѵ�.
				response.sendRedirect(request.getContextPath()+"/");
			
			
		
		}else if(str.equals("/Institute/instituteDetail.do")) {
			
					
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/instituteDetail.jsp");
			rd.forward(request, response);						
		
		}else if(str.equals("/Institute/progresslecture.do")) {
			
					
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/progresslecture.jsp");
			rd.forward(request, response);						
		
		}
		
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

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