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
  <script type="text/javascript" src="https://about.stocktwits.com/wp-content/plugins/LayerSlider/static/layerslider/js/greensock.js?ver=1.19.0" id="layerslider-greensock-js"></script>
      
     
        <link rel="stylesheet" id="theme-options-css" href="https://about.stocktwits.com/wp-content/uploads/mk_assets/theme-options-production-1612242140.css?ver=1612242135" type="text/css" media="all">
        

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
			img.wp-smiley, img.emoji {
			    display: inline !important;
			    border: none !important;
			    box-shadow: none !important;
			    height: 1em !important;
			    width: 1em !important;
			    margin: 0 .07em !important;
			    vertical-align: -0.1em !important;
			    background: none !important;
			    padding: 0 !important;
			
    			max-width: 100%;
			}

        </style>
    </head>
    <body>
    <div>
        <!------------------header---------------------------->
          <header class="p-3 mb-3 border-bottom" style=" line-height: 1.3em; !important;z-index: 1;position: sticky;top: 0px;background-color: white;margin: 0;padding-top: 5px!important;padding-bottom: 9px!important;">
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
	                    	<li class="list-group-item"><a>주식시작하기 <i class="fa fa-angle-down" aria-hidden="true"></i></a>
						      <ul class="k" id="list1">
						        <li class="one"><a  href="#">&nbsp;&nbsp;증권계좌 만들기</a></li>
						        <li class="two"><a href="#">&nbsp;&nbsp;차트 보는방법</a></li>
						 
						      </ul>
						    </li>
						    <li class="list-group-item"><a>주식사전 <i class="fa fa-angle-down" aria-hidden="true"></i></a>
						      <ul class="k" id="list2">
						        <li class="one"><a href="#">&nbsp;&nbsp;용어모음집</a></li>
						        <li class="two" style="width:200px"><a href="#">&nbsp;&nbsp;액면분할이 뭐에요?</a></li>
						     
						      </ul>
						    </li>
	                       
                    	</ul>
                    </div>

                </div>

            <div id="one" class="col-lg-9">
				     
								<div class="wcommunity-detail-content" style="width:700px">
									<div class="inner-contents">
									    <h3>
									        <strong>'증권계좌'란?</strong>
									    </h3>
									    <hr>
									    <p>증권계좌는 주식이나 채권을 받기 위해서 필요합니다. 현금을 보내거나 받기 위해서 은행예금통장을 이용하듯이, 증권 (주식이나 채권)을 주고받기 위해서는 '증권계좌'가 있어야 합니다.</p>
									    <p>
									        즉, 투자 배정 후에
									        <span style="color: rgb(226, 80, 65);">증권을 받기 위해서는 '증권계좌'</span>가 있어야 합니다 :)
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
									        오늘은
									        <strong>
									            <span style="color: rgb(226, 80, 65);">직접 은행(증권사)에 방문해서 발급하는 방법</span>
									        </strong>을 알려드릴게요!
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
									    <h3>
									        <strong>두근두근, 은행 방문</strong>
									    </h3>
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
									    <h3>
									        <strong>STEP 1. 증권사 선택</strong>
									    </h3>
									    <h3>
									        <strong>STEP 2. 계좌개설 신청서 작성</strong>
									    </h3>
									    <h3>
									        <strong>STEP 3. 비밀번호 생성</strong>
									    </h3>
									    <h3>
									        <strong>STEP 4. 계좌개설대행 신청서 수령</strong>
									    </h3>
									    <p data-empty="true">
									        <br>
									    </p>
									    <hr>
									    <h3><br>
									    </h3>
									    <h3 style="text-align: center;">
									        <strong>STEP 1. 증권사 선택</strong>
									    </h3>
									    <div style="text-align: center;">
									        <em>
									            <span style="background-color: rgb(247, 218, 100);">은행원)</span>&nbsp; 무슨 일로 오셨어요?^^</em>
									    </div>
									    <div style="text-align: center;">
									        <em>
									            <span style="background-color: rgb(163, 143, 132);">나)</span>&nbsp; 아.....즈..증권계좌 개설하려고요.</em>
									    </div>
									    <div data-empty="true" style="text-align: center;">
									        <br>
									    </div>
									    <div style="text-align: center;">
									        <em>
									            <span style="background-color: rgb(247, 218, 100);">은행원)</span>
									            어디 증권사 계좌로 만드실거에요?</em>
									    </div>
									    <div style="text-align: center;">
									        <em>
									            <span style="background-color: rgb(163, 143, 132);">나)</span>&nbsp; **증권으로 개설해주세요.</em>
									    </div>
									    <div data-empty="true" style="text-align: center;">
									        <br>
									    </div>
									    <div data-empty="true" style="text-align: center;">
									        <br>
									    </div>
									    <h3 style="text-align: center;">
									        <strong>STEP 2. 계좌개설 신청서 작성</strong>
									    </h3>
									    <p>
									        <em><img src="https://cdn.wadiz.kr/ft/images/green001/2016/1024/20161024150022901_119.png/wadiz/format/jpg/quality/80/optimize" class="fr-dii"></em>
									    </p>
									    <p data-empty="true">
									        <br>
									    </p>
									    <div style="text-align: center;">
									        <em>
									            <span style="background-color: rgb(247, 218, 100);">은행원)</span>
									            신분증 보여주시고, 여기 '계좌개설신청서' 한 장만 작성해주세요.</em>
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
									    <h3 style="text-align: center;">
									        <strong>STEP 3. 비밀번호 생성</strong>
									    </h3>
									    <div style="text-align: center;">
									        <em>
									            <span style="background-color: rgb(247, 218, 100);">은행원)</span>
									            은행원 "비밀번호 4자리 입력해주세요^^</em>
									    </div>
									    <div style="text-align: center;">
									        <em>(입력입력)</em>
									    </div>
									    <div data-empty="true" style="text-align: center;">
									        <br>
									    </div>
									    <h3 style="text-align: center;"><br>
									    </h3>
									    <h3 style="text-align: center;">
									        <strong>STEP 4. 계좌개설대행 신청서 수령하면 끝</strong>
									    </h3>
									    <div style="text-align: center;">
									        <em>
									            <span style="background-color: rgb(247, 218, 100);">은행원)</span>
									            개설 완료되었습니다^^ 여기 계좌개설대행신청서 확인해보세요^^</em>
									    </div>
									    <h2 style="text-align: center;">
									        <em>
									            <span style="background-color: rgb(163, 143, 132);">나)</span>
									            <strong>&nbsp;</strong>
									            <strong>&nbsp;</strong>네에에?!?!? &nbsp;벌써 다 된거에요???</em>
									    </h2>
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
									    <h3>
									        <strong>첫 증권계좌 발급 완료!</strong>
									    </h3>
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
									    <h3>
									        <strong>
									            <span style="color: rgb(226, 80, 65);">여기서 중요한 팁!!!</span>
									        </strong>
									    </h3>
									    <p>
									        개설대행 신청서에는 연계계좌번호, 은행계좌번호, 증권사계좌번호 등 다양한 계좌번호가 적혀있어요.
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
									    <h1 style="text-align: center;">
									        <strong>Q&amp;A</strong>
									    </h1>
									    <h1><br>
									    </h1>
									    <p data-empty="true">
									        <br>
									    </p>
									    <h3>
									        <strong>Q1. 가기 전 준비물?</strong>
									    </h3>
									    <hr>
									    <p>
									        증권계좌를 발급하러 가기 전 준비해야 할 점은
									    </p>
									    <p>
									        <img src="https://cdn.wadiz.kr/ft/images/green001/2016/1025/20161025164542090_99.png/wadiz/format/jpg/quality/80/optimize" class="fr-dii">
									    </p>
									    <ul>
									        <li>
									            <span style="color: rgb(226, 80, 65);">어떤 증권사, 은행에서 개설할지 결정</span>하고 &nbsp;</li>
									        <li>
									            <span style="color: rgb(226, 80, 65);">신분증과 도장</span>(도장 없이 서명도 가능)만 챙겨가면 됩니다.&nbsp;</li>
									    </ul>
									    <h3><br>
									    </h3>
									    <h3><br>
									    </h3>
									    <h3>
									        <strong>Q2. 어떤 증권사에서 만들까요?</strong>
									    </h3>
									    <hr>
									    <p>
									        어떤 증권사 선택은 주로<strong>&nbsp;<span style="color: rgb(226, 80, 65);">거래 수수료</span>와
									            <span style="color: rgb(226, 80, 65);">HTS 성능</span>
									        </strong>을 많이 보고 선택합니다.
									    </p>
									    <p>
									        <strong>
									            <span style="color: rgb(226, 80, 65);">수수료</span>
									        </strong>는 주식 거래할 때마다 거래금액에 따라 증권사별로 다 다릅니다. 종종 무료 수수료 등의 프로모션을 진행하기도 하니 확인해보세요!
									    </p>
									    <p>
									        <strong>
									            <span style="color: rgb(226, 80, 65);">HTS</span>
									        </strong>는 Home Trading System의 줄임말로, 개인 투자자가 객장에 나가지 않고 집이나 사무실에서 주식 거래를 할 수 있는 프로그램을 말합니다. HTS가 잘 되어 있는 증권사를 이용하면 주식 거래를 더 편하게 할 수 있겠죠? :)
									    </p>
									    <p data-empty="true">
									        <br>
									    </p>
									    <p data-empty="true">
									        <br>
									    </p>
									    <h3>
									        <strong>&nbsp;Q3. 아무 은행에 가도 되나요?</strong>
									    </h3>
									    <hr>
									    <p>
									        <strong>
									            <span style="color: rgb(226, 80, 65);">증권사별로 거래할 수 있는 은행이 다릅니다.</span>
									        </strong>
									    </p>
									    <p>
									        따라서 증권사를 선택하셨으면 해당 증권사 홈페이지에서 거래 가능한 은행을 확인해주세요!
									    </p>
									    <p>
									        그리고 그중
									        <span style="color: rgb(226, 80, 65);">인터넷 뱅킹을 사용하고 있는 은행</span>으로 가는 게 좋아요. 증권계좌를 만들 때 기존에 사용하고 있는 은행 계좌(입출금계좌)와 연동시켜주는데요, 그 은행계좌를 통해 청약증거금을 편하게 이체할 수 있기 때문이에요.
									    </p>
									    <p data-empty="true">
									        <br>
									    </p>
									    <p>
									        <span style="color: rgb(26, 188, 156);">
									            <strong>Tip</strong>
									            <strong>인터넷 뱅킹이 없다면 꼭 신청하세요!</strong><br>
									            청약증거금 이체는 실시간 계좌이체(인터넷 뱅킹)를 통해서만 가능합니다. 투자자님의 실명인증을 확인할 수 있는 방법이기 때문이에요.</span>
									    </p>
									    <p data-empty="true">
									        <br>
									    </p>
									    <p data-empty="true">
									        <br>
									    </p>
									    <h3>
									        <strong>Q4. 증권계좌 개설하면 카드나 통장은 안 나오나요?</strong>
									    </h3>
									    <hr>
									    <p>
									        <strong>
									            <span style="color: rgb(226, 80, 65);">카드나 통장도 개설하실 수 있습니다.</span>
									        </strong>
									        개설하실 때 카드나 통장 개설하고 싶다고 말씀하시면 됩니다!
									    </p>
									    <p>
									        증권계좌 카드나 통장으로
									        <span style="color: rgb(226, 80, 65);">청약증거금 이체</span>하실 수 있습니다. 즉,
									        <span style="color: rgb(226, 80, 65);">청약증거금 이체는 시중 은행계좌, 증권계좌 모두 사용 가능</span>하니 편한 방법으로 이용하시면 됩니다.
									    </p>
									    <p>
									        (저는 연계된 은행계좌를 이용하면 수수료없이 이체할 수 있어서, 증권계좌 카드나 통장을 따로 개설하지 않았어요.)
									    </p>
									    <p data-empty="true">
									        <br>
									    </p>
									    <p data-empty="true">
									        <br>
									        <br><br>
									    </p>
									</div>
								</div>
							</div>
							
							
							<!-- two  -->
						
            
          					<div id="two" class="col-lg-9" hidden="true">
    <div class="tt_article_useless_p_margin contents_style" style="width:700px height: auto !important;">
     <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p> 
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
         
        <p></p>
        <p><br></p>
        <h3 style="box-sizing: border-box; line-height: 1.5; margin-top: 5px; margin-right: 0px; margin-bottom: 5px; padding: 3px 5px; border-width: 0px 0px 2px 12px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(31, 175, 218); border-left-color: rgb(31, 175, 218); border-image: initial; letter-spacing: 1px; word-spacing: 3px;">
            <font color="#1fafda" face="Arial">
                <span style="font-size: 21.3333px;">주식 차트 보는 방법 총정리 (기초)</span>
            </font>
        </h3>
        <p><br></p>
        <div class="txc-textbox" style="border-style: solid; border-width: 1px; border-color: rgb(203, 203, 203); background-color: rgb(255, 255, 255); padding: 10px;">
            <p>들어가기에앞서 지금부터 소개하는 주식 차트 보는 방법 총정리 포스팅은 기초를 다루고 있습니다.
            </p>
        </div>
        <p><br></p>
        <p>
            <b>
                <span style="font-size: 14pt;">양봉과 음봉 알아보기</span>
            </b>
        </p>
        <p><br></p>
        <p>
            <span style="color: rgb(241, 95, 95);">▼</span>
            주식차트를 처음으로 만나셨다면 가장 먼저 공부해야되는 내용입니다. 비로 봉차트에 따른 봉읽기인데요. 차트를 보면 빨간색봉과 파란색봉이 섞여 이루고 있는 것을 보실 수 있습니다. 아래 사진을 참고해서 설명을 읽어보세요.</p>
        <p><br></p>
        <p style="text-align: center; clear: none; float: none;">
            <span class="imageblock" style="display:inline-block;width:721px;text-align: center;;height:auto;max-width:100%"><img src="https://t1.daumcdn.net/cfile/tistory/992D7E3F5C5C39C705" style="max-width:100%;height:auto" width="721" height="456" filename="주식 차트 보는 방법 정리.jpg" filemime="image/jpeg"></span>
        </p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <div class="txc-textbox" style="border-style: solid; border-width: 1px; border-color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); padding: 10px;">
            <p style="text-align: left; clear: none; float: none;">
                <span style="text-align: left;">먼저 빨간생봉입니다. 이것은 상승을 의미하며 빨간봉의 맨아래의 꼬리는 그날의 최저가, 맨위의 꼬리는 최고가를 의미합니다. 두껍게 칠해진 부분의 아래는 당일 시작한 가격, 그 위는 마감한 가격이랍니다. 참쉽죠 ? 파란색봉은
                </span>
                <span style="text-align: left;">그 반대로써 하락을 의미한답니다. 위의 사진을 천천히 보시며 되새겨보세요. 한번 이해를 해두시면 앞으로 주식 차트를 볼때 햇갈리는 일이 없답니다.</span>
                <span style="text-align: left;"></span>
            </p>
        </div>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="font-size: 18.6667px; font-weight: 700;">주가의 향방을 알려주는 크로스상황 알아보기</span><br></p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="color: rgb(241, 95, 95);">▼</span>
            주식 차트 보는 방법 두번째는 골든크로스와 데드크로스의 이해입니다. 이동평균선이라는 개념을 먼저 이해하셔야되는데, 주식의가격을 일정기간 평균을 내어 선으로 이은것이 이동편균선이라고 합니다. 만약 60일선이라면 60일간의 주식가격을 선으로 이은것이겠죠?
            <br></p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <p style="text-align: center; clear: none; float: none;">
            <span class="imageblock" style="display:inline-block;width:768px;;height:auto;max-width:100%"><img src="https://t1.daumcdn.net/cfile/tistory/9974273A5C5C2FC829" style="max-width:100%;height:auto" width="768" height="320" filename="9988EA3F5C4EAD3312.jpg" filemime="image/jpeg"></span>
        </p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <div class="txc-textbox" style="border-style: solid; border-width: 1px; border-color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); padding: 10px;">
            <p style="text-align: left; clear: none; float: none;">골든크로스는 단기이평선이 그보다 긴 중장기선을 상향돌파할때 사용하는 용어입니다. 주가의 갑작스러운 상승흐름을 캐치해낼 수 있는 유용한 지표로 작용하죠. 예를들어 120일간의 주가평균선보다 단기간인 20일선이 돌파하였다면 120일간의 주가보다 20일간의 주가상승폭이 갑작스럽게 증가함을 의미한다고 알 수 있겠죠 ? 이렇듯 개념은 무척 쉽습니다. 이 반대는 데드크로스라고 한다는 것도 잊지 마세요.<br></p>
        </div>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="color: rgb(241, 95, 95);">▼</span>
            위의 주식 차트 보는 방법 두가지 내용을 아신것만으로도 여러분들은 이제 주가의 흐름과 상승하락에 관한 동향을 알아보실 수 있습니다. 그 예시로 아래 차트를 보며 설명드리겠습니다.<br></p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <p style="text-align: center; clear: none; float: none;">
            <span class="imageblock" style="display:inline-block;width:704px;;height:auto;max-width:100%"><img src="https://t1.daumcdn.net/cfile/tistory/9972AD3A5C5C2FC929" style="max-width:100%;height:auto" width="704" height="366" filename="주식 차트 보는 방법1.jpg" filemime="image/jpeg"></span>
        </p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <div class="txc-textbox" style="border-style: solid; border-width: 1px; border-color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); padding: 10px;">
            <p style="text-align: left; clear: none; float: none;">검은색박스는 (5일선-20일선) 데드크로스입니다. 데드크로스가 이루어졌던시점 4일전에 큰폭의 파란색 음봉이 생겨났음을 보이실 수 있습니다. 그후로 계속해서 가격이 낮아지다가 노란색박스의 골든크로스가 발생하고 주가가 다시상승하는 흐름을 보실 수 있습니다. 아하 하루하루의 주가봉과 크로스상황만으로도 중단기간의 흐름을 예상해볼 수는 있겠구나 ! 느끼셨죠 ?<br></p>
        </div>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <p style="clear: none; float: none;"><br></p>
        <p style="clear: none; float: none;">
            <span style="font-size: 18.6667px; font-weight: 700;">주가의 폭락, 폭등 알아보기</span><br></p>
        <p></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="color: rgb(241, 95, 95);">▼
            </span>다음으로 설명드리고 싶은 주식 차트 보는 방법 세번째는 이격도에 관련된 내용입니다. 주가와 이동평균선에 관한 이격도인데요. 이것은 현재 주가가 비정상적인 상황인가를 체크해주는 역활을 해준답니다. 이전부터의 평균가격보다 월등히 높은 가격으로 치솟았다면 매도시점을 노려봐야하고 평균가격보다 낮은 가격으로 폭락했다면 매수시점을 노려볼 수 있겠죠 ?<br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: center; clear: none; float: none;">
            <span class="imageblock" style="display:inline-block;width:806px;text-align: center;;height:auto;max-width:100%"><img src="https://t1.daumcdn.net/cfile/tistory/99E1163A5C5C2FCA25" style="max-width:100%;height:auto" width="806" height="286" filename="주식 차트 보는 방법2.jpg" filemime="image/jpeg"></span>
        </p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="font-size: 18.6667px; font-weight: 700;">주식 차트 보는 방법 - 거래량을 꼭 체크하자</span>
        </p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <p style="text-align: center; clear: none; float: none;">
            <span class="imageblock" style="display:inline-block;width:680px;;height:auto;max-width:100%"><img src="https://t1.daumcdn.net/cfile/tistory/9945203A5C5C2FCB21" style="max-width:100%;height:auto" width="680" height="350" filename="주식 차트 보는 방법 이것만.jpg" filemime="image/jpeg"></span>
        </p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <div class="txc-textbox" style="border-style: solid; border-width: 1px; border-color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); padding: 10px;">
            <p style="text-align: left; clear: none; float: none;">주식투자하는데 왜 가격이 아닌 거래량까지 체크해야되나요 ? 무슨 의미가 있나요 ? 하시는 초보 투자자분들을 굉장히 많이 접했던 것 같습니다. 앞으로 주식판에 있으시면서 "거래량은 숨길 수 없다"라는 말을 많이 들으실 수 있으실텐데 큰거래는 반드시 눈에 보이게 되고 이것은 투자판단에 큰 도움을 받을 수 있답니다.
            </p>
        </div>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="font-size: 18.6667px; font-weight: 700;">주식 차트 보는 방법 - 매물대를 주목하자</span><br></p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <p style="text-align: center; clear: none; float: none;">
            <span class="imageblock" style="display:inline-block;width:840px;;height:auto;max-width:100%"><img src="https://t1.daumcdn.net/cfile/tistory/995A993A5C5C2FCB18" style="max-width:100%;height:auto" width="840" height="417" filename="주식 차트 보는 방법 소개.jpg" filemime="image/jpeg"></span>
        </p>
        <p style="text-align: center; clear: none; float: none;"><br></p>
        <div class="txc-textbox" style="border-style: solid; border-width: 1px; border-color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); padding: 10px;">
            <p style="text-align: left; clear: none; float: none;">매물대는 쉽게 말해서 주식의 일정가격에 얼마만큼의 주문이 이루어졌는지 알 수 있답니다. 이것이 왜 중요할까요 ? 바로 사람의 심리상 본전매도, 본전매수의 경향이 많이 나오기 때문입니다. 따라서 주식 차트 보는 방법 중에서도 꼭 눈여겨보시는 것을 추천드립니다.
            </p>
        </div>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;"><br></p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
    </p>
