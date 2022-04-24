<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
    <link rel="shortcut icon" href="../../../resources/img/logo.png">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300i,400,700&amp;display=swap" rel="stylesheet">
    <script src="../../../resources/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&amp;family=Nanum+Pen+Script&amp;display=swap"
          rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../../resources/css/companyinfo.css">
    <link data-chunk="app" rel="stylesheet" href="../../../resources/css/style.css">
    <script type="text/javascript" src="../../../resources/js/register.js"></script>
    <title>회원가입</title>
    <style>
        body {
            padding: 0;
            margin: 0;
            height: 100vh;
            font-family: "Nunito Sans";
        }

        .form-control {
            line-height: 2;
        }

        .bg-custom {
            background-color: #fff;
        }

        .btn-custom {
            background-color: #3e3d56;
            color: #fff;
        }

        .btn-custom:hover {
            background-color: #33313f;
            color: #fff;
        }

        label {
            color: #000;
        }

        a,
        a:hover {
            color: #fff;
            text-decoration: none;
        }

        a,
        a:hover {
            text-decoration: none;
        }

        @media (max-width: 932px) {
            .display-none {
                display: none !important;
            }
        }
    </style>
</head>
<body>
<div class="row m-0 h-100">
    <div class="col p-0 text-center d-flex justify-content-center align-items-center display-none">
        <div class="mk-page-section-inner" style="width: 50%">
            <div class="mk-video-color-mask" style="
                                                    background: #2a363b;
                                                    background: -moz-linear-gradient(top, #2a363b 0%, #2e2a3b 100%);
                                                    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#2a363b), color-stop(100%,#2e2a3b));
                                                    background: -webkit-linear-gradient(top, #2a363b 0%,#2e2a3b 100%);
                                                    background: -o-linear-gradient(top, #2a363b 0%,#2e2a3b 100%);
                                                    background: -ms-linear-gradient(top, #2a363b 0%,#2e2a3b 100%);
                                                    background: linear-gradient(to bottom, #2a363b 0%,#2e2a3b 100%);
                                                    opacity: 0.4;
                                                "></div>
            <div class="mk-section-preloader js-el" data-mk-component="Preloader" style="display: none;">
                <div class="mk-section-preloader__icon"></div>
            </div>
            <div class="background-layer-holder">
                <div id="background-layer--1" data-mk-lazyload="false"
                     class="background-layer mk-background-stretch none-blend-effect js-el" data-mk-component="Parallax"
                     data-parallax-config="{&quot;speed&quot; : 0.3 }"
                     data-mk-img-set="{&quot;landscape&quot;:{&quot;desktop&quot;:&quot;../../../resources/img/team.jpg&quot;,&quot;tablet&quot;:&quot;../../../resources/img/team.jpg&quot;,&quot;mobile&quot;:&quot;&quot;},&quot;responsive&quot;:&quot;true&quot;}"
                     mk-img-loaded=""
                     style="background-image: url(&quot;../../../resources/img/team.jpg&quot;); background-attachment: scroll; will-change: transform; transform: translateY(0px) translateZ(0px);">
                    <div class="mk-color-layer"></div>
                </div>
            </div>
        </div>
        <div class="contents container"
             style="/* display: flex; */width: 100%;height: 100%;/* margin: 0 auto; */padding-right: 0px;padding-left: 0px;">
            <div id="background-layer--2" data-mk-lazyload="false"
                 class="background-layer mk-background-stretch none-blend-effect js-el" data-mk-component="Parallax"
                 data-parallax-config="{&quot;speed&quot; : 0.3 }"
                 data-mk-img-set="{&quot;landscape&quot;:{&quot;desktop&quot;:&quot;../../../resources/img/team.jpg&quot;,&quot;tablet&quot;:&quot;../../../resources/img/team.jpg&quot;,&quot;mobile&quot;:&quot;&quot;},&quot;responsive&quot;:&quot;true&quot;}"
                 mk-img-loaded=""
                 style="background-image: url(&quot;../../../resources/img/team.jpg&quot;);width: 100%;height: 100%;">
                <div class="mk-color-layer"></div>
            </div>
        </div>
    </div>
    <div class="col p-0 bg-custom d-flex justify-content-center align-items-center flex-column w-100">
        <form class="w-75" action="/user/register" method="post" id="loginForm">
            <label for="id" class="form-label">아이디</label>
            <div style="display :flex; justify-content:space-between;">
                <div class="mb-3" style="width: 88%;">
                    <input type="text" class="form-control" id="id" check_result="fail" name="id" placeholder="ID"
                           required="">
                </div>
                <div style="width:11%;">
                    <input type="button" style=" font-size:10px; height:75%; margin-top: 0px!important; "
                           class="btn btn-custom btn-lg btn-block mt-3" value="중복확인" name="" id="idCheck">
                </div>
            </div>
            <div id="message" style="display: none;"></div>
            <div class="mb-3">
                <label for="password" class="form-label">비밀번호</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="PASSWORD"
                       required="">
            </div>
            <div class="mb-3">
                <label for="check" class="form-label">비밀번호확인</label>
                <input type="password" class="form-control" id="check" placeholder="PASSWORD" required="">
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">이름</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="name" required="">
            </div>
            <div class="mb-3">
                <label for="birthday" class="form-label">생일</label>
                <input type="date" class="form-control" id="birthday" name="birthday" placeholder="birthday"
                       required="">
            </div>
            <input type="submit" class="btn btn-custom btn-lg btn-block mt-3" value="회원가입" name="" id="registerBtn">
        </form>
    </div>
</div>
<!-- 아이디 체크 ajax 확인 -->
</body>
</html>