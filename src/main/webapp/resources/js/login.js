$(document).ready(function() {
$("#message").slideUp();
	$("#loginBtn").click(function() {
		var action = $("#loginForm").attr('action');
		var form_data = {
			id: $("#ID").val(),
			password: $("#PASSWORD").val(),
		};
		$.ajax({
			type: "POST",
			url: action,
			data: form_data,
		
			success: function(Integer) {
				if(Integer == 1) {
					location.href="/community/community"
					
				}
				else if(Integer == 0) {
					
					$("#message").html("<p style='color:red'>아이디 또는 비밀번호가 잘못되었습니다.</p>");	
					$("#message").slideDown('slow');
				}
			},
		error:function(request, error) {
			alert("fail");
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}

		});
		return false;
	});
});