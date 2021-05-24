<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
      	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  		<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
  		<link rel="shortcut icon" href="../../../resources/img/logo.png"> 
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link data-chunk="app" rel="stylesheet" href="../../../resources/css/wids.css">
        <script src="../../../resources/js/bootstrap.bundle.min.js"></script>
        <script src="../../../resources/js/stock.js"></script>
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

        <link
            href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Pen+Script&display=swap"
            rel="stylesheet">
        <link data-chunk="app" rel="stylesheet" href="../../../resources/css/style.css">
        <title>Podcast</title>
        <style>
            * {
                box-sizing: border-box;
            }
            .mySlides {
                display: none;
            }
            img {
                vertical-align: middle;
            }

            /* Slideshow container */
            .slideshow-container {
                max-width: 1000px;
                position: relative;
                margin: auto;
            }

            /* Caption text */
            .text {
                color: #f2f2f2;
                font-size: 15px;
                padding: 8px 12px;
                position: absolute;
                bottom: 8px;
                width: 100%;
                text-align: center;
            }

            /* Number text (1/3 etc) */
            .numbertext {
                color: #f2f2f2;
                font-size: 12px;
                padding: 8px 12px;
                position: absolute;
                top: 0;
            }

            /* The dots/bullets/indicators */
            .dot {
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbb;
                border-radius: 50%;
                display: inline-block;
                transition: background-color 0.6s ease;
            }

            .active {
                background-color: #717171;
            }

           

            @-webkit-keyframes fade {
                from {
                    opacity: 0.4;
                }
                to {
                    opacity: 1;
                }
            }

            @keyframes fade {
                from {
                    opacity: 0.4;
                }
                to {
                    opacity: 1;
                }
            }

            /* On smaller screens, decrease text size */
            @media only screen and (max-width: 300px) {
                .text {
                    font-size: 11px;
                }
            }
            
            .box{ -ms-overflow-style: none; } .box::-webkit-scrollbar{ display:none; }
            
            .k {
			  display: none;
 		      width: 150px;
  			  top: 100%;
			  left: -1px;
			  z-index: 1;
			  text-align: left;
			}

        </style>
    </head>
    <body>
    <div>
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
                                <a href="/stockinfo/main" class="nav-link px-2 link-dark">주요시세정보</a>
                            </li>
                            <li>
                                <a href="/community/padcast" class="nav-link px-2 link-dark">팟캐스트</a>
                            </li>
                            <li>
                                <a href="/stockinfo/guide" class="nav-link px-2 link-secondary">주식가이드</a>
                            </li>
                            <li>
                                <a href="/community/community" class="nav-link px-2 link-dark">커뮤니티</a>
                            </li>
                            <li>
                                <a href="/community/chart" class="nav-link px-2 link-dark">차트</a>
                            </li>
                        </ul>
                    </div>
                    <div style="justify-content: space-around;display: flex;border-top: 1px solid #dee2e6; height: 60px">
                       <div style="display: flex; justify-content: center; align-items: center;  border-radius: 1.5em;  ">     
                            <button id="sliderBtn" style="background :transparent; border-color: transparent;" check_result="stop">
                                <img style="width: 20px;" src="../../../resources/img/stop.png" alt="">
                            </button>
                        </div>
                        <div id="headDiv" style="width: 700px; overflow: hidden;">
                            <ul id="stockheader" class="nav col-12 col-lg-auto me-lg-auto mb-2  mb-md-0 text-center" style="position: relative;   height: 50px;  vertical-align: middle;">
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
                    <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle">
                    </a>
                    <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                        <li>
                            <a id="headerWrite" class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">글쓰기 </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">알람</a>
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
               </c:if> 
               <c:if test="${empty sessionScope.login }"> <!-- sessionScopre.id가 있으면 -->
                <div style="margin: 0 10px; ">
						
						<div style="margin: 0 3%">
						<a href="/user/login"><button style="width: 110%; padding: 7px"  class=" lib_c4bD4Or lib_2ybS2EZ lib_3NGW_J6 lib_2q7AR4x lib_3kUdsG1 lib_3Z398za lib_2WawZPB lib_2bmVxh4 lib_3PxyMmd  lib_3-XmGDP lib_12C0HKX lib_3wnZQA7">로그인</button></a>
						</div>
					</div>
			</c:if>
                
            </div>
        </div>
    </header>
        <!--body-->
        <div class="container">

            <div  class="row">
                <div class="col-lg-3">

                    <h1 class="my-4">주식 가이드</h1>
                    <div class="list-group">
                    	<ul>
	                    	<li class="list-group-item"><a>주식가이드 <i class="fa fa-angle-down" aria-hidden="true"></i></a>
						      <ul class="k">
						        <li><a href="#">증권계좌 만들기</a></li>
						        <li><a href="#">차트 보는방법1</a></li>
						        <li><a href="#">차트 보는방법2</a></li>
						      </ul>
						    </li>
						    <li class="list-group-item"><a>주식사전 <i class="fa fa-angle-down" aria-hidden="true"></i></a>
						      <ul class="k">
						        <li><a href="#">매수</a></li>
						        <li><a href="#">매도</a></li>
						        <li><a href="#">기타</a></li>
						      </ul>
						    </li>
	                       
                    	</ul>
                    </div>

                </div>

            <div id="one" class="col-lg-9">
				     <div class="wcommunity-section1">
								
								</div>
								<div class="wcommunity-detail-content">
									<div class="inner-contents">
										
										<h3><strong>'증권계좌'란?</strong></h3>
										<hr>
										<p>
											와디즈에서 하는 크라우드 펀딩 투자형 투자는 투자해 주시는 만큼 발행기업의 지분을 증권으로 받게 됩니다. 투자하는 프로젝트가 '주식형'이나 '채권형'인 경우, 최종 배정자로 선정되시면 그 증권을 온라인으로 투자자님 본인의 증권계좌에 입고시켜 드리고 있습니다.
										</p>
										<p>
											즉, 투자 배정 후에 <span style="color: rgb(226, 80, 65);">증권을 받기 위해서는 '증권계좌'</span>가 있어야 합니다 :)
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p>
											<img src="https://cdn.wadiz.kr/ft/images/green001/2016/1024/20161024121315527_69.png/wadiz/format/jpg/quality/80/optimize" class="fr-dii">
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p>
											증권계좌 개설 방법은 은행이나 증권사로 방문해서 개설하거나, 온라인(비대면 실명인증)을 통해 개설할 수 있습니다.
										</p>
										<p>
											오늘은 <strong><span style="color: rgb(226, 80, 65);">직접 은행(증권사)에 방문해서 발급하는 방법</span></strong>을 알려드릴게요!
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<h3><strong>두근두근, 은행 방문</strong></h3>
										<hr>
										<p>
											일단 무작정 신분증만 달랑 들고 은행으로 찾아갔습니다!
										</p>
										<p>
											막상 은행으로 들어가려고 하니 '다른 서류가 더 필요하다고 하면 어쩌지', '주식 왜 하냐고 물어보면 어쩌지??잘못했다고 빌어야 되나ㅠ.ㅠ' 등 온갖 걱정이 앞섰습니다.
										</p>
										<p>
											그래도 마음을 다잡고 침착하게. 일단 번호표부터 뽑고 기다렸습니다.
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p>
											곧바로 저를 맞이해주시는 친절한 은행원 언니.
										</p>
										<p>
											<img src="https://cdn.wadiz.kr/ft/images/green001/2016/1017/20161017152641231_70.jpg/wadiz/format/jpg/quality/80/optimize" class="fr-dii">
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p>
											계좌 개설은 제 걱정과 달리 너무나 간단하게 개설할 수 있었어요.
										</p>
										<p data-empty="true">
											<br>
										</p>
										<h3><strong>STEP 1. 증권사 선택</strong></h3>
										<h3><strong>STEP 2. 계좌개설 신청서 작성</strong></h3>
										<h3><strong>STEP 3. 비밀번호 생성</strong></h3>
										<h3><strong>STEP 4. 계좌개설대행 신청서 수령</strong></h3>
										<p data-empty="true">
											<br>
										</p>
										<hr>
										<h3><br>
										</h3>
										<h3 style="text-align: center;"><strong>STEP 1. 증권사 선택</strong></h3>
										<div style="text-align: center;">
											<em><span style="background-color: rgb(247, 218, 100);">은행원)</span>&nbsp; 무슨 일로 오셨어요?^^</em>
										</div>
										<div style="text-align: center;">
											<em><span style="background-color: rgb(163, 143, 132);">나)</span>&nbsp; 아.....즈..증권계좌 개설하려고요.</em>
										</div>
										<div data-empty="true" style="text-align: center;">
											<br>
										</div>
										<div style="text-align: center;">
											<em><span style="background-color: rgb(247, 218, 100);">은행원)</span> 어디 증권사 계좌로 만드실거에요?</em>
										</div>
										<div style="text-align: center;">
											<em><span style="background-color: rgb(163, 143, 132);">나)</span>&nbsp; **증권으로 개설해주세요.</em>
										</div>
										<div data-empty="true" style="text-align: center;">
											<br>
										</div>
										<div data-empty="true" style="text-align: center;">
											<br>
										</div>
										<h3 style="text-align: center;"><strong>STEP 2. 계좌개설 신청서 작성</strong></h3>
										<p>
											<em><img src="https://cdn.wadiz.kr/ft/images/green001/2016/1024/20161024150022901_119.png/wadiz/format/jpg/quality/80/optimize" class="fr-dii"></em>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<div style="text-align: center;">
											<em><span style="background-color: rgb(247, 218, 100);">은행원)</span> 신분증 보여주시고, 여기 '계좌개설신청서' 한 장만 작성해주세요.</em>
										</div>
										<div style="text-align: center;">
											<em>(작성작성)</em>
										</div>
										<div data-empty="true" style="text-align: center;">
											<br>
										</div>
										<div data-empty="true" style="text-align: center;">
											<br>
										</div>
										<h3 style="text-align: center;"><strong>STEP 3. 비밀번호 생성</strong></h3>
										<div style="text-align: center;">
											<em><span style="background-color: rgb(247, 218, 100);">은행원)</span> 은행원 "비밀번호 4자리 입력해주세요^^</em>
										</div>
										<div style="text-align: center;">
											<em>(입력입력)</em>
										</div>
										<div data-empty="true" style="text-align: center;">
											<br>
										</div>
										<h3 style="text-align: center;"><br>
										</h3>
										<h3 style="text-align: center;"><strong>STEP 4. 계좌개설대행 신청서 수령하면 끝</strong></h3>
										<div style="text-align: center;">
											<em><span style="background-color: rgb(247, 218, 100);">은행원)</span> 개설 완료되었습니다^^ 여기 계좌개설대행신청서 확인해보세요^^</em>
										</div>
										<h2 style="text-align: center;"><em><span style="background-color: rgb(163, 143, 132);">나)</span><strong>&nbsp;</strong><strong>&nbsp;</strong>네에에?!?!? &nbsp;벌써 다 된거에요???</em></h2>
										<h3 style="text-align: center;"><br>
										</h3>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<h3><strong>첫 증권계좌 발급 완료!</strong></h3>
										<hr>
										<p>
											은행 밖으로 나와보니 채 10분도 걸리지 않은 것 같아요.
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p>
											<img src="https://cdn.wadiz.kr/ft/images/green001/2016/1017/20161017152622092_70.jpg/wadiz/format/jpg/quality/80/optimize" class="fr-dii">
										</p>
										<p>
											짠! 이렇게 저의 첫 증권계좌가 성공적으로 개설되었습니다! (짝짝)
										</p>
										<p>
											계좌개설대행 신청서에서 증권계좌번호와 연계계좌번호 등을 확인할 수 있습니다.
										</p>
										<p data-empty="true">
											<br>
										</p>
										<h3><strong><span style="color: rgb(226, 80, 65);">여기서 중요한 팁!!!</span></strong></h3>
										<p>
											개설대행 신청서에는 연계계좌번호, 은행계좌번호, 증권사계좌번호 등 다양한 계좌번호가 적혀있어요.
										</p>
										<p>
											이중 <span style="color: rgb(226, 80, 65);">와디즈에 등록하는 '증권계좌번호'는 <strong><u>증권사 계좌번호</u></strong>를 기재</span>해주셔야 합니다.
										</p>
										<p>
											(연계계좌번호, 은행계좌번호를 기재하시면 증권계좌로 인증이 안돼요! 이후 최종 투자자 배정에서 배제될 수 있습니다!)
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<div style="text-align: center;">
											<img src="https://cdn.wadiz.kr/ft/images/green001/2016/1024/20161024154324663_68.png/wadiz/format/jpg/quality/80/optimize" class="fr-dii" style="width: 100px;">
										</div>
										<h1 style="text-align: center;"><strong>Q&amp;A</strong></h1>
										<h1><br>
										</h1>
										<p data-empty="true">
											<br>
										</p>
										<h3><strong>Q1. 가기 전 준비물?</strong></h3>
										<hr>
										<p>
											증권계좌를 발급하러 가기 전 준비해야 할 점은
										</p>
										<p>
											<img src="https://cdn.wadiz.kr/ft/images/green001/2016/1025/20161025164542090_99.png/wadiz/format/jpg/quality/80/optimize" class="fr-dii">
										</p>
										<ul>
											<li><span style="color: rgb(226, 80, 65);">어떤 증권사, 은행에서 개설할지 결정</span>하고 &nbsp;</li>
											<li><span style="color: rgb(226, 80, 65);">신분증과 도장</span>(도장 없이 서명도 가능)만 챙겨가면 됩니다.&nbsp;</li>
										</ul>
										<p>
											(저는 도장이 없어서.. 신분증만 챙겨갔어요!ㅎㅎ)
										</p>
										<h3><br>
										</h3>
										<h3><br>
										</h3>
										<h3><strong>Q2. 어떤 증권사에서 만들까요?</strong></h3>
										<hr>
										<p>
											어떤 증권사 선택은 주로<strong>&nbsp;<span style="color: rgb(226, 80, 65);">거래 수수료</span>와 <span style="color: rgb(226, 80, 65);">HTS 성능</span></strong>을 많이 보고 선택합니다.
										</p>
										<p>
											<strong><span style="color: rgb(226, 80, 65);">수수료</span></strong>는 주식 거래할 때마다 거래금액에 따라 증권사별로 다 다릅니다. 종종 무료 수수료 등의 프로모션을 진행하기도 하니 확인해보세요!
										</p>
										<p>
											<strong><span style="color: rgb(226, 80, 65);">HTS</span></strong>는 Home Trading System의 줄임말로, 개인 투자자가 객장에 나가지 않고 집이나 사무실에서 주식 거래를 할 수 있는 프로그램을 말합니다. HTS가 잘 되어 있는 증권사를 이용하면 주식 거래를 더 편하게 할 수 있겠죠? :)
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<h3><strong>&nbsp;Q3. 아무 은행에 가도 되나요?</strong></h3>
										<hr>
										<p>
											<strong><span style="color: rgb(226, 80, 65);">증권사별로 거래할 수 있는 은행이 다릅니다.</span></strong>
										</p>
										<p>
											따라서 증권사를 선택하셨으면 해당 증권사 홈페이지에서 거래 가능한 은행을 확인해주세요!
										</p>
										<p>
											그리고 그중 <span style="color: rgb(226, 80, 65);">인터넷 뱅킹을 사용하고 있는 은행</span>으로 가는 게 좋아요. 증권계좌를 만들 때 기존에 사용하고 있는 은행 계좌(입출금계좌)와 연동시켜주는데요, 그 은행계좌를 통해 청약증거금을 편하게 이체할 수 있기 때문이에요.
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p>
											<span style="color: rgb(26, 188, 156);"><strong>Tip</strong><strong>인터넷 뱅킹이 없다면 꼭 신청하세요!</strong><br>
											청약증거금 이체는 실시간 계좌이체(인터넷 뱅킹)를 통해서만 가능합니다. 투자자님의 실명인증을 확인할 수 있는 방법이기 때문이에요.</span>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<h3><strong>Q4. 증권계좌 개설하면 카드나 통장은 안 나오나요?</strong></h3>
										<hr>
										<p>
											<strong><span style="color: rgb(226, 80, 65);">카드나 통장도 개설하실 수 있습니다.</span></strong> 개설하실 때 카드나 통장 개설하고 싶다고 말씀하시면 됩니다!
										</p>
										<p>
											증권계좌 카드나 통장으로 <span style="color: rgb(226, 80, 65);">청약증거금 이체</span>하실 수 있습니다. 즉, <span style="color: rgb(226, 80, 65);">청약증거금 이체는 시중 은행계좌, 증권계좌 모두 사용 가능</span>하니 편한 방법으로 이용하시면 됩니다.
										</p>
										<p>
											(저는 연계된 은행계좌를 이용하면 수수료없이 이체할 수 있어서, 증권계좌 카드나 통장을 따로 개설하지 않았어요.)
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p data-empty="true">
											<br>
										</p>
										<p>
											이렇게 저같은 '금알못'도 전혀 어려움없이 증권계좌를 개설하였으니 여러분들도 증권계좌 한 번 개설해보세요 ;)
										</p>
									</div>
									<div class="attach-list">
										<ul>
										</ul>
									</div>
								</div>
							</div>
                  
				
            </div>
            <!-- /.row -->

        
        
		<div hidden="true" id="two" class="col-lg-9">
			
		</div>
		
		<div hidden="true" id="three" class="col-lg-9">
			
		</div>
    </div>
