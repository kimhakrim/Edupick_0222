function findAction(){
	alert("test");	
	
	if(document.findFrm.idname.value==""){
		alert("이름을 입력해주세요.");
		document.findFrm.idname.focus();
		return;
	}
	else if(document.findFrm.idtel.value==""){
		alert("휴대폰 번호를 입력해주세요.");
		document.findFrm.idtel.focus();
		return;
	}
	else {
		document.findFrm.method="post";
		document.findFrm.action ="/edupick/Common/findIdAction.do";
		alert("test1_1");
		document.findFrm.submit();
		return;
	
	}
	
} 

function findAction2() {

}

	