$(document).ready(function() {
	var count =10;
    $.ajax({
        type: "POST",
        url: "/community/communityList",
        dataType: "json",
        success: function(data) {
            for (var i = 0; i < count; i++) {
                var dynamicTag = null;
                    dynamicTag =' <div style="background-color: yellow; display: flex; width: inherit; overflow:auto; margin: 50px 0 ; " ><div style=" background-color: blue;"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle"></div></div><div style="flex-grow: 7; background-color: red; justify-content: space-between; display: flex; flex-direction: column;  "><div style="background-color: pink; height: 50px; margin-bottom: 30px;"><label for="">'+ data[i].USER_ID+' / '+ data[i].WRITEDATE+'</label></div> <div style="background-color: wheat;"><label for="">'+data[i].CONTENT +'</label></div><div style="background-color: green; height: 50PX; margin-top: 30px; "><label for=""> 버튼들</label></div> </div> </div>';     
                $("#contentList").append(dynamicTag);
            }
        },
        error: function(request, error) {
            alert("fail");
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });
    

   
});