<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.*" %>
<%  
	String mName = (String)request.getAttribute("loginname");
	String lName = (String)request.getAttribute("loginname");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항</title>
		<!-- 타이틀 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<!-- 기본틀 css -->
		<link href="<%= request.getContextPath() %>/css/edupick.css" rel="stylesheet" type="text/css" />
		<!-- 공지사항css -->
		<link href="<%= request.getContextPath() %>/css/notice.css" rel="stylesheet" type="text/css" />
		<!-- 제이쿼리 -->
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<!-- 반응형 -->
		<link href="<%= request.getContextPath() %>/css/rp.css" rel="stylesheet" type="text/css" />
		<!-- 공지사항스크립트 -->
		<script src="<%= request.getContextPath() %>/js/notice.js"></script>
		<link href="<%= request.getContextPath() %>/css/top.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/top.js"></script>
	</head>
	<body style="overflow-x:hidden; overflow-y:scroll;">
		<header>
			<!-- 메인로고 -->
			<div class="headerimg">
				<a href="<%= request.getContextPath() %>/Common/main.do">
				<img class="img1" src="<%= request.getContextPath() %>/webimage/edupick2.jpg">	
				</a>
			</div>
			<div class="logoutdiv">
				<%=session.getAttribute("loginname")%> <a href="<%= request.getContextPath() %>/Common/logout.do">로그아웃</a><img src="<%= request.getContextPath() %>/webimage/알림.png" style="width:10%; height:10%;">
			</div>
			<div id="topmenumain">
				<ul>
					<li>
						<a href="<%= request.getContextPath() %>/Institute/institute.do" class="menua">학원찾기</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/Notice/notice.do" class="menua" style="background:#FA5858">공지사항</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/Eduinformation/eduinformation.do" class="menua">교육정보</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/Customerservice/customerservice.do" class="menua">고객센터</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/Myservice/myservice.do" class="menua">My 서비스</a>
					</li>
				</ul>
			</div>
		</header>
		<section>
			<div class="maindmenu">
			<h1 id="noticeh1">공지사항</h1>
			<input id="tab1" type="radio" name="tabs" checked> <!--디폴트 메뉴-->
			<label for="tab1">전체</label>
			<input id="tab2" type="radio" name="tabs">
			<label for="tab2">이용 안내</label>
			<input id="tab3" type="radio" name="tabs">
			<label for="tab3">이벤트</label>	
			<section id="content1">
				<p id="ptag">
				<div id="div2">
					<select id='selSearchOption' >
						<option value='A'>제목+내용</option>
						<option value='T'>제목</option>
						<option value='C'>내용</option>
					</select>		
					<input id='txtKeyWord' />
					<input type='button' id="searchbtn" />
				</div>
				
				<div class="div3">
					<table border="0" id ="trTable" width="100%">
					<thead>
						<tr>
							<td width="15%">No</td>
							<td class="left"  width="45%">제목</td>
							<td width="10%">작성자</td>
							<td width="10%">작성일</td>
							<td width="10%">조회수</td>
							<td width="5%">첨</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td width="15%">1</td>
							<td class="left"  width="45%"><a href="<%= request.getContextPath() %>/Notice/noticedetail.do">제목</a></td>
							<td width="10%">작성자</td>
							<td width="10%">작성일</td>
							<td width="10%">조회수</td>
							<td width="5%">첨</td>
						</tr>
						<tr>
							<td width="15%">2</td>
							<td class="left"  width="45%">제목</td>
							<td width="10%">작성자</td>
							<td width="10%">작성일</td>
							<td width="10%">조회수</td>
							<td width="5%">첨</td>
						</tr>
						<tr>
							<td width="15%">3</td>
							<td class="left"  width="45%">제목</td>
							<td width="10%">작성자</td>
							<td width="10%">작성일</td>
							<td width="10%">조회수</td>
							<td width="5%">첨</td>
						</tr>
						<tr>
							<td width="15%">4</td>
							<td class="left"  width="45%">제목</td>
							<td width="10%">작성자</td>
							<td width="10%">작성일</td>
							<td width="10%">조회수</td>
							<td width="5%">첨</td>
						</tr>
						<tr>
							<td width="15%">5</td>
							<td class="left"  width="45%">제목</td>
							<td width="10%">작성자</td>
							<td width="10%">작성일</td>
							<td width="10%">조회수</td>
							<td width="5%">첨</td>
						</tr>
					</tbody>										
					</table>		
				</div>		
				</article>	
				<th>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
				</th>
			</section>
			<section id="content2">
				<p id="ptag">
				<div id="div2">
					<select id='selSearchOption' >
						<option value='A'>제목+내용</option>
						<option value='T'>제목</option>
						<option value='C'>내용</option>
					</select>	
					<input id='txtKeyWord' />
					<input type='button' id="searchbtn"/>
				</div>	
				<table border="0" id ="trTable" width="100%">
				<thead>
				<tr>
					<td width="15%">No</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td width="15%">1</td>
					<td class="left"  width="45%"><a href="<%= request.getContextPath() %>/Notice/notice.do">제목</a></td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				
				<tr>
					<td width="15%">2</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				
				<tr>
					<td width="15%">3</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				
				<tr>
					<td width="15%">4</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				
				<tr>
					<td width="15%">5</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				</tbody>				
				</table>				
			<th>
				<div id="divPaging">
					<div>◀</div>
					<div><a href="#"><b>1</b></a></div>
					<div><a href="#">2</a></div>
					<div><a href="#">3</a></div>
					<div><a href="#">4</a></div>
					<div><a href="#">5</a></div>
					<div>▶</div>
				</div>
			</th>
			</section>
			<section id="content3">
				<p id="ptag">
				<div id="div2">
					<select id='selSearchOption' >
						<option value='A'>제목+내용</option>
						<option value='T'>제목</option>
						<option value='C'>내용</option>
					</select>	
					<input id='txtKeyWord' />
					<input type='button' id="searchbtn"/>
				</div>
				<table border="0" id ="trTable" width="100%">
				<thead>
				<tr>
					<td width="15%">No</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td width="15%">1</td>
					<td class="left"  width="45%"><a href="<%= request.getContextPath() %>/Notice/notice.do">제목</a></td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				<tr>
					<td width="15%">2</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				<tr>
					<td width="15%">3</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				<tr>
					<td width="15%">4</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				<tr>
					<td width="15%">5</td>
					<td class="left"  width="45%">제목</td>
					<td width="10%">작성자</td>
					<td width="10%">작성일</td>
					<td width="10%">조회수</td>
					<td width="5%">첨</td>
				</tr>
				</tbody>
				</table>
				<th>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
				</th>
			</section>
			</div>
		</section>
		<button onclick="topFunction()" id="scrollTopBtn" title="Go to top">▲TOP</button>
		<footer>
			<!-- footer hr -->
			<hr class="hr02">
			<!-- footer 로고 -->
			<div class="footerdiv">
				<div>
					<img id="img3" src="<%= request.getContextPath() %>/webimage/logo.jpg">
				</div>
				<!-- footer 링크 -->
				<div class="fer01">	
					<ul>
						<li style="margin:3%;">
							<a href="#" class="fera"><h5>회사소개</h5></a>
						</li>	
						<li style="margin:3%;">	
							<a href="#" class="fera"><h5>개인정보처리방침</h5></a>
						</li>
						<li style="margin:3%;">	
							<a href="#" class="fera"><h5>사업자 정보 확인</h5></a>
						</li>
					</ul>
				</div>
				<!-- footer 홈페이지정보 -->
				<div class="fer02">
					㈜ 에듀픽<br/>
					주소 : 전라북도 전주시<br/>
					대표조장 : 김학림 | 사업자등록번호 : 498-65-65421
				</div>
				<!-- footer 전화번호 -->
				<div class="ct01">
					고객센터 : 1577-8888<br/>
					<p/>
					근무시간 : 월 ~ 금 AM 9:00 ~ PM 7:00<br/>
					점심시간 : PM12 :00 ~ PM 1 : 00<br/>
					고객센터 : AM 10: 00 ~ PM6 : 00<br/>
				</div>
			</div>
		</footer>
	</body>
</html>