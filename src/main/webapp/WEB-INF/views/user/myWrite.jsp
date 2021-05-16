<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
    <head>
    <script type="text/javascript">		
		var sessionData = '<c:out value="${sessionScope.login.id}"/>';
			</script>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
      	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  		<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="../../../resources/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="../../../resources/css/like.css">
        <style media="" data-href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	 	@font-face{font-family:'FontAwesome';src:url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.eot?v=4.2.0");
	 	src:url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.eot?#iefix&v=4.2.0") format('embedded-opentype'),url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.woff?v=4.2.0") format('woff'),url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.ttf?v=4.2.0") format('truetype'),url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/../fonts/fontawesome-webfont.svg?v=4.2.0#fontawesomeregular") format('svg');
	 	font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}</style>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&amp;family=Nanum+Pen+Script&amp;display=swap" rel="stylesheet">
        <link data-chunk="app" rel="stylesheet" href="../../../resources/css/style.css">
        <title>Community</title>
        <link rel="stylesheet" type="text/css" href="../../../resources/css/default.css">
        
        <link rel="stylesheet" type="text/css" href="../../../resources/css/component.css">
        <!-- 네모틀 -->
        <script src="../../../resources/js/modernizr.custom.js"></script>
        <script src="../../../resources/js/main.js"></script>
         <script src="../../../resources/js/content.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>
        <link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../../resources/css/index.css">
        <style>
            .text-center {
                text-align: center;
            }
            #back:hover
            {
            background-color:#f0f0f0;
			transition: background .5s ease-in-out;
            }
            .im{
            max-height: 800px;
            max-width:707px;
            }
            .rolul{
            	display:flex;
          		position:relative;
          		top: 0;
          		left: 0;
          		align-items: center;
            }
            .nextB{
              position: absolute;
 			  top: 50%;
  		      right : 10px; 
  		      z-index: 1;
  		      visibility: hidden;
  		      background: url('../../../resources/img/right.png');
  		      width:30px;
  		      height:30px;
  		      background-size: 30px 30px;
  		      opacity: 0.9;
            }
            .preB{
              position: absolute;
 			  top: 50%;
  		      left : 10px; 
  		      z-index: 1;
  		      visibility: hidden;
  		      background: url('../../../resources/img/left.png');
  		      width:30px;
  		      height:30px;
  		      background-size: 30px 30px;
  		      opacity: 0.9;
  		      
            }
            .roller
            {
            	position: relative;
            	width:707px;
            	overflow :hidden;
            }
            .mroller.roller
            {
            	position: relative;
            	width:100%;
            	max-width: 707px;
            	overflow :hidden;
            	text-align: center;
            }
            .exBtn{
              background: url('../../../resources/img/3dot.png');
  		      width:30px;
  		      height:30px;
  		       background-size: 30px 30px;
  		      border-radius: 50%;
            }
            .exBtn:hover{
            	background-color: #d3d3d3;
            	
				/* 변형할 것은 배경 1초, 빠른 시작 서서히 감속*/
				transition: background 1s ease-out;
            
            }
            
            
        </style>
        			
        
        </head>
    	<body>
    	<div>
        <!-- 글자 -->
      
        <label id="session" hidden="true">${sessionScope.login }</label>
        <!------------------header---------------------------->
        <header class="p-3 mb-3 border-bottom" style="z-index: 2;position: sticky;top: 0px;background-color: white;margin: 0;padding-top: 5px!important;padding-bottom: 9px!important;">
        <div class="container" style="position: sticky; margin-right: auto; margin-left: auto;">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
                    <img src="../../../resources/img/logo.png">
                </a>
                <div style="width: 60%;display: block;margin-left: auto;margin-right: auto;height: 140p;">
                    <div style="margin-bottom: 1.5%;">
                        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 mb-md-0" style="display: flex; justify-content: space-around;">
                            <li>
                                <a href="/user/userinfo" class="nav-link px-2 link-dark">회원정보변경</a>
                            </li>
                            <li>
                                <a href="/user/myWrite" class="nav-link px-2 link-secondary">내가쓴 글</a>
                            </li>
                            <li>
                                <a href="/user/likeContent" class="nav-link px-2 link-dark">좋아요 글</a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-2 link-dark">접속내역</a>
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
    
        
         
