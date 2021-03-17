package service;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dbconn.DBconn;

public class MemberDao {

	private Connection conn; 
	private PreparedStatement pstmt;
	String mId = null;
	String mPwd = null;

	public MemberDao(){
		DBconn dbconn = new DBconn();	
		this.conn = dbconn.getConnection();
	
	}
	//ȸ������ db�� �Է�
	public int memberInsert(String mId, String mName, String mPwd, String mJumin, String mPostCode,String mRoadAddr, String mJibunAddr, String mDetailAddr, String mExtraAddr, String mEmail, String mTel) {
		int exec = 0;
		
		System.out.println("mId->"+mId);
		System.out.println("mName->"+mName);
		System.out.println("mPwd->"+mPwd);
		System.out.println("mJumin->"+mJumin);
		
		System.out.println("mEmail->"+mEmail);
		System.out.println("mTel->"+mTel);
		
		
		
		
		 try {
			String sql= "insert into edupickmember(midx, mid, mname, mpwd, mjumin, mpostcode, mroadaddr, mjibunaddr, mdetailaddr, mextraaddr, memail, mtel, mgrade) values(sq_edupickmember.nextval,?,?,?,?,?,?,?,?,?,?,?,'M')";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setString(2, mName);
			pstmt.setString(3, mPwd);
			pstmt.setString(4, mJumin);
			pstmt.setString(5, mPostCode);
			pstmt.setString(6, mRoadAddr);
			pstmt.setString(7, mJibunAddr);
			pstmt.setString(8, mDetailAddr);
			pstmt.setString(9, mExtraAddr);
			pstmt.setString(10, mEmail);
			pstmt.setString(11, mTel );
			
			pstmt.executeUpdate();

		
		 } catch (SQLException e) { e.printStackTrace(); }
		 
		System.out.println("sql->"+exec);
		return exec;
		
	}public int loginCheck(String mId, String mPwd) {
		System.out.println(mId);
		System.out.println(mPwd);	
			int value = 0;
			try {
				String sql = "select count(*) as cnt from edupickmember where mid = ? and mpwd = ?" ;
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mId);
				pstmt.setString(2, mPwd);
				ResultSet rs = pstmt.executeQuery(); 
				
				if(rs.next()) {
					value = rs.getInt("cnt");
				}
				System.out.println("testvalue::::::::::"+value);
			}catch(Exception e) {
				System.out.println("�ش��ϴ� ����� �������� �ʽ��ϴ�2.");
				e.printStackTrace();
			}
			return value;
	}
			//	�α��� �̸� �ֱ�
	public String getName(String mId, String mPwd) {
		
		String name = null;
		try {
			String sql = "select mname from edupickmember where mid=? and mpwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setString(2, mPwd);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
			name = rs.getString("mname");
			}
		}catch(Exception e) {
			System.out.println("�ش��ϴ� ����� �������� �ʽ��ϴ�.");
		}
		return name;
	}

	//���̵� ã��
