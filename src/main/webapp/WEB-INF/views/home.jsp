<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
      	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
      	<link rel="shortcut icon" href="../../../resources/img/logo.png"> 
  		<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="../../../resources/js/bootstrap.bundle.min.js"></script>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&amp;family=Nanum+Pen+Script&amp;display=swap" rel="stylesheet">
        <link data-chunk="app" rel="stylesheet" href="../../../resources/css/style.css">
        <title>Community</title>
        <link rel="stylesheet" type="text/css" href="../../../resources/css/default.css">
        <link rel="stylesheet" type="text/css" href="../../../resources/css/component.css">
        <!-- 네모틀 -->
        <script src="../../../resources/js/modernizr.custom.js"></script>
        <script src="../../../resources/js/main.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>
        <link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../../resources/css/index.css">
        <style>
            .text-center {
                text-align: center;
            }
        </style>
        <title>main</title>
    </head>

    <body>
    
    	
        <!------------------header---------------------------->
         <header class="p-3 mb-3 border-bottom" style="z-index: 1;position: sticky;top: 0px;background-color: white;margin: 0;padding-top: 5px!important;padding-bottom: 9px!important;">
            <div class="container" style=" margin-right: auto; margin-left: auto;">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start"">
                    <div style="margin :0 5% 0 0">
                    <a
                        href="/"
                        class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
                        <img src="../../resources/img/logo.png">
                    </a>
                    </div>
                    <div style="display:flex; width:80%; justify-content: space-around;">
					<div style="width: 50%">
	                   <!--  <form action="/community/search" method="get" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3"> -->
                        	<input type="text" name="search" id="search" class="form-control" placeholder="@종목명/종목코드 or #해시태그로 검색">
                    	<!--</form>-->
					</div>
					<c:choose>
					<c:when test="${not empty sessionScope.login }">  
					<div class="dropdown text-end">
                    <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle">
                    </a>
                    <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                        <li>
                          <a class="dropdown-item" href="/community/community">커뮤니티</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="/user/userinfo">${sessionScope.login.id} 님 계정정보</a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <a class="dropdown-item" href="/user/logout">로그아웃</a>
                        </li>
                    </ul>
                </div> 
                </c:when>
				<c:otherwise> 
						<div style="display: flex;">
						<div style="margin: 0 3%">
						<a href="/user/register"><button class="lib_2cF8aMP lib_c4bD4Or lib_2ybS2EZ lib_3NGW_J6 lib_2q7AR4x lib_3kUdsG1 lib_3Z398za lib_2WawZPB lib_2bmVxh4 lib_3PxyMmd lib_q275ObV lib_JZxvQws lib_3RwLEdi lib_yW5-oZX lib_c4bD4Or">회원가입</button></a>
						</div>
						<div style="margin: 0 3%">
						<a href="/user/login"><button class="lib_2cF8aMP lib_c4bD4Or lib_2ybS2EZ lib_3NGW_J6 lib_2q7AR4x lib_3kUdsG1 lib_3Z398za lib_2WawZPB lib_2bmVxh4 lib_3PxyMmd lib_q275ObV lib_3-XmGDP lib_12C0HKX lib_3wnZQA7">로그인</button></a>
						</div>
					</div> 
					</c:otherwise>				
				</c:choose>
					
					

                    <div hidden="true" class="dropdown text-end" >
                        <a href="#"
                           class="d-block link-dark text-decoration-none dropdown-toggle"
                           id="dropdownUser1"
                           data-bs-toggle="dropdown"
                           aria-expanded="false">
                            <img
                                src="../../../resources/img/velog.png"
                                alt="mdo"
                                width="32"
                                height="32"
                                class="rounded-circle">
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
                                <a class="dropdown-item" href="#">로그아웃</a>
                            </li>
                        </ul>
                    </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- -----------------------body---------------------------------- -->
        <div id="body" style="height: 730px; width: 100%;">
            <div
                class="contents container"
                style="display: flex; width: 100%; margin: 0 auto;">
                <main id="main" style="width: 840px;height:730px;">
                    <div class="st_2eXbCFU st_jGV698i st_1GuPg4J st_3tuT9Yf st_3QTv-Ni st_Qu5atwI">
                        <div class="st_3rdi-qp st_2BrwYQg st_8u0ePN3 st_2mehCkH">현재 시장에 대한 정보를 얻으세요!
                        </div>
                        <div class="st_3VJlprZ">무료로 관심 있는 주식, 암호 화폐, 선물 및 외환에 대해 실제 투자자와 전문가가 실시간으로 소통하는 내용을 확인하세요.</div>
                        <div class="st_2tRlQcD st_1w3Pise st_2mehCkH st_3PPn_WF st_1tCBfJz">
                            <div class="st_206E10N st_8u0ePN3">
                               <a href="/user/register"> <button
                                    class="lib_2cF8aMP lib_c4bD4Or lib_2ybS2EZ lib_3NGW_J6 lib_2q7AR4x lib_3kUdsG1 lib_3Z398za lib_2WawZPB lib_2bmVxh4 lib_3PxyMmd lib_31F_UHw lib_3-XmGDP lib_12C0HKX lib_3wnZQA7">회원가입</button></a>
                            </div>
                            <div class="st_U2nqYiY">이미 아이디가 있나요?
                                <a href="/user/login"><span class="st_9Ki_RtG st_1SuHTwr st_1jzr122">로그인</span></a>
                            </div>
                        </div>
                     
                    </div>
                </main>
                <figure id="figure" style="z-index: 0; width: 400px;height: 730px;">
                    <div style="height: 700px; width: 370px; position: relative;">
                        <img src="../../../resources/img/phone.png" style="position: absolute;" alt="">
                        <div style="position:absolute; left: 90px; top : 160px;">
                            <video
                                src="../../../resources/video/re.MP4"
                                style=" height:425px; width:200px; border-radius: 1em; object-fit:fill; "
                                muted="muted"
                                loop="loop"
                                autoplay="autoplay"></video>
                        </div>
                    </div>
                </figure>
            </div>
        </div>
        <!-- -----------------------------visual--------------------------------->
        <div id="visual" style=" height: 270px;">
            <div class="st_1ao2W9y st_Qu5atwI">
                <a href="/community/community"  >
                    <div class="st_36gDNqv st_25_T2PJ st_1MDe3Mh st_GnnuqFp st_2-AYUR9 st_jGV698i st_1GuPg4J st_2HqScKh st_2lU9lq1">
                        <div class="st_14mG6N- st_2k2hsCY">
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                width="525"
                                height="272"
                                viewbox="0 0 525 272">
                                <defs>
                                    <lineargradient id="a" x1="13.856%" x2="85.871%" y1="86.39%" y2="15.477%">
                                        <stop offset="0%" stop-color="#24FFA8" stop-opacity="0"></stop>
                                        <stop offset="100%" stop-color="#24FFA8"></stop>
                                    </lineargradient>
                                    <filter
                                        id="b"
                                        width="119.1%"
                                        height="119.1%"
                                        x="-9.6%"
                                        y="-9.6%"
                                        filterunits="objectBoundingBox">
                                        <fegaussianblur in="SourceGraphic" stddeviation="15"></fegaussianblur>
                                    </filter>
                                </defs>
                                <circle
                                    cx="259"
                                    cy="244"
                                    r="235"
                                    fill="url(#a)"
                                    fill-opacity=".5"
                                    fill-rule="nonzero"
                                    filter="url(#b)"
                                    transform="rotate(190 259 244)"></circle>
                            </svg>
                        </div>
                        <div class="st_1kvx1wU"></div>
                        <div class="st_tmDqi7Z st_2k2hsCY st_v2SiH_J st_3AYudBJ"></div>
                        <div
                            class="st_3zqxjta st_jGV698i st_1GuPg4J st_1Z-amNw st_2HqScKh st_cUBEAH8 st_2uhTU4W">
                            <div class="st_2sNYbeJ st_jGV698i st_1GuPg4J st_1jlXvfv st_Qu5atwI">
                                <div class="st_2uHqcfm st_3QTv-Ni">
                                    <svg width="500px" height="50px" viewbox="0 0 600 140">
                                        <text
                                            x="-400"
                                            y="90"
                                            fill="#fff"
                                            font-size="110px"
                                            font-family="'Nanum Pen Script', cursive"
                                            textlength="1200px"
                                            lengthadjust="spacingAndGlyphs">
                                            수수료없이 거래하고 정보를 공유하세요!
                                        </text>
                                    </svg>
                                </svg>
                                <div class="st_1W8EzVj">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 229 22" width="100%">
                                        <defs>
                                            <filter
                                                id="a"
                                                width="105.6%"
                                                height="318%"
                                                x="-2.8%"
                                                y="-109.1%"
                                                filterunits="objectBoundingBox">
                                                <fegaussianblur in="SourceGraphic" stddeviation="1.6"></fegaussianblur>
                                            </filter>
                                            <filter
                                                id="b"
                                                width="102%"
                                                height="178.7%"
                                                x="-1%"
                                                y="-39.5%"
                                                filterunits="objectBoundingBox">
                                                <fegaussianblur in="SourceGraphic" stddeviation=".3"></fegaussianblur>
                                            </filter>
                                            <filter
                                                id="c"
                                                width="118.4%"
                                                height="971.6%"
                                                x="-9.2%"
                                                y="-435.9%"
                                                filterunits="objectBoundingBox">
                                                <fegaussianblur in="SourceGraphic" stddeviation="1.6"></fegaussianblur>
                                            </filter>
                                            <filter
                                                id="d"
                                                width="106.6%"
                                                height="414.5%"
                                                x="-3.3%"
                                                y="-157.3%"
                                                filterunits="objectBoundingBox">
                                                <fegaussianblur in="SourceGraphic" stddeviation=".3"></fegaussianblur>
                                            </filter>
                                        </defs>
                                        <g
                                            fill="none"
                                            fill-rule="evenodd"
                                            stroke="#24FFA8"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            stroke-width="2.6">
                                            <path
                                                d="M0 5.6c56.593-9.383 79.49-4.391 144.144-3.278 24.216.417 48.437-.198 72.656-.296"
                                                filter="url(#c)"
                                                transform="translate(5 5)"></path>
                                            <path
                                                d="M0 5.6c56.593-9.383 79.49-4.391 144.144-3.278 24.216.417 48.437-.198 72.656-.296"
                                                filter="url(#d)"
                                                transform="translate(5 5)"></path>
                                            <g>
                                                <path
                                                    d="M0 1.4C17.333-.946 24.345.302 44.148.58 51.564.686 58.983.532 66.4.507"
                                                    filter="url(#c)"
                                                    transform="translate(158.2 15.4)"></path>
                                                <path
                                                    d="M0 1.4C17.333-.946 24.345.302 44.148.58 51.564.686 58.983.532 66.4.507"
                                                    filter="url(#d)"
                                                    transform="translate(158.2 15.4)"></path>
                                            </g>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="st_3fpWRs8 st_3QTv-Ni">
                                <svg width="600" height="50" viewbox="0 0 600 140">
                                    <text
                                        x="-500"
                                        y="90"
                                        fill="#fff"
                                        font-size="40px"
                                        font-family="'Do Hyeon', sans-serif "
                                        textlength="1300"
                                        lengthadjust="spacingAndGlyphs">
                                        수수료 없이 전체 또는 일부 주식으로 투자하고 원하는 사람과 거래를 공유하세요!
                                    </text>
                                </svg>
                            </div>
                        </div>
                        <div class="st_1UKVGiZ st_2-AYUR9 st_jGV698i st_2HqScKh st_3tuT9Yf"><img
                            src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxODgiIGhlaWdodD0iODQiIHZpZXdCb3g9IjAgMCAxODggODQiPgogICAgPGRlZnM+CiAgICAgICAgPGZpbHRlciBpZD0iYSIgd2lkdGg9IjEwMy4zJSIgaGVpZ2h0PSIxMDcuNSUiIHg9Ii0xLjYlIiB5PSItMy44JSIgZmlsdGVyVW5pdHM9Im9iamVjdEJvdW5kaW5nQm94Ij4KICAgICAgICAgICAgPGZlR2F1c3NpYW5CbHVyIGluPSJTb3VyY2VHcmFwaGljIiBzdGREZXZpYXRpb249Ii41Ii8+CiAgICAgICAgPC9maWx0ZXI+CiAgICA8L2RlZnM+CiAgICA8cGF0aCBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZT0iI0ZGMDBFNyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9IjMiIGQ9Ik0xMTYwIDg5OS43MzdjLS44MTctMTEuNjk4LTIuOTU4LTIzLjk5LTI3LjMzMy0zNC4zODYtMzcuMzItMTUuOTE3LTEzOC41MzEtMzMuMTI4LTE1NC45NDIgMTYuMzM2LTEwLjE2IDMwLjYyNSAyNi4zOSA0NC45OTkgNjEuNDMyIDQ1Ljg1NSAzNS4wNDIuODU2IDgxLjIzNSA3LjQ2MSAxMDQuMjQ1LTE2Ljc5NCAxMi41OC0xMy4yNjEgMTYuNTk4LTIxLjU3OCAxMi43MTgtMzYuMDg1IiBmaWx0ZXI9InVybCgjYSkiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC05NzQgLTg0NykiLz4KPC9zdmc+Cg=="
                            class="st_2GdkxIs st_2k2hsCY">
                            <svg width="500px" height="60px" viewbox="0 0 600 140">
                                <text
                                    x="150"
                                    y="110"
                                    fill="#24FFA8"
                                    font-size="90px"
                                    font-family="'Do Hyeon', sans-serif "
                                    textlength="300px"
                                    lengthadjust="spacingAndGlyphs">
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
        <div
            class="contents"
            style="width: 800px; height: inherit;  text-align: center; margin: 0 auto;">
            <div class="lib_3WlkSok lib_pmnolf8" style="padding : 5% 3%;">
                <div class="lib_tuAbocL lib_3UzYkI9 lib_iAc2fkL lib_24UXSFj lib_285rttb">
                    <div class="lib_1Hrnkmu">
                        <div class="lib_1gWiiBf lib_2S7tmc- lib_65XwjLA lib_1XCy-SC">
                            <ul
                                class="lib_3U9ewX1 lib_pmnolf8 lib_3UzYkI9 lib_24UXSFj lib_2p_jTmF lib_23WxpCB lib_2gU77Qd"
                                style="text-align: left">
                                <li>
                                    <a href="/companyinfo/about" rel="noopener" target="_blank">회사소개</a>
                                </li>
                                <li>
                                    <a href="/stockinfo/guide">투자용어</a>
                                </li>
                                <li>
                                    <a href="#">모범사례</a>
                                </li>
                                <li>
                                    <a href="https://velog.io/@ddh963963" rel="noopener" target="_blank">블로그</a>
                                </li>
                                <li>
                                    <a href="#" >개발자</a>
                                </li>
                                <li>
                                    <a href="#">공지사항</a>
                                </li>
                                <li>
                                    <a href="/companyinfo/helpdesk" target="_blank">고객센터</a>
                                </li>
                                <li>
                                    <a href="#">이용약관</a>
                                </li>
                                <li>
                                    <a href="#">조건</a>
                                </li>
                                <li>
                                   <a class="lib_1Nq1Qic lib_3RwLEdi" href="mailto:ddh963963@naver.com"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">광고문의</font></font></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="lib_143roFp" style="width: 100px;">
                        <img src="../../../resources/img/logo.png" style="height: 88px;" alt="logo">
                    </div>
                    <div
                        class="lib_143roFp"
                        style="width: 240px;>
                        <h4 class="
                        lib_wykgpqa="lib_WYkgPQa"
                        lib_rljvxxj="lib_rljvxxj"
                        lib_2tuiksz="lib_2TuIKSz"
                        lib_65xwjla="lib_65XwjLA"
                        lib_1xcy-sc"="lib_1XCy-SC"">알람 받기
                    </h4>
                    <form
                        autocomplete="off"
                        class="lib_2mT6iG2 lib_3UzYkI9 lib_iAc2fkL lib_3PxyMmd lib_19qAsOz">
                        <div class="lib_2mT6iG2 lib_3UzYkI9 lib_iAc2fkL lib_3PxyMmd lib_19qAsOz">
                            <div
                                class="lib_3X4eZ-6 lib_2TuIKSz lib_65XwjLA lib_1XCy-SC lib_1p6SlnP lib_9ZK2ODV">
                                <label class="lib_34gpIKJ lib_17kCokv lib_lPsmyQd lib_AWe8PWK lib_3PxyMmd"><input
                                    type="text"
                                    class="lib_1wfqR1p lib_3QqxY_W lib_2p_jTmF lib_1wUkfaO lib_3Y_hr05 lib_3PxyMmd js-bound"
                                    name="email"
                                    value=""
                                    placeholder="이메일 입력"></label>
                            </div>
                            <div class="lib_1w2ANFn lib_2S7tmc- lib_65XwjLA lib_1XCy-SC">
                                <button
                                    class="lib_2cF8aMP lib_c4bD4Or lib_2ybS2EZ lib_3NGW_J6 lib_2q7AR4x lib_3kUdsG1 lib_3Z398za lib_2WawZPB lib_2bmVxh4 lib_3PxyMmd lib_q275ObV lib_JZxvQws lib_3RwLEdi lib_yW5-oZX lib_c4bD4Or"
                                    type="submit"
                                    title="Subscribe"
                                    alt="Subscribe">구독</button>
                            </div>
                        </div>
                    </form>
                    <div class="lib_3Kvwi5g lib_3UzYkI9 lib_iAc2fkL lib_24UXSFj lib_lPsmyQd">
                    	
                        <ul class="lib_VbRVgfB lib_3UzYkI9 lib_iAc2fkL lib_2p_jTmF lib_23WxpCB lib_2gU77Qd lib_2S7tmc- lib_65XwjLA lib_1XCy-SC">
							        <li>
							            <a href="https://twitter.com/" rel="noopener" target="_blank" class="lib_3j2aFgq lib_1LUBAjF lib_3Bez1rH lib_2jbIWTp lib_3kUdsG1">
							                <i class="lib_3f0Solj lib_AHwHgd8"></i>
							            </a>
							        </li>
							        <li>
							            <a href="https://www.instagram.com/" rel="noopener" target="_blank" class="lib_3j2aFgq lib_1LUBAjF lib_3Bez1rH lib_2jbIWTp lib_3kUdsG1">
							                <i class="lib_aGamf0f lib_AHwHgd8"></i>
							            </a>
							        </li>
							        <li>
							            <a href="https://facebook.com/" rel="noopener" target="_blank">
							                <svg class="lib_1e7YeD3 lib_3NGW_J6 lib_2jbIWTp lib_2bmVxh4 lib_1LUBAjF" height="100%" viewbox="0 0 512 512" width="100%">
							                    <path d="M463.7450866699219,0.000020274907981408406 h-416.2419128417969 q-20.198352813720703,0 -33.841270446777344,14.790528711004299 t-13.66191577911377,34.33447827361488 v414.85442975873957 q0,20.13102589680966 13.66191577911377,33.72846710481417 t33.841270446777344,13.616376042606134 h207.2279052734375 v-223.7138508632961 h-64.71833801269531 v-63.915535695623475 h64.71833801269531 v-32.55431443641601 q0,-39.656040624818615 28.19788932800293,-67.17286062272524 t66.80847930908203,-27.516822835011 h64.71833801269531 v64.50261202982256 h-64.71833801269531 q-13.072876930236816,0 -22.858531951904297,9.771974781305289 t-9.804656982421875,22.195263320911636 v32.55431443641601 h95.0063705444336 l-13.072876930236816,62.135371858424605 h-79.57733917236328 v223.7138508632961 h144.29566955566406 q19.590314865112305,0 33.556251525878906,-13.616376042606134 t13.946935653686523,-33.72846710481417 v-414.85442975873957 q0,-19.525013309456767 -13.946935653686523,-34.33447827361488 t-33.556251525878906,-14.790528711004299 z"></path>
							                </svg>
							            </a>
							        </li>
							        <li>
                                <a href="https://www.apple.com/kr/app-store/" rel="noopener" target="_blank"><img
                                    class="lib_2oZJc-h lib_2CZJ9Xf"
                                    src="https://s3.amazonaws.com/st-assets/production/new-web/badge-apple.png"></a>
                            </li>
                            <li>
                                <a href="https://play.google.com/store" rel="noopener" target="_blank"><img
                                    class="lib_2oZJc-h lib_2CZJ9Xf"
                                    src="https://s3.amazonaws.com/st-assets/production/new-web/badge-android.png"></a>
                            </li> </ul>
                          
                       
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

</body>

</html>