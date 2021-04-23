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
                    dynamicTag = '<li id=' + i + ' style="font-size:12px; width:100px;overflow:hidden;"><a href="#" class="nav-link px-2 link-dark"><div>' + data[i].name + '</div><div style="color: red;">' + data[i].per + '</div></a></li>';
                } else {
                    dynamicTag = '<li id=' + i + ' style="font-size:12px; width:100px;overflow:hidden;"><a href="#" class="nav-link px-2 link-dark"><div>' + data[i].name + '</div><div style="color: green;">' + data[i].per + '</div></a></li>';
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
    // Button that triggered the modal
    var button = event.relatedTarget
    // Extract info from data-bs-* attributes
    var recipient = button.getAttribute('data-bs-whatever')
    // If necessary, you could initiate an AJAX request here
    // and then do the updating in a callback.
    //
    // Update the modal's content.
    var modalTitle = exampleModal.querySelector('.modal-title')
    var modalBodyInput = exampleModal.querySelector('.modal-body input')

    modalTitle.textContent = "글쓰기"
    modalBodyInput.value = recipient
});


$(function() {    //화면 다 뜨면 시작
        $("#search").autocomplete({
            source : function( request, response ) {
                 $.ajax({
                        type: 'get',
                        url: "/json",
                        dataType: "json",
                        //data: {"param":"param"},
                        success: function(data) {
                            //서버에서 json 데이터 response 후 목록에 추가
                            response(
                                $.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
                                    return {
                                        label: item+"label",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
                                        value: item,    //그냥 사용자 설정값?
                                        test : item+"test"    //이런식으로 사용

                                        //[
                     //    {"name": "하늘이", "dogType": "푸들", "age": 1, "weight": 2.14},
                         //    {"name": "콩이", "dogType": "푸들", "age": 3, "weight": 2.5},
                         //    {"name": "람이", "dogType": "허스키", "age": 7, "weight": 3.1}
                         //]
                                        // json이 다음 처럼 넘어오면
                                        // 상황 : name으로 찾고 dogType을 넘겨야 하는 상황이면 
                                        // label : item.dogType ,    //오토컴플릿이 되고 싶은 단어 
                                        // value : item.family ,    //넘겨야 하는 단어
                                        // age : item.age ,
                                        // weight : item.weight
                                    }
                                })
                            );
                        }
                   });
                },    // source 는 자동 완성 대상
            select : function(event, ui) {    //아이템 선택시
                console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
                console.log(ui.item.label);    //김치 볶음밥label
                console.log(ui.item.value);    //김치 볶음밥
                console.log(ui.item.test);    //김치 볶음밥test
                
            },
            focus : function(event, ui) {    //포커스 가면
                return false;//한글 에러 잡기용도로 사용됨
            },
            minLength: 1,// 최소 글자수
            autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
            classes: {    //잘 모르겠음
                "ui-autocomplete": "highlight"
            },
            delay: 500,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//            disabled: true, //자동완성 기능 끄기
            position: { my : "right top", at: "right bottom" },    //잘 모르겠음
            close : function(event){    //자동완성창 닫아질때 호출
                console.log(event);
            }
        });
        
    });



