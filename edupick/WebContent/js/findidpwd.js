﻿$(document).ready(function() {
	$("#idsh").click(function() {
		$(".idpwsh2").hide();
		$(".idpwsh").show();
		$("#idsh").css("color","red");
		$("#pwsh").css("color","black");
	});
	$("#pwsh").click(function() {
		$(".idpwsh").hide();
		$(".idpwsh2").show();
		$(".idpwsh2").css({ "opacity":"1"});
		$("#pwsh").css("color","red");
		$("#idsh").css("color","black");
	});
	$("#btnsh").click(function(){
		window.open('searchid.do','window','width=580,height=300,left=750,top=400,resizable=no,scrollbars=no');
	});
	$("#btnsh2").click(function(){
		window.open('searchpwd.do','window','width=580,height=300,left=750,top=400,resizable=no,scrollbars=no');
	});
	
	$("#btnsh_close").click(function(){
		window.close();
	});
	$("#btnsh_close2").click(function(){
		window.close();
	});
});