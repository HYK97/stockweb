<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
             <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito+Sans:300i,400,700&amp;display=swap"
            rel="stylesheet">
            <script src="../../../resources/js/bootstrap.bundle.min.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
            crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Pen+Script&display=swap"
            rel="stylesheet">
        <link data-chunk="app" rel="stylesheet" href="../../../resources/css/style.css">
        <script type="text/javascript" src="../../../resources/js/login.js" ></script>
        <title>로그인</title>
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

            @media(max-width: 932px) {
                .display-none {
                    display: none !important;
                }
            }
        </style>
    </head>
    <body>
        <div class="row m-0 h-100">
            <div
                class="col p-0 text-center d-flex justify-content-center align-items-center display-none">
                <div id="body" style="height: 730px; width: 100%;">
                    <div
                        class="contents container"
                        style="display: flex; width: 100%; margin: 0 auto;">
                        <main id="main" style="width: 840px;height:730px;">
                            <div
                                style="width: 100%;"
                                class="st_2eXbCFU st_jGV698i st_1GuPg4J st_3tuT9Yf st_3QTv-Ni st_Qu5atwI">
                                <div class="st_3rdi-qp st_2BrwYQg st_8u0ePN3 st_2mehCkH">현재 시장에 대한 정보를 얻으세요!
                                </div>
                                <div class="st_3VJlprZ">무료로 관심 있는 주식, 암호 화폐, 선물 및 외환에 대해 실제 투자자와 전문가가 실시간으로 소통하는 내용을 확인하세요.</div>
                                <div class="st_2tRlQcD st_1w3Pise st_2mehCkH st_3PPn_WF st_1tCBfJz">
                                    <div class="st_206E10N st_8u0ePN3" style="display: inline-block;">
                                        <a href="/user/register"><button class="btn btn-custom btn-lg btn-block mt-3" >회원가입</button></a>
                                    </div>
                                </div>
                                
                            </div>
                        </main>

                    </div>
                </div>
            </div>
            <div
                class="col p-0 bg-custom d-flex justify-content-center align-items-center flex-column w-100">
                <form class="w-75" id="loginForm" method="post" action="/user/login">
                    <div class="mb-3">
                        <label for="ID" class="form-label">아이디</label>
                        <input
                            type="text"
                            class="form-control"
                            id="ID"
                            name="id"
                            placeholder="ID"
                            required>
                    </div>
                    <div class="mb-3">
                        <label for="PASSWORD" class="form-label">비밀번호</label>
                        <input
                            type="password"
                            class="form-control"
                            id="PASSWORD"
                            name="password"
                            placeholder="PASSWORD"
                            required>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                    아이디저장
                                </label>
                            </div>
                        </div>
                    </div>
                    
                    <input type="submit" id="loginBtn" class="btn btn-custom btn-lg btn-block mt-3" value="로그인">
                    <div id="message"></div>
                </form>
            </div>
            
        </div>
       
        <script type="text/javascript" src="../../../resources/js/login.js"></script>

    </body>
</html>