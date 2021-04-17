$(document).ready(function() {
		$.ajax({
			type: "POST",
			url: "/community/header",
			dataType: "json",
			success: function(data) {
				for(var i=0; i<data.length; i++){
					var dynamicTag = '<p>'+data[i].name+'</p>'+'<p>'+data[i].per+'</p>';
		 			$("#kk").append(dynamicTag);
				}
			},
		error:function(request, error) {
			alert("fail");
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}

		});
		
		return false;
});
	
