<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<title>�п��߰��ϱ�</title>
		<!-- title ������ -->
		<link rel="shortcut icon" type="image/x-icon" href="titlelogo.png">
		<link href="adminmain.css" rel="stylesheet" type="text/css" />
		<link href="adminmembermanage.css" rel="stylesheet" type="text/css" />
		<!-- ��Ʈ -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
		<script src="jquery-3.5.1.min.js"></script>
		<script src="admin.js"></script>
		<link href="admininstituteadd.css" rel="stylesheet" type="text/css" />
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
			<div class="admin" >������ ��������</div>
			<div>
				<div class="navuser">��ǰ���� ��</div>
				<div class="navuser_1">
					<a href="��ǰ����.html" id="navuser_1_1">�п�����</a><br>
					<a href="��ǰ����.html" id="navuser_1_2">���ǰ���</a><br>
					<a href="��ǰ����.html" id="navuser_1_3">����������</a><br>
					<a href="��ǰ����.html" id="navuser_1_4">���������</a><br>
					<a href="��ǰ����.html" id="navuser_1_5">Ŀ�´�Ƽ ����</a><br>
					<a href="��ǰ����.html" id="navuser_1_6">������</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">ȸ������</div>
				<div class="subnav" id="subnav2" style="background:#FA5858;">��ǰ����</div>
				<div class="subnav" id="subnav3">�ֹ�����</div>
				<div class="subnav" id="subnav4">�Խ��ǰ���</div>
				<div class="subnav" id="subnav5">����������</div>
				<div class="subnav" id="subnav6">��Ÿ����</div>
			</div>
		</nav>
		<section>
			<article>
				<form class="addfrm">
					<div>
						<div class="addimg">
							<img src="���ϱ�.png"><br>������ �߰����ּ���
						</div>
						<div class="minusimg">
							<div>�����̹���<img src="����.png"></div>
							<div>�����̹���<img src="����.png"></div>
						</div>
					</div>
					<div class="clinfo">
						<div class="clinfo_1">
							<ul>
								<li>�п��� : <input size=20></li>
								<li>�п���ġ : <input></li>
								<li>�ּ� ������ : <input type="number"></li>
								<li>�ִ� ������ : <input type="number"></li>
							</ul>
						</div>
						<div class="clinfo_2">
							<ul>
								<li>���� ī�װ� : 
									<select>
										<option>����</option>
										<option>����</option>
										<option>����</option>
										<option>��ȸ</option>
										<option>����</option>
										<option>����</option>
										<option>�̼�</option>
										<option>ü��</option>
										<option>������</option>
										<option>���</option>
										<option>���</option>
										<option>����</option>
										<option>��2�ܱ���</option>
									</select>
								</li>
								<li>���ǻ��� : <input></li>
							</ul>
						</div>
					</div>
					<div class="maininfo">
						<div>�п� ����</div>
						<textarea></textarea>
					</div>
					<div class="subbtn">
					<button type="button">����ϱ�</button>
					</div>
				</form>
			</article>
		</section>
	</body>
</html>