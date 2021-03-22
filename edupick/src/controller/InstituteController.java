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

	//업로드 파일 경로
			String uploadPath = "D:\\dev\\newproject\\webcontent\\";
			//저장폴더
			String savedPath = "institutefilefolder";
			//저장된 총 경로
			String saveFullPath = uploadPath + savedPath;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		//절대경로
		String uri = request.getRequestURI();
		//프로젝트 이름의 길이
		int len = request.getContextPath().length();
		//프로젝트 이름을 뺀 가상경로
		String str = uri.substring(len);
		
		
		 
		if(str.equals("/Institute/institute.do")) {
			
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/institute.jsp");
			rd.forward(request, response);						
		}
			else if(str.equals("/Institute/instituteInsertAction.do")) {
				
				int sizeLimit = 1024*1024*15;
				String fileName = null;
				String originFileName = null;
				
				//MultipartRequest 객체생성
				MultipartRequest multi = new MultipartRequest(request, saveFullPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy()); 
				
				//열거자에  파일Name속성의 이름을 담는다
				Enumeration files = multi.getFileNames();
				//담긴 파일 객체의 Name값을 담는다.
				String file = (String)files.nextElement();
				//저장되는 파일이름
				fileName = multi.getFilesystemName(file); 
				//원래파일 이름
				originFileName = multi.getOriginalFileName(file);
				System.out.println("file ->"+file);
				
				String ThumbnailFileName = null;
						
				try {
					if(fileName != null)
					ThumbnailFileName = makeThumbnail(uploadPath,savedPath, fileName);
				} catch (Exception e) {
					e.printStackTrace();
				}		
				
				
				//1. input name값을 넘겨 받는다
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
				//2.Dao 객체를 생성 시켜서 넘어온 값은 입력한다.
				
				
				InstituteDao id = new InstituteDao();	
				id.InstituteInsert(iName, iPostCode, iRoadAddr, iJibunAddr ,iDetailAddr, iExtraAddr ,iTel, iMin, iMax, iCategory,iSubjects, iNeeds, iIntroduce,iFile);
				
				//3.처리한 후 이동한다.
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
		
		//올린 소스파일을 읽어드린다
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath+path+File.separator+fileName));
		//이미지를 리사이징한다(높이 100에 맞춰서 원본이미지 비율을 유지한다)
		BufferedImage destImg = Scalr.resize(sourceImg,Scalr.Method.AUTOMATIC,Scalr.Mode.FIT_TO_HEIGHT,100);
		//썸네일 풀경로
		String thumbnailPath = uploadPath + path + File.separator + "s-"+fileName;
		//파일 객체생성
		File newFile = new File(thumbnailPath);
		//확장자 추출
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		//썸네일 이미지 만들기(리사이징한 이미지를 해당 이미지형식으로 해당 위치에 파일 객체생성한다)
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		
		//썸네일 파일 이름 추출
		return thumbnailPath.substring((uploadPath+path).length()).replace(File.separatorChar, ' ');
	}
	
	}		