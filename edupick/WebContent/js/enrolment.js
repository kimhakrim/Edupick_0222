function credit() {
	if (document.creditfrm.cname.value == "") {
        alert("이름 입력해 주세요.");
        document.creditfrm.cname.focus();
        return;
    }
	if (document.creditfrm.cphone.value == "") {
        alert("휴대폰 번호를 입력해 주세요.");
        document.creditfrm.cphone.focus();
        return;
    }
	if (document.creditfrm.cphone2.value == "") {
        alert("휴대폰 번호를 입력해 주세요.");
        document.creditfrm.cphone2.focus();
        return;
    }
	if (document.creditfrm.caddress.value == "") {
        alert("주소를 입력해 주세요.");
        document.creditfrm.caddress.focus();
        return;
    }
	if (document.creditfrm.caddress2.value == "") {
        alert("주소를 입력해 주세요.");
        document.creditfrm.caddress2.focus();
        return;
    }
	else {
		location.href="payment.do";
	}
}

function credit2() {
	if (document.creditfrm.cname.value == "") {
        alert("이름 입력해 주세요.");
        document.creditfrm.cname.focus();
        return;
    }
	if (document.creditfrm.cphone.value == "") {
        alert("휴대폰 번호를 입력해 주세요.");
        document.creditfrm.cphone.focus();
        return;
    }
	if (document.creditfrm.cphone2.value == "") {
        alert("휴대폰 번호를 입력해 주세요.");
        document.creditfrm.cphone2.focus();
        return;
    }
	if (document.creditfrm.caddress.value == "") {
        alert("주소를 입력해 주세요.");
        document.creditfrm.caddress.focus();
        return;
    }
	if (document.creditfrm.caddress2.value == "") {
        alert("주소를 입력해 주세요.");
        document.creditfrm.caddress2.focus();
        return;
    }
	else {
		alert("농협은행 예금주 : 권혁민 계좌번호 : 302-0177-0251-41");
		location.href="instituteDetail.do";
	}
}

function credit3() {
	if (document.creditfrm.cname.value == "") {
        alert("이름 입력해 주세요.");
        document.creditfrm.cname.focus();
        return;
    }
	if (document.creditfrm.cphone.value == "") {
        alert("휴대폰 번호를 입력해 주세요.");
        document.creditfrm.cphone.focus();
        return;
    }
	if (document.creditfrm.cphone2.value == "") {
        alert("휴대폰 번호를 입력해 주세요.");
        document.creditfrm.cphone2.focus();
        return;
    }
	if (document.creditfrm.caddress.value == "") {
        alert("주소를 입력해 주세요.");
        document.creditfrm.caddress.focus();
        return;
    }
	if (document.creditfrm.caddress2.value == "") {
        alert("주소를 입력해 주세요.");
        document.creditfrm.caddress2.focus();
        return;
    }
	else {
		alert("방문결제페이지로 이동합니다");
		location.href="visitpayment.do";
	}
}

$(document).ready(function(){
	$("#pay1").click(function(){
		$("#creditbtn01").css("display","block");
		$("#creditbtn01").css("float","left");
		$("#creditbtn02").css("margin-left","71px");
		$("#creditbtn02").css("display","block");
		$("#creditbtn03").css("display","none");
		$("#creditbtn04").css("display","none");
		$("#creditbtn05").css("display","none");
		$("#creditbtn06").css("display","none");
	});
	$("#pay2").click(function(){
		$("#creditbtn01").css("display","none");
		$("#creditbtn02").css("display","none");
		$("#creditbtn03").css("display","block");
		$("#creditbtn03").css("float","left");
		$("#creditbtn04").css("margin-left","71px");
		$("#creditbtn04").css("display","block");
		$("#creditbtn05").css("display","none");
		$("#creditbtn05").css("display","none");
		$("#creditbtn06").css("display","none");
	});
	$("#pay3").click(function(){
		$("#creditbtn01").css("display","none");
		$("#creditbtn02").css("display","none");
		$("#creditbtn03").css("display","none");
		$("#creditbtn04").css("display","none");
		$("#creditbtn05").css("display","block");
		$("#creditbtn05").css("float","left");
		$("#creditbtn06").css("margin-left","71px");
		$("#creditbtn06").css("display","block");
	});
});

function cancel01() {
	location.href="/edupick/Institute/instituteDetail.do";
}

function cancel02() {
	location.href="myservice.do";
}

function modify() {
	location.href="cart.do";
}

function list() {
	location.href="cart.do";
}