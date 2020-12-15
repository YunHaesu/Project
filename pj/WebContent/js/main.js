$(function() {
	
	$(".nav-tabs > li").click(function(e) {
		e.preventDefault();
		$(".nav-tabs > li >a").removeClass("active");
		$(this).find("a").addClass("active");
		$(".tab-info").addClass("d-none");
		let num = $(this).index();
		$(".tab-info").eq(num).removeClass("d-none");

	});
	$("#loginModalJoinBtn").click(function(){
		$('#loginModal').modal('hide');
		$('#joinModal').modal('show');
	});
	
	$("#joinId").change(function(){
		$.get( "ajaxJoinId.jsp", {"joinId":$(this).val()}, function(data) {
			var obj = jQuery.parseJSON(data);
			console.log(obj[0]);
			if(obj[0] == true){
				$("#LoginCheck").html("<span class='form-control'>중복된 아이디입니다.</span>");
				$("#joinbutton").addClass("d-none");
			} else {
				$("#LoginCheck").html("<span class='form-control'>중복확인이 완료되었습니다.</span>");
				$("#joinbutton").removeClass("d-none");
			}
		});
	});
	
	
});
