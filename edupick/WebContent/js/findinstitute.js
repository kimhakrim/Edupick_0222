$(document).ready(function() {
	$("tr > td:not(:nth-child(6))").click(function(){
		$(location).attr('href','학원찾기상세.html');
	});
});