<div id="contentList" class="contentList" style="width: 800px;  text-align: center; margin: 0 auto; overflow: auto;">
          

        </div>
       		 <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">피드쓰기</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body" >
			        <form id="writeForm" action="/community/write" method="post"  enctype="multipart/form-data" >
			          <div class="mb-3">
			          	<img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle">
			            <label for="recipient-name" class="col-form-label"> ${sessionScope.login.id} 님의 생각을 적어보세요</label>

			          </div>
			          <div class="mb-3">
			            <label for="message-text" class="col-form-label">내용:</label>
			            <textarea class="form-control" id="content" style="min-height: calc(1.5em + 22.75rem + 2px);" name="CONTENT" placeholder="내용" required></textarea>
			          </div>
			          <div class="mb-3">
			            <label for="recipient-name" class="col-form-label">해시태그 : </label>
			            <input type="text" class="form-control" id="hashTag" name="HASHTAG" placeholder="해시태그 #으로 구분"  >
			            <input type="hidden" class="form-control" id="formID" name="ID" value="">
			          </div>
			          <div class="mb-3">
			          
      				 <div class="inputArea">
      				 			 
      				 			 	<label for="gdsImg">이미지</label>
							        <input id="gdsImg" multiple type="file" name="uploadFile" />
							 		<hr>
							
							 <div style="display: flex; overflow: auto;" class="select_img">
							
							 </div>
      				  </div>
      				 </div>
			    
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
			        <input  type="submit" class="btn btn-primary" value="글쓰기">
			
			        </form>
			      </div>
			    </div>
			  </div>
			</div>
			
			
			
			
		
			
			 <div class="modal fade bs-example-modal-lg" id="bbs" tabindex="-1" aria-labelledby="bbs" aria-hidden="true" >
			  <div class="modal-dialog modal-lg">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">피드</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body" >
			          <div class="mb-3" style="display: flex; align-items: center;">
					
			          	<div style="flex-basis: 30px"><img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle"></div>
			            <div style="flex-basis: auto; margin-left:1%"><label id="comments-author" for="recipient-name"  class="col-form-label"> 글쓴이 </label></div>
			            <div style="flex-basis: auto; margin-left:1%"><label id="comments-date" for="recipient-name"  class="col-form-label" style="font-size: 8;color: gray;font-style: italic;">  날짜</label></div>
						<div style="flex-basis: 74%;"></div>
						
							<div class="dropdown text-end">
								<a href="#" class="d-block link-dark text-decoration-none  exBtn" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
								
								</a>
								<ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1" style="">
									<li>
										<a id="modifyContent" class="dropdown-item">수정</a>
									</li>
									<li>
										<a id="deleteContent" class="dropdown-item">삭제</a>
									</li>
									
								</ul>
							</div>	
													
			          </div>
			           <div class="mb-3">
			         <div id="modal-contents">
			         	
      				 </div>
      				  </div>
      				 <div class="mroller roller">
      				 </div>
      				 <div class="mb-3">
      				 <div id="modal-hash">
			         	
      				 </div>
      				 
      				 
      				 
      				 <div id="modalcount" class="mb-3">
      				 
      				 	
			          </div> 
			          <hr>
					<c:if test="${not empty sessionScope.login }"> <!-- sessionScopre.id가 있으면 -->		
			        <form action="/community/commentsWrite" method="post" onsubmit="return false;" >
			          <div class="mb-3">
			            <label for="recipient-name" class="col-form-label">댓글 : </label>
			            <input type="text" class="form-control" id="comment"  placeholder="${sessionScope.login.id} 님의 생각을 적어보세요" required >
			          </div>   
			        <input id="commentsBtn" type="button" disabled class="btn btn-primary" value="댓글쓰기">
			
			        </form>
			        </c:if>
			        <div id=commetsList>
			        
			        <%-- <div class="mb-3">
			            <div class="mb-3">
			            	<div style="display: flex;">
				          	<img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32" class="rounded-circle">
				            <label id="comment-author" for="recipient-name"  class="col-form-label"> '+data[i].USER_ID+' </label>
				            <label id="comment-date" for="recipient-name"  class="col-form-label">  '+data[i].writedate+'</label>
				            <c:if test="${sessionScope.login.id == '+data[i].USER_ID+'  }">
				            <div style="margin : 0 10%; display: flex;">
				            <button id="comdelete">삭제</button>
				            <button id="comupdate">수정</button>
				            
				            </div>
				            </c:if>
				            </div>
				             <div class="mb-3">
			         <div id="modal-comment">
			         	'+data[i].comments+'
			       
			         	
      				 </div>
      				 </div>
			        
			            
			        	</div>
			        </div>    --%>
			        
			        </div>
			      </div>
			    </div>
			  </div>
			</div>
			</div>
</div>
       
    </body>
</html>