package service;

import java.sql.Connection;  
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Domain.SearchCriteria;
import dbconn.DBconn;

public class InstituteDao {
	//엠버변수이기 때문에 전역변수로도 사용된다.			
private	Connection conn;
private PreparedStatement pstmt;
				
				//생성자			
				
public InstituteDao() {
	DBconn dbconn = new DBconn();
	this.conn = dbconn.getConnection();
	
}


public int InstituteInsert(String iName , String iPostCode, String iRoadAddr, String iJibunAddr, String iDetailAddr, String iExtraAddr, String iTel, String iMin, String iMax, String iCategory ,String iSubjects, String iNeeds, String iIntroduce ,String iFile) {
	int exec = 0;
	

	
	
	 try {
		String sql= "insert into institute(iidx, iname, ipostcode, iroadaddr, ijibunaddr, idetailaddr, iextraaddr, itel, imin, imax, icategory,isubjects, ineeds, iintroduce, ifile) values(sq_edupickmember.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, iName);
		pstmt.setString(2, iPostCode);
		pstmt.setString(3, iRoadAddr);
		pstmt.setString(4, iJibunAddr);
		pstmt.setString(5, iDetailAddr);
		pstmt.setString(6, iExtraAddr);
		pstmt.setString(7, iTel);
		pstmt.setString(8, iMin);
		pstmt.setString(9, iMax);
		pstmt.setString(10, iCategory);
		pstmt.setString(11, iSubjects);
		pstmt.setString(12, iNeeds );
		pstmt.setString(13, iIntroduce );
		pstmt.setString(14, iFile);
		
		pstmt.executeUpdate();

	
	 } catch (SQLException e) { e.printStackTrace(); }
	 
	System.out.println("sql->"+exec);
	return exec;
	
	}
public ArrayList<InstituteVo> InstituteSelectAll(SearchCriteria scri){
	
	ArrayList<InstituteVo> alist = new ArrayList<InstituteVo>();
	
	//String sql= "select * from newboard where delyn ='N' order by originnbidx desc,ndepth asc";
	String sql =  "select B.* from (select rownum as rnum, A.* from  ("
			+ "select * from institute where idelyn='N'"
			+ "order by iidx desc) A"
			+ "where rownum <= ?)B"
			+ "where B.rnum >= ?";
	try {
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, "%"+scri.getKeyword()+"%");
	pstmt.setInt(2, scri.getPage()*15);
	pstmt.setInt(3, (scri.getPage()-1)*15+1);
	ResultSet rs = pstmt.executeQuery();

	while(rs.next()) {
		InstituteVo iv = new InstituteVo();
		iv.setIidx(rs.getInt("iidx"));
		iv.setIname(rs.getString("iname"));
		iv.setIpostcode(rs.getString("ipostcode"));
		iv.setIroadaddr(rs.getString("iroadaddr"));
		iv.setIjibunaddr(rs.getString("ijibunaddr"));
		iv.setIdetailaddr(rs.getString("idetailaddr"));
		iv.setIextraaddr(rs.getString("iextraaddr"));
		iv.setItel(rs.getString("itel"));
		iv.setImin(rs.getString("imin"));
		iv.setImax(rs.getString("imax"));
		iv.setIsubjects(rs.getString("isubjects"));
		iv.setIneeds(rs.getString("ineeds"));
		iv.setIintroduce(rs.getString("iintroduce"));
		iv.setIdelyn(rs.getString("idelyn"));
		iv.setIfile(rs.getString("ifile"));
		alist.add(iv);
		}
	
	}catch (SQLException e) {
			e.printStackTrace();
	}
	
	return alist;
}		


}









