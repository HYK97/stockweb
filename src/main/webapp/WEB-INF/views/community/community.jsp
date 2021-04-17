<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html><head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">

        <script src="../../../resources/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&amp;family=Nanum+Pen+Script&amp;display=swap" rel="stylesheet">

        <link data-chunk="app" rel="stylesheet" href="../../../resources/css/style.css">
        <title>Community</title>
        <link rel="stylesheet" type="text/css" href="../../../resources/css/default.css"></head>
    <body>
        <!-- 글자 -->
        <link rel="stylesheet" type="text/css" href="../../../resources/css/component.css">
        <!-- 네모틀 -->
        <script src="../../../resources/js/modernizr.custom.js"></script>
        <script src="../../../resources/js/main.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="../../../resources/css/index.css">
        <style>
            .text-center {
                text-align: center;
            }
        </style>

        <!------------------header---------------------------->
         <header class="p-3 mb-3 border-bottom" style="z-index: 1;position: sticky;top: 0px;background-color: white;margin: 0;padding-top: 5px!important;padding-bottom: 9px!important;">
        <div class="container" style=" margin-right: auto; margin-left: auto;">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
                    <img src="../../../resources/img/logo.png">
                </a>
                <div style="width: 60%;display: block;margin-left: auto;margin-right: auto;height: 140p;">
                    <div style="margin-bottom: 1.5%;">
                        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 mb-md-0" style="display: flex; justify-content: space-around;">
                            <li>
                                <a href="#" class="nav-link px-2 link-dark">종목별등락</a>
                            </li>
                            <li>
                                <a href="/community/padcast" class="nav-link px-2 link-dark">팟캐스트</a>
                            </li>
                            <li>
                                <a href="/community/community" class="nav-link px-2 link-secondary">커뮤니티</a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-2 link-dark">차트</a>
                            </li>
                        </ul>
                    </div>
                    <div style="justify-content: space-around;display: flex;border-top: 1px solid #dee2e6; height: 60px">
                        <div style="display: flex; justify-content: center; align-items: center;   border-left: 1px solid #dee2e6; border-radius: 1.5em;  border-right: 1px solid #dee2e6;">                   
                            <button id="sliderBtn" style="background :transparent; border-color: transparent;" check_result="stop">
                                <img style="width: 20px;" src="../../../resources/img/stop.png" alt="">
                            </button>
                        </div>
                        <div style="width: 700px; overflow: hidden;">
                            <ul id="stockheader" class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0 text-center" style="position: relative; width: 1000px; height: 50px; left: -96px; vertical-align: middle; justify-content: space-between !important;">
							</ul>                        
                        </div>
                    </div>
                </div>

                <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                    <input type="search" class="form-control" placeholder="검색..." style="width: 195px;">
                </form>
                
				<c:if test="${sessionScope.login != null}">
				
                <div class="dropdown text-end">
                    <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle">
                    </a>
                    <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                        <li>
                            <a class="dropdown-item" href="#">글쓰기</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">알람</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">계정정보</a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <a class="dropdown-item" href="/user/logout">로그아웃</a>
                        </li>
                    </ul>
                </div>
                </c:if>
            </div>
        </div>
    </header>
        <!-- -----------------------body---------------------------------- -->

        <div class="container">
            <header class="clearfix">
                <h1>Anonymous Community</h1>
            </header>
            <div id="form-commentInfo">
                <div id="comment-count">Comment
                    <span id="count">0</span></div>
                <input id="comment-input" placeholder="내용을 입력해 주세요.">
                <button id="submit">등록</button>
            </div>
            <div id="comments"></div>
            <script src="../../../resources/js/index.js"></script>
        </div>

        <!-- -----------------------------visual--------------------------------->
        <div id="visual" style=" height: 270px; margin:  150px 0 0 0 ;">
            <div class="st_1ao2W9y st_Qu5atwI">
                <a href="#" rel="noopener" target="_blank">
                    <div class="st_36gDNqv st_25_T2PJ st_1MDe3Mh st_GnnuqFp st_2-AYUR9 st_jGV698i st_1GuPg4J st_2HqScKh st_2lU9lq1">
                        <div class="st_14mG6N- st_2k2hsCY">
                            <svg xmlns="http://www.w3.org/2000/svg" width="525" height="272" viewBox="0 0 525 272">
                                <defs>
                                    <linearGradient id="a" x1="13.856%" x2="85.871%" y1="86.39%" y2="15.477%">
                                        <stop offset="0%" stop-color="#24FFA8" stop-opacity="0"></stop>
                                        <stop offset="100%" stop-color="#24FFA8"></stop>
                                    </linearGradient>
                                    <filter id="b" width="119.1%" height="119.1%" x="-9.6%" y="-9.6%" filterUnits="objectBoundingBox">
                                        <feGaussianBlur in="SourceGraphic" stdDeviation="15"></feGaussianBlur>
                                    </filter>
                                </defs>
                                <circle cx="259" cy="244" r="235" fill="url(#a)" fill-opacity=".5" fill-rule="nonzero" filter="url(#b)" transform="rotate(190 259 244)"></circle>
                            </svg>
                        </div>
                        <div class="st_1kvx1wU"></div>
                        <div class="st_tmDqi7Z st_2k2hsCY st_v2SiH_J st_3AYudBJ"></div>
                        <div class="st_3zqxjta st_jGV698i st_1GuPg4J st_1Z-amNw st_2HqScKh st_cUBEAH8 st_2uhTU4W">
                            <div class="st_2sNYbeJ st_jGV698i st_1GuPg4J st_1jlXvfv st_Qu5atwI">
                                <div class="st_2uHqcfm st_3QTv-Ni">
                                    <svg width="500px" height="50px" viewBox="0 0 600 140">
                                        <text x="-400" y="90" fill="#fff" font-size="110px" font-family="'Nanum Pen Script', cursive" textLength="1200px" lengthAdjust="spacingAndGlyphs">
                                            수수료없이 거래하고 정보를 공유하세요!
                                        </text>
                                    </svg>

                                    <div class="st_1W8EzVj">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 229 22" width="100%">
                                            <defs>
                                                <filter id="a" width="105.6%" height="318%" x="-2.8%" y="-109.1%" filterUnits="objectBoundingBox">
                                                    <feGaussianBlur in="SourceGraphic" stdDeviation="1.6"></feGaussianBlur>
                                                </filter>
                                                <filter id="b" width="102%" height="178.7%" x="-1%" y="-39.5%" filterUnits="objectBoundingBox">
                                                    <feGaussianBlur in="SourceGraphic" stdDeviation=".3"></feGaussianBlur>
                                                </filter>
                                                <filter id="c" width="118.4%" height="971.6%" x="-9.2%" y="-435.9%" filterUnits="objectBoundingBox">
                                                    <feGaussianBlur in="SourceGraphic" stdDeviation="1.6"></feGaussianBlur>
                                                </filter>
                                                <filter id="d" width="106.6%" height="414.5%" x="-3.3%" y="-157.3%" filterUnits="objectBoundingBox">
                                                    <feGaussianBlur in="SourceGraphic" stdDeviation=".3"></feGaussianBlur>
                                                </filter>
                                            </defs>
                                            <g fill="none" fill-rule="evenodd" stroke="#24FFA8" stroke-linecap="round" stroke-linejoin="round" stroke-width="2.6">
                                                <path d="M0 5.6c56.593-9.383 79.49-4.391 144.144-3.278 24.216.417 48.437-.198 72.656-.296" filter="url(#c)" transform="translate(5 5)"></path>
                                                <path d="M0 5.6c56.593-9.383 79.49-4.391 144.144-3.278 24.216.417 48.437-.198 72.656-.296" filter="url(#d)" transform="translate(5 5)"></path>
                                                <g>
                                                    <path d="M0 1.4C17.333-.946 24.345.302 44.148.58 51.564.686 58.983.532 66.4.507" filter="url(#c)" transform="translate(158.2 15.4)"></path>
                                                    <path d="M0 1.4C17.333-.946 24.345.302 44.148.58 51.564.686 58.983.532 66.4.507" filter="url(#d)" transform="translate(158.2 15.4)"></path>
                                                </g>
                                            </g>
                                        </svg>
                                    </div>
                                </div>
                                <div class="st_3fpWRs8 st_3QTv-Ni">
                                    <svg width="600" height="50" viewBox="0 0 600 140">
                                        <text x="-500" y="90" fill="#fff" font-size="40px" font-family="'Do Hyeon', sans-serif " textLength="1300" lengthAdjust="spacingAndGlyphs">
                                            수수료 없이 전체 또는 일부 주식으로 투자하고 원하는 사람과 거래를 공유하세요!
                                        </text>
                                    </svg>
                                </div>
                            </div>
                            <div class="st_1UKVGiZ st_2-AYUR9 st_jGV698i st_2HqScKh st_3tuT9Yf"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxODgiIGhlaWdodD0iODQiIHZpZXdCb3g9IjAgMCAxODggODQiPgogICAgPGRlZnM+CiAgICAgICAgPGZpbHRlciBpZD0iYSIgd2lkdGg9IjEwMy4zJSIgaGVpZ2h0PSIxMDcuNSUiIHg9Ii0xLjYlIiB5PSItMy44JSIgZmlsdGVyVW5pdHM9Im9iamVjdEJvdW5kaW5nQm94Ij4KICAgICAgICAgICAgPGZlR2F1c3NpYW5CbHVyIGluPSJTb3VyY2VHcmFwaGljIiBzdGREZXZpYXRpb249Ii41Ii8+CiAgICAgICAgPC9maWx0ZXI+CiAgICA8L2RlZnM+CiAgICA8cGF0aCBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZT0iI0ZGMDBFNyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9IjMiIGQ9Ik0xMTYwIDg5OS43MzdjLS44MTctMTEuNjk4LTIuOTU4LTIzLjk5LTI3LjMzMy0zNC4zODYtMzcuMzItMTUuOTE3LTEzOC41MzEtMzMuMTI4LTE1NC45NDIgMTYuMzM2LTEwLjE2IDMwLjYyNSAyNi4zOSA0NC45OTkgNjEuNDMyIDQ1Ljg1NSAzNS4wNDIuODU2IDgxLjIzNSA3LjQ2MSAxMDQuMjQ1LTE2Ljc5NCAxMi41OC0xMy4yNjEgMTYuNTk4LTIxLjU3OCAxMi43MTgtMzYuMDg1IiBmaWx0ZXI9InVybCgjYSkiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC05NzQgLTg0NykiLz4KPC9zdmc+Cg==" class="st_2GdkxIs st_2k2hsCY">
                                <svg width="500px" height="60px" viewBox="0 0 600 140">
                                    <text x="150" y="110" fill="#24FFA8" font-size="90px" font-family="'Do Hyeon', sans-serif " textLength="300px" lengthAdjust="spacingAndGlyphs">
                                        시작하기
                                    </text>
                                </svg>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

        </div>
        <!--------------------------------footer--------------------------------->
        <footer id="footer" style=" height: 300px; border-top: 1px solid #dee2e6; ">
            <div class="contents" style="width: 800px; height: inherit;  text-align: center; margin: 0 auto;">
                <div class="lib_3WlkSok lib_pmnolf8" style="padding : 5% 3%;">
                    <div class="lib_tuAbocL lib_3UzYkI9 lib_iAc2fkL lib_24UXSFj lib_285rttb">
                        <div class="lib_1Hrnkmu">
                            <div class="lib_1gWiiBf lib_2S7tmc- lib_65XwjLA lib_1XCy-SC">
                                <ul class="lib_3U9ewX1 lib_pmnolf8 lib_3UzYkI9 lib_24UXSFj lib_2p_jTmF lib_23WxpCB lib_2gU77Qd" style="text-align: left">
                                    <li>
                                        <a href="#" rel="noopener" target="_blank">회사소개</a>
                                    </li>
                                    <li>
                                        <a href="#">개인정보처리방침</a>
                                    </li>
                                    <li>
                                        <a href="#" rel="noopener" target="_blank">1대1 문의하기</a>
                                    </li>
                                    <li>
                                        <a href="#">모범사례</a>
                                    </li>
                                    <li>
                                        <a href="#" rel="noopener" target="_blank">블로그</a>
                                    </li>
                                    <li>
                                        <a href="#" rel="noopener" target="_blank">개발자</a>
                                    </li>
                                    <li>
                                        <a href="#">공지사항</a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank">자주하는질문</a>
                                    </li>
                                    <li>
                                        <a href="#">이용약관</a>
                                    </li>
                                    <li>
                                        <a href="#">조건</a>
                                    </li>
                                    <li>
                                        <a class="lib_1Nq1Qic lib_3RwLEdi" href="#">광고문의</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="lib_143roFp" style="width: 100px;">
                            <img src="../../../resources/img/logo.png" style="height: 88px;" alt="logo">
                        </div>
                        <div class="lib_143roFp" style="width: 240px;>
                    <h4 class=" lib_wykgpqa="lib_WYkgPQa" lib_rljvxxj="lib_rljvxxj" lib_2tuiksz="lib_2TuIKSz" lib_65xwjla="lib_65XwjLA" lib_1xcy-sc"="lib_1XCy-SC" "="">알람 받기
                        
                        <form autocomplete="off" class="lib_2mT6iG2 lib_3UzYkI9 lib_iAc2fkL lib_3PxyMmd lib_19qAsOz">
                            <div class="lib_2mT6iG2 lib_3UzYkI9 lib_iAc2fkL lib_3PxyMmd lib_19qAsOz">
                                <div class="lib_3X4eZ-6 lib_2TuIKSz lib_65XwjLA lib_1XCy-SC lib_1p6SlnP lib_9ZK2ODV">
                                    <label class="lib_34gpIKJ lib_17kCokv lib_lPsmyQd lib_AWe8PWK lib_3PxyMmd"><input type="text" class="lib_1wfqR1p lib_3QqxY_W lib_2p_jTmF lib_1wUkfaO lib_3Y_hr05 lib_3PxyMmd js-bound" name="email" value="" placeholder="이메일 입력"></label>
                                </div>
                                <div class="lib_1w2ANFn lib_2S7tmc- lib_65XwjLA lib_1XCy-SC">
                                    <button class="lib_2cF8aMP lib_c4bD4Or lib_2ybS2EZ lib_3NGW_J6 lib_2q7AR4x lib_3kUdsG1 lib_3Z398za lib_2WawZPB lib_2bmVxh4 lib_3PxyMmd lib_q275ObV lib_JZxvQws lib_3RwLEdi lib_yW5-oZX lib_c4bD4Or" type="submit" title="Subscribe" alt="Subscribe">구독</button>
                                </div>
                            </div>
                        </form>
                        <div class="lib_3Kvwi5g lib_3UzYkI9 lib_iAc2fkL lib_24UXSFj lib_lPsmyQd">
                            <ul class="lib_VbRVgfB lib_3UzYkI9 lib_iAc2fkL lib_2p_jTmF lib_23WxpCB lib_2gU77Qd lib_2S7tmc- lib_65XwjLA lib_1XCy-SC">

                                <li>
                                    <a href="#" rel="noopener" target="_blank">
                                        <svg class="lib_1e7YeD3 lib_3NGW_J6 lib_2jbIWTp lib_2bmVxh4 lib_1LUBAjF" height="100%" viewBox="0 0 512 512" width="100%">
                                            <path d="M463.7450866699219,0.000020274907981408406 h-416.2419128417969 q-20.198352813720703,0 -33.841270446777344,14.790528711004299 t-13.66191577911377,34.33447827361488 v414.85442975873957 q0,20.13102589680966 13.66191577911377,33.72846710481417 t33.841270446777344,13.616376042606134 h207.2279052734375 v-223.7138508632961 h-64.71833801269531 v-63.915535695623475 h64.71833801269531 v-32.55431443641601 q0,-39.656040624818615 28.19788932800293,-67.17286062272524 t66.80847930908203,-27.516822835011 h64.71833801269531 v64.50261202982256 h-64.71833801269531 q-13.072876930236816,0 -22.858531951904297,9.771974781305289 t-9.804656982421875,22.195263320911636 v32.55431443641601 h95.0063705444336 l-13.072876930236816,62.135371858424605 h-79.57733917236328 v223.7138508632961 h144.29566955566406 q19.590314865112305,0 33.556251525878906,-13.616376042606134 t13.946935653686523,-33.72846710481417 v-414.85442975873957 q0,-19.525013309456767 -13.946935653686523,-34.33447827361488 t-33.556251525878906,-14.790528711004299 z"></path>
                                        </svg>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" rel="noopener" target="_blank"><img class="lib_2oZJc-h lib_2CZJ9Xf" src="https://s3.amazonaws.com/st-assets/production/new-web/badge-apple.png"></a>
                                </li>
                                <li>
                                    <a href="#" rel="noopener" target="_blank"><img class="lib_2oZJc-h lib_2CZJ9Xf" src="https://s3.amazonaws.com/st-assets/production/new-web/badge-android.png"></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="lib_149scZE lib_2S7tmc- lib_65XwjLA lib_1XCy-SC lib_1LUBAjF">
                    <div>©2021 Jutopia, Inc. 모든 권리 보유.</div>
                    <div class="lib_2neEUmq">
                        <p>증권 상품 및 서비스는 Jutopia, ST를 통해 전문 투자자에게 제공됩니다. ST 투자(신탁)회사는 Jutopia 주식회사의 소유입니다.
                            <br>증권 상품에 대한 투자는 원금 손실 가능성을 포함한 위험을 수반합니다.<br>
                            <a href="#" rel="noopener noreferrer" target="_blank">중요한 법률 공시를 읽어 주십시오.</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>


</body></html></html>