</p></p><p style="text-align: left; clear: none; float: none;"></p><p></p><p></p></div></div>

        
        
					
		
		<div hidden="true" id="three" class="col-lg-9">
		
					<div class="entry-content">
				 <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p> 
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
         <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p> 
        
<div class="wp-block-group"><div class="wp-block-group__inner-container">



<figure class="wp-block-image size-large"><img loading="lazy" width="700" height="700" src="https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-03.png" alt="주식 기초 용어 모음.zip" class="wp-image-34361" srcset="https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-03.png 1080w, https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-03-760x760.png 760w, https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-03-280x280.png 280w, https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-03-768x768.png 768w" sizes="(max-width: 1080px) 100vw, 1080px"></figure>
  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>


<figure class="wp-block-image size-large"><img loading="lazy" width="700" height="700" src="https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-04.png" alt="주식 기초 용어 모음.zip" class="wp-image-34362" srcset="https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-04.png 1080w, https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-04-760x760.png 760w, https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-04-280x280.png 280w, https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-04-768x768.png 768w" sizes="(max-width: 1080px) 100vw, 1080px"></figure>
</div></div>

  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<figure class="wp-block-image size-large"><img loading="lazy" width="700" height="700" src="https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-05.png" alt="주식 기초 용어 모음.zip" class="wp-image-34363" srcset="https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-05.png 1080w, https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-05-760x760.png 760w, https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-05-280x280.png 280w, https://punpun.co.kr/wp-content/uploads/2020/11/stock-zip_201106-05-768x768.png 768w" sizes="(max-width: 1080px) 100vw, 1080px"></figure>
  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<h2 id="block-1d5d6925-7e4b-44e9-b111-c1ee904506ca"><strong>#1 주식 투자 기본 용어</strong></h2>



