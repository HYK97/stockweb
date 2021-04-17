$(document).ready(function() {
		$.ajax({
			type: "POST",
			url: "/community/header",
			dataType: "json",
			success: function(data) {
				for(var i=0; i<data.length; i++){
					var dynamicTag=null;
					if(data[i].per.charAt(0)=="-"){
						dynamicTag = '<li id='+i+' style="font-size:12px; width:100px;overflow:hidden;"><a href="#" class="nav-link px-2 link-dark"><div>'+data[i].name+'</div><div style="color: red;">'+data[i].per+'</div></a></li>';
					}else{
						dynamicTag = '<li id='+i+' style="font-size:12px; width:100px;overflow:hidden;"><a href="#" class="nav-link px-2 link-dark"><div>'+data[i].name+'</div><div style="color: green;">'+data[i].per+'</div></a></li>';
					}
		 			$("#stockheader").append(dynamicTag);
				}
			},
		error:function(request, error) {
			alert("fail");
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}

		});
		
		
		//임시
		//var timer=setInterval(function(){
		//var last ="#"+$("#stockheader").children().last().attr("id");
		//var first ="#"+$("#stockheader").children().first().attr("id");
		//$(first).insertAfter(last).fadeIn(1500);
		//},3000);
		
		
		var inter =On();
		
		
		$("#sliderBtn").click(function() {
		if($('#sliderBtn').attr("check_result") == "play")
		{
			inter =On();
			$('#sliderBtn').attr('check_result','stop');
			$('#sliderBtn img').attr('src','../../../resources/img/stop.png');
		}else if($('#sliderBtn').attr("check_result") == "stop")
		{
			clearInterval(inter);
			$('#sliderBtn').attr('check_result','play');
			$('#sliderBtn img').attr('src','../../../resources/img/run.png');
			
		}
		});
		
		
		
		return false;
		
		
		
});


function On(){
		var ul = $('#stockheader');
		var li = $('#stockheader').find('li');
		var _index = 0;
		var i = 1;
		var interID=setInterval(function() {
		 var liHeight = $('#stockheader').find('li:first').outerWidth();
		  TweenMax.to(ul, 1.5, {
		    left: -(liHeight),
		    ease: Expo.easeInOut,
		    onComplete: topReturn
		  });
		}, 2000)
		
		function topReturn() {
		  var liFirst = $('#stockheader').find('li:first');
		  var liLast = $('#stockheader').find('li:last');
		  ul.css({
		    'left': 0
		  });
		  liFirst.insertAfter(liLast);
		 }
			return interID;
		 }
