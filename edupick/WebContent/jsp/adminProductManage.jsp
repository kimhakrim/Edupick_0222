<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%  
	String loginname = (String)session.getAttribute("loginname");
%> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품관리</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="edupick2.jpg"></div>
				<div class="logdiv"><%=loginname %>(님)</div>
				<div class="logdiv2">
				<a href="에듀픽.html">Home</a>
				<a href="<%= request.getContextPath() %>/Common/logout.do">로그아웃</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin" >관리자 계정관리</div>
			<div>
				<div class="navuser">상품관리 ▼</div>
				<div class="navuser_1">
					<a href="#" id="navuser_1_1">학원관리</a><br>
					<a href="#" id="navuser_1_2">강의관리</a><br>
					<a href="#" id="navuser_1_3">수강생관리</a><br>
					<a href="#" id="navuser_1_4">수강평관리</a><br>
					<a href="#" id="navuser_1_5">커뮤니티 관리</a><br>
					<a href="#" id="navuser_1_6">상담관리</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">회원관리</div>
				<div class="subnav" id="subnav2" style="background:#FA5858;">상품관리</div>
				<div class="subnav" id="subnav3">주문관리</div>
				<div class="subnav" id="subnav4">게시판관리</div>
				<div class="subnav" id="subnav5">페이지관리</div>
				<div class="subnav" id="subnav6">기타관리</div>
			</div>
		</nav>
		<section>
			<article>
				<div class="usermainpage">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>학원명</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup">
					<div><button type="button">삭제</button></div>
					<div>총 학원수 :</div>
					<div>검색 학원수 :</div>
				</div>
				<form class="mainfrm">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>아이디</th>
							<th>회원명</th>
							<th>학원 연락처</th>
							<th>등록일</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>real</td>
							<td>이젠IT</td>
							<td>0507-1363-2684</td>
							<td>2021-01-13</td>
							<td><button type="button" id="btbtcl">보기</button></td>
						</tr>
						
					</table>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
					<div class="clplus"><button type="button" id="clplus_1">추가하기</button></div>
				</form>
				<div class="usermainpage2">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>회원명</option>
								<option>회원아이디</option>
								<option>회원연락처</option>
								<option>회원이메일</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup2">
					<div><button type="button">삭제</button></div>
					<div>총 회원수 :</div>
					<div>검색 회원수 :</div>
				</div>
				<form class="mainfrm2">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>학원명</th>
							<th>수강비</th>
							<th>수강기간</th>
							<th>모집기간</th>
							<th>모집인원</th>
							<th>등록일</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>이젠IT</td>
							<td>257,000원</td>
							<td>2020-11-23~2021-04-16</td>
							<td>2020-11-01~2020-11-18</td>
							<td>20명</td>
							<td>2020-11-01</td>
							<td><button type="button" id="btbt99">보기</button></td>
						</tr>
						
					</table>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
				</form>
				<div class="usermainpage3">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>회원명</option>
								<option>회원아이디</option>
								<option>회원연락처</option>
								<option>회원이메일</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup3">
					<div><button type="button">삭제</button></div>
					<div>총 수강생수 :</div>
					<div>검색 수강생수 :</div>
				</div>
				<form class="mainfrm3">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>이름</th>
							<th>학원명</th>
							<th>강의명</th>
							<th>수강시간</th>
							<th>다음 결제일</th>
							<th>수강 시작일</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>앵그리</td>
							<td>이젠IT</td>
							<td>벤치프레스하기</td>
							<td>11:00 ~ 15 : 30</td>
							<td>2021-03-22</td>
							<td>2021-02-22</td>
							<td><button type="button" id="btbt88">보기</button></td>
						</tr>
						
					</table>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
				</form>
				<div class="usermainpage4">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>학원명</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup4">
					<div><button type="button">삭제</button></div>
					<div>총 수강평 :</div>
					<div>검색 수강평 :</div>
				</div>
				<form class="mainfrm4">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>이름</th>
							<th>학원명</th>
							<th>강의명</th>
							<th>작성일자</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>앵그리</td>
							<td>이젠IT</td>
							<td>벤치프레스하기</td>
							<td>2021-02-22</td>
							<td><button type="button" id="btbt77">보기</button></td>
						</tr>
						
					</table>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
				</form>
				<div class="usermainpage5">
					<form class="shfrm">
						<div class="comsh">
							<select>
								<option>본글</option>
								<option>댓글</option>
							</select>
						</div>
						<div class="comsh2">
							<select>
								<option>건의사항</option>
								<option>공지사항</option>
							</select>
						</div>
						<div class="selectsh">
							<select>
								<option selected>회원명</option>
								<option>회원아이디</option>
								<option>회원연락처</option>
								<option>회원이메일</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup5">
					<div><button type="button">삭제</button></div>
					<div>총 커뮤니티 글 :</div>
					<div>검색 커뮤니티 글 :</div>
				</div>
				<form class="mainfrm5">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>카테고리</th>
							<th>글구분</th>
							<th>작성자</th>
							<th>학원명</th>
							<th>수강명</th>
							<th>작성명</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>헬창</td>
							<td>댓글</td>
							<td>근육돼지</td>
							<td>이젠IT</td>
							<td>벤치프레스하기</td>
							<td>2021-02-22</td>
							<td><button type="button" id="btbt66">보기</button></td>
						</tr>
						
					</table>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
				</form>
				<div class="usermainpage6">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>회원명</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup6">
					<div><button type="button">삭제</button></div>
					<div>총 상담수 :</div>
					<div>검색 상담수 :</div>
				</div>
				<form class="mainfrm6">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>회원명</th>
							<th>학원명</th>
							<th>시작시간</th>
							<th>종료시간</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>앵그리</td>
							<td>이젠IT</td>
							<td>2021-02-22</td>
							<td>2021-03-22</td>
							<td><button type="button" id="btbt55">보기</button></td>
						</tr>
						
					</table>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
				</form>
			</article>
		</section>
	</body>