<ul><li><strong>매수: </strong>주식을 사는 것, 사다의 초성 ‘ㅅ’으로 기억</li><li><strong>매도: </strong>보유 주식을 파는 것, 팔고 도망쳐!의 ‘도’</li><li><strong>시가: </strong>주식시장이 열릴 때 형성된 가격</li><li><strong>종가:</strong> 주식 장 마감 때의 주식 가격</li><li><strong>호가:</strong> 파는 사람, 사는 사람이 원하는 가격</li><li><strong>동시호가:</strong> 파는 사람과 사는 사람이 동시에 부르는 가격, 일반적으로 개장 5분전 가격</li><li><strong>코스피: </strong>주로 대기업과 중견기업 등 규모가 큰 회사들이 상장되는 유가증권 시장</li><li><strong>코스닥: </strong>미국 주식시장의 나스닥과 유사, 주로 규모가 작은 중소형, 벤처기업들이 상장됨</li></ul>



<h2><strong>#2 기업 실적/시장상황 관련 용어</strong></h2>



<ul><li><strong>어닝시즌: </strong>기업의 매출, 실적 발표 시기</li><li><strong>어닝쇼크: </strong>기업의 실적이 시장에서 예상한 것에 비해 저조한 결과를 냈을 때 ↔어닝서프라이즈</li><li><strong>턴어라운드: </strong>적자가 나고 있던 기업의 경영 능력이 향상되거나 매출이 증가하는 등 기업의 상황이 좋아지는 시점</li><li><strong>펀더멘탈: </strong>기업의 실적, 재무 등의 지표를 통해 객관적인 레벨을 판단, 분석</li><li><strong>모멘텀: </strong>주가의 상승 혹은 하락의 변화를 나타내는 지표의 의미 ex. 상승 모멘텀이 줄어들고 있다.</li><li><strong>컨센서스: </strong>시장에서 대부분 그렇게 예측하거나 생각한다는 뜻, 의견 합의</li></ul>



