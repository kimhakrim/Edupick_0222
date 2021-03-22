<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%  
	String loginname = (String)session.getAttribute("loginname");
%> 
<!DOCTYPE html>
<html>
	<head>
		<title>학원추가하기</title>
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
		<link href="<%= request.getContextPath() %>/css/admininstituteadd.css" rel="stylesheet" type="text/css" />
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="<%= request.getContextPath() %>/js/address.js"></script>
		<script>
			function fnUpload(){
				$('#fileUpload').click();
				
			}
			
		</script>
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="<%= request.getContextPath() %>/webimage/edupick2.jpg"></div>
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
							<input type="text" id="fileNm" readonly/>
							<a id="imageUpload" href="javascript:fnUpload();"><img src="<%= request.getContextPath() %>/webimage/더하기.png" /></a><br>사진을 추가해주세요
							<input type="file" id="fileUpload" style="display:none" onchange="$('#fileNm').val(this.value)"/>


						</div>
						<div class="minusimg">
							<div>메인이미지<img src="<%= request.getContextPath() %>/webimage/빼기.png"></div>
							<div>서브이미지<img src="<%= request.getContextPath() %>/webimage/빼기.png"></div>
						</div>
					</div>
				<form>	
					<div class="clinfo">
					
						<div class="clinfo_1">
							<ul>
								<li>학원명 : <input size=20 name="iname"></li>
									<li>학원위치 : 				
										<input type="text" id="sample4_postcode" name="sample4_postcode"  readonly placeholder="우편번호">
                         				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                         				<input type="text" id="sample4_roadAddress" name="sample4_roadAddress" readonly placeholder="도로명주소">
                          				<input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" readonly placeholder="지번주소"><br>
                          				<span id="guide" name="guide" style="color:#999;display:none"></span>
                          				<input type="text" id="sample4_detailAddress" name="sample4_detailAddress" placeholder="상세주소">                       																
                           				<input type="text" id="sample4_extraAddress" name="sample4_extraAddress" placeholder="참고항목">
									</li>
								<li>최소 수강비 : <input type="number" name="imin">원</li>
								<li>최대 수강비 : <input type="number" name="imax">원</li>
							</ul>
						</div>
						
						<div class="clinfo_2">
							<ul>
								<li>과목 카테고리 : 
									<select name="icategory">
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
								<li>편의사항 : <input type="text" name="ineeds"></li>
							</ul>
						</div>
					</div>
					<div class="maininfo">
						<div>학원 설명</div>
						<textarea name="iintroduce"></textarea>
					</div>
				</form>	
					<div class="subbtn">
					<button type="button">등록하기</button>
					</div>
				</form>
			</article>
		</section>
	</body>
</html>