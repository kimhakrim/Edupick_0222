<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제완료</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<script src="<%= request.getContextPath() %>/js/paymentcomplete.js"></script>
		<link href="<%= request.getContextPath() %>/css/paymentcomplete.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="div1">
			결제가 완료되었습니다.<br>정보입력 창으로 이동합니다
		</div>
		<div class="div2" onclick="page()">확인</div>
	</body>
</html>