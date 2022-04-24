$(document).ready(function () {
    var auto = 0;

    $('#search').keydown(function (e) {

        $("#search").autocomplete({
            source: function (request, response) {

                if (request.term[0] == '@') {
                    auto = 1;

                    if ($.ui.autocomplete.filter(array, request.term.substr(1)) != 0) {
                        response($.ui.autocomplete.filter(array, request.term.substr(1)));
                    }
                }

            },
            select: function (event, ui) {
            },
            focus: function (event, ui) {
                return false;
            },
            minLength: 1,
            autoFocus: true,
            classes: {
                "ui-autocomplete": "highlight"
            },
            position: {
                my: "right top",
                at: "right bottom"
            },
            close: function (event) { //자동완성창 닫아질때 호출
                auto = 0;
                console.log(event);

            }, function() {
                auto = 0;
            }


        });


        if (e.keyCode == 13 && auto == 0) {
            var search = $('#search').val();
            var key = search.substr(0, 1); //일반검색인지 확인용
            if (key == "@") {
                location.href = "/community/chart?search=" + search.substr(1);
            } else {
                if (key == "#") {
                    search = search.substr(1);
                }
                location.href = "/community/community?search=" + search
            }

        }
    });


    $.ajax({
        type: "POST",
        url: "/community/header",
        dataType: "json",
        success: function (data) {
            var width = data.length * 100 + "px"
            $("#stockheader").css('width', width);
            for (var i = 0; i < data.length; i++) {
                var dynamicTag = null;
                if (data[i].per.charAt(0) == "-") {
                    dynamicTag = '<li id=' + i + ' style="font-size:12px; width:100px;overflow:hidden;"><a href="/community/chart?search=' + data[i].h + '" class="nav-link px-2 link-dark"><div>' + data[i].name + '</div><div style="color: red;">' + data[i].per + '</div></a></li>';
                } else {
                    dynamicTag = '<li id=' + i + ' style="font-size:12px; width:100px;overflow:hidden;"><a href="/community/chart?search=' + data[i].h + '" class="nav-link px-2 link-dark"><div>' + data[i].name + '</div><div style="color: green;">' + data[i].per + '</div></a></li>';
                }
                $("#stockheader").append(dynamicTag);
            }
        },
        error: function (request, error) {
            alert("fail");
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }

    });

    //1이 돌고있을때 0이 안돌고있을때
    var check = 0;
    var wiCheck = 0;
    var inter = 0;
    setInterval(function () {

        var nowWidth = $('#stockheader li').length;
        nowWidth = nowWidth * 100 + "px"
        $("#stockheader").css('width', nowWidth);
        var ul = $('#stockheader').outerWidth();
        var div = $('#headDiv').outerWidth();

        if (div < ul && check == 0) {

            check = 1; //돌고있는중
            inter = On();

            $('#sliderBtn').attr('check_result', 'stop');
            $('#sliderBtn img').attr('src', '../../../resources/img/stop.png');

        } else if (div > ul) {
            wiCheck = 0;
            check = 0;
            clearInterval(inter);
            $('#sliderBtn').attr('check_result', 'play');
            $('#sliderBtn img').attr('src', '../../../resources/img/run.png');
        }
        if (div < ul) {
            wiCheck = 1;

        }
    }, 2000)
    if (wiCheck = 1) {

        $("#sliderBtn").click(function () {
            if ($('#sliderBtn').attr("check_result") == "play") {

                inter = On();
                $('#sliderBtn').attr('check_result', 'stop');
                $('#sliderBtn img').attr('src', '../../../resources/img/stop.png');
            } else if ($('#sliderBtn').attr("check_result") == "stop") {

                clearInterval(inter);
                $('#sliderBtn').attr('check_result', 'play');
                $('#sliderBtn img').attr('src', '../../../resources/img/run.png');
            }
        });
    }


    var array = null; //초기로딩
    $.ajax({
        type: 'post',
        url: "/community/autocomplete",
        dataType: "json",
        success: function (data) {
            array = $.map(data, function (item) {
                return {
                    label: item.short_name,
                    value: "@" + item.code
                };
            });
        }
    });


    /*$("#search").autocomplete({
        source: function(request, response) {
            $.ajax({
                type: 'post',
                url: "/community/autocomplete",
                dataType: "json",
                success: function(data) {
                    var array = $.map(data, function(item) {
                        return {
                            label: item.short_name,
                            value: "@"+item.code
                        };
                    });
                    if ($.ui.autocomplete.filter(array, request.term) != 0) {
                        response($.ui.autocomplete.filter(array, request.term));
                    } else {
                        var result = [{
                            label: 'no result',

                        }];
                        response(result);
                    }
                }

            });

        },
        select: function(event, ui) {},
        focus: function(event, ui) {
            return false;
        },
        minLength: 2,
        autoFocus: true,
        classes: {
            "ui-autocomplete": "highlight"
        },
        position: {
            my: "right top",
            at: "right bottom"
        },
        close: function(event) { //자동완성창 닫아질때 호출
            console.log(event);
        }
    });*/


    $("#gdsImg").change(function () {
        $(".select_img *").remove();
        for (var i = 0; i < this.files.length; i++) {

            var reader = new FileReader;
            reader.onload = function (data) {

                var dy = '<img class="thum" src="' + data.target.result + '" style="width: 100px;"/>'
                $(".select_img").append(dy);
            }

            reader.readAsDataURL(this.files[i]);

        }
    });

    return false;

});


function On() {
    var ul = $('#stockheader');
    var li = $('#stockheader').find('li');
    var _index = 0;
    var i = 1;
    var interID = setInterval(function () {
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