<h2><strong>#3. 주식러들이 쓰는 은어, 배워보기</strong></h2>



<ul><li><strong>잡주: </strong>기업가치나 근본이 부실한 기업의 주식</li><li><strong>동전주: </strong>1,000원이 안되는 저가의 주식</li><li><strong>상따: </strong>상한가에 가기 직전 종목을 매수함↔하따</li><li><strong>쩜상: </strong>매수세가 강력해서 시초/고가/저가/종가가 모두 상한가인 경우↔쩜하</li><li><strong>무겁다: </strong>주식가격이 움직이지 않고, 잔잔한 상태로 오래갈 때를 지칭</li><li><strong>쌀장: </strong>미국의 주식장을 통틀어 이르는 말</li><li><strong>다우극장: </strong>다우존스공업평균지수를 칭하는 말. 미국은 주가 변동제한폭이 없어, 변동성이 큰 편이라, 끝을 알 수 없는 영화 같다고 붙여진 별칭</li></ul>
		
		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
          <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
          <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
           <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
				
				
				
			</div>
	
	</div>
	
	<div hidden="true" id="four" class="col-lg-9">
	<div class="entry-content" style="width:700px">
	
		 <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p> 
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
         <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p> 
		
<p>요새 주식 시장에서 핫한 키워드 중 하나, 액면분할<img draggable="false" role="img" class="emoji" alt="✂" src="https://s.w.org/images/core/emoji/13.0.1/svg/2702.svg">. 카카오, 펄어비스, 대한제분 등이 액면분할을 실시하겠다고 발표했어요. 경제 기사를 통해 들었는 봤지만, 액면분할이 무엇을 의미하는지 정확히 몰랐다면 오늘 같이 알아봐요<img draggable="false" role="img" class="emoji" alt="👀" src="https://s.w.org/images/core/emoji/13.0.1/svg/1f440.svg"><img draggable="false" role="img" class="emoji" alt="💪" src="https://s.w.org/images/core/emoji/13.0.1/svg/1f4aa.svg">.</p>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<h2><strong>개미님, 앞으로는&nbsp;</strong><br><strong>낮은 가격으로&nbsp;모십니다!</strong></h2>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<p>액면분할이란 주식의 액면가격을 일정 비율로 분할해 발행 주식 수를 늘리는 것을 의미해요. 여기서 액면가란 주식이 맨 처음 세상에 나올때의 가격이에요. 보통 100원, 500원, 1000원, 5000원에서 시작합니다. (우리가 주식 매매창에서보는 주식의 가격은 시장가입니다!)&nbsp;</p>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<figure class="wp-block-image size-large"><img loading="lazy" width="700" height="700" src="https://punpun.co.kr/wp-content/uploads/2021/04/study-stocksplit-20210402-001.jpg" alt="카카오는 쪼개도 카카오(feat. 액면분할)" class="wp-image-38910" srcset="https://punpun.co.kr/wp-content/uploads/2021/04/study-stocksplit-20210402-001.jpg 900w, https://punpun.co.kr/wp-content/uploads/2021/04/study-stocksplit-20210402-001-760x760.jpg 760w, https://punpun.co.kr/wp-content/uploads/2021/04/study-stocksplit-20210402-001-280x280.jpg 280w, https://punpun.co.kr/wp-content/uploads/2021/04/study-stocksplit-20210402-001-768x768.jpg 768w" sizes="(max-width: 900px) 100vw, 900px"></figure>


		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
