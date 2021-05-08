$(document).ready(function() {
	var checksum=0;
	$("#message").slideUp();
	$("#idCheck").click(function() {
		var form_data = {
			id: $("#id").val(),
		};
		if($("#id").val()!=""){
		
		$.ajax({
			type: "POST",
			url: "/user/idCheck",
			data: form_data,
			success: function(Integer) {
				if(Integer == 1) {
					
					$("#message").html("<p style='color:red'>아이디 존재</p>");	
					$("#message").slideDown('slow');
					$("#id").attr("check_result", "fail");
				}
				else if(Integer == 0) {
					
					$("#message").html("<p style='color:yellowgreen'>중복체크성공</p>");	
					$("#message").slideDown('slow');
					$("#id").attr("check_result", "success");
				}
			},
		error:function(request, error) {
			alert("fail");
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}

		});
		}else{
			$("#message").html("<p style='color:red'>아이디를 입력해주세요</p>");	
			$("#message").slideDown('slow');
		}
		return false;
	});
	
	$('#id').change(function () {
		$("#id").attr("check_result", "fail");
	});
	
	$("#registerBtn").click(function() {
		if($('#id').attr("check_result") == "fail")
		{
			alert("아이디를 중복체크해주세요!!");
			return false;
		}
		if($('#check').val() != $('#password').val())
		{
			alert("비밀번호가 다릅니다.");
			return false;
		}
	});
	
});