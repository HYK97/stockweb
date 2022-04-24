<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../../../resources/img/logo.png">
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="../../../resources/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&amp;family=Nanum+Pen+Script&amp;display=swap"
          rel="stylesheet">
    <link data-chunk="app" rel="stylesheet" href="../../../resources/css/style.css">
    <title>Community</title>
    <script src="../../../resources/js/header.js"></script>
    <script src="../../../resources/js/main.js"></script>
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

        .box {
            -ms-overflow-style: none;
        }

        .box::-webkit-scrollbar {
            display: none;
        }


    </style>
</head>
<body>
<div>
    <!------------------header---------------------------->
    <jsp:include page="../include/header.jsp"></jsp:include>
    <!--body-->
    <div class="container">

        <div class="row">
            <div class="col-lg-3">

                <h1 class="my-4">팟캐스트</h1>
                <div class="list-group">
                    <a id="list1" class="list-group-item">
                        국내 주식
                    </a>
                    <a id="list2" class="list-group-item">
                        해외 주식
                    </a>
                    <a id="list3" class="list-group-item">
                        인터넷방송
                    </a>
                </div>

            </div>

            <div id="one" class="col-lg-9">

                <div class="slideshow-container">

                    <div class="mySlides ">
                        <div class="numbertext">1 / 3</div>
                        <img src="../../../resources/img/caption1.jpg" style="width:100%">
                    </div>

                    <div class="mySlides ">
                        <div class="numbertext">2 / 3</div>
                        <img src="../../../resources/img/caption2_1.png" style="width:100%">
                    </div>

                    <div class="mySlides ">
                        <div class="numbertext">3 / 3</div>
                        <img src="../../../resources/img/caption3.jpg" style="width:100%">
                    </div>

                </div>
                <br>

                <div style="text-align:center">
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                </div>

                <div class="row">

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="C:\VSCODEWORKS\html\img\podcats1.png" alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">시황맨</a>
                                </h4>
                                <h5>#경제</h5>
                                <p class="card-text">국내 증시, 해외 증시 시황을 이해하기 쉽게 전달해 드립니다.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="C:\VSCODEWORKS\html\img\podcasts2.png"
                                             alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">블록킹</a>
                                </h4>
                                <h5>#가상화폐 #블록체인</h5>
                                <p class="card-text">블록체인과 관련된 여러가지 주제들을 알기 쉽게 설명드리고 해당 주제들을 가지고 이야기를 나눕니다.</p>
                                비트코인, 이더리움, ICO 과 같은 주제들을 다룹니다. 한 주의 핫 이슈들을 소개합니다.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9733;</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="C:\VSCODEWORKS\html\img\podcasts3.png"
                                             alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">코스닥에서 성공을 외치다</a>
                                </h4>
                                <h5>#코스닥 150 #코스닥</h5>
                                <p class="card-text">잘나가는 코스닥, 진짜 보석 찾는 법 - 조선비즈</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9733;</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="C:\VSCODEWORKS\html\img\podcasts4.png"
                                             alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">절제주식투자연구소</a>
                                </h4>
                                <h5>#경제 #종목분석</h5>
                                <p class="card-text">증시시황, 종목분석 등 매우 높은 수준의 주식 콘텐츠를 무료로 제공합니다.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="C:\VSCODEWORKS\html\img\podcasts5.png"
                                             alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">키움증권 주식, 글로벌 시황 투자전략</a>
                                </h4>
                                <h5>#경제</h5>
                                <p class="card-text">국내외 경제이슈 및 투자전략, 종목분석까지~ 주식투자의 모든 것!!</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="C:\VSCODEWORKS\html\img\podcasts6.png"
                                             alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">비트코인 시황 분석 및 블록체인 정보 - 불롱체인</a>
                                </h4>
                                <h5>#블록체인 #가상화폐</h5>
                                <p class="card-text">한국 대표 블록체인 전문 언론사인 한국블록체인뉴스에서 가상자산에 대한 정확한 정보 전달 및 뉴스를 쉽게
                                    풀이하여 전달하고자 '불롱체인'이란 방송을 기획하였습니다.</p>
                                방송명에서 '불'은 상승장의 의미인 영어 'bull'을 의미하며 '롱'은 bull 장에서 매수하여 상승을 기대하는것이 'long'이란 의미이기에
                                블록체인의 상승을 기대하는 의미를 담고 있습니다.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.row -->

            </div>

            <div hidden id="two" class="col-lg-9">
                <div>
                    <div class="row">

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top"
                                                 src="C:\VSCODEWORKS\jutopia_project\img\youtube1.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">레져프로뱅브로</a>
                                    </h4>
                                    <h5>#미국주식</h5>
                                    <p class="card-text">구독자 : 18.3명, 미국 주식 상반기 대응전략.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">★ ★ ★ ★ ☆</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top"
                                                 src="C:\VSCODEWORKS\jutopia_project\img\youtube2.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">박곰희TV</a>
                                    </h4>
                                    <h5>#초보자 #금융유튜버</h5>
                                    <p class="card-text">"내 돈은 내손으로" 박곰희TV는 많은 사람들이 스스로 자산 관리 하는 방법을 익히는 것을 목표로 하고
                                        있습니다.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">★ ★ ★ ★ ★</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="C:\VSCODEWORKS\html\img\podcasts3.png"
                                                 alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">미국주식에 미치다</a>
                                    </h4>
                                    <h5>#해외주식 #미국주식</h5>
                                    <p class="card-text">국내유일의 미국주식전문팟캐스트.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">★ ★ ★ ★ ★</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top"
                                                 src="C:\VSCODEWORKS\jutopia_project\img\stockusa.jpg" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">STOCK USA</a>
                                    </h4>
                                    <h5>#미국주식</h5>
                                    <p class="card-text">미국 주식투자 전문 방송 채널.</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">★ ★ ★ ★ ☆</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="C:\VSCODEWORKS\html\img\podcasts5.png"
                                                 alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">키움증권 주식, 글로벌 시황 투자전략</a>
                                    </h4>
                                    <h5>#경제</h5>
                                    <p class="card-text">국내외 경제이슈 및 투자전략, 종목분석까지~ 주식투자의 모든 것!!</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">★ ★ ★ ★ ☆</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top"
                                                 src="C:\VSCODEWORKS\jutopia_project\img\podcast1.png" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">뱅골호랑이, 강남 왕서방의 해외 주식 토크</a>
                                    </h4>
                                    <h5>#해외주식</h5>
                                    <p class="card-text">올바른 경제 및 자본시장과 함께 하는 글로벌 자산 금융 투자의 모든 것!</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">★ ★ ★ ★ ☆</small>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <script type="text/JavaScript">

                $(document).ready(function () {


                });
            </script>

            <div id="three" hidden="true" class="col-lg-9">
                <div style="overflow: hidden;position: relative;">
                    <div id="wrap" style="position: relative;left: 16px;top:-267px;">
                        <iframe
                                id="ifrm"
                                src="https://www.afreecatv.com/total_search.html?szSearchType=broad&szStype=di&szKeyword=%EC%A3%BC%EC%8B%9D&rs=1"
                                style="width:750px;height: 591vh" scrolling="no" frameborder="0"></iframe>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <jsp:include page="../include/visual.jsp"></jsp:include>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i]
                    .className
                    .replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 2000); // Change image every 2 seconds
        }

        $('#list1').click(function () {
            $('#one').removeAttr('hidden');
            $('#two').attr('hidden', 'true');
            $('#three').attr('hidden', 'true');
        });
        $('#list2').click(function () {
            $('#one').attr('hidden', 'true');
            $('#two').removeAttr('hidden');
            $('#three').attr('hidden', 'true');
        });
        $('#list3').click(function () {
            $('#one').attr('hidden', 'true');
            $('#two').attr('hidden', 'true');
            $('#three').removeAttr('hidden');

            var hei = $('#ifr').contents().height();
            $('#ifr').css('height', hei);


        });
    </script>
</div>
</body>
</html>