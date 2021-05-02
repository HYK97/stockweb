$(document).ready(function() {
    $.ajax({
        type: "POST",
        url: "/community/header",
        dataType: "json",
        success: function(data) {
            var width = data.length * 100 + "px"
            $("#stockheader").css('width', width);
            for (var i = 0; i < data.length; i++) {
                var dynamicTag = null;
                if (data[i].per.charAt(0) == "-") {
                    dynamicTag = '<li id=' + i + ' style="font-size:12px; width:100px;overflow:hidden;"><a href="/community/search?search='+data[i].h+'" class="nav-link px-2 link-dark"><div>' + data[i].name + '</div><div style="color: red;">' + data[i].per + '</div></a></li>';
                } else {
                    dynamicTag = '<li id=' + i + ' style="font-size:12px; width:100px;overflow:hidden;"><a href="/community/search?search='+data[i].h+'" class="nav-link px-2 link-dark"><div>' + data[i].name + '</div><div style="color: green;">' + data[i].per + '</div></a></li>';
                }
                $("#stockheader").append(dynamicTag);
            }
        },
        error: function(request, error) {
            alert("fail");
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }

    });

    //1이 돌고있을때 0이 안돌고있을때
    var check = 0;
    var wiCheck = 0;
    var inter = 0;
    setInterval(function() {

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

        $("#sliderBtn").click(function() {
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


	var array=null; //초기로딩
        $.ajax({
            type: 'post',
            url: "/community/autocomplete",
            dataType: "json",
            success: function(data) {
                array = $.map(data, function(item) {
                    return {
                        label: item.short_name,
                        value: item.code
                    };
                });
            }
        });



$("#search").autocomplete({
    source: function(request, response) {   
    		if(request.term[0]=='@'){
                if ($.ui.autocomplete.filter(array, request.term.substr(1)) != 0) {
                    response($.ui.autocomplete.filter(array, request.term.substr(1)));
                } else {
                    var result = [{
                        label: 'no result',
                    }];
                    response(result);
                }
                }
    },
    select: function(event, ui) {},
    focus: function(event, ui) {
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
    close: function(event) { //자동완성창 닫아질때 호출
        console.log(event);
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
                            value: item.code
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



   




    return false;



});


function On() {
    var ul = $('#stockheader');
    var li = $('#stockheader').find('li');
    var _index = 0;
    var i = 1;
    var interID = setInterval(function() {
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



var exampleModal = document.getElementById('exampleModal')
exampleModal.addEventListener('show.bs.modal', function(event) {

    var button = event.relatedTarget

    var recipient = button.getAttribute('data-bs-whatever')

    var modalTitle = exampleModal.querySelector('.modal-title')
    var modalBodyInput = exampleModal.querySelector('.modal-body input')

    modalTitle.textContent = "글쓰기"
    modalBodyInput.value = recipient
});