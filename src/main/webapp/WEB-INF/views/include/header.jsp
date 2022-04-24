<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<header class="p-3 mb-3 border-bottom"
        style="line-height: 1.3em;z-index: 1;position: sticky;top: 0px;background-color: white;margin: 0;padding-top: 5px!important;padding-bottom: 9px!important;">
    <div class="container" style=" margin-right: auto; margin-left: auto;">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
                <img src="../../../resources/img/logo.png">
            </a>
            <div style="width: 60%;display: block;margin-left: auto;margin-right: auto;height: 140px;">
                <div style="margin-bottom: 1.5%;">
                    <ul class="my-3 nav col-12 col-lg-auto me-lg-auto mb-2 mb-md-0"
                        style="display: flex; justify-content: space-around;">
                        <li>
                            <a href="/stockinfo/main" class="nav-link px-2 link-secondary">주요시세정보</a>
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
                            <a href="/community/chart" class="nav-link px-2 link-dark">차트</a>
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
                <input type="text" name="search" id="search" class="form-control"
                       placeholder="@종목명/종목코드 or #해시태그로 검색">
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
                            <a id="headerWrite" class="dropdown-item" href="#" data-bs-toggle="modal"
                               data-bs-target="#exampleModal">글쓰기 </a>
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

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">피드쓰기</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="writeForm" action="/community/write" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <img src="../../../resources/img/velog.png" alt="mdo" width="32" height="32"
                             class="rounded-circle">
                        <label class="col-form-label"> ${sessionScope.login.id} 님의 생각을
                            적어보세요</label>

                    </div>
                    <div class="mb-3">
                        <label for="content" class="col-form-label">내용:</label>
                        <textarea class="form-control" id="content"
                                  style="min-height: calc(1.5em + 22.75rem + 2px);" name="CONTENT" placeholder="내용"
                                  required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="hashTag" class="col-form-label">해시태그 : </label>
                        <input type="text" class="form-control" id="hashTag" name="HASHTAG"
                               placeholder="해시태그 #으로 구분">
                    </div>
                    <div class="mb-3">

                        <div class="inputArea">

                            <label for="gdsImg">이미지</label>
                            <input id="gdsImg" multiple type="file" name="uploadFile"/>
                            <hr>

                            <div style="display: flex; overflow: auto;" class="select_img">

                            </div>
                        </div>
                    </div>

                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    <input type="submit" class="btn btn-primary" value="글쓰기">

                </form>
            </div>
        </div>
    </div>
</div>