<p>조금 더 이해하기 쉽게 피자로 예를 들어 볼게요! 1만 원짜리 피자를 원래는 한 판 단위로만 사야 했는데,&nbsp;이제는 조각으로 살 수 있는 것입니다.&nbsp;피자를 조각 낸다고 해서 기존 한 판의 가격이나 크기가 달라지지는 않는 것처럼,&nbsp;액면분할을 한 기업의 가치도 바뀌지 없아요.&nbsp;자본금도,&nbsp;시가총액도,&nbsp;기존 주주의 지분구조 등도 모두 동일합니다.&nbsp;</p>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<h2><strong>액면분할주는<br>3일 동안 STOP!</strong></h2>
		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>


<p>액면분할은 주주총회에서 결의를 한 후 정관을 개정하고 기준일을 정해 구주권(액면분할 전)을 회수한 뒤,&nbsp;신주권(액면분할 후)을 발행해서 교부하는 방식이에요.&nbsp;발행 과정은 한국예탁결제원을 통해 진행돼요.&nbsp;개인 투자자가 직접 주식을 찾아서 회사에 보내고 다시 신주식을 신청해야 하는 과정을 거치지 않아도 되는 것이죠.&nbsp;보통 구주식을 회수하는 날(=기준일) 다음날부터&nbsp;3일 동안 거래가 정지됩니다.&nbsp;카카오로 예를 들어볼게요! 카카오의 액면분할 날짜 기준일은&nbsp;4월&nbsp;9일(금)이며,&nbsp;4월&nbsp;12일(월)부터&nbsp;15일(수)까지 매매가 정지됩니다.&nbsp;액면분할되기 전 구매하고 싶다면&nbsp;4월&nbsp;9일까지 매수를 완료해야 합니다.&nbsp;관련 일정은&nbsp;Dart&nbsp;공시를 통해 확인할 수 있어요.&nbsp;</p>


		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
