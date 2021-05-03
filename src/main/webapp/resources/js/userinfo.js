$(document).ready(function() {
    $.ajax({
        type: "POST",
        url: "/user/userinfo",
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
});