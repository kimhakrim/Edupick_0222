<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>����Ʈ �߰�</title>
		<!-- title ������ -->
		<link rel="shortcut icon" type="image/x-icon" href="titlelogo.png">
		<link href="adminmain.css" rel="stylesheet" type="text/css" />
		<link href="adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="jquery-3.5.1.min.js"></script>
		<script src="admin.js"></script>
		<link href="adminquizadd.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="edupick2.jpg"></div>
				<div class="logdiv">�ۡۡ�(��)</div>
				<div class="logdiv2">
				<a href="������.html">Home</a>
				<a href="#">�α׾ƿ�</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin">������ ��������</div>
			<div>
				<div class="navuser">����Ʈ ���� ��</div>
				<div class="navuser_1">
					<a href="��Ÿ����.html" id="navuser_1_1">����Ʈ ����</a><br>
					<a href="��Ÿ����.html" id="navuser_1_2">����Ʈ ����</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">ȸ������</div>
				<div class="subnav" id="subnav2">��ǰ����</div>
				<div class="subnav" id="subnav3">�ֹ�����</div>
				<div class="subnav" id="subnav4">�Խ��ǰ���</div>
				<div class="subnav" id="subnav5">����������</div>
				<div class="subnav" id="subnav6" style="background:#FA5858;">��Ÿ����</div>
			</div>
		</nav>
		<section>
			<article>
				<form class="quizplusfrm">
					<div class="quizdiv1">���̵�
						<select>
							<option selected>��</option>
							<option>��</option>
							<option>��</option>
						</select>
					</div>
					<div>��������
						<input type="text">
					</div>
						<ul>
							<li>1 <input></li>
							<li>2 <input></li>
							<li>3 <input></li>
							<li>4 <input></li>
						</ul>
					<div class="quizdiv2">����
						<select>
							<option selected>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>
					<div>���� Ǯ��
						<input type="text">
					</div>
					<button type="button" id="quizsave">����</button>
				</form>
			</article>
		</section>
	</body>
</html>