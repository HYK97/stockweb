<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="../../../resources/img/logo.png">
        <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
      	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
     
        <link rel="stylesheet" id="theme-options-css" href="https://about.stocktwits.com/wp-content/uploads/mk_assets/theme-options-production-1612242140.css?ver=1612242135" type="text/css" media="all">
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
        <header class="p-3 mb-3 border-bottom" style="z-index: 1;position: sticky;top: 0px;background-color: white;margin: 0;padding-top: 5px!important;padding-bottom: 9px!important;">
        <div class="container" style="position: sticky; margin-right: auto; margin-left: auto;">
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
                                <a href="/stockinfo/guide" class="nav-link px-2 link-dark">주식가이드</a>
                            </li>
                            <li>
                                <a href="/community/community" class="nav-link px-2 link-dark">커뮤니티</a>
                            </li>
                            <li>
                                <a href="/community/chart" class="nav-link px-2 link-secondary">차트</a>
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
                            <a id="headerWrite"class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">글쓰기 </a>
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
        var searchs=getParameterByName('search'); 


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
        
       <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
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