<h2><strong>왜 회사는&nbsp;<br>주식 수를 늘릴까요?</strong><strong></strong></h2>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<h3>1.&nbsp;유동성 증가를 위해서!</h3>


<p>기업이 기대하는 것은 시장에서 기업가치를 적정하게 평가받는 일이에요.&nbsp;기업가치는 투자자가 결정하는데,&nbsp;투자자의 관심이 저조하면 가치를 제대로 평가받지 못할 수도 있거든요!</p>



<p><strong>• 개인 투자자 입장에서는 액면분할을 하면, 접근성이 높아져요!<img draggable="false" role="img" class="emoji" alt="✨" src="https://s.w.org/images/core/emoji/13.0.1/svg/2728.svg"></strong><br>지금 카카오 주식은 1주에 거의 50만 원에 육박해요. 2018년 액면분할 전의 삼성 주가는 1주에 250만 원에 육박했고요. 이처럼 높은 가격은 개인 투자자들이 사기에는 부담스러운 가격입니다. 그런데 액면분할을 하면, 가격 문턱이 낮아지니까 개인이 사고팔기 쉬워지고 또 거래량도 증가하겠죠! 기업 입장에서는 개미 투자자들의 접근성을 높여서 주식 가치를 끌어올릴 수 있는 아주 좋은 기회입니다.</p>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<p><strong>• 높아진 유동성으로 기관투자자, 외국인도 Welcome<img draggable="false" role="img" class="emoji" alt="🙋" src="https://s.w.org/images/core/emoji/13.0.1/svg/1f64b.svg"></strong><br>기관투자자나 외국인은 발행주식수가 적어 유동성이 부족한 주식에 투자하기를 꺼려요. 다시 말해 기관 및 외국인은 원하는 물량을 원하는 가격에 쉽게 살 수 있어야 접근합니다. 유동성이란 시중에서 거래되는 주식 수량을 의미해요! 기관과 외국인은 대체로 운용자산규모가 크기 때문에 한 번에 사들이는 주식 수량이 개인투자자보다 많은 편인데요. 이들이 몇만 주 사들일 때 유동 물량이 적어 호가가 크게 움직이면 투자를 꺼린다고 합니다. 그래서 기관과 외국인은 대체로 유동성이 풍부한 대형주를 중심으로 매매해요. 주식을 팔 때도 유동성이 풍부해야 보유한 주식을 처분하기가 쉬우니까요. </p>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<h3><strong>2.&nbsp;</strong><strong>기업의 경영권 방어에도 한몫</strong><strong></strong></h3>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<p>유통 주식이 많아지면 적대적&nbsp;M&amp;A에 노출되는 위험을 상대적으로 낮출 수 있어요.&nbsp;기업인수합병을 위해&nbsp;10만 주의 주식을 확보하는 데 드는 시간과&nbsp;1,000만 주의 주식을 확보하는 데 드는 시간을 따지자면,&nbsp;후자가 훨씬 오래 걸릴 거니까요.&nbsp;소액주주들에게 흩어진 주식을 사들이는 데에는 그만큼의 시간과 노력이 필요하기 때문입니다.&nbsp;보통 액면 분할의 이유로 유동성 확보를 많이 들긴 하지만,&nbsp;기업의 경영 방어를 위해 액면분할을 실시하는 경우도 있다고 해요.</p>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<h3><strong>+ TIP. </strong><strong>주식 수 늘리는 거면,&nbsp;무상증자랑 같은 걸까요?</strong></h3>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<figure class="wp-block-image size-large"><img loading="lazy" width="700" height="272" src="https://punpun.co.kr/wp-content/uploads/2021/04/study-stocksplit-20210402-002.jpg" alt="카카오는 쪼개도 카카오(feat. 액면분할)" class="wp-image-38911" srcset="https://punpun.co.kr/wp-content/uploads/2021/04/study-stocksplit-20210402-002.jpg 900w, https://punpun.co.kr/wp-content/uploads/2021/04/study-stocksplit-20210402-002-760x399.jpg 760w, https://punpun.co.kr/wp-content/uploads/2021/04/study-stocksplit-20210402-002-768x403.jpg 768w" sizes="(max-width: 900px) 100vw, 900px"></figure>