//	public String findId(String mName, String mTel) {
//		
//		String id = null;
//		
//		try {
//			String sql = "select mid from edupickmember where mname=? and mtel=?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, mName);
//			pstmt.setString(2, mTel);
//			
//			System.out.println("mName======="+mName);
//			System.out.println("mTel========="+mTel);
//			
//			ResultSet rs = pstmt.executeQuery();
//		
//		}catch(SQLException e) {
//			e.printStackTrace();
//		}
//		return id; 
//	}
//	public String findPwd(String mId, String mName, String mJumin) {
//		
//		String pwd = null;
//		
//		try {
//			String sql = "select mpwd from edupickmember where mid=? and mname=? and mjumin=?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, mId);
//			pstmt.setString(2, mName);
//			pstmt.setString(3, mJumin);
//			
//			System.out.println("mId======="+ mId);
//			System.out.println("mName========="+ mName);
//			System.out.println("mJumin========="+ mJumin);
//			ResultSet rs = pstmt.executeQuery();
//		
//			
//		
//		}catch(SQLException e) {
//			e.printStackTrace();
//		}
//		return pwd; 
//	}
//id üũ

	public boolean checkId(String id){

		boolean b = false;

		try {
			String sql = "select * from (\r\n" + 
					"select mid as id from edupickmember \r\n" + 
					"union all \r\n" + 
					"select lid from licensee \r\n" + 
					") where id= ?";
					
		//	"select mid from edupickmember where mid = ?";
					
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			System.out.println("Id======="+ id);
			ResultSet rs = pstmt.executeQuery();
		
//			if (rs.next()) {
//				b = true;
//			}
//			
            b=rs.next();
			System.out.println("b======="+ b);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}

		return b;

	}public String findId(String mName, String mTel) {
		
		String id = null;
		try {
			String sql = "select mid from edupickmember where mname=? and mtel=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mName);
			pstmt.setString(2, mTel);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
			id = rs.getString("mid");
			}
		}catch(Exception e) {
			System.out.println("�ش��ϴ� ����� �������� �ʽ��ϴ�.");
		}
		return id;
	
	}public String findPwd(String mId, String mName, String mJumin) {
		
		String pwd = null;
		try {
			String sql = "select mpwd from edupickmember where mid=? and mname=? and mJumin=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setString(2, mName);
			pstmt.setString(2, mJumin);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
			pwd = rs.getString("mpwd");
			}
		}catch(Exception e) {
			System.out.println("�ش��ϴ� ����� �������� �ʽ��ϴ�.");
		}
		return pwd;
	
	}   public MemberVo getInForm(String mId) {
	      MemberVo mv = null;
	      
	      try {
	         String sql = "select * from edupickmember where mid =?";
	         //String sql2 = "select"
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, mId);
	         ResultSet rs = pstmt.executeQuery();      
	         if(rs.next()) {
	            mv = new MemberVo();
	            mv.setMidx(rs.getInt("midx"));
	            mv.setMid(rs.getString("mid"));
	            mv.setMpwd(rs.getString("mpwd"));
	            mv.setMname(rs.getString("mname"));
	            mv.setMjumin(rs.getString("mjumin"));
	            mv.setMtel(rs.getString("mtel"));
	            mv.setMemail(rs.getString("memail"));
	            mv.setMpostcode(rs.getString("mpostcode"));
	            mv.setMroadaddr(rs.getString("mroadaddr"));
	            mv.setMjibunaddr(rs.getString("mjibunaddr"));
	            mv.setMdetailaddr(rs.getString("mdetailaddr"));
	            mv.setMextraaddr(rs.getString("mextraaddr"));
	         }
	         
	         }catch (Exception e){
	            e.printStackTrace();
	         }
	         return mv ;
	         
	   
	         }
	         public int memberModify(int midx, String mPwd, String mPostCode, String mRoadAddr, String mJibunAddr, String mDetailAddr, String mExtraAddr, String mEmail, String mTel ) {
	            
	            int value =0;
	            
	            try {
	                  String sql = "update edupickmember set mpwd=? , mpostcode =?, mroadaddr =?, mjibunaddr=? , mdetailaddr=? , mextraaddr =?, memail=? ,mtel = ?"
	                              +"where midx=?";
	                  
	                  
	                  pstmt = conn.prepareStatement(sql);
	                  pstmt.setString(1, mPwd );
	                  pstmt.setString(2, mPostCode);
	                  pstmt.setString(3, mRoadAddr);
	                  pstmt.setString(4, mJibunAddr);
	                  pstmt.setString(5, mDetailAddr);
	                  pstmt.setString(6, mExtraAddr);
	                  pstmt.setString(7, mEmail);
	                  pstmt.setString(8, mTel);
	                  pstmt.setInt(9, midx);
	                  value = pstmt.executeUpdate();
	                  
	            }catch(Exception e) {
	               e.printStackTrace();
	            }finally {
	               try {pstmt.close(); }catch(SQLException s) {}
	               try {conn.close();}catch(SQLException s) {}
	            }   
	            return value;
	         }
	         public int memberDelete(int midx, String mPwd, String mTel) {
				
	        	 int value = 0;
	        	 
	        	 String sql = "update edupickmember set mdelyn='Y' where midx =?";
	        	 	try {
	        			pstmt =	conn.prepareStatement(sql);
	        			pstmt.setInt(1, midx);
	        			pstmt.setString(2, mPwd );
	        			pstmt.setString(3, mTel);
	        			pstmt.executeUpdate();
	        			
	        			} catch (SQLException e) {
	        				
	        				e.printStackTrace();
	        			}
	        			return value; 
	        	 
	         }
}
	            

