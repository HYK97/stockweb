var click;
$(document).ready(function () {

    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }

    var search = getParameterByName('search');
    var url = window.location.pathname;
    var fpage = 1;
    var epage = 10;
    var commentfpage = 1;
    var commentepage = 10;
    var modalbbsid;
    var ajaxdata = {
        "fpage": fpage,
        "epage": epage,
        "search": search
    };
    var ajaxurl;
    if (search == '' && url == "/community/community") {
        ajaxurl = "/community/communityList";
    } else if (search != '' && url == "/community/community") {
        ajaxurl = "/community/search";
    } else if (url == "/user/myWrite") {
        ajaxurl = "/user/communityList";
    } else if (url == "/user/likeContent") {
        ajaxurl = "/user/likeContentList";
    } else if (url == "/user/logout") {
        ajaxurl = "/community/communityList";
    }


    $.ajax({
        type: "POST",
        url: ajaxurl,
        dataType: "json",
        data: ajaxdata,
        success: function (data) {
            if (data.length == 0) {
                alert("검색결과가 없습니다");
            }

            for (var i = 0; i < data.length; i++) {

                var dynamicTag = null;
                if (data[i].user_like == 0) {
                    dynamicTag = '<div class="contents"style="overflow-x: hidden; border-radius: 8px; border: 1px solid #dbdbdb;/* border: teal; *//* background-color: yellow; */display: flex;width: inherit;margin: 50px 0;"value="' + data[i].ID + '"><div style="border-right: 1px solid #dbdbdb;/* background-color: blue; */"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png"alt="mdo"width="51"height="51"class="rounded-circle"></div></div><div class="contentMain" style="flex-grow: 7;/* border: 1px solid #dbdbdb; *//* background-color: red; */justify-content: space-between;display: flex;flex-direction: column;"><div style="text-align: left;margin-bottom: 10px;"><label hidden="true"id="bid">' + data[i].ID + '</label><label class="context-author" style="margin-right:1%">' + data[i].USER_ID + '</label><label id="context-date"style="font-size: 8;color: gray;font-style: italic;">' + data[i].WRITEDATE + '</label></div><div style="text-align: left;/* background-color: wheat; */border-top: 1px solid #dbdbdb;margin-bottom: 10px;"><label for="">' + data[i].CONTENT + '</label></div><div id="r' + data[i].ID + '" class="roller"><button class="preB" ></button><ul class="rolul"></ul><button class="nextB" check_result="1"></button></div><div class="hashtags" style="text-align: left;color: skyblue;"><label for="">' + data[i].HASHTAG + '</label></div><div class="footer"style="text-align: center; position: relative;align-items: center;justify-content: center;display:flex;border-top: 1px solid #dbdbdb;/* background-color: green; */height: 50PX;margin-top: 20px;"><div class="likebtn" value="' + data[i].ID + '"><i id="likes"></i><span id="liketag">liked!</span></div><label class="likecount" style="font-family: fantasy;font-size: 13px;color: rgb(255, 168, 168);margin: 0 10% 0 1%;">' + data[i].LIKECOUNT + '</label><div class="skyblue" style=" width: 30px; height: 30px; "><svg  viewbox="0 0 24 24" aria-hidden="true" style=" fill: #b0b4b4; width: 20px; margin: 6px 9px 0 0; "><g><path d="M 14.046 2.242 l -4.148 -0.01 h -0.002 c -4.374 0 -7.8 3.427 -7.8 7.802 c 0 4.098 3.186 7.206 7.465 7.37 v 3.828 c 0 0.108 0.044 0.286 0.12 0.403 c 0.142 0.225 0.384 0.347 0.632 0.347 c 0.138 0 0.277 -0.038 0.402 -0.118 c 0.264 -0.168 6.473 -4.14 8.088 -5.506 c 1.902 -1.61 3.04 -3.97 3.043 -6.312 v -0.017 c -0.006 -4.367 -3.43 -7.787 -7.8 -7.788 z m 3.954 5.758 c -1.134 0.96 -4.862 3.405 -6.833 -4.214 V 16.67 c 0 -0.414 -0.167 -9.67 -0.75 -0.75 h 0.75 c -3.66 0 -6.318 -2.476 -0.915 1.08 c 0 -3.534 2.768 -6.302 4 -2 l 4.147 0.01 h 0.002 c 3.532 0 -5.149 -1.01 -7.149 -5.01 c -0.003 1.91 -0.942 3.844 -2.514 5.176 z"></path></g></svg></div><label style="font-family: fantasy;font-size: 13px;color: skyblue;margin: 0 10% 0 1%;" class="commentsCount">' + data[i].commentcount + '</label></div></div></div>';
                } else {
                    dynamicTag = '<div class="contents"style="overflow-x: hidden;border-radius: 8px; border: 1px solid #dbdbdb;/* border: teal; *//* background-color: yellow; */display: flex;width: inherit;margin: 50px 0;"value="' + data[i].ID + '"><div style="border-right: 1px solid #dbdbdb;/* background-color: blue; */"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png"alt="mdo"width="51"height="51"class="rounded-circle"></div></div><div class="contentMain" style="flex-grow: 7;/* border: 1px solid #dbdbdb; *//* background-color: red; */justify-content: space-between;display: flex;flex-direction: column;"><div style="text-align: left;margin-bottom: 10px;"><label hidden="true"id="bid">' + data[i].ID + '</label><label class="context-author" style="margin-right:1%">' + data[i].USER_ID + '</label><label id="context-date"style="font-size: 8;color: gray;font-style: italic;">' + data[i].WRITEDATE + '</label></div><div style="text-align: left;/* background-color: wheat; */border-top: 1px solid #dbdbdb;margin-bottom: 10px;"><label for="">' + data[i].CONTENT + '</label></div><div id="r' + data[i].ID + '" class="roller"><button class="preB" ></button><ul class="rolul"></ul><button class="nextB" check_result="1"></button></div><div class="hashtags" style="text-align: left;color: skyblue;"><label for="">' + data[i].HASHTAG + '</label></div><div class="footer"style="text-align: center; position: relative;align-items: center;justify-content: center;display:flex;border-top: 1px solid #dbdbdb;/* background-color: green; */height: 50PX;margin-top: 20px;"><div class="likebtn" value="' + data[i].ID + '"><i id="likes" class="press"></i><span class="press" id="liketag">liked!</span></div><label class="likecount" style="font-family: fantasy;font-size: 13px;color: rgb(255, 168, 168);margin: 0 10% 0 1%;">' + data[i].LIKECOUNT + '</label><div class="skyblue" style=" width: 30px; height: 30px; "><svg viewbox="0 0 24 24" aria-hidden="true" style=" fill: #b0b4b4; width: 20px; margin: 6px 9px 0 0; "><g><path d="M 14.046 2.242 l -4.148 -0.01 h -0.002 c -4.374 0 -7.8 3.427 -7.8 7.802 c 0 4.098 3.186 7.206 7.465 7.37 v 3.828 c 0 0.108 0.044 0.286 0.12 0.403 c 0.142 0.225 0.384 0.347 0.632 0.347 c 0.138 0 0.277 -0.038 0.402 -0.118 c 0.264 -0.168 6.473 -4.14 8.088 -5.506 c 1.902 -1.61 3.04 -3.97 3.043 -6.312 v -0.017 c -0.006 -4.367 -3.43 -7.787 -7.8 -7.788 z m 3.954 5.758 c -1.134 0.96 -4.862 3.405 -6.833 -4.214 V 16.67 c 0 -0.414 -0.167 -9.67 -0.75 -0.75 h 0.75 c -3.66 0 -6.318 -2.476 -0.915 1.08 c 0 -3.534 2.768 -6.302 4 -2 l 4.147 0.01 h 0.002 c 3.532 0 -5.149 -1.01 -7.149 -5.01 c -0.003 1.91 -0.942 3.844 -2.514 5.176 z"></path></g></svg></div><label style="font-family: fantasy;font-size: 13px;color: skyblue;margin: 0 10% 0 1%;" class="commentsCount">' + data[i].commentcount + '</label></div></div></div>';
                }


                $("#contentList").append(dynamicTag);
                if (data[i].img != 0) {
                    var len = data[i].imglist.length;
                    for (var j = 0; j < data[i].imglist.length; j++) {
                        var dyroll = '<li><div style="width:707px"> <img class="im" src="/' + data[i].imglist[j] + '"></div></li>'
                        var s = "#r" + data[i].ID + " ul"
                        $(s).append(dyroll);
                        var wi = parseInt(len) * 707;
                        $(s).css('width', wi + "px")
                        if (len > 1) {
                            $(s).next().css('visibility', 'visible');

                            $(s).prev().attr('check_result', len);
                        }

                    }
                }


            }
        },
        error: function (request, error) {
            alert("fail");
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    });


    $(window).scroll(function (e) {
        if ($(document).height() <= $(window).scrollTop() + $(window).height()) {
            var k = $(window).scrollTop() + $(window).height()
            console.log("콘텐츠 높이:" + $(document).height() + "  bbs 스크롤높이" + $(window).scrollTop() + " 콘텐츠높이" + $(window).height() + " 합계는 " + k);
            fpage = fpage + 10;
            epage = epage + 10;

            ajaxdata = {
                "fpage": fpage,
                "epage": epage,
                "search": search
            };

            $.ajax({
                type: "POST",
                url: ajaxurl,
                dataType: "json",
                data: ajaxdata,
                success: function (data) {
                    for (var i = 0; i < data.length; i++) {


                        var dynamicTag = null;
                        if (data[i].user_like == 0) {
                            dynamicTag = '<div class="contents"style="overflow-x: hidden;border-radius: 8px; border: 1px solid #dbdbdb;/* border: teal; *//* background-color: yellow; */display: flex;width: inherit;margin: 50px 0;"value="' + data[i].ID + '"><div style="border-right: 1px solid #dbdbdb;/* background-color: blue; */"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png"alt="mdo"width="51"height="51"class="rounded-circle"></div></div><div class="contentMain" style="flex-grow: 7;/* border: 1px solid #dbdbdb; *//* background-color: red; */justify-content: space-between;display: flex;flex-direction: column;"><div style="text-align: left;margin-bottom: 10px;"><label hidden="true"id="bid">' + data[i].ID + '</label><label class="context-author" style="margin-right:1%">' + data[i].USER_ID + '</label><label id="context-date"style="font-size: 8;color: gray;font-style: italic;">' + data[i].WRITEDATE + '</label></div><div style="text-align: left;/* background-color: wheat; */border-top: 1px solid #dbdbdb;margin-bottom: 10px;"><label for="">' + data[i].CONTENT + '</label></div><div id="r' + data[i].ID + '" class="roller"><button class="preB" ></button><ul class="rolul"></ul><button class="nextB" check_result="1"></button></div><div class="hashtags" style="text-align: left;color: skyblue;"><label for="">' + data[i].HASHTAG + '</label></div><div class="footer"style="text-align: center; position: relative; align-items: center;justify-content: center;display:flex;border-top: 1px solid #dbdbdb;/* background-color: green; */height: 50PX;margin-top: 20px;"><div class="likebtn" value="' + data[i].ID + '"><i id="likes"></i><span id="liketag">liked!</span></div><label class="likecount" style="font-family: fantasy;font-size: 13px;color: rgb(255, 168, 168);margin: 0 10% 0 1%;">' + data[i].LIKECOUNT + '</label><div style=" width: 30px; height: 30px; "><svg class="skyblue" viewbox="0 0 24 24" aria-hidden="true" style=" fill: #b0b4b4; width: 20px; margin: 6px 9px 0 0; "><g><path d="M 14.046 2.242 l -4.148 -0.01 h -0.002 c -4.374 0 -7.8 3.427 -7.8 7.802 c 0 4.098 3.186 7.206 7.465 7.37 v 3.828 c 0 0.108 0.044 0.286 0.12 0.403 c 0.142 0.225 0.384 0.347 0.632 0.347 c 0.138 0 0.277 -0.038 0.402 -0.118 c 0.264 -0.168 6.473 -4.14 8.088 -5.506 c 1.902 -1.61 3.04 -3.97 3.043 -6.312 v -0.017 c -0.006 -4.367 -3.43 -7.787 -7.8 -7.788 z m 3.954 5.758 c -1.134 0.96 -4.862 3.405 -6.833 -4.214 V 16.67 c 0 -0.414 -0.167 -9.67 -0.75 -0.75 h 0.75 c -3.66 0 -6.318 -2.476 -0.915 1.08 c 0 -3.534 2.768 -6.302 4 -2 l 4.147 0.01 h 0.002 c 3.532 0 -5.149 -1.01 -7.149 -5.01 c -0.003 1.91 -0.942 3.844 -2.514 5.176 z"></path></g></svg></div><label style="font-family: fantasy;font-size: 13px;color: skyblue;margin: 0 10% 0 1%;" class="commentsCount">' + data[i].commentcount + '</label></div></div></div>';
                        } else {
                            dynamicTag = '<div class="contents"style="overflow-x: hidden;border-radius: 8px; border: 1px solid #dbdbdb;/* border: teal; *//* background-color: yellow; */display: flex;width: inherit;margin: 50px 0;"value="' + data[i].ID + '"><div style="border-right: 1px solid #dbdbdb;/* background-color: blue; */"><div style="border-radius: 4rem; background-color: hotpink; width: 50px; height: 50px; margin: 20px;  "><img src="../../../resources/img/velog.png"alt="mdo"width="51"height="51"class="rounded-circle"></div></div><div class="contentMain" style="flex-grow: 7;/* border: 1px solid #dbdbdb; *//* background-color: red; */justify-content: space-between;display: flex;flex-direction: column;"><div style="text-align: left;margin-bottom: 10px;"><label hidden="true"id="bid">' + data[i].ID + '</label><label class="context-author" style="margin-right:1%">' + data[i].USER_ID + '</label><label id="context-date"style="font-size: 8;color: gray;font-style: italic;">' + data[i].WRITEDATE + '</label></div><div style="text-align: left;/* background-color: wheat; */border-top: 1px solid #dbdbdb;margin-bottom: 10px;"><label for="">' + data[i].CONTENT + '</label></div><div id="r' + data[i].ID + '" class="roller"><button class="preB" ></button><ul class="rolul"></ul><button class="nextB" check_result="1"></button></div><div class="hashtags" style="text-align: left;color: skyblue;"><label for="">' + data[i].HASHTAG + '</label></div><div class="footer"style="text-align: center; position: relative;align-items: center;justify-content: center;display:flex;border-top: 1px solid #dbdbdb;/* background-color: green; */height: 50PX;margin-top: 20px;"><div class="likebtn" value="' + data[i].ID + '"><i id="likes" class="press"></i><span class="press" id="liketag">liked!</span></div><label class="likecount" style="font-family: fantasy;font-size: 13px;color: rgb(255, 168, 168);margin: 0 10% 0 1%;">' + data[i].LIKECOUNT + '</label><div style=" width: 30px; height: 30px; "><svg class="skyblue" viewbox="0 0 24 24" aria-hidden="true" style=" fill: #b0b4b4; width: 20px; margin: 6px 9px 0 0; "><g><path d="M 14.046 2.242 l -4.148 -0.01 h -0.002 c -4.374 0 -7.8 3.427 -7.8 7.802 c 0 4.098 3.186 7.206 7.465 7.37 v 3.828 c 0 0.108 0.044 0.286 0.12 0.403 c 0.142 0.225 0.384 0.347 0.632 0.347 c 0.138 0 0.277 -0.038 0.402 -0.118 c 0.264 -0.168 6.473 -4.14 8.088 -5.506 c 1.902 -1.61 3.04 -3.97 3.043 -6.312 v -0.017 c -0.006 -4.367 -3.43 -7.787 -7.8 -7.788 z m 3.954 5.758 c -1.134 0.96 -4.862 3.405 -6.833 -4.214 V 16.67 c 0 -0.414 -0.167 -9.67 -0.75 -0.75 h 0.75 c -3.66 0 -6.318 -2.476 -0.915 1.08 c 0 -3.534 2.768 -6.302 4 -2 l 4.147 0.01 h 0.002 c 3.532 0 -5.149 -1.01 -7.149 -5.01 c -0.003 1.91 -0.942 3.844 -2.514 5.176 z"></path></g></svg></div><label style="font-family: fantasy;font-size: 13px;color: skyblue;margin: 0 10% 0 1%;" class="commentsCount">' + data[i].commentcount + '</label></div></div></div>';
                        }


                        $("#contentList").append(dynamicTag);
                        if (data[i].img != 0) {
                            var len = data[i].imglist.length;
                            for (var j = 0; j < data[i].imglist.length; j++) {
                                var dyroll = '<li><div style="width:707px"> <img class="im" src="' + data[i].imglist[j] + '"></div></li>'
                                var s = "#r" + data[i].ID + " ul"
                                $(s).append(dyroll);
                                var wi = parseInt(len) * 707;
                                $(s).css('width', wi + "px")
                                if (len > 1) {
                                    $(s).next().css('visibility', 'visible');

                                    $(s).prev().attr('check_result', len);
                                }

                            }
                        }


                    }
                },
                error: function (request, error) {
                    alert("fail");
                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }
            });


        }

    });


    //form ='<form class="like" action="#" method ="post"> <input type="hidden" value="'+data[i].ID+'"><input type="submit" value="좋아요"><button>댓글</button></form>'

    $('#bbs').on("scroll", function () {
        var k = $('.modal-dialog.modal-lg').outerHeight(true);

        if (k <= $('#bbs').scrollTop() + $(window).height() + 0.9) {


            commentfpage = commentfpage + 10;
            commentepage = commentepage + 10;
            updateComment();

        }
    });


    $(document).on('click', '.likebtn', function (e) {
        var check = $(this).find("#likes").attr('class');
        e.stopPropagation()
        if (sessionData == "") {
            alert('로그인해주세요');
            return false;
        } else {
            $(this).find("#likes,#liketag").toggleClass("press");
            var mainlike = parseInt($(this).next().text());

            if (check == "press") {
                $(this).next().text(mainlike - 1);
            } else {
                $(this).next().text(mainlike + 1);
            }


            var k = $(this).attr("value");
            $.ajax({
                type: "POST",
                dataType: "json",
                url: "/community/likePush",
                data: {
                    "id": k
                },
                success: function (data) {


                },
                error: function (request, error) {
                    alert("fail");
                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }

            });


        }


    });


    $(document).on('click', '.contents', function (e) {
        e.stopPropagation();
        commentfpage = 1;
        commentepage = 10;
        click = this;
        $("#commetsList *").remove();
        $("#likebtns *").remove();
        e.stopPropagation();
        modalbbsid = $(this).attr('value');

        var roller = $(this).find(".roller").children();
        var rollerc = roller.clone();
        var Conauthor = $(this).children().eq(1).children().eq(0).children().eq(1).text();
        var Condate = $(this).children().eq(1).children().eq(0).children().eq(2).text();
        var Cocontent = $(this).children().eq(1).children().eq(1).children().eq(0).text();
        var Cohashtag = $(this).find('.hashtags').text();
        var clone = $(this).find('.footer');
        var btn = clone.clone();
        btn.attr('class', 'mfooter');

        updateComment();

        $('.mroller.roller').prepend(rollerc);
        $('#comments-author').text(Conauthor);
        $('#comments-date').text(Condate);
        $('#modal-contents').text(Cocontent);
        $('#modal-hash').text(Cohashtag);
        $('#modalcount').prepend(btn);
        $('.modal-content').attr('value', modalbbsid);
        $('#bbs').modal('show');


    });


    $('#bbs').on('hidden.bs.modal', function () {


        var btn = $(this).find('.mfooter').clone(); //복사
        $(this).find('#modalcount').empty();
        btn.attr('class', 'footer');
        var roller = $(this).find('.mroller.roller');
        //  var maindiv=$(click).find('.likebtn');
        $(click).find('.footer').remove();
        $(click).find('.contentMain').append(btn);


        roller.empty();
        $("#commentsBtn").attr("disabled", true);
        $('#comment').val('');


    });

    $("#comment").on('input', function () {
        if ($("#comment").val() == '')
            $("#commentsBtn").attr("disabled", true);
        else
            $("#commentsBtn").attr("disabled", false);
    });

    $(document).on('click', '.nextB', function (e) {
        e.stopPropagation()
        var last = $(this).prev().prev().attr('check_result');
        var now = $(this).attr('check_result');
        last = parseInt(last);
        now = parseInt(now);
        if (last > now) {
            now++;
            if (now == 1) { //이전버튼 없앰
                $(this).prev().prev().css('visibility', 'hidden');
                $(this).css('visibility', 'visible');
            }
            if (now == last) {
                $(this).css('visibility', 'hidden');
                $(this).prev().prev().css('visibility', 'visible');
            }
            if (now != 1 && now != last) {
                $(this).css('visibility', 'visible');
                $(this).prev().prev().css('visibility', 'visible');
            }
            $(this).prev().animate({
                left: '-=707px'
            })

            $(this).attr('check_result', now)
        }
    });

    $(document).on('click', '.preB', function (e) {
        e.stopPropagation()
        var last = $(this).attr('check_result');
        var now = $(this).next().next().attr('check_result'); //넥스트는 현재위치
        last = parseInt(last);
        now = parseInt(now);
        if (1 < now) {
            now--;
            if (now == 1) { //이전버튼 없앰
                $(this).css('visibility', 'hidden');
                $(this).next().next().css('visibility', 'visible');
            }
            if (now == last) {
                $(this).next().next().css('visibility', 'hidden');
                $(this).css('visibility', 'visible');
            }
            if (now != 1 && now != last) {
                $(this).css('visibility', 'visible');
                $(this).next().next().css('visibility', 'visible');
            }
            $(this).next().animate({
                left: '+=707px'
            });

            $(this).next().next().attr('check_result', now);
        }


    });


    $("#commentsBtn").click(function () {
        $("#commentsBtn").attr("disabled", true);
        var comments = $(this).prev().find("#comment").val();
        var label = $(this).parent().parent().parent().parent().parent().find('.commentsCount')
        $.ajax({
            type: "POST",
            url: "/community/commentsWrite",
            dataType: "json",
            data: {
                "bbs_id": modalbbsid,
                "comments": comments
            },
            success: function (data) {

                commentfpage = 1; // 댓글쓸때마다 최신 데이터를 위로올리는작업
                commentepage = 10;

                $("#commetsList *").remove();//댓글 리스트 삭제
                updateComment();

                var count = label.text();

                count++;
                label.text(count);
                $('#comment').val('');


            },
            error: function (request, error) {
                alert("fail");
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }


        });


    });


    function updateComment() {
        $.ajax({
            type: "POST",
            dataType: "json",
            url: "/community/commnets",
            data: {
                "fpage": commentfpage,
                "epage": commentepage,
                "bid": modalbbsid
            },
            success: function (data) {
                for (var i = 0; i < data.length; i++) {

                    if (sessionData == data[i].USER_ID) {
                        var dynamicTag = '<div class="mb-3 divComment"><div class="mb-3"><div class="mb-3"><img src="../../../resources/img/velog.png"alt="mdo"width="32"height="32"class="rounded-circle"><label id="comments-author"for="recipient-name"class="col-form-label"style="margin: 1%;">' + data[i].USER_ID + '</label><label id="comments-date"for="recipient-name"class="col-form-label"style="font-size: 8;color: gray;font-style: italic;">' + data[i].writedate + '</label><button style="margin:0 1%" class="btn btn-danger" id="comdelete" value="' + data[i].comment_id + '">삭제</button><button id="comupdate" class="btn btn-info" value="' + data[i].comment_id + '">수정</button></div><div class="mb-3"><div id="modal-comment">' + data[i].comments + '</div></div></div></div>'
                    } else {
                        var dynamicTag = '<div class="mb-3 divComment"><div class="mb-3"><div class="mb-3"><img src="../../../resources/img/velog.png"alt="mdo"width="32"height="32"class="rounded-circle"><label id="comments-author"for="recipient-name"class="col-form-label"style="margin: 1%;">' + data[i].USER_ID + '</label><label id="comments-date"for="recipient-name"class="col-form-label"style="font-size: 8;color: gray;font-style: italic;">' + data[i].writedate + '</label></div><div class="mb-3"><div id="modal-comment">' + data[i].comments + '</div></div></div></div>'
                    }
                    $("#commetsList").append(dynamicTag);
                }


            },
            error: function (request, error) {
                alert("fail");
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }

        });
    }

    $("#deleteContent").click(function () {
        var listc = $(this).parent().parent().parent().parent().parent().find('.rolul div').children();
        var imglist = [];
        if (listc.length > 0) {
            for (i = 0; i < listc.length; i++) {
                var f = listc.attr("src");
                imglist.push(f);
            }
        } else {
            imglist.push("null");
        }
        $.ajax({
            type: "POST",
            dataType: "json",
            url: "/community/deleteContent",
            data: {
                "ID": parseInt(modalbbsid),
                "imglist": imglist
            },
            success: function (data) {
                if (data == "0") {
                    alert("게시글 삭제 실패.");
                } else {
                    alert("게시글이 삭제되었습니다.");
                    location.reload();
                }

            },
            error: function (request, error) {
                alert("fail");
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }

        });


    });
    $(document).on('click', '#comdelete', function (e) {
        var cid = $(this).val();
        var comcount = $(this).parent().parent().parent().parent().parent().parent().find('.commentsCount');
        var buf = comcount.text();

        $.ajax({
            type: "POST",
            dataType: "json",
            url: "/community/deleteComment",
            data: {
                "comment_id": parseInt(cid),
            },
            success: function (data) {
                if (data == "0") {
                    alert("댓글 삭제 실패")
                } else {
                    $("#commetsList *").remove();//댓글 리스트 삭제
                    commentfpage = 1; // 댓글쓸때마다 최신 데이터를 위로올리는작업
                    commentepage = 10;
                    updateComment();
                    buf = buf - 1;
                    comcount.text(buf);
                }

            },
            error: function (request, error) {
                alert("fail");
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }

        });


    });

    $(document).on('input', '#commentUpdateInput', function (e) {
        if ($("#commentUpdateInput").val() == '')
            $("#updateCommentBtn").attr("disabled", true);
        else
            $("#updateCommentBtn").attr("disabled", false);
    });

    $(document).on('click', '#comupdate', function (e) {
        var cid = $(this).val();
        var text = $(this).parent().parent().find("#modal-comment").text();

        var dynamicTag = '<div class="mb-3"><input type="text"class="form-control"id="commentUpdateInput"value="' + text + '"required=""></div><button id="updateCommentBtn"type="button"class="btn btn-primary"value="' + cid + '">수정하기</button><button id="updateCancel" style="margin-left: 1%" class="btn btn-danger">취소</button>'
        $(this).parent().parent().parent().replaceWith(dynamicTag)
    });

    $(document).on('click', '#updateCancel', function (e) {
        $("#commetsList *").remove();//댓글 리스트 삭제
        commentfpage = 1; // 댓글쓸때마다 최신 데이터를 위로올리는작업
        commentepage = 10;
        updateComment();

    });

    $(document).on('click', '#updateCommentBtn', function (e) {
        var comments = $(this).parent().parent().find('#commentUpdateInput').val();
        var cid = $(this).val();
        $.ajax({
            type: "POST",
            dataType: "json",
            url: "/community/updateComment",
            data: {
                "comments": comments,
                "comment_id": parseInt(cid)
            },
            success: function (data) {
                if (data == "0") {
                    alert("댓글 수정 실패")
                } else {
                    $("#commetsList *").remove();//댓글 리스트 삭제
                    commentfpage = 1; // 댓글쓸때마다 최신 데이터를 위로올리는작업
                    commentepage = 10;
                    updateComment();

                }

            },
            error: function (request, error) {
                alert("fail");
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }

        });

    });

    $("#modifyContent").click(function () {
        var parent = $(this).parent().parent().parent().parent().parent().parent()
        var content = parent.find('#modal-contents').text();
        var cid = parent.attr('value');
        var hash = parent.find('#modal-hash').text();
        $('#bbs').modal('hide');

        $('#exampleModal').modal('show');
        $('#exampleModal').find('.modal-title').text('피드수정');
        $('#exampleModal').find('#content').text(content);
        $('#exampleModal').find('#hashTag').val(hash);
        $('#exampleModal').find('#writeForm').attr('action', '/community/updateContent');
        $('#exampleModal').find('#formID').val(cid);


    });

    $("#headerWrite").click(function () {
        $('#bbs').modal('hide');
        $('#exampleModal').modal('show');
        $('#exampleModal').find('.modal-title').text('피드쓰기');
        $('#exampleModal').find('#content').text('');
        $('#exampleModal').find('#hashTag').val('');
        $('#exampleModal').find('#writeForm').attr('action', '/community/write');
    });


});