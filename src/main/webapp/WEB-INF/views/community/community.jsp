<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <script type="text/javascript">
        var sessionData = '<c:out value="${sessionScope.login.id}"/>';
    </script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="../../../resources/img/logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../resources/css/like.css">
    <style media="" data-href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        @font-face {
            font-family: 'FontAwesome';
            src: url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.eot?v=4.2.0");
            src: url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.eot?#iefix&v=4.2.0") format('embedded-opentype'), url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.woff?v=4.2.0") format('woff'), url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.ttf?v=4.2.0") format('truetype'), url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.svg?v=4.2.0#fontawesomeregular") format('svg');
            font-weight: normal;
            font-style: normal
        }

        .fa {
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            font-size: inherit;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale
        }</style>
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
    <script src="../../../resources/js/content.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>
    <link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" type="text/css" media="screen" href="../../../resources/css/index.css">
    <style>
        .text-center {
            text-align: center;
        }

        #back:hover {
            background-color: #f0f0f0;
            transition: background .5s ease-in-out;
        }

        .im {
            max-height: 800px;
            max-width: 707px;
        }

        .rolul {
            display: flex;
            position: relative;
            top: 0;
            left: 0;
            align-items: center;
        }

        .nextB {
            position: absolute;
            top: 50%;
            right: 10px;
            z-index: 1;
            visibility: hidden;
            background: url('../../../resources/img/right.png');
            width: 30px;
            height: 30px;
            background-size: 30px 30px;
            opacity: 0.9;
        }

        .preB {
            position: absolute;
            top: 50%;
            left: 10px;
            z-index: 1;
            visibility: hidden;
            background: url('../../../resources/img/left.png');
            width: 30px;
            height: 30px;
            background-size: 30px 30px;
            opacity: 0.9;

        }

        .roller {
            position: relative;
            width: 707px;
            overflow: hidden;
        }

        .mroller.roller {
            position: relative;
            width: 100%;
            max-width: 707px;
            overflow: hidden;
            text-align: center;
        }

    </style>


</head>
<body>
<div>
    <!-- 글자 -->

    <label id="session" hidden="true">${sessionScope.login.id }</label>
    <!------------------header---------------------------->
    <jsp:include page="../include/header.jsp"></jsp:include>

    <!-- -----------------------body---------------------------------- -->


    <div id="contentList" class="contentList"
         style="width: 800px;  text-align: center; margin: 0 auto; overflow: auto;">


    </div>


    <div class="modal fade bs-example-modal-lg" id="bbs" tabindex="-1" aria-labelledby="bbs" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">피드</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">

                        <img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32"
                             class="rounded-circle">
                        <label id="comments-author" class="col-form-label" style="margin: 1%;"> 글쓴이 </label>
                        <label id="comments-date" class="col-form-label"
                               style="font-size: 8px;color: gray;font-style: italic;"> 날짜</label>

                    </div>
                    <div class="mb-3">
                        <div id="modal-contents">

                        </div>
                    </div>
                    <div class="mroller roller">
                    </div>
                    <div class="mb-3">
                        <div id="modal-hash">

                        </div>


                        <div id="modalcount" class="mb-3">


                        </div>
                        <hr>
                        <c:if test="${not empty sessionScope.login }"> <!-- sessionScopre.id가 있으면 -->
                            <form action="/community/commentsWrite" method="post" onsubmit="return false;">
                                <div class="mb-3">
                                    <label for="comment" class="col-form-label">댓글 : </label>
                                    <input type="text" class="form-control" id="comment" name="comment"
                                           placeholder="${sessionScope.login.id} 님의 생각을 적어보세요" required>
                                </div>
                                <input id="commentsBtn" type="button" disabled class="btn btn-primary" value="댓글쓰기">

                            </form>
                        </c:if>
                        <div id=commetsList>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>