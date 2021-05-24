$(document).ready(function() {
    $.ajax({
        type: "POST",
        url: "/user/userinfos",
        dataType: "json",
        success: function(data) {
            var id =data[0].id;
            var pw =data[0].password;
            var name =data[0].name;
            var birthday =data[0].birthday;
            $('#id').val(id);
            $('#name').val(name);
            $('#birthday').val(birthday);
            
               
        },
        error: function(request, error) {
            alert("fail");
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }

    });
    
    $("#updateBtn").click(function() {
    	
		if($('#check').val() != $('#password').val())
		{
			alert("비밀번호가 다릅니다.");
			return false;
		}
		if(msg=="success")
		{
		alert("성공");
		}

    });
    
    


    


});
    