</div>
<!-- -----------------------------visual--------------------------------->
<div id="visual" style=" height: 270px;">
    <div class="st_1ao2W9y st_Qu5atwI">
        <a href="#" rel="noopener" target="_blank">
            <div
                class="st_36gDNqv st_25_T2PJ st_1MDe3Mh st_GnnuqFp st_2-AYUR9 st_jGV698i st_1GuPg4J st_2HqScKh st_2lU9lq1">
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
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" ">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">피드쓰기</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body" >
			        <form id="writeForm" action="/community/write" method="post" >
			          <div class="mb-3">
			          	<img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle">
			            <label for="recipient-name" class="col-form-label"> ${sessionScope.login.id} 님의 생각을 적어보세요</label>

			          </div>
			          <div class="mb-3">
			            <label for="message-text" class="col-form-label">내용:</label>
			            <textarea class="form-control" id="content" style="min-height: calc(1.5em + 22.75rem + 2px);" name="content" placeholder="내용" required></textarea>
			          </div>
			          <div class="mb-3">
			            <label for="recipient-name" class="col-form-label">해시태그 : </label>
			            <input type="text" class="form-control" id="hashTag" name="hashTag" placeholder="해시태그 ,로 구분 최대 5개까지" required >
			          </div>
			    
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
			        <input  type="submit" class="btn btn-primary" value="글쓰기">
			
			        </form>
			      </div>
			    </div>
			  </div>
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
                <ul
                    class="lib_VbRVgfB lib_3UzYkI9 lib_iAc2fkL lib_2p_jTmF lib_23WxpCB lib_2gU77Qd lib_2S7tmc- lib_65XwjLA lib_1XCy-SC">

                    <li>
                        <a href="#" rel="noopener" target="_blank">
                            <svg
                                class="lib_1e7YeD3 lib_3NGW_J6 lib_2jbIWTp lib_2bmVxh4 lib_1LUBAjF"
                                height="100%"
                                viewbox="0 0 512 512"
                                width="100%">
                                <path
                                    d="M463.7450866699219,0.000020274907981408406 h-416.2419128417969 q-20.198352813720703,0 -33.841270446777344,14.790528711004299 t-13.66191577911377,34.33447827361488 v414.85442975873957 q0,20.13102589680966 13.66191577911377,33.72846710481417 t33.841270446777344,13.616376042606134 h207.2279052734375 v-223.7138508632961 h-64.71833801269531 v-63.915535695623475 h64.71833801269531 v-32.55431443641601 q0,-39.656040624818615 28.19788932800293,-67.17286062272524 t66.80847930908203,-27.516822835011 h64.71833801269531 v64.50261202982256 h-64.71833801269531 q-13.072876930236816,0 -22.858531951904297,9.771974781305289 t-9.804656982421875,22.195263320911636 v32.55431443641601 h95.0063705444336 l-13.072876930236816,62.135371858424605 h-79.57733917236328 v223.7138508632961 h144.29566955566406 q19.590314865112305,0 33.556251525878906,-13.616376042606134 t13.946935653686523,-33.72846710481417 v-414.85442975873957 q0,-19.525013309456767 -13.946935653686523,-34.33447827361488 t-33.556251525878906,-14.790528711004299 z"></path>
                            </svg>
                        </a>
                    </li>
                    <li>
                        <a href="#" rel="noopener" target="_blank"><img
                            class="lib_2oZJc-h lib_2CZJ9Xf"
                            src="https://s3.amazonaws.com/st-assets/production/new-web/badge-apple.png"></a>
                    </li>
                    <li>
                        <a href="#" rel="noopener" target="_blank"><img
                            class="lib_2oZJc-h lib_2CZJ9Xf"
                            src="https://s3.amazonaws.com/st-assets/production/new-web/badge-android.png"></a>
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


<script>


$('#list1').click( function() {
	$('#one').removeAttr('hidden');
	$('#two').attr('hidden','true');
	$('#three').attr('hidden','true');
} );
$('#list2').click( function() {
	$('#one').attr('hidden','true');
	$('#two').removeAttr('hidden');
	$('#three').attr('hidden','true');
} );
$('#list3').click( function() {
	$('#one').attr('hidden','true');
	$('#two').attr('hidden','true');
	$('#three').removeAttr('hidden');
} );
</script>
</div>
</body>
</html>