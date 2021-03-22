<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>학원수정하기</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<!-- 폰트 -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
		<link href="<%= request.getContextPath() %>/css/admininstitutemodify.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="edupick2.jpg"></div>
				<div class="logdiv">○○○(님)</div>
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
					<a href="상품관리.html" id="navuser_1_1">학원관리</a><br>
					<a href="상품관리.html" id="navuser_1_2">강의관리</a><br>
					<a href="상품관리.html" id="navuser_1_3">수강생관리</a><br>
					<a href="상품관리.html" id="navuser_1_4">수강평관리</a><br>
					<a href="상품관리.html" id="navuser_1_5">커뮤니티 관리</a><br>
					<a href="상품관리.html" id="navuser_1_6">상담관리</a><br>
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
				<form class="addfrm">
					<div>
						<div class="addimg">
							<img src="더하기.png"><br>사진을 추가해주세요
						</div>
						<div class="minusimg">
							<div>메인이미지<img src="빼기.png"></div>
							<div>서브이미지<img src="빼기.png"></div>
						</div>
					</div>
					<div class="clinfo">
						<div class="clinfo_1">
							<ul>
								<li>학원명 : <input size=20></li>
								<li>학원위치 : <input></li>
								<li>최소 수강비 : <input type="number"></li>
								<li>최대 수강비 : <input type="number"></li>
							</ul>
						</div>
						<div class="clinfo_2">
							<ul>
								<li>과목 카테고리 : 
									<select>
										<option>국어</option>
										<option>수학</option>
										<option>영어</option>
										<option>사회</option>
										<option>과학</option>
										<option>음악</option>
										<option>미술</option>
										<option>체육</option>
										<option>컨설팅</option>
										<option>논술</option>
										<option>재수</option>
										<option>종합</option>
										<option>제2외국어</option>
									</select>
								</li>
								<li>편의사항 : <input></li>
							</ul>
						</div>
					</div>
					<div class="maininfo">
						<div>학원 설명</div>
						<textarea></textarea>
					</div>
					<div class="subbtn">
					<button type="button">수정하기</button>
					</div>
				</form>
			</article>
		</section>
	</body>