$(document).ready(function() {
    var fpage = 1;
    var epage = 10;

    $.ajax({
        type: "POST",
        url: "/community/communityList",
        dataType: "json",
        data: {
            "fpage": fpage,
            "epage": epage
        },
        success: function(data) {

            for (var i = 0; i < data.length; i++) {
                /*var k="";
	            	for (var j = 0; j < data[i].like.length; j++) 
	            	{k+=data[i].like[j].id;}*/



                var dynamicTag = null;
                if (data[i].user_like == 0) {
                    dynamicTag = ' <div class="contents" style="background-color: yellow; display: flex; width: inherit; overflow:auto; margin: 50px 0 ; " value="' + data[i].ID + '" ><div style=" background-color: blue;"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle"></div></div><div style="flex-grow: 7; background-color: red; justify-content: space-between; display: flex; flex-direction: column;  "><div style="background-color: pink; height: 50px; margin-bottom: 30px;"><label hidden="true" id="bid" >' + data[i].ID + '</label><label for="">' + data[i].USER_ID + ' / ' + data[i].WRITEDATE + '</label></div> <div style="background-color: wheat;margin-bottom: 30px;"><label for="">' + data[i].CONTENT + '</label></div><div style="background-color: wheat;"><label for="">' + data[i].HASHTAG + '</label></div><div style="background-color: green; height: 50PX; margin-top: 30px; "><label>좋아요수 : </label><label class="likecount">' + data[i].LIKECOUNT + '</label><button check_result="unlike" style="background-color: white;"  class="btn" value="' + data[i].ID + '">좋아요</button> <label>댓글수 :' + data[i].commentcount + '</label></div> </div> </div>';

                } else {
                    dynamicTag = ' <div class="contents" style="background-color: yellow; display: flex; width: inherit; overflow:auto; margin: 50px 0 ; " value="' + data[i].ID + '" ><div style=" background-color: blue;"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle"></div></div><div style="flex-grow: 7; background-color: red; justify-content: space-between; display: flex; flex-direction: column;  "><div style="background-color: pink; height: 50px; margin-bottom: 30px;"><label hidden="true" id="bid">' + data[i].ID + '</label><label for="">' + data[i].USER_ID + ' / ' + data[i].WRITEDATE + '</label></div> <div style="background-color: wheat;margin-bottom: 30px;"><label for="">' + data[i].CONTENT + '</label></div><div style="background-color: wheat;"><label for="">' + data[i].HASHTAG + '</label></div><div  style="background-color: green; height: 50PX; margin-top: 30px; "><label>좋아요수 : </label><label class="likecount">' + data[i].LIKECOUNT + '</label><button check_result="like" style="background-color: yellow;" class="btn" value="' + data[i].ID + '">좋아요</button> <label>댓글수 :' + data[i].commentcount + '</label></div> </div> </div>';

                }
                $("#contentList").append(dynamicTag);

    			history.pushState({ data: "/community/community", page: 1 }, null, "/community/community");
            }
        },
        error: function(request, error) {
            alert("fail");
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });



    //form ='<form class="like" action="#" method ="post"> <input type="hidden" value="'+data[i].ID+'"><input type="submit" value="좋아요"><button>댓글</button></form>'



    $(window).scroll(function() {

        if ($(document).height() <= $(window).scrollTop() + $(window).height()) {
            fpage = fpage + 10;
            epage = epage + 10;

            $.ajax({
                type: "POST",
                url: "/community/communityList",
                dataType: "json",
                data: {
                    "fpage": fpage,
                    "epage": epage
                },
                success: function(data) {
                    for (var i = 0; i < data.length; i++) {
                        var dynamicTag = null;
                        if (data[i].user_like == 0) {
                            dynamicTag = ' <div class="contents" style="background-color: yellow; display: flex; width: inherit; overflow:auto; margin: 50px 0 ; "  value="' + data[i].ID + '" ><div style=" background-color: blue;"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle"></div></div><div style="flex-grow: 7; background-color: red; justify-content: space-between; display: flex; flex-direction: column;  "><div style="background-color: pink; height: 50px; margin-bottom: 30px;"><label hidden="true" id="bid" >' + data[i].ID + '</label><label for="">' + data[i].USER_ID + ' / ' + data[i].WRITEDATE + '</label></div> <div style="background-color: wheat;margin-bottom: 30px;"><label for="">' + data[i].CONTENT + '</label></div><div style="background-color: wheat;"><label for="">' + data[i].HASHTAG + '</label></div><div style="background-color: green; height: 50PX; margin-top: 30px; "><label>좋아요수 : </label><label class="likecount">' + data[i].LIKECOUNT + '</label><button check_result="unlike" style="background-color: white;"  class="btn" value="' + data[i].ID + '">좋아요</button> <label>댓글수 :' + data[i].commentcount + '</label></div> </div> </div>';

                        } else {
                            dynamicTag = ' <div class="contents" style="background-color: yellow; display: flex; width: inherit; overflow:auto; margin: 50px 0 ; "  value="' + data[i].ID + '" ><div style=" background-color: blue;"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle"></div></div><div style="flex-grow: 7; background-color: red; justify-content: space-between; display: flex; flex-direction: column;  "><div style="background-color: pink; height: 50px; margin-bottom: 30px;"><label hidden="true" id="bid">' + data[i].ID + '</label><label for="">' + data[i].USER_ID + ' / ' + data[i].WRITEDATE + '</label></div> <div style="background-color: wheat;margin-bottom: 30px;"><label for="">' + data[i].CONTENT + '</label></div><div style="background-color: wheat;"><label for="">' + data[i].HASHTAG + '</label></div><div  style="background-color: green; height: 50PX; margin-top: 30px; "><label>좋아요수 : </label><label class="likecount">' + data[i].LIKECOUNT + '</label><button check_result="like" style="background-color: yellow;" class="btn" value="' + data[i].ID + '">좋아요</button> <label>댓글수 :' + data[i].commentcount + '</label></div> </div> </div>';

                        }
                        $("#contentList").append(dynamicTag);
                        history.pushState({ data: "/community", page: 1 }, null, "/community/community?page=2");
                    }
                },
                error: function(request, error) {
                    alert("fail");
                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }
            });



        }

    });


   $(document).on('click', '.btn', function(e) {

		e.stopPropagation()
        if (sessionData == "") {
            alert('로그인해주세요');
            return false;
        } else {
            var check = $(this).attr('check_result');
            var k = parseInt($(this).prev().text());
            if ($(this).attr('check_result') == "like") {

                $(this).css({
                    "background-color": "white"
                });
                $(this).prev().text(k - 1);
                $(this).attr('check_result', 'unlike');
            } else {

                $(this).css({
                    "background-color": "yellow"
                });
                $(this).prev().text(k + 1);
                $(this).attr('check_result', 'like');
            }

            var k = $(this).val();
            $.ajax({
                type: "POST",
                dataType: "json",
                url: "/community/likePush",
                data: {
                    "id": k
                },
                success: function(data) {


                },
                error: function(request, error) {
                    alert("fail");
                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }

            });



        }
        
        
    });
    


    
    $(document).on('click', '.contents', function(e) {


            	e.stopPropagation()
                $("#contentList *").remove(); // 해결!
                    var key= $(this).attr('value');
        
              $.ajax({
                   type: "POST",
                   dataType: "json",
                   url: "/community/viewContent",
                   data: {"id": key},
                  success: function(data) {
                  
                  if (data[0].user_like == 0) {
                            dynamicTag = ' <div class="contents" style="background-color: yellow; display: flex; width: inherit; overflow:auto; margin: 20px 0 ; "  value="' + data[0].ID + '" ><div style=" background-color: blue;"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle"></div></div><div style="flex-grow: 7; background-color: red; justify-content: space-between; display: flex; flex-direction: column;  "><div style="background-color: pink; height: 50px; margin-bottom: 30px;"><label hidden="true" id="bid" >' + data[0].ID + '</label><label for="">' + data[0].USER_ID + ' / ' + data[0].WRITEDATE + '</label></div> <div style="background-color: wheat;margin-bottom: 30px;"><label for="">' + data[0].CONTENT + '</label></div><div style="background-color: wheat;"><label for="">' + data[0].HASHTAG + '</label></div><div style="background-color: green; height: 50PX; margin-top: 30px; "><label>좋아요수 : </label><label class="likecount">' + data[0].LIKECOUNT + '</label><button check_result="unlike" style="background-color: white;"  class="btn" value="' + data[0].ID + '">좋아요</button> <label>댓글수 :' + data[0].commentcount + '</label></div> </div> </div>';

                        } else {
                            dynamicTag = ' <div class="contents" style="background-color: yellow; display: flex; width: inherit; overflow:auto; margin: 20px 0 ; "  value="' + data[0].ID + '" ><div style=" background-color: blue;"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle"></div></div><div style="flex-grow: 7; background-color: red; justify-content: space-between; display: flex; flex-direction: column;  "><div style="background-color: pink; height: 50px; margin-bottom: 30px;"><label hidden="true" id="bid">' + data[0].ID + '</label><label for="">' + data[0].USER_ID + ' / ' + data[0].WRITEDATE + '</label></div> <div style="background-color: wheat;margin-bottom: 30px;"><label for="">' + data[0].CONTENT + '</label></div><div style="background-color: wheat;"><label for="">' + data[0].HASHTAG + '</label></div><div  style="background-color: green; height: 50PX; margin-top: 30px; "><label>좋아요수 : </label><label class="likecount">' + data[0].LIKECOUNT + '</label><button check_result="like" style="background-color: yellow;" class="btn" value="' + data[0].ID + '">좋아요</button> <label>댓글수 :' + data[0].commentcount + '</label></div> </div> </div>';

                        }
                        $("#contentList").append(dynamicTag);
                        
                   },
                   error: function(request, error) {
                       alert("fail");
                      alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                   }
             });



        });


});
$(window).bind("popstate", function(event) {

    var data = event.originalEvent.state;  // 이부분으로 뒤로가기 할때마다 아까 저장한 히스토리 스택에 쌓인 URL을 불러 온다

    

    if(data){ // 데이터가 있으면 해당 데이터를 ajax로 다시 요청해 화면에 뿌려준다!!!!

// 아래 코드는 필자가 켄도UI의 스플리터기능으로 화면을 뿌려주기에  작성한 것이다

// 다른 사람들은 각자 화면을 요청하는 AJAX펑션을 넣으면 되겠다.

    	var splitter = $("#layout-vertical").data("kendoSplitter");

		splitter.ajaxRequest("#article-pane",data);

    }

    else{

    	// 히스토리에 정보가 없을경우 메인화면으로 보내준다.

    	var url = "/메인화면";    

    	$(location).attr('href',url);

    }
});


 

