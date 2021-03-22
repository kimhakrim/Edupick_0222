<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%  
	String loginname = (String)session.getAttribute("loginname");
%> 
<!DOCTYPE html>
<html>
	<head>
		<title>�п��߰��ϱ�</title>
		<!-- title ������ -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<!-- ��Ʈ -->
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
				<div class="logdiv"><%=loginname %>(��)</div>
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
			
				<form class="addfrm">
					<div>
						<div class="addimg">
							<input type="text" id="fileNm" readonly/>
							<a id="imageUpload" href="javascript:fnUpload();"><img src="<%= request.getContextPath() %>/webimage/���ϱ�.png" /></a><br>������ �߰����ּ���
							<input type="file" id="fileUpload" style="display:none" onchange="$('#fileNm').val(this.value)"/>


						</div>
						<div class="minusimg">
							<div>�����̹���<img src="<%= request.getContextPath() %>/webimage/����.png"></div>
							<div>�����̹���<img src="<%= request.getContextPath() %>/webimage/����.png"></div>
						</div>
					</div>
				<form>	
					<div class="clinfo">
					
						<div class="clinfo_1">
							<ul>
								<li>�п��� : <input size=20 name="iname"></li>
									<li>�п���ġ : 				
										<input type="text" id="sample4_postcode" name="sample4_postcode"  readonly placeholder="�����ȣ">
                         				<input type="button" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��"><br>
                         				<input type="text" id="sample4_roadAddress" name="sample4_roadAddress" readonly placeholder="���θ��ּ�">
                          				<input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" readonly placeholder="�����ּ�"><br>
                          				<span id="guide" name="guide" style="color:#999;display:none"></span>
                          				<input type="text" id="sample4_detailAddress" name="sample4_detailAddress" placeholder="���ּ�">                       																
                           				<input type="text" id="sample4_extraAddress" name="sample4_extraAddress" placeholder="�����׸�">
									</li>
								<li>�ּ� ������ : <input type="number" name="imin">��</li>
								<li>�ִ� ������ : <input type="number" name="imax">��</li>
							</ul>
						</div>
						
						<div class="clinfo_2">
							<ul>
								<li>���� ī�װ� : 
									<select name="icategory">
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
								<li>���ǻ��� : <input type="text" name="ineeds"></li>
							</ul>
						</div>
					</div>
					<div class="maininfo">
						<div>�п� ����</div>
						<textarea name="iintroduce"></textarea>
					</div>
				</form>	
					<div class="subbtn">
					<button type="button">����ϱ�</button>
					</div>
				</form>
			</article>
		</section>
	</body>
</html>