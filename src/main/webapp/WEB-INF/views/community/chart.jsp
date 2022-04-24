<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../../../resources/img/logo.png">
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="../../../resources/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&amp;family=Nanum+Pen+Script&amp;display=swap"
          rel="stylesheet">
    <link data-chunk="app" rel="stylesheet" href="../../../resources/css/style.css">
    <title>Community</title>
    <script src="../../../resources/js/header.js"></script>
    <script src="../../../resources/js/main.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" type="text/css" media="screen" href="../../../resources/css/index.css">
    <style>
        .text-center {
            text-align: center;
        }
    </style>
    <title>Community</title>
</head>
<body>
<!-- 글자 -->
<script type="text/javascript">

</script>
<!------------------header---------------------------->
<jsp:include page="../include/header.jsp"></jsp:include>
<!-- -----------------------body---------------------------------- -->


<!-- 차트 시작 -->
<div class="left" style="margin : 100px 0">
    <script type="text/javascript" src="https://d33t3vvu2t2yu5.cloudfront.net/tv.js"></script>
    <script type="text/javascript">


        function getParameterByName(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                results = regex.exec(location.search);
            return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
        }


        var search = '<c:out value="${search}"/>';
        var url = location.href;
        var searchs = getParameterByName('search');


        new TradingView.widget({
            "width": 660,
            "height": 370,
            "symbol": searchs,
            "interval": "D",
            "timezone": "exchange",
            "theme": "White",
            "style": "0",
            "toolbar_bg": "#f1f3f6",
            "withdateranges": true,
            "allow_symbol_change": true,
            "save_image": false,
            "details": true,
            "hotlist": true,
            "calendar": true,
            /*"news": [ "headlines" ],*/
            "hideideas": true
        });
    </script>
</div>


<!-- 차트 끝 -->

<jsp:include page="../include/footer.jsp"></jsp:include>


</body>
</html>