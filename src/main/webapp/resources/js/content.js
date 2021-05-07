var click;
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
                    dynamicTag = '<div class="contents"style="border-radius: 8px; border: 1px solid #dbdbdb;/* border: teal; *//* background-color: yellow; */display: flex;width: inherit;overflow:auto;margin: 50px 0;"value="' + data[i].ID + '"><div style="border-right: 1px solid #dbdbdb;/* background-color: blue; */"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png"alt="mdo"width="51"height="51"class="rounded-circle"></div></div><div style="flex-grow: 7;/* border: 1px solid #dbdbdb; *//* background-color: red; */justify-content: space-between;display: flex;flex-direction: column;"><div style="text-align: left;margin-bottom: 10px;"><label hidden="true"id="bid">' + data[i].ID + '</label><label class="context-author" style="margin-right:1%">' + data[i].USER_ID + '</label><label id="context-date"style="font-size: 8;color: gray;font-style: italic;">' + data[i].WRITEDATE + '</label></div><div style="text-align: left;/* background-color: wheat; */border-top: 1px solid #dbdbdb;margin-bottom: 10px;"><label for="">' + data[i].CONTENT + '</label></div><div id="r'+data[i].ID+'" class="roller"><button class="preB" >이전</button><ul class="rolul"></ul><button class="nextB" check_result="1">다음</button></div><div style="text-align: left;color: skyblue;"><label for="">' + data[i].HASHTAG + '</label></div><div class="footer"style="align-items: center;justify-content: center;display:flex;border-top: 1px solid #dbdbdb;/* background-color: green; */height: 50PX;margin-top: 20px;"><div class="likebtn"><button check_result="unlike"style="background-color: rgb(255, 255, 255);"class="btn like"value="' + data[i].ID + '">좋아요</button></div><label class="likecount">' + data[i].LIKECOUNT + '</label><label>댓글수:</label><label class="commentsCount">' + data[i].commentcount + '</label></div></div></div>';
                } else {
                    dynamicTag = '<div class="contents"style="border-radius: 8px; border: 1px solid #dbdbdb;/* border: teal; *//* background-color: yellow; */display: flex;width: inherit;overflow:auto;margin: 50px 0;"value="' + data[i].ID + '"><div style="border-right: 1px solid #dbdbdb;/* background-color: blue; */"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png"alt="mdo"width="51"height="51"class="rounded-circle"></div></div><div style="flex-grow: 7;/* border: 1px solid #dbdbdb; *//* background-color: red; */justify-content: space-between;display: flex;flex-direction: column;"><div style="text-align: left;margin-bottom: 10px;"><label hidden="true"id="bid">' + data[i].ID + '</label><label class="context-author" style="margin-right:1%">' + data[i].USER_ID + '</label><label id="context-date"style="font-size: 8;color: gray;font-style: italic;">' + data[i].WRITEDATE + '</label></div><div style="text-align: left;/* background-color: wheat; */border-top: 1px solid #dbdbdb;margin-bottom: 10px;"><label for="">' + data[i].CONTENT + '</label></div><div id="r'+data[i].ID+'" class="roller"><button class="preB" >이전</button><ul class="rolul"></ul><button class="nextB" check_result="1" >다음</button></div><div style="text-align: left;color: skyblue;"><label for="">' + data[i].HASHTAG + '</label></div><div class="footer"style="align-items: center;justify-content: center;display:flex;border-top: 1px solid #dbdbdb;/* background-color: green; */height: 50PX;margin-top: 20px;"><div class="likebtn"><button check_result="like"style="background-color: rgb(255, 255, 0);"class="btn like"value="' + data[i].ID + '">좋아요</button></div><label class="likecount">' + data[i].LIKECOUNT + '</label><label>댓글수:</label><label class="commentsCount">' + data[i].commentcount + '</label></div></div></div>';
                }
              
             
                $("#contentList").append(dynamicTag);
              	 if (data[i].img != 0) {
              	 	 var len=data[i].imglist.length;
                     for (var j = 0; j < data[i].imglist.length; j++) {
                     var dyroll='<li><div style="width:707px"> <img class="im" src="/imggg/'+data[i].imglist[j]+'"></div></li>'
                     var s="#r"+data[i].ID+" ul"
                      $(s).append(dyroll);
                      var wi=parseInt(len)*707;
                      $(s).css('width' , wi+"px" )
                      if(len>1){
                      	 $(s).next().css('visibility','visible');
                      	 $(s).prev().css('visibility','visible');
                      	 $(s).prev().attr('check_result',len);
                      }
                    
                      }
                  }


            }
        },
        error: function(request, error) {
            alert("fail");
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });

				


    //form ='<form class="like" action="#" method ="post"> <input type="hidden" value="'+data[i].ID+'"><input type="submit" value="좋아요"><button>댓글</button></form>'



    $(window).scroll(function(e) {

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
                    dynamicTag = '<div class="contents"style="border-radius: 8px; border: 1px solid #dbdbdb;/* border: teal; *//* background-color: yellow; */display: flex;width: inherit;overflow:auto;margin: 50px 0;"value="' + data[i].ID + '"><div style="border-right: 1px solid #dbdbdb;/* background-color: blue; */"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png"alt="mdo"width="51"height="51"class="rounded-circle"></div></div><div style="flex-grow: 7;/* border: 1px solid #dbdbdb; *//* background-color: red; */justify-content: space-between;display: flex;flex-direction: column;"><div style="text-align: left;margin-bottom: 10px;"><label hidden="true"id="bid">' + data[i].ID + '</label><label class="context-author" style="margin-right:1%">' + data[i].USER_ID + '</label><label id="context-date"style="font-size: 8;color: gray;font-style: italic;">' + data[i].WRITEDATE + '</label></div><div style="text-align: left;/* background-color: wheat; */border-top: 1px solid #dbdbdb;margin-bottom: 10px;"><label for="">' + data[i].CONTENT + '</label></div><div id="r'+data[i].ID+'" class="roller"><button class="preB" >이전</button><ul class="rolul"></ul><button class="nextB" check_result="1">다음</button></div><div style="text-align: left;color: skyblue;"><label for="">' + data[i].HASHTAG + '</label></div><div class="footer"style="align-items: center;justify-content: center;display:flex;border-top: 1px solid #dbdbdb;/* background-color: green; */height: 50PX;margin-top: 20px;"><div class="likebtn"><button check_result="unlike"style="background-color: rgb(255, 255, 255);"class="btn like"value="' + data[i].ID + '">좋아요</button></div><label class="likecount">' + data[i].LIKECOUNT + '</label><label>댓글수:</label><label class="commentsCount">' + data[i].commentcount + '</label></div></div></div>';
                } else {
                    dynamicTag = '<div class="contents"style="border-radius: 8px; border: 1px solid #dbdbdb;/* border: teal; *//* background-color: yellow; */display: flex;width: inherit;overflow:auto;margin: 50px 0;"value="' + data[i].ID + '"><div style="border-right: 1px solid #dbdbdb;/* background-color: blue; */"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png"alt="mdo"width="51"height="51"class="rounded-circle"></div></div><div style="flex-grow: 7;/* border: 1px solid #dbdbdb; *//* background-color: red; */justify-content: space-between;display: flex;flex-direction: column;"><div style="text-align: left;margin-bottom: 10px;"><label hidden="true"id="bid">' + data[i].ID + '</label><label class="context-author" style="margin-right:1%">' + data[i].USER_ID + '</label><label id="context-date"style="font-size: 8;color: gray;font-style: italic;">' + data[i].WRITEDATE + '</label></div><div style="text-align: left;/* background-color: wheat; */border-top: 1px solid #dbdbdb;margin-bottom: 10px;"><label for="">' + data[i].CONTENT + '</label></div><div id="r'+data[i].ID+'" class="roller"><button class="preB" >이전</button><ul class="rolul"></ul><button class="nextB" check_result="1">다음</button></div><div style="text-align: left;color: skyblue;"><label for="">' + data[i].HASHTAG + '</label></div><div class="footer"style="align-items: center;justify-content: center;display:flex;border-top: 1px solid #dbdbdb;/* background-color: green; */height: 50PX;margin-top: 20px;"><div class="likebtn"><button check_result="like"style="background-color: rgb(255, 255, 0);"class="btn like"value="' + data[i].ID + '">좋아요</button></div><label class="likecount">' + data[i].LIKECOUNT + '</label><label>댓글수:</label><label class="commentsCount">' + data[i].commentcount + '</label></div></div></div>';
                }
              
             
                $("#contentList").append(dynamicTag);
              	 if (data[i].img != 0) {
              	 	  var len=data[i].imglist.length;
                      for (var j = 0; j < data[i].imglist.length; j++) {
                      var dyroll='<li><img src="/imggg/'+data[i].imglist[j]+'"></li>'
                     var s="#r"+data[i].ID+" ul"
                      $(s).append(dyroll);
                      }
                  }

                    }
                },
                error: function(request, error) {
                    alert("fail");
                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }
            });




        }

    });



    $(document).on('click', '.btn.like', function(e) {

        e.stopPropagation()
        if (sessionData == "") {
            alert('로그인해주세요');
            return false;
        } else {
            var check = $(this).attr('check_result');

            var mainlike = parseInt($(this).parent().next().text());
            if ($(this).attr('check_result') == "like") {

                $(this).css({
                    "background-color": "white"
                });

                $(this).parent().next().text(mainlike - 1);
                $(this).attr('check_result', 'unlike');
            } else {

                $(this).css({
                    "background-color": "yellow"
                });

                $(this).parent().next().text(mainlike + 1);
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



    var commentfpage = 0;
    var commentepage = 5;
    $(document).on('click', '.contents', function(e) {
        click = this;
        $("#commetsList *").remove();
        $("#likebtns *").remove();
        e.stopPropagation();

        var Conauthor = $(this).children().eq(1).children().eq(0).children().eq(1).text();
        var Condate = $(this).children().eq(1).children().eq(0).children().eq(2).text();
        var Cocontent = $(this).children().eq(1).children().eq(1).children().eq(0).text();
        var Cohashtag = $(this).children().eq(1).children().eq(2).children().eq(0).text();
        var Colike = $(this).children().eq(1).children().eq(3).children().eq(1).text();
        var Cocomment = $(this).children().eq(1).children().eq(3).children().eq(3).text();
        var clone = $(this).children().eq(1).children().eq(3).children().eq(0).children().eq(0);
        var btn = clone.clone();
        var bid = $(this).children().eq(1).children().eq(0).children().eq(0).text();
        $.ajax({
            type: "POST",
            dataType: "json",
            url: "/community/commnets",
            data: {
                "fpage": commentfpage,
                "epage": commentepage,
                "bid": bid
            },
            success: function(data) {
                for (var i = 0; i < data.length; i++) {
                    var dynamicTag = '<div class="mb-3"><div class="mb-3"><div style="display: flex;"><img src="../../../resources/img/velog.png"alt="mdo"width="32"height="32"class="rounded-circle"><label id="comment-author"for="recipient-name"class="col-form-label">' + data[i].USER_ID + '</label><label id="comment-date"for="recipient-name"class="col-form-label">' + data[i].writedate + '</label><c:if test="${sessionScope.login.id == ' + data[i].USER_ID + '  }"><div style="margin : 0 10%; display: flex;"><button id="comdelete">삭제</button><button id="comupdate">수정</button></div></c:if></div><div class="mb-3"><div id="modal-comment">' + data[i].comments + '</div></div></div></div>';
                    $("#commetsList").append(dynamicTag);
                }


            },
            error: function(request, error) {
                alert("fail");
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }

        });


        $('#comments-author').text(Conauthor);
        $('#comments-date').text(Condate);
        $('#modal-contents').text(Cocontent);
        $('#modal-hash').text(Cohashtag);
        $('#like').text(Colike);
        $('#com').text(Cocomment);
        $('#likebtns').prepend(btn);
        $('#bbs').modal('show');


    });


    $('#bbs').on('hidden.bs.modal', function() {
        var like = $(this).find('#like').text();
        var comment = $(this).find('#com').text();
        var btn = $(this).find('#likebtns').clone(); //복사
        var mainl = $(click).find('.likecount');
        var mainc = $(click).find('.commentsCount');
        var mainbtn = $(click).find('.likebtn');
        //  var maindiv=$(click).find('.likebtn');
        var div = $(click).find('.footer');
        mainl.text(like);
        mainc.text(comment);
        mainbtn.remove();
        btn.removeAttr('id');
        btn.attr('class', 'likebtn');
        div.prepend(btn);

    });

    $("#comment").on('input', function() {
        if ($("#comment").val() == '')
            $("#commentsBtn").attr("disabled", true);
        else
            $("#commentsBtn").attr("disabled", false);
    });
    
     $(document).on('click', '.nextB', function(e) {
       e.stopPropagation()
       	 var s=$(this).prev().prev().attr('check_result');
         var k=$(this).attr('check_result');
       	 if(s>k){
         $(this).prev().animate({
         	left:'-=707px'
         	
         })
         k++;
         $(this).attr('check_result',k)
         }
     });
      $(document).on('click', '.preB', function(e) {
       e.stopPropagation()
       var pos=$(this).next().next().attr('check_result');
       if(1<pos){
         $(this).next().animate({
         	left:'+=707px'
         });
         pos--;
        $(this).next().next().attr('check_result',pos);
         }
        
     });




});