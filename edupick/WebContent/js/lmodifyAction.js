
	
   if (document.regFrm1.modilpwd.value == "") {
        alert("비밀번호를 입력해 주세요.");
        document.regFrm1.modilpwd.focus();
        return;
    }
 
    if (document.regFrm1.modilpwdcheck.value == "") {
        alert("비밀번호를 재입력해 주세요.");
        document.regFrm1.modilpwdcheck.focus();
        return;
    }
 
    if (document.regFrm1.modipwdcheck.value != document.regFrm01.modipwdcheck.value) // 입력한 비밀번호와
                                                                    // 확인 비밀번호가
                                                                    // 맞지 않으면 경고
                                                                    // 메시지 출력
    {
        alert("비밀번호가 일치하지 않습니다.");
        document.regFrm1.modipwdcheck.value = "";
        document.regFrm1.modipwdcheck.focus();
        return;
    }
    
    if(document.regFrm1.sample4_postcode.value =="" || document.regFrm1.sample4_detailAddress.value ==""){
    	alert("주소를 입력해주세요.");
    	document.regFrm01.sample4_postcode.focus();
    	
    }
    
    if(document.regFrm1.phone2.value =="" || document.regFrm1.phone3.value ==""){
    	alert("핸드폰 번호를 입력해주세요.");
    	document.regFrm1.sample4_postcode.focus();
    	
    }
     document.regFrm1.method="post";	
     document.regFrm1.action = "/edupick/Common/licenseeModifyAction.do";
	 document.regFrm1.submit();
	 return;

