﻿function loginAction(){

	
	var gubun = document.querySelector('input[name="tabs"]:checked').value;

	if(gubun =="member"){
			if(document.loginFrm.loginmid.value == ""){
		      alert("개인 아이디를 입력해주세요");
		      document.loginFrm.loginmid.focus();
		      return;   
		   }else if(document.loginFrm.loginmpwd.value == ""){
		      alert("패스워드를 입력해주세요");
		      document.loginFrm.loginmpwd.focus();
		      return;
		   }		   
		  
	}else if (gubun=="licensee"){
		   if(document.loginFrm.loginlid.value == ""){
		      alert("사업자 아이디를 입력해주세요");
		      document.loginFrm.loginlid.focus();
		      return;   
		   }else if(document.loginFrm.loginlpwd.value == ""){
		      alert("패스워드를 입력해주세요");
		      document.loginFrm.loginlpwd.focus();
		      return;
		   }		  
	} 
		
		 document.action = "/edupick/Common/loginAction.do";
		 document.loginFrm.submit();
		 return;
	   
	}



