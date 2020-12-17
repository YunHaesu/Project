$(function() {
	/*
		search 안보이게 하는 기능
	 */
	$(".nav-tabs > li").click(function(e) {
		e.preventDefault();
		$(".nav-tabs > li >a").removeClass("active");
		$(this).find("a").addClass("active");
		$(".tab-info").addClass("d-none");
		let num = $(this).index();
		$(".tab-info").eq(num).removeClass("d-none");

	});

	/* login시 joinBtn click 후 loginmodal close */
	$("#loginModalJoinBtn").click(function() {
		$('#loginModal').modal('hide');
		$('#joinModal').modal('show');
	});
	/* 중복 ID 확인 */
	$("#joinId").change(function(e) {
		e.preventDefault();
		$.get("ajaxJoinId.jsp", { "joinId": $(this).val() }, function(data) {
			var obj = jQuery.parseJSON(data);
			console.log(obj[0]);
			if (obj[0] == true) {
				$("#LoginCheck").html("<span class='form-control'>이미 사용중인 아이디 입니다.</span>");
				$("#joinbutton").attr("disabled", "disabled");
			} else {
				$("#LoginCheck").html("<span class='form-control'>중복확인이 완료되었습니다.</span>");
				$("#joinbutton").removeAttr("disabled");
			}
		});
	});
	/* 비밀번호 중복확인 */
	$(function() {
		$("#alert-success").hide(); 
		$("#alert-danger").hide(); 
		$("input").keyup(function() { 
			var pwd1 = $("#pass").val(); 
			var pwd2 = $("#password").val(); 
			if (pwd1 != "" || pwd2 != "") {
				 if (pwd1 == pwd2) { 
					$("#alert-success").show(); 
					$("#alert-danger").hide(); 
					$("#joinbutton").removeAttr("disabled");
					 } else { 
						$("#alert-success").hide(); 
						$("#alert-danger").show(); 
						$("#joinbutton").attr("disabled", "disabled"); } } });

	});


});