<p>기업의 가치는 변하지 않지만,&nbsp;회사의 주식 수가 증가한다는 관점에서 무상증자와 비슷해 보이죠<img draggable="false" role="img" class="emoji" alt="👀" src="https://s.w.org/images/core/emoji/13.0.1/svg/1f440.svg">.&nbsp;액면가를 낮추는 액면분할과 달리 무상증자는 자본잉여금이나 이익잉여금 계정에 있는 자본을 자본금 항목으로 이전하는 것이므로,&nbsp;잉여금은 줄고 자본금은 증가해요.&nbsp;계정 항목의 이동이기 때문에 시가총액은 그대로입니다.&nbsp;오른쪽 주머니의 돈을 꺼내 왼쪽 주머니에 넣는 것과 같은 이치입니다.</p>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<h2><strong>다른 시선으로<br>살펴&nbsp;보기(feat. 버핏)</strong></h2>
		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>


<p>물론 위의 시각과 전혀 다른 의견을 보이는 사람도 있어요.&nbsp;대표적인 인물이 워렌 버핏입니다.&nbsp;기업은 실적으로만 승부하면 그만이고,&nbsp;증권시장에서 많이 거래되는 것이 꼭 기업 가치를 적정하게 평가받는 방법은 아니라는 거죠!&nbsp;워렌 버핏은 발행주식수를 늘리는 액면분할이나 무상증자를 하지 않아요.&nbsp;버크셔 해서웨이&nbsp;A&nbsp;주가가 주당&nbsp;4억 원을 넘겨 전 세계에서 가장 비싼 주식이 되었습니다.&nbsp;이 주식은 발행수가 워낙 적고 비싸기 때문에&nbsp;A주를 구입한 사람들은 버핏의 사업 파트너임을 입증합니다.&nbsp;버핏은&nbsp;“좋은 기업은 투자자가 알아보고 주식을 매수하기 때문에 결국 기업은 적정한 평가를 받는다”고 얘기했어요.&nbsp;유동성보다 실적이 중요하다는 것이죠.&nbsp;</p>

		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>

