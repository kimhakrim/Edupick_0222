<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String loginname = (String)session.getAttribute("loginname");
%> 
<!DOCTYPE html>
<html>
	<head>
		<title>페이지관리</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
		<link href="<%= request.getContextPath() %>/css/adminpagemanage.css" rel="stylesheet" type="text/css" />
	</head>
	<body style="overflow-x:hidden; overflow-y:scroll;" >
		<header>
			<div class="herdiv">
				<div class="logodiv">
				
				<img src="<%= request.getContextPath() %>/webimage/edupick2.jpg"></div>
				<div class="logdiv"><%=loginname %>(님)</div>
				<div class="logdiv2">
				<a href="에듀픽.html">Home</a>
				<a href="<%= request.getContextPath() %>/Common/logout.do">로그아웃</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin">관리자 계정관리</div>
			<div>
				<div class="navuser">페이지 관리 ▼</div>
				<div class="navuser_1">
					<a href="#" id="navuser_1_1">페이지 관리</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">회원관리</div>
				<div class="subnav" id="subnav2">상품관리</div>
				<div class="subnav" id="subnav3">주문관리</div>
				<div class="subnav" id="subnav4">게시판관리</div>
				<div class="subnav" id="subnav5" style="background:#FA5858;">페이지관리</div>
				<div class="subnav" id="subnav6">기타관리</div>
			</div>
		</nav>
		<section>
			<article>
				<div class="usermainpage">
					<form class="pagecode">
						<ul>
							<li>코드</li>
							<li>페이지</li>
							<li>주소</li>
							<li><input id="codeput"></li>
							<li><input id="codeput"></li>
							<li><input id="codeput"></li>
						</ul>
						<div class="clplus"><button type="button" id="clplus_3">추가하기</button></div>
						<div class="userup">
							<div><button type="button">저장</button></div>
						</div>
					</form>
				</div>
				<form class="mainfrm">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>코드</th>
							<th>페이지</th>
							<th>주소</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>C2368BC</td>
							<td>??</td>
							<td>http://www.youtube.com</td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all2"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all3"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all4"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all5"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all6"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all7"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all8"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all9"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all10"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all11"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all12"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all13"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all14"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all15"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
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
</html>