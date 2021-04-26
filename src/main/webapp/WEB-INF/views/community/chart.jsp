<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
      	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  		<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
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
        <title>Community</title>
        </head>
    <body>
        <!-- 글자 -->
        </style>
        <div>
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
                                <a href="#" class="nav-link px-2 link-dark">종목별등락</a>
                            </li>
                            <li>
                                <a href="/community/padcast" class="nav-link px-2 link-dark">팟캐스트</a>
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
                        <div style="display: flex; justify-content: center; align-items: center;   border-left: 1px solid #dee2e6; border-radius: 1.5em;  border-right: 1px solid #dee2e6;">                   
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

                <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                  <input type="text" id="search" class="form-control" placeholder="검색..." style="width: 195px;">
                </form>
			<c:if test="${not empty sessionScope.login }"> <!-- sessionScopre.id가 있으면 -->
                <div class="dropdown text-end">
                    <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle">
                    </a>
                    <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                        <li>
                            <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">글쓰기 </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">알람</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">${sessionScope.login.id} 님 계정정보</a>
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
     

  

    <!-- 차트 시작 -->
    <div class="left">
        <script type="text/javascript" src="https://d33t3vvu2t2yu5.cloudfront.net/tv.js"></script>
        <script type="text/javascript">
        var search = '<c:out value="${search}"/>';
        new TradingView.widget({
            "width": 660,
            "height": 370,
            "symbol": "search",
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
        
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" ">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">피드쓰기</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body" >
			        <form action="/community/write" method="post" >
			          <div class="mb-3">
			            <label for="recipient-name" class="col-form-label">제목 : </label>
			            <input type="text" class="form-control" id="title" name="title" placeholder="제목" required>
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
    </body>
</html>