<h2>그래서 주가는&nbsp;<br>어떻게 변할까요?</h2>
		  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>


<p>50&nbsp;대&nbsp;1&nbsp;비율로 액면분할을 한 삼성전자의 경우 주당 가격은&nbsp;260만 원대에서&nbsp;5만 원대로 내렸습니다! 신주상장&nbsp;6개월이 지난 시점에는&nbsp;4만 원대까지 내려갔고, 2년간 4~5만 원대를 횡보했어요.&nbsp;반면,&nbsp;액면분할 이후 주가 상승을 보인 사례도 있습니다.&nbsp; 테슬라는 작년&nbsp;8월 액면분할 이후 올해 연초&nbsp;400달러대에서&nbsp;5개월 후&nbsp;800달러대로 수직 상승했습니다.&nbsp;분할 전후,&nbsp;주가는 오르기도 하고 내리기도 하지만&nbsp;이론적으로 액면분할 때문에 주가가 변한다고는 볼 수 없어요.&nbsp;자본금이 변한 것도 아니고 지분구조가 변한 것도 아니고 원래 시가총액이 변한 것도 아니니까요.&nbsp;주식 유동성이 높아지기 때문에 분할 후 주가가 오를 가능성이 있기도 해요.&nbsp;하지만 유동성이 높다는 건,&nbsp;내리는 방향으로 작용할 수도 있다는 이야기입니다.&nbsp;실제로 경기가 악화되는 시점에서의 액면분할로 주가가 하락한 사례도 많아요!&nbsp;&nbsp;</p>



<p>우량주에 투자할 수 있는 기회가 되는 액면분할,&nbsp;단기적인 주가 상승을 기대하기 보다는 장기적인 미래 가치에 더 집중해보세요<img draggable="false" role="img" class="emoji" alt="💸" src="https://s.w.org/images/core/emoji/13.0.1/svg/1f4b8.svg"><img draggable="false" role="img" class="emoji" alt="🔍" src="https://s.w.org/images/core/emoji/13.0.1/svg/1f50d.svg"></p>
		
		
					  <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
          <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
          <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
        <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
           <p style="text-align: left; clear: none; float: none;">
            <span style="text-align: left;"><br></span>
        </p>
				

		</div>
	
	</div>
		
		
	
	</div>
	
			
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


<script>


$('#list1 .one').click( function() {
	$('#one').removeAttr('hidden');
	$('#two').attr('hidden','true');
	$('#three').attr('hidden','true');
	$('#four').attr('hidden','true');
} );
$('#list1 .two').click( function() {
	$('#one').attr('hidden','true');
	$('#two').removeAttr('hidden');
	$('#three').attr('hidden','true');
	$('#four').attr('hidden','true');
} );
$('#list2 .one').click( function() {
	$('#one').attr('hidden','true');
	$('#two').attr('hidden','true');
	$('#three').removeAttr('hidden');
	$('#four').attr('hidden','true');
} );
$('#list2 .two').click( function() {
	$('#one').attr('hidden','true');
	$('#two').attr('hidden','true');
	$('#three').attr('hidden','true');
	$('#four').removeAttr('hidden');
} );
</script>
</div>

</body>
</html>