<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>


<head>
    <script type="text/javascript">
        var sessionData = '<c:out value="${sessionScope.login.id}"/>';
        var msg = '<c:out value="${msg}"/>';
    </script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="../../../resources/img/logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>

    <script src="../../../resources/js/bootstrap.bundle.min.js"></script>


    <title>Community</title>
    <script src="../../../resources/js/header.js"></script>
    <!--    <script src="../../../resources/js/content.js"></script> -->


    <style>
        .text-center {
            text-align: center;
        }

        #back:hover {
            background-color: #f0f0f0;
            transition: background .5s ease-in-out;
        }


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
            background-color: #6C63FF;
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
            color: #fff;
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
<!-- 글자 -->

<label id="session" hidden="true">${sessionScope.login }</label>
<!------------------header---------------------------->
<header class="p-3 mb-3 border-bottom"
        style="line-height: 1.3em;z-index: 1;position: sticky;top: 0px;background-color: white;margin: 0;padding-top: 5px!important;padding-bottom: 9px!important;">
    <div class="container" style="position: sticky; margin-right: auto; margin-left: auto;">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
                <img src="../../../resources/img/logo.png">
            </a>
            <div style="width: 60%;display: block;margin-left: auto;margin-right: auto;height: 140px;">
                <div style="margin-bottom: 1.5%;">
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 mb-md-0"
                        style="display: flex; justify-content: space-around;">
                        <li>
                            <a href="/user/userinfo" class="nav-link px-2 link-dark">회원정보변경</a>
                        </li>
                        <li>
                            <a href="/user/myWrite" class="nav-link px-2 link-dark">내가쓴 글</a>
                        </li>
                        <li>
                            <a href="/user/likeContent" class="nav-link px-2 link-dark">좋아요 글</a>
                        </li>
                        <li>
                            <a href="/user/loginHistroy" class="nav-link px-2 link-secondary">접속내역</a>
                        </li>
                    </ul>
                </div>
                <div style="justify-content: space-around;display: flex;border-top: 1px solid #dee2e6; height: 60px">
                    <div style="display: flex; justify-content: center; align-items: center;  border-radius: 1.5em;  ">
                        <button id="sliderBtn" style="background :transparent; border-color: transparent;"
                                check_result="stop">
                            <img style="width: 20px;" src="../../../resources/img/stop.png" alt="">
                        </button>
                    </div>
                    <div id="headDiv" style="width: 700px; overflow: hidden;">
                        <ul id="stockheader" class="nav col-12 col-lg-auto me-lg-auto mb-2  mb-md-0 text-center"
                            style="position: relative;   height: 50px;  vertical-align: middle;">
                        </ul>
                    </div>
                </div>
            </div>
            <div style="margin-right: 1%">
                <!--  <form action="/community/search" method="get" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3"> -->
                <input type="text" name="search" id="search" class="form-control" placeholder="@종목명/종목코드 or #해시태그로 검색">
                <!--</form>-->
            </div>
            <c:if test="${not empty sessionScope.login }"> <!-- sessionScopre.id가 있으면 -->
                <div class="dropdown text-end">
                    <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32"
                             class="rounded-circle">
                    </a>
                    <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">


                        <li>
                            <a class="dropdown-item" href="/user/logout">로그아웃</a>
                        </li>
                    </ul>
                </div>
            </c:if>
            <c:if test="${empty sessionScope.login }"> <!-- sessionScopre.id가 있으면 -->
                <div style="margin: 0 10px; ">

                    <div style="margin: 0 3%">
                        <a href="/user/login">
                            <button style="width: 110%; padding: 7px"
                                    class=" lib_c4bD4Or lib_2ybS2EZ lib_3NGW_J6 lib_2q7AR4x lib_3kUdsG1 lib_3Z398za lib_2WawZPB lib_2bmVxh4 lib_3PxyMmd  lib_3-XmGDP lib_12C0HKX lib_3wnZQA7">
                                로그인
                            </button>
                        </a>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</header>
<!-- -----------------------body---------------------------------- -->
<div style="width: 100%; height: 100%; min-height: 650px">


    <table style="margin: 0 auto;
    width: 60vw;" class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <td>아이디</td>
            <td>ip</td>
            <td>로그인시간</td>
        </tr>
        </thead>
        <c:forEach items="${user}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.ip}</td>
            <td>${user.date}</td>

        </tr>
        <tr>
            </c:forEach>

    </table>


</div>

</body>
</html>