<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<title>�п���</title>
		<!-- title ������ -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<!-- ��Ʈ -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
		<link href="<%= request.getContextPath() %>/css/admininstitutedetail.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="edupick2.jpg"></div>
				<div class="logdiv">�ۡۡ�(��)</div>
				<div class="logdiv2">
				<a href="������.html">Home</a>
				<a href="<%= request.getContextPath() %>/Common/logout.do">�α׾ƿ�</a>
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
				<div class="clmain">
					<form>
						<div class="clmain1">
							<img id="mainbanner" src="�׽�Ʈ���.jpg">
							<div id="slide">
								<input type="radio" name="pos" id="pos1" checked>
								<input type="radio" name="pos" id="pos2">
								<input type="radio" name="pos" id="pos3">
								<input type="radio" name="pos" id="pos4">
								<ul>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>
								<p class="pos">
									<label for="pos1"></label>
									<label for="pos2"></label>
									<label for="pos3"></label>
									<label for="pos4"></label>
								</p>
							</div>
						</div>
						<div class="clmain2">
							<ul>
								<li style="line-height:100px;">�п��� : ����IT</li>
								<li>�п���ġ : <img src="B.jpg"><a href="#">��ġ����</a><br><br>����ϵ� ���ֽ� ������ ������� 572 5��</li>
								<li style="line-height:100px;">��ȭ��ȣ : 0507-1363-2684</li>
								<li style="line-height:50px;">�������� : �ڹ�,���̽�,���伥,�Ϸ���Ʈ<br>��Ȱ1��,��Ȱ2��,ĳ��,��������,C ���</li>
								<li style="line-height:100px;">���ǻ��� : ����,������,Ŀ������</li>
							</ul>
						</div>
						<div class="clmain3">
							<div>
								<span>�п� �Ұ�</span>
								<div>/ �ְ��� ��ǻ�Ϳ� ��Ÿ��� /</div>
								<div>/ ī���� ���׸��� /</div>
								<div>/ �ְ��� ������ /</div>
								<div>/ ���� ������ /</div>
								<div>/ �ްԽ� �� ���� /</div>
								<div>/ ������ ���� ��û�� /</div>
								<div>/ ���� ���ο� ������ /</div>
							</div>
						</div>
						<div class="clmainsub">
							<button type="button" id="clmodi">����</button>
							<button type="button" id="cllist">���</button>
						</div>
					</form>
				</div>
			</article>
		</section>
	</body>