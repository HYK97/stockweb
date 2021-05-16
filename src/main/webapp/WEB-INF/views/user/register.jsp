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
        <script src="../../../resources/bootstrap.bundle.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Pen+Script&display=swap"
            rel="stylesheet">
        <link data-chunk="app" rel="stylesheet" href="../../../resources/css/style.css">
        <script type="text/javascript" src="../../../resources/js/register.js" ></script>
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
                        <!-- <main id="main" style="width: 840px;height:730px;"> <div style="width:
                        100%;" class="st_2eXbCFU st_jGV698i st_1GuPg4J st_3tuT9Yf st_3QTv-Ni
                        st_Qu5atwI"> <div class="st_3rdi-qp st_2BrwYQg st_8u0ePN3 st_2mehCkH">현재 시장에 대한
                        정보를 얻으세요! </div> <div class="st_3VJlprZ">무료로 관심 있는 주식, 암호 화폐, 선물 및 외환에 대해 실제
                        투자자와 전문가가 실시간으로 소통하는 내용을 확인하세요.</div> <div class="st_2tRlQcD st_1w3Pise
                        st_2mehCkH st_3PPn_WF st_1tCBfJz"> <div class="st_206E10N st_8u0ePN3"
                        style="display: inline-block;"> <button class="btn btn-custom btn-lg btn-block
                        mt-3">회원가입</button> </div> </div> <div class="st_2cSFNeY st_1w3Pise st_2mehCkH
                        st_3PPn_WF st_2cihWuC st_1ivbv1B"> <div class="st_3EV_XBR st_U2nqYiY"> <span
                        class="st_9Ki_RtG st_1SuHTwr st_1jzr122">회원가입</span> or <span class="st_9Ki_RtG
                        st_1SuHTwr st_1jzr122">로그인</span> </div> </div> </div> </main> -->

                    </div>
                </div>
            </div>
            <div
                class="col p-0 bg-custom d-flex justify-content-center align-items-center flex-column w-100">
                <form class="w-75" action="/user/register" method="post" id="loginForm">
                 <label for="id" class="form-label">아이디</label>
                	<div style="display :flex; justify-content:space-between;">
                       
                    <div class="mb-3" style="width: 88%;">
                        <input
                            type="text"
                            class="form-control"
                            id="id"
                            check_result="fail"
							name="id"
                            placeholder="ID"
                            required>
                    </div>
                    <div style="width:11%;">
                    <input type="button" style=" font-size:10px; height:75%; margin-top: 0px!important; " class="btn btn-custom btn-lg btn-block mt-3" value="중복확인" name="" id="idCheck">
                    </div>
                	</div>
                    <div id="message"></div>
                    <div class="mb-3">
                        <label for="password" class="form-label">비밀번호</label>
                        <input
                            type="password"
                            class="form-control"
                            id="password"
							name="password"
                            placeholder="PASSWORD"
                            required>
                    </div>
                    <div class="mb-3">
                        <label for="check" class="form-label">비밀번호확인</label>
                        <input
                            type="password"
                            class="form-control"
                            id="check"
                            placeholder="PASSWORD"
                            required>
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">이름</label>
                        <input
                            type="text"
                            class="form-control"
                            id="name"
							name="name"
                            placeholder="name"
                            required>
                    </div>
                    <div class="mb-3">
                        <label for="birthday" class="form-label">생일</label>
                        <input
                            type="date"
                            class="form-control"
                            id="birthday"
							name="birthday"
                            placeholder="birthday"
                            required>
                    </div>
                    
					<input type="submit" class="btn btn-custom btn-lg btn-block mt-3" value="회원가입" name="" id="registerBtn">
                </form>
            </div>
        </div>
		<!-- 아이디 체크 ajax 확인 -->
    </body>
</html>