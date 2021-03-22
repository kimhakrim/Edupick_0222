<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>주문관리</title>
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
				<div class="navuser">주문관리 ▼</div>
				<div class="navuser_1">
					<a href="#" id="navuser_1_1">결제내역</a><br>
					<a href="#" id="navuser_1_2">방문결제 관리</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">회원관리</div>
				<div class="subnav" id="subnav2">상품관리</div>
				<div class="subnav" id="subnav3" style="background:#FA5858;">주문관리</div>
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
								<option selected>회원명</option>
								<option>회원아이디</option>
								<option>회원연락처</option>
								<option>회원이메일</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="search.jpg"></div>
					</form>
				</div>
				<div class="userup">
					<div><button type="button">삭제</button></div>
					<div>총 회원수 :</div>
					<div>검색 회원수 :</div>
				</div>
				<form class="mainfrm">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>이름</th>
							<th>학원명</th>
							<th>수강명</th>
							<th>결제금액</th>
							<th>결제일</th>
							<th>결제방법</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>앵그리</td>
							<td>이젠IT</td>
							<td>벤치프레스하기</td>
							<td>257,000원</td>
							<td>2021-02-22</td>
							<td>카드결제</td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all2"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all3"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all4"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all5"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all6"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all7"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all8"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all9"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all10"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all11"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all12"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all13"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all14"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all15"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt44">보기</button></td>
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
						<div class="selectsh3"><img src="search.jpg"></div>
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
							<th>방문자</th>
							<th>학원명</th>
							<th>수강명</th>
							<th>예약날짜</th>
							<th>예약시간</th>
							<th>방문결제방법</th>
							<th>결제상태</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>멸치</td>
							<td>이젠IT</td>
							<td>풀업! 땡기자</td>
							<td>2021-02-24</td>
							<td>13:30</td>
							<td>현금결제</td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all2"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all3"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all4"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all5"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all6"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all7"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all8"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all9"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all10"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all11"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all12"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all13"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all14"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all15"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="결제확인">결제확인</button></td>
							<td><button type="button" id="btbt33">보기</button></td>
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