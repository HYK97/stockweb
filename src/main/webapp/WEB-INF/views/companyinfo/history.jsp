<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="overflow-x: hidden;" lang="ko" class="wf-lato-n3-active wf-lato-n4-active wf-lato-n5-active wf-lato-i3-active wf-lato-i1-active wf-lato-i2-active wf-lato-i4-active wf-lato-i5-active wf-lato-n1-active wf-lato-n2-active wf-lato-n6-active wf-lato-n7-active wf-lato-i8-active wf-lato-i9-active wf-lato-i6-active wf-lato-i7-active wf-lato-n8-active wf-lato-n9-active wf-active Chrome Chrome90 cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform translated-ltr cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform"><head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="format-detection" content="telephone=no">
        <title>Jutipia 정보</title>
        <script async="" src="//www.google-analytics.com/analytics.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script>
        <script async="" src="//www.google-analytics.com/analytics.js"></script>
        <script async="" src="//www.google-analytics.com/analytics.js"></script>
        <script type="text/javascript">
            var ajaxurl = "https://about.stocktwits.com/wp-admin/admin-ajax.php";
        </script><meta name="robots" content="noindex, nofollow">
        <style>
            id="critical-path-css" type="text/css" body,
            html {
                width: 100%;
                height: 100%;
                margin: 0;
                padding: 0
                

            }
            .page-preloader {
                top: 0;
                left: 0;
                z-index: 999;
                position: fixed;
                height: 100%;
                width: 100%;
                text-align: center
            }
            .preloader-preview-area {
                -webkit-animation-delay: -0.2s;
                animation-delay: -0.2s;
                top: 50%;
                -webkit-transform: translateY(100%);
                -ms-transform: translateY(100%);
                transform: translateY(100%);
                margin-top: 10px;
                max-height: calc(50% - 20px);
                opacity: 1;
                width: 100%;
                text-align: center;
                position: absolute
            }
            .preloader-logo {
                max-width: 90%;
                top: 50%;
                -webkit-transform: translateY(-100%);
                -ms-transform: translateY(-100%);
                transform: translateY(-100%);
                margin: -10px auto 0;
                max-height: calc(50% - 20px);
                opacity: 1;
                position: relative
            }
            .ball-pulse > div {
                width: 15px;
                height: 15px;
                border-radius: 100%;
                margin: 2px;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                display: inline-block;
                -webkit-animation: ball-pulse 0.75s infinite cubic-bezier(0.2,0.68,0.18,1.08);
                animation: ball-pulse 0.75s infinite cubic-bezier(0.2,0.68,0.18,1.08)
            }
            .ball-pulse>div:nth-child(1) {
                -webkit-animation-delay: -0.36s;
                animation-delay: -0.36s
            }
            .ball-pulse>div:nth-child(2) {
                -webkit-animation-delay: -0.24s;
                animation-delay: -0.24s
            }
            .ball-pulse>div:nth-child(3) {
                -webkit-animation-delay: -0.12s;
                animation-delay: -0.12s
            }
            @-webkit-keyframes ball-pulse {
                0% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 1
                }
                45% {
                    -webkit-transform: scale(0.1);
                    transform: scale(0.1);
                    opacity: .7
                }
                80% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 1
                }
            }
            @keyframes ball-pulse {
                0% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 1
                }
                45% {
                    -webkit-transform: scale(0.1);
                    transform: scale(0.1);
                    opacity: .7
                }
                80% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 1
                }
            }
            .ball-clip-rotate-pulse {
                position: relative;
                -webkit-transform: translateY(-15px) translateX(-10px);
                -ms-transform: translateY(-15px) translateX(-10px);
                transform: translateY(-15px) translateX(-10px);
                display: inline-block
            }
            .ball-clip-rotate-pulse > div {
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                position: absolute;
                top: 0;
                left: 0;
                border-radius: 100%
            }
            .ball-clip-rotate-pulse>div:first-child {
                height: 36px;
                width: 36px;
                top: 7px;
                left: -7px;
                -webkit-animation: ball-clip-rotate-pulse-scale 1s 0s cubic-bezier(0.09,0.57,0.49,0.9) infinite;
                animation: ball-clip-rotate-pulse-scale 1s 0s cubic-bezier(0.09,0.57,0.49,0.9) infinite
            }
            .ball-clip-rotate-pulse>div:last-child {
                position: absolute;
                width: 50px;
                height: 50px;
                left: -16px;
                top: -2px;
                background: 0 0;
                border: 2px solid;
                -webkit-animation: ball-clip-rotate-pulse-rotate 1s 0s cubic-bezier(0.09,0.57,0.49,0.9) infinite;
                animation: ball-clip-rotate-pulse-rotate 1s 0s cubic-bezier(0.09,0.57,0.49,0.9) infinite;
                -webkit-animation-duration: 1s;
                animation-duration: 1s
            }
            @-webkit-keyframes ball-clip-rotate-pulse-rotate {
                0% {
                    -webkit-transform: rotate(0) scale(1);
                    transform: rotate(0) scale(1)
                }
                50% {
                    -webkit-transform: rotate(180deg) scale(0.6);
                    transform: rotate(180deg) scale(0.6)
                }
                100% {
                    -webkit-transform: rotate(360deg) scale(1);
                    transform: rotate(360deg) scale(1)
                }
            }
            @keyframes ball-clip-rotate-pulse-rotate {
                0% {
                    -webkit-transform: rotate(0) scale(1);
                    transform: rotate(0) scale(1)
                }
                50% {
                    -webkit-transform: rotate(180deg) scale(0.6);
                    transform: rotate(180deg) scale(0.6)
                }
                100% {
                    -webkit-transform: rotate(360deg) scale(1);
                    transform: rotate(360deg) scale(1)
                }
            }
            @-webkit-keyframes ball-clip-rotate-pulse-scale {
                30% {
                    -webkit-transform: scale(0.3);
                    transform: scale(0.3)
                }
                100% {
                    -webkit-transform: scale(1);
                    transform: scale(1)
                }
            }
            @keyframes ball-clip-rotate-pulse-scale {
                30% {
                    -webkit-transform: scale(0.3);
                    transform: scale(0.3)
                }
                100% {
                    -webkit-transform: scale(1);
                    transform: scale(1)
                }
            }
            @-webkit-keyframes square-spin {
                25% {
                    -webkit-transform: perspective(100px) rotateX(180deg) rotateY(0);
                    transform: perspective(100px) rotateX(180deg) rotateY(0)
                }
                50% {
                    -webkit-transform: perspective(100px) rotateX(180deg) rotateY(180deg);
                    transform: perspective(100px) rotateX(180deg) rotateY(180deg)
                }
                75% {
                    -webkit-transform: perspective(100px) rotateX(0) rotateY(180deg);
                    transform: perspective(100px) rotateX(0) rotateY(180deg)
                }
                100% {
                    -webkit-transform: perspective(100px) rotateX(0) rotateY(0);
                    transform: perspective(100px) rotateX(0) rotateY(0)
                }
            }
            @keyframes square-spin {
                25% {
                    -webkit-transform: perspective(100px) rotateX(180deg) rotateY(0);
                    transform: perspective(100px) rotateX(180deg) rotateY(0)
                }
                50% {
                    -webkit-transform: perspective(100px) rotateX(180deg) rotateY(180deg);
                    transform: perspective(100px) rotateX(180deg) rotateY(180deg)
                }
                75% {
                    -webkit-transform: perspective(100px) rotateX(0) rotateY(180deg);
                    transform: perspective(100px) rotateX(0) rotateY(180deg)
                }
                100% {
                    -webkit-transform: perspective(100px) rotateX(0) rotateY(0);
                    transform: perspective(100px) rotateX(0) rotateY(0)
                }
            }
            .square-spin {
                display: inline-block
            }
            .square-spin > div {
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                width: 50px;
                height: 50px;
                -webkit-animation: square-spin 3s 0s cubic-bezier(0.09,0.57,0.49,0.9) infinite;
                animation: square-spin 3s 0s cubic-bezier(0.09,0.57,0.49,0.9) infinite
            }
            .cube-transition {
                position: relative;
                -webkit-transform: translate(-25px, -25px);
                -ms-transform: translate(-25px, -25px);
                transform: translate(-25px, -25px);
                display: inline-block
            }
            .cube-transition > div {
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                width: 15px;
                height: 15px;
                position: absolute;
                top: -5px;
                left: -5px;
                -webkit-animation: cube-transition 1.6s 0s infinite ease-in-out;
                animation: cube-transition 1.6s 0s infinite ease-in-out
            }
            .cube-transition>div:last-child {
                -webkit-animation-delay: -0.8s;
                animation-delay: -0.8s
            }
            @-webkit-keyframes cube-transition {
                25% {
                    -webkit-transform: translateX(50px) scale(0.5) rotate(-90deg);
                    transform: translateX(50px) scale(0.5) rotate(-90deg)
                }
                50% {
                    -webkit-transform: translate(50px, 50px) rotate(-180deg);
                    transform: translate(50px, 50px) rotate(-180deg)
                }
                75% {
                    -webkit-transform: translateY(50px) scale(0.5) rotate(-270deg);
                    transform: translateY(50px) scale(0.5) rotate(-270deg)
                }
                100% {
                    -webkit-transform: rotate(-360deg);
                    transform: rotate(-360deg)
                }
            }
            @keyframes cube-transition {
                25% {
                    -webkit-transform: translateX(50px) scale(0.5) rotate(-90deg);
                    transform: translateX(50px) scale(0.5) rotate(-90deg)
                }
                50% {
                    -webkit-transform: translate(50px, 50px) rotate(-180deg);
                    transform: translate(50px, 50px) rotate(-180deg)
                }
                75% {
                    -webkit-transform: translateY(50px) scale(0.5) rotate(-270deg);
                    transform: translateY(50px) scale(0.5) rotate(-270deg)
                }
                100% {
                    -webkit-transform: rotate(-360deg);
                    transform: rotate(-360deg)
                }
            }
            .ball-scale > div {
                border-radius: 100%;
                margin: 2px;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                display: inline-block;
                height: 60px;
                width: 60px;
                -webkit-animation: ball-scale 1s 0s ease-in-out infinite;
                animation: ball-scale 1s 0s ease-in-out infinite
            }
            @-webkit-keyframes ball-scale {
                0% {
                    -webkit-transform: scale(0);
                    transform: scale(0)
                }
                100% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 0
                }
            }
            @keyframes ball-scale {
                0% {
                    -webkit-transform: scale(0);
                    transform: scale(0)
                }
                100% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 0
                }
            }
            .line-scale > div {
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                display: inline-block;
                width: 5px;
                height: 50px;
                border-radius: 2px;
                margin: 2px
            }
            .line-scale>div:nth-child(1) {
                -webkit-animation: line-scale 1s -0.5s infinite cubic-bezier(0.2,0.68,0.18,1.08);
                animation: line-scale 1s -0.5s infinite cubic-bezier(0.2,0.68,0.18,1.08)
            }
            .line-scale>div:nth-child(2) {
                -webkit-animation: line-scale 1s -0.4s infinite cubic-bezier(0.2,0.68,0.18,1.08);
                animation: line-scale 1s -0.4s infinite cubic-bezier(0.2,0.68,0.18,1.08)
            }
            .line-scale>div:nth-child(3) {
                -webkit-animation: line-scale 1s -0.3s infinite cubic-bezier(0.2,0.68,0.18,1.08);
                animation: line-scale 1s -0.3s infinite cubic-bezier(0.2,0.68,0.18,1.08)
            }
            .line-scale>div:nth-child(4) {
                -webkit-animation: line-scale 1s -0.2s infinite cubic-bezier(0.2,0.68,0.18,1.08);
                animation: line-scale 1s -0.2s infinite cubic-bezier(0.2,0.68,0.18,1.08)
            }
            .line-scale>div:nth-child(5) {
                -webkit-animation: line-scale 1s -0.1s infinite cubic-bezier(0.2,0.68,0.18,1.08);
                animation: line-scale 1s -0.1s infinite cubic-bezier(0.2,0.68,0.18,1.08)
            }
            @-webkit-keyframes line-scale {
                0% {
                    -webkit-transform: scaley(1);
                    transform: scaley(1)
                }
                50% {
                    -webkit-transform: scaley(0.4);
                    transform: scaley(0.4)
                }
                100% {
                    -webkit-transform: scaley(1);
                    transform: scaley(1)
                }
            }
            @keyframes line-scale {
                0% {
                    -webkit-transform: scaley(1);
                    transform: scaley(1)
                }
                50% {
                    -webkit-transform: scaley(0.4);
                    transform: scaley(0.4)
                }
                100% {
                    -webkit-transform: scaley(1);
                    transform: scaley(1)
                }
            }
            .ball-scale-multiple {
                position: relative;
                -webkit-transform: translateY(30px);
                -ms-transform: translateY(30px);
                transform: translateY(30px);
                display: inline-block
            }
            .ball-scale-multiple > div {
                border-radius: 100%;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                margin: 0;
                position: absolute;
                left: -30px;
                top: 0;
                opacity: 0;
                width: 50px;
                height: 50px;
                -webkit-animation: ball-scale-multiple 1s 0s linear infinite;
                animation: ball-scale-multiple 1s 0s linear infinite
            }
            .ball-scale-multiple>div:nth-child(2) {
                -webkit-animation-delay: -0.2s;
                animation-delay: -0.2s
            }
            .ball-scale-multiple>div:nth-child(3) {
                -webkit-animation-delay: -0.2s;
                animation-delay: -0.2s
            }
            @-webkit-keyframes ball-scale-multiple {
                0% {
                    -webkit-transform: scale(0);
                    transform: scale(0);
                    opacity: 0
                }
                5% {
                    opacity: 1
                }
                100% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 0
                }
            }
            @keyframes ball-scale-multiple {
                0% {
                    -webkit-transform: scale(0);
                    transform: scale(0);
                    opacity: 0
                }
                5% {
                    opacity: 1
                }
                100% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 0
                }
            }
            .ball-pulse-sync {
                display: inline-block
            }
            .ball-pulse-sync > div {
                width: 15px;
                height: 15px;
                border-radius: 100%;
                margin: 2px;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                display: inline-block
            }
            .ball-pulse-sync>div:nth-child(1) {
                -webkit-animation: ball-pulse-sync 0.6s -0.21s infinite ease-in-out;
                animation: ball-pulse-sync 0.6s -0.21s infinite ease-in-out
            }
            .ball-pulse-sync>div:nth-child(2) {
                -webkit-animation: ball-pulse-sync 0.6s -0.14s infinite ease-in-out;
                animation: ball-pulse-sync 0.6s -0.14s infinite ease-in-out
            }
            .ball-pulse-sync>div:nth-child(3) {
                -webkit-animation: ball-pulse-sync 0.6s -70ms infinite ease-in-out;
                animation: ball-pulse-sync 0.6s -70ms infinite ease-in-out
            }
            @-webkit-keyframes ball-pulse-sync {
                33% {
                    -webkit-transform: translateY(10px);
                    transform: translateY(10px)
                }
                66% {
                    -webkit-transform: translateY(-10px);
                    transform: translateY(-10px)
                }
                100% {
                    -webkit-transform: translateY(0);
                    transform: translateY(0)
                }
            }
            @keyframes ball-pulse-sync {
                33% {
                    -webkit-transform: translateY(10px);
                    transform: translateY(10px)
                }
                66% {
                    -webkit-transform: translateY(-10px);
                    transform: translateY(-10px)
                }
                100% {
                    -webkit-transform: translateY(0);
                    transform: translateY(0)
                }
            }
            .transparent-circle {
                display: inline-block;
                border-top: 0.5em solid rgba(255, 255, 255, 0.2);
                border-right: 0.5em solid rgba(255, 255, 255, 0.2);
                border-bottom: 0.5em solid rgba(255, 255, 255, 0.2);
                border-left: 0.5em solid #fff;
                -webkit-transform: translateZ(0);
                transform: translateZ(0);
                -webkit-animation: transparent-circle 1.1s infinite linear;
                animation: transparent-circle 1.1s infinite linear;
                width: 50px;
                height: 50px;
                border-radius: 50%
            }
            .transparent-circle:after {
                border-radius: 50%;
                width: 10em;
                height: 10em
            }
            @-webkit-keyframes transparent-circle {
                0% {
                    -webkit-transform: rotate(0);
                    transform: rotate(0)
                }
                100% {
                    -webkit-transform: rotate(360deg);
                    transform: rotate(360deg)
                }
            }
            @keyframes transparent-circle {
                0% {
                    -webkit-transform: rotate(0);
                    transform: rotate(0)
                }
                100% {
                    -webkit-transform: rotate(360deg);
                    transform: rotate(360deg)
                }
            }
            .ball-spin-fade-loader {
                position: relative;
                top: -10px;
                left: -10px;
                display: inline-block
            }
            .ball-spin-fade-loader > div {
                width: 15px;
                height: 15px;
                border-radius: 100%;
                margin: 2px;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
                position: absolute;
                -webkit-animation: ball-spin-fade-loader 1s infinite linear;
                animation: ball-spin-fade-loader 1s infinite linear
            }
            .ball-spin-fade-loader>div:nth-child(1) {
                top: 25px;
                left: 0;
                animation-delay: -0.84s;
                -webkit-animation-delay: -0.84s
            }
            .ball-spin-fade-loader>div:nth-child(2) {
                top: 17.05px;
                left: 17.05px;
                animation-delay: -0.72s;
                -webkit-animation-delay: -0.72s
            }
            .ball-spin-fade-loader>div:nth-child(3) {
                top: 0;
                left: 25px;
                animation-delay: -0.6s;
                -webkit-animation-delay: -0.6s
            }
            .ball-spin-fade-loader>div:nth-child(4) {
                top: -17.05px;
                left: 17.05px;
                animation-delay: -0.48s;
                -webkit-animation-delay: -0.48s
            }
            .ball-spin-fade-loader>div:nth-child(5) {
                top: -25px;
                left: 0;
                animation-delay: -0.36s;
                -webkit-animation-delay: -0.36s
            }
            .ball-spin-fade-loader>div:nth-child(6) {
                top: -17.05px;
                left: -17.05px;
                animation-delay: -0.24s;
                -webkit-animation-delay: -0.24s
            }
            .ball-spin-fade-loader>div:nth-child(7) {
                top: 0;
                left: -25px;
                animation-delay: -0.12s;
                -webkit-animation-delay: -0.12s
            }
            .ball-spin-fade-loader>div:nth-child(8) {
                top: 17.05px;
                left: -17.05px;
                animation-delay: 0s;
                -webkit-animation-delay: 0s
            }
            @-webkit-keyframes ball-spin-fade-loader {
                50% {
                    opacity: .3;
                    -webkit-transform: scale(0.4);
                    transform: scale(0.4)
                }
                100% {
                    opacity: 1;
                    -webkit-transform: scale(1);
                    transform: scale(1)
                }
            }
            @keyframes ball-spin-fade-loader {
                50% {
                    opacity: .3;
                    -webkit-transform: scale(0.4);
                    transform: scale(0.4)
                }
                100% {
                    opacity: 1;
                    -webkit-transform: scale(1);
                    transform: scale(1)
                }
            }
        </style>
        <link rel="dns-prefetch" href="//s.w.org">
        <link rel="alternate" type="application/rss+xml" title="StockTwits 채용 정보»피드" href="https://about.stocktwits.com/feed/">
        <link rel="alternate" type="application/rss+xml" title="StockTwits 채용 정보»댓글 피드" href="https://about.stocktwits.com/comments/feed/">
        <link rel="shortcut icon" href="../../../resources/img/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://about.stocktwits.com/wp-content/uploads/2019/07/room.png">
        <script type="text/javascript">
            window.abb = {};
            php = {};
            window.PHP = {};
            PHP.ajax = "https://about.stocktwits.com/wp-admin/admin-ajax.php";
            PHP.wp_p_id = "11";
            var mk_header_parallax,
                mk_banner_parallax,
                mk_page_parallax,
                mk_footer_parallax,
                mk_body_parallax;
            var mk_images_dir = "https://about.stocktwits.com/wp-content/themes/jupiter/assets/images",
                mk_theme_js_path = "https://about.stocktwits.com/wp-content/themes/jupiter/assets/js",
                mk_theme_dir = "https://about.stocktwits.com/wp-content/themes/jupiter",
                mk_captcha_placeholder = "Enter Captcha",
                mk_captcha_invalid_txt = "Invalid. Try again.",
                mk_captcha_correct_txt = "Captcha correct.",
                mk_responsive_nav_width = 1140,
                mk_vertical_header_back = "Back",
                mk_vertical_header_anim = "1",
                mk_check_rtl = true,
                mk_grid_width = 1140,
                mk_ajax_search_option = "disable",
                mk_preloader_bg_color = "#ffffff",
                mk_accent_color = "#00baff",
                mk_go_to_top = "true",
                mk_smooth_scroll = "true",
                mk_preloader_bar_color = "#00baff",
                mk_preloader_logo = "http://demos.artbees.net/jupiter5/epulo/wp-content/uploads/sites/92/2016/03/logo-header-dark.png";
            var mk_header_parallax = false,
                mk_banner_parallax = false,
                mk_footer_parallax = false,
                mk_body_parallax = false,
                mk_no_more_posts = "No More Posts",
                mk_typekit_id = "",
                mk_google_fonts = ["Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900"],
                mk_global_lazyload = true;
        </script>
        <link rel="stylesheet" id="layerslider-css" href="https://about.stocktwits.com/wp-content/plugins/LayerSlider/static/layerslider/css/layerslider.css?ver=6.7.1" type="text/css" media="all">
        <link rel="stylesheet" id="wp-block-library-css" href="https://about.stocktwits.com/wp-includes/css/dist/block-library/style.min.css?ver=5.7.1" type="text/css" media="all">
        <link rel="stylesheet" id="rs-plugin-settings-css" href="https://about.stocktwits.com/wp-content/plugins/revslider/public/assets/css/settings.css?ver=5.4.7.2" type="text/css" media="all">
        <style id="rs-plugin-settings-inline-css" type="text/css">
            #rs-demo-id {}
        </style>
        <link rel="stylesheet" id="theme-styles-css" href="https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/min/full-styles.6.1.2.css?ver=1522159847" type="text/css" media="all">
        <style id="theme-styles-inline-css" type="text/css">
            body {
                background-color: #fff;
            }
            .hb-custom-header #mk-page-introduce,
            .mk-header {
                background-color: #f7f7f7;
            }
            .hb-custom-header > div,
            .mk-header-bg {
                background-color: #fff;
            }
            .mk-classic-nav-bg {
                background-color: #fff;
            }
            .master-holder-bg {
                background-color: #fff;
            }
            #mk-footer {
                background-color: #3d4045;
            }
            #mk-boxed-layout {
                -webkit-box-shadow: 0 0 0 rgba(0, 0, 0, 0);
                -moz-box-shadow: 0 0 0 rgba(0, 0, 0, 0);
                box-shadow: 0 0 0 rgba(0, 0, 0, 0);
            }
            .mk-news-tab .mk-tabs-tabs .is-active a,
            .mk-fancy-title.pattern-style span,
            .mk-fancy-title.pattern-style.color-gradient span:after,
            .page-bg-color {
                background-color: #fff;
            }
            .page-title {
                font-size: 20px;
                color: ;
                text-transform: uppercase;
                font-weight: 400;
                letter-spacing: 2px;
            }
            .page-subtitle {
                font-size: 14px;
                line-height: 100%;
                color: ;
                font-size: 14px;
                text-transform: none;
            }
            .mk-header.sticky-style-fixed.a-sticky .mk-header-holder {
                border-bottom: 1px solid #fafafa;
            }
            body,
            .mk-testimonial-quote {
                font-family: Lato
            }
            @font-face {
                font-family: 'star';
                src: url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/star/font.eot');
                src: url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/star/font.eot?#iefix') format('embedded-opentype'), url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/star/font.woff') format('woff'), url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/star/font.ttf') format('truetype'), url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/star/font.svg#star') format('svg');
                font-weight: normal;
                font-style: normal;
            }
            @font-face {
                font-family: 'WooCommerce';
                src: url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/woocommerce/font.eot');
                src: url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/woocommerce/font.eot?#iefix') format('embedded-opentype'), url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/woocommerce/font.woff') format('woff'), url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/woocommerce/font.ttf') format('truetype'), url('https://about.stocktwits.com/wp-content/themes/jupiter/assets/stylesheet/fonts/woocommerce/font.svg#WooCommerce') format('svg');
                font-weight: normal;
                font-style: normal;
            }
            #social-5ac3b8e9312ae a img {
                width: 24px;
                height: 24px;
                padding: 0;
                margin: 0;
            }
            #social-5ac3b8e9312ae {
                height: 24px;
            }
        </style>
        <link rel="stylesheet" id="mkhb-render-css" href="https://about.stocktwits.com/wp-content/themes/jupiter/header-builder/includes/assets/css/mkhb-render.css?ver=6.1.2" type="text/css" media="all">
        <link rel="stylesheet" id="mkhb-row-css" href="https://about.stocktwits.com/wp-content/themes/jupiter/header-builder/includes/assets/css/mkhb-row.css?ver=6.1.2" type="text/css" media="all">
        <link rel="stylesheet" id="mkhb-column-css" href="https://about.stocktwits.com/wp-content/themes/jupiter/header-builder/includes/assets/css/mkhb-column.css?ver=6.1.2" type="text/css" media="all">
        <link rel="stylesheet" id="js_composer_front-css" href="https://about.stocktwits.com/wp-content/plugins/js_composer_theme/assets/css/js_composer.min.css?ver=5.4.5" type="text/css" media="all">
        <link rel="stylesheet" id="theme-options-css" href="https://about.stocktwits.com/wp-content/uploads/mk_assets/theme-options-production-1612242140.css?ver=1612242135" type="text/css" media="all">
        <link rel="stylesheet" id="ms-main-css" href="https://about.stocktwits.com/wp-content/plugins/masterslider/public/assets/css/masterslider.main.css?ver=3.2.2" type="text/css" media="all">
        <link rel="stylesheet" id="ms-custom-css" href="https://about.stocktwits.com/wp-content/uploads/masterslider/custom.css?ver=1.7" type="text/css" media="all">
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/themes/jupiter/assets/js/plugins/wp-enqueue/webfontloader.js?ver=5.7.1" id="mk-webfontloader-js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><script type="text/javascript" id="mk-webfontloader-js-after">
            WebFontConfig = {
                timeout: 2000
            }
            if (mk_typekit_id.length > 0) {
                WebFontConfig.typekit = {
                    id: mk_typekit_id
                }
            }
            if (mk_google_fonts.length > 0) {
                WebFontConfig.google = {
                    families: mk_google_fonts
                }
            }
            if ((mk_google_fonts.length > 0 || mk_typekit_id.length > 0) && navigator.userAgent.indexOf("Speed Insights") == -1) {
                WebFont.load(WebFontConfig);
            }
        </script>
        <script type="text/javascript" id="layerslider-greensock-js-extra">
            /* <![CDATA[ */
            var LS_Meta = {
                "v": "6.7.1"
            };
            /* ]]> */
        </script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/plugins/LayerSlider/static/layerslider/js/greensock.js?ver=1.19.0" id="layerslider-greensock-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-includes/js/jquery/jquery.min.js?ver=3.5.1" id="jquery-core-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.3.2" id="jquery-migrate-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/plugins/LayerSlider/static/layerslider/js/layerslider.kreaturamedia.jquery.js?ver=6.7.1" id="layerslider-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/plugins/LayerSlider/static/layerslider/js/layerslider.transitions.js?ver=6.7.1" id="layerslider-transitions-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js?ver=5.4.7.2" id="tp-tools-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js?ver=5.4.7.2" id="revmin-js"></script>
        <meta name="generator" content="Powered by LayerSlider 6.7.1 - Multi-Purpose, Responsive, Parallax, Mobile-Friendly Slider Plugin for WordPress.">
        <!-- LayerSlider updates and docs at: https://layerslider.kreaturamedia.com -->
        <link rel="https://api.w.org/" href="https://about.stocktwits.com/wp-json/"><link rel="alternate" type="application/json" href="https://about.stocktwits.com/wp-json/wp/v2/pages/11"><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://about.stocktwits.com/xmlrpc.php?rsd">
        <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://about.stocktwits.com/wp-includes/wlwmanifest.xml">
        <link rel="canonical" href="https://about.stocktwits.com/contact-us/">
        <link rel="shortlink" href="https://about.stocktwits.com/?p=11">
        <link rel="alternate" type="application/json+oembed" href="https://about.stocktwits.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fabout.stocktwits.com%2Fcontact-us%2F">
        <link rel="alternate" type="text/xml+oembed" href="https://about.stocktwits.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fabout.stocktwits.com%2Fcontact-us%2F&amp;format=xml">
        <script>
            var ms_grabbing_curosr = 'https://about.stocktwits.com/wp-content/plugins/masterslider/public/assets/css/common/grabbing.cur',
                ms_grab_curosr = 'https://about.stocktwits.com/wp-content/plugins/masterslider/public/assets/css/common/grab.cur';
        </script>
        <meta name="generator" content="MasterSlider 3.2.2 - Responsive Touch Image Slider">
        <script>
            var isTest = false;
        </script>
        <meta itemprop="author" content=""><meta itemprop="datePublished" content="March 7, 2016"><meta itemprop="dateModified" content="July 17, 2019"><meta itemprop="publisher" content="StockTwits Careers"><style type="text/css">
            .recentcomments a {
                display: inline !important;
                padding: 0 !important;
                margin: 0 !important;
            }
        </style><meta name="generator" content="Powered by WPBakery Page Builder - drag and drop page builder for WordPress.">
        <!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="https://about.stocktwits.com/wp-content/plugins/js_composer_theme/assets/css/vc_lte_ie9.min.css" media="screen"><![endif]-->
        <meta name="generator" content="Powered by Slider Revolution 5.4.7.2 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface.">
        <script type="text/javascript">
            function setREVStartSize(e) {
                try {
                    e.c = jQuery(e.c);
                    var i = jQuery(window).width(),
                        t = 9999,
                        r = 0,
                        n = 0,
                        l = 0,
                        f = 0,
                        s = 0,
                        h = 0;
                    if (
                        e.responsiveLevels && (jQuery.each(e.responsiveLevels, function (e, f) {
                            f > i && (t = r = f, l = e),
                            i > f && f > r && (r = f, n = e)
                        }), t > r && (l = n)),
                        f = e.gridheight[l] || e.gridheight[0] || e.gridheight,
                        s = e.gridwidth[l] || e.gridwidth[0] || e.gridwidth,
                        h = i / s,
                        h = h > 1
                            ? 1
                            : h,
                        f = Math.round(h * f),
                        "fullscreen" == e.sliderLayout
                    ) {
                        var u = (e.c.width(), jQuery(window).height());
                        if (void 0 != e.fullScreenOffsetContainer) {
                            var c = e.fullScreenOffsetContainer.split(",");
                            if (c) 
                                jQuery.each(c, function (e, i) {
                                    u = jQuery(i).length > 0
                                        ? u - jQuery(i).outerHeight(!0)
                                        : u
                                }),
                                e
                                    .fullScreenOffset
                                    .split("%")
                                    .length > 1 && void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0
                                        ? u -= jQuery(window).height() * parseInt(e.fullScreenOffset, 0) / 100
                                        : void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 && (u -= parseInt(e.fullScreenOffset, 0))
                            
                        }
                        f = u
                    } else 
                        void 0 != e.minHeight && f < e.minHeight && (f = e.minHeight);
                     e
                        .c
                        .closest(".rev_slider_wrapper")
                        .css({height: f})
                } catch (d) {
                    console.log("Failure at Presize of Slider:" + d)
                }
            };
        </script>
        <meta name="generator" content="Jupiter 6.1.2">
        <style type="text/css" data-type="vc_shortcodes-custom-css">
            .vc_custom_1563390963558 {
                margin-bottom: 0 !important;
            }
            .vc_custom_1547834132699 {
                margin-bottom: 0 !important;
            }
            .vc_custom_1563390973801 {
                margin-bottom: 0 !important;
            }
        </style>
        <noscript>
            <style type="text/css">
                .wpb_animate_when_almost_visible {
                    opacity: 1;
                }
            </style>
        </noscript>
        <style type="text/css">
            @keyframes resizeanim {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 0;
                }
            }
            .resize-triggers {
                animation: 1ms resizeanim;
                visibility: hidden;
                opacity: 0;
            }
            .resize-triggers,
            .resize-triggers > div,
            .contract-trigger:before {
                content: " ";
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                overflow: hidden;
            }
            .resize-triggers > div {
                background: #eee;
                overflow: auto;
            }
            .contract-trigger:before {
                width: 200%;
                height: 200%;
            }
        </style>
        <style>
            type="text/css" [responsive-image] > img,
            [data-responsive-image] {
                overflow: hidden;
                padding: 0;
            }
            [responsive-image] > img,
            [data-responsive-image] > img {
                width: 100%;
            }
            @keyframes element-queries {
                0% {
                    visibility: inherit;
                }
            }
            .mk-event-countdown-ul {
                animation: 0.1s element-queries;
            }
            .mk-event-countdown-ul > .resize-sensor {
                min-width: 0;
            }
            .mk-process-steps {
                animation: 0.1s element-queries;
            }
            .mk-process-steps > .resize-sensor {
                min-width: 1px;
            }
        </style>
        <style type="text/css">
            .fancybox-margin {
                margin-right: 17px;
            }
        </style>
        <style type="text/css">
            @keyframes resizeanim {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 0;
                }
            }
            .resize-triggers {
                animation: 1ms resizeanim;
                visibility: hidden;
                opacity: 0;
            }
            .resize-triggers,
            .resize-triggers > div,
            .contract-trigger:before {
                content: " ";
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                overflow: hidden;
            }
            .resize-triggers > div {
                background: #eee;
                overflow: auto;
            }
            .contract-trigger:before {
                width: 200%;
                height: 200%;
            }
        </style>
        <style>
            type="text/css" [responsive-image] > img,
            [data-responsive-image] {
                overflow: hidden;
                padding: 0;
            }
            [responsive-image] > img,
            [data-responsive-image] > img {
                width: 100%;
            }
            @keyframes element-queries {
                0% {
                    visibility: inherit;
                }
            }
        </style>
        <style type="text/css">
            .fancybox-margin {
                margin-right: 17px;
            }
        </style><link type="text/css" rel="stylesheet" charset="UTF-8" href="https://translate.googleapis.com/translate_static/css/translateelement.css"><style type="text/css">
            @keyframes resizeanim {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 0;
                }
            }
            .resize-triggers {
                animation: 1ms resizeanim;
                visibility: hidden;
                opacity: 0;
            }
            .resize-triggers,
            .resize-triggers > div,
            .contract-trigger:before {
                content: " ";
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                overflow: hidden;
            }
            .resize-triggers > div {
                background: #eee;
                overflow: auto;
            }
            .contract-trigger:before {
                width: 200%;
                height: 200%;
            }
        </style>
        <style>
            type="text/css"
            [responsive-image] > img,
            [data-responsive-image] {
                overflow: hidden;
                padding: 0;
            }
            [responsive-image] > img,
            [data-responsive-image] > img {
                width: 100%;
            }
            @keyframes element-queries {
                0% {
                    visibility: inherit;
                }
            }
        </style>
        <style type="text/css">
            .fancybox-margin {
                margin-right: 17px;
            }
        </style>
    <style type="text/css">@keyframes resizeanim { from { opacity: 0; } to { opacity: 0; } } .resize-triggers { animation: 1ms resizeanim; visibility: hidden; opacity: 0; } .resize-triggers, .resize-triggers > div, .contract-trigger:before { content: " "; display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; } .resize-triggers > div { background: #eee; overflow: auto; } .contract-trigger:before { width: 200%; height: 200%; }</style><style type="text/css">[responsive-image] > img, [data-responsive-image] {overflow: hidden; padding: 0; } [responsive-image] > img, [data-responsive-image] > img {width: 100%;}
@keyframes element-queries { 0% { visibility: inherit; } }</style><style type="text/css">.fancybox-margin{margin-right:17px;}</style><style type="text/css">@keyframes resizeanim { from { opacity: 0; } to { opacity: 0; } } .resize-triggers { animation: 1ms resizeanim; visibility: hidden; opacity: 0; } .resize-triggers, .resize-triggers > div, .contract-trigger:before { content: " "; display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; } .resize-triggers > div { background: #eee; overflow: auto; } .contract-trigger:before { width: 200%; height: 200%; }</style><style type="text/css">[responsive-image] > img, [data-responsive-image] {overflow: hidden; padding: 0; } [responsive-image] > img, [data-responsive-image] > img {width: 100%;}
@keyframes element-queries { 0% { visibility: inherit; } }</style><style type="text/css">.fancybox-margin{margin-right:17px;}</style><style type="text/css">@keyframes resizeanim { from { opacity: 0; } to { opacity: 0; } } .resize-triggers { animation: 1ms resizeanim; visibility: hidden; opacity: 0; } .resize-triggers, .resize-triggers > div, .contract-trigger:before { content: " "; display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; } .resize-triggers > div { background: #eee; overflow: auto; } .contract-trigger:before { width: 200%; height: 200%; }</style><style type="text/css">[responsive-image] > img, [data-responsive-image] {overflow: hidden; padding: 0; } [responsive-image] > img, [data-responsive-image] > img {width: 100%;}
@keyframes element-queries { 0% { visibility: inherit; } }</style><style type="text/css">.fancybox-margin{margin-right:17px;}</style><style type="text/css">@keyframes resizeanim { from { opacity: 0; } to { opacity: 0; } } .resize-triggers { animation: 1ms resizeanim; visibility: hidden; opacity: 0; } .resize-triggers, .resize-triggers > div, .contract-trigger:before { content: " "; display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; } .resize-triggers > div { background: #eee; overflow: auto; } .contract-trigger:before { width: 200%; height: 200%; }</style><style type="text/css">[responsive-image] > img, [data-responsive-image] {overflow: hidden; padding: 0; } [responsive-image] > img, [data-responsive-image] > img {width: 100%;}
@keyframes element-queries { 0% { visibility: inherit; } }</style><style type="text/css">.fancybox-margin{margin-right:17px;}</style><style type="text/css">@keyframes resizeanim { from { opacity: 0; } to { opacity: 0; } } .resize-triggers { animation: 1ms resizeanim; visibility: hidden; opacity: 0; } .resize-triggers, .resize-triggers > div, .contract-trigger:before { content: " "; display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; } .resize-triggers > div { background: #eee; overflow: auto; } .contract-trigger:before { width: 200%; height: 200%; }</style><style type="text/css">[responsive-image] > img, [data-responsive-image] {overflow: hidden; padding: 0; } [responsive-image] > img, [data-responsive-image] > img {width: 100%;}
@keyframes element-queries { 0% { visibility: inherit; } }</style><style type="text/css">.fancybox-margin{margin-right:17px;}</style></head>
    <body class="page-template-default page page-id-11 _masterslider _msp_version_3.2.2 wpb-js-composer js-comp-ver-5.4.5 vc_responsive" itemscope="itemscope" itemtype="https://schema.org/WebPage" data-adminbar="">
        <!-- Target for scroll anchors to achieve native browser bahaviour + possible enhancements like smooth scrolling -->
        <div id="top-of-page"></div>
        <div id="mk-boxed-layout">
            <div id="mk-theme-container" class="trans-header">
               <header data-height="90" data-sticky-height="80" data-responsive-height="90" data-transparent-skin="light" data-header-style="1" data-sticky-style="fixed" data-sticky-offset="header" id="mk-header-1" class="mk-header header-style-1 header-align-left toolbar-false menu-hover-1 sticky-style-fixed mk-background-stretch boxed-header transparent-header light-skin bg-true" role="banner" itemscope="itemscope" itemtype="https://schema.org/WPHeader">
                    <div class="mk-header-holder">
                        <div class="mk-header-inner add-header-height">
                            <div class="mk-header-bg "></div>
                            <div class="mk-grid header-grid">
                                <div class="mk-header-nav-container one-row-style menu-hover-style-1" role="navigation" itemscope="itemscope" itemtype="https://schema.org/SiteNavigationElement" style="
    /* margin-top: 20; */
">
                                    <nav class="mk-main-navigation js-main-nav">
                                        <ul id="menu-main-menu" class="main-navigation-ul dropdownJavascript">
                                            <li id="menu-item-14" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home no-mega-menu">
                                                <a class="menu-item-link js-smooth-scroll" href="/companyinfo/about">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">회사 소개</font>
                                                    </font>
                                                </a>
                                            </li>
                                            <li id="menu-item-291" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-288 current_page_item no-mega-menu"><a class="menu-item-link js-smooth-scroll" href="/companyinfo/history"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">연혁</font></font></a></li>
                                            <li id="menu-item-13" class="menu-item menu-item-type-post_type menu-item-object-page no-mega-menu">
                                                <a class="menu-item-link js-smooth-scroll" href="/companyinfo/contact">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">회사정보</font>
                                                    </font>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <div class="mk-nav-responsive-link">
                                    <div class="mk-css-icon-menu">
                                        <div class="mk-css-icon-menu-line-1"></div>
                                        <div class="mk-css-icon-menu-line-2"></div>
                                        <div class="mk-css-icon-menu-line-3"></div>
                                    </div>
                                </div>
                                <div class=" header-logo fit-logo-img add-header-height  ">
                                    <a href="/companyinfo/about" title="Jutopia 정보">
                                        <img class="mk-desktop-logo dark-logo " title="StockTwits 정보" alt="Jutopia 정보" src="../../../resources/img/logo2.png">
                                        <img class="mk-desktop-logo light-logo " title="StockTwits 정보" alt="StockTwits 정보" src="../../../resources/img/logo1.png">
                                    </a>
                                </div>
                            </div>
                            <div class="mk-header-right"></div>
                        </div>
                        <div class="mk-responsive-wrap">
                            <nav class="menu-main-menu-container">
                                <ul id="menu-main-menu-1" class="mk-responsive-nav">
                                    <li id="responsive-menu-item-14" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home">
                                        <a class="menu-item-link js-smooth-scroll" href="/companyinfo/about">
                                            <font style="vertical-align: inherit;">
                                                <font style="vertical-align: inherit;">회사 소개</font>
                                            </font>
                                        </a>
                                    </li>
                                    <li id="responsive-menu-item-337" class="menu-item menu-item-type-post_type menu-item-object-page">
                                        <a class="menu-item-link js-smooth-scroll" href="/companyinfo/history">
                                            <font style="vertical-align: inherit;">
                                                <font style="vertical-align: inherit;">연혁</font>
                                            </font>
                                        </a>
                                    </li>
                                    <li id="responsive-menu-item-13" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-11 current_page_item">
                                        <a class="menu-item-link js-smooth-scroll" href="/companyinfo/contact">
                                            <font style="vertical-align: inherit;">
                                                <font style="vertical-align: inherit;">회사정보</font>
                                            </font>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>
                <div id="theme-page" class="master-holder  clearfix" itemscope="itemscope" itemtype="https://schema.org/Blog">
                    <div class="master-holder-bg-holder">
                        <div id="theme-page-bg" class="master-holder-bg js-el"></div>
                    </div>
                    <div class="mk-main-wrapper-holder" style="
    height: 200px;
">
                        <div id="mk-page-id-11" class="theme-page-wrapper mk-main-wrapper mk-grid full-layout no-padding">
                            <div class="theme-content no-padding" itemprop="mainEntityOfPage">
                                <div class="mk-page-section-wrapper" data-mk-full-width="true" data-mk-full-width-init="true" data-mk-stretch-content="true" style="position: relative; box-sizing: border-box; width: 1549px; left: -209.5px;">
	<div id="page-section-2" class="mk-page-section self-hosted full_layout full-width-2 js-el js-master-row center-y mk-in-viewport" data-intro-effect="false">

			<div class="mk-page-section-inner">
<div class="mk-video-color-mask"></div>
			<div class="mk-section-preloader js-el" data-mk-component="Preloader" style="display: none;">
			<div class="mk-section-preloader__icon"></div>
		</div>
		
	<div class="background-layer-holder">
		<div id="background-layer--2" data-mk-lazyload="false" class="background-layer mk-background-stretch none-blend-effect js-el" data-mk-component="Parallax" data-parallax-config="{&quot;speed&quot; : 0.3 }" data-mk-img-set="{&quot;landscape&quot;:{&quot;desktop&quot;:&quot;https://about.stocktwits.com/wp-content/uploads/2018/04/placeholder-5.jpg&quot;,&quot;tablet&quot;:&quot;https://about.stocktwits.com/wp-content/uploads/2018/04/placeholder-5-1024x768.jpg&quot;,&quot;mobile&quot;:&quot;https://about.stocktwits.com/wp-content/uploads/2018/04/placeholder-5-736x414.jpg&quot;},&quot;responsive&quot;:&quot;true&quot;}" mk-img-loaded="" style="background-image: url(&quot;https://about.stocktwits.com/wp-content/uploads/2018/04/placeholder-5.jpg&quot;); background-attachment: scroll; will-change: transform; transform: translateY(0px) translateZ(0px);">
									<div class="mk-color-layer"></div>
		</div>
	</div>
			</div>

        <div class="page-section-content vc_row-fluid mk-grid ">
            <div class="mk-padding-wrapper wpb_row">
<div class="vc_col-sm-12 wpb_column column_container   _ height-full">
<h1 id="fancy-title-4" class="mk-fancy-title  simple-style   color-single">
	<span>
				<p style="
"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">연혁 </font></font><span style="color: #00baff;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">.</font></font></span></p>
			</span>
</h1>
<div class="clearboth"></div>



<style>#fancy-title-4 {font-family: "Lato"}</style></div>
</div>
            <div class="clearboth"></div>
        </div>


			
			
			
		<div class="clearboth"></div>
	</div>
</div>
                                <div class="vc_row-full-width vc_clearfix"></div>
                                <div data-mk-full-width="true" data-mk-full-width-init="true" data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-true attched-false js-master-row mk-full-content-true mk-in-viewport vc_hidden" style="position: relative;box-sizing: border-box;width: 2000px;left: -500px;">
                                    <div class="vc_col-sm-12 wpb_column column_container   _ height-full">
                                        <div id="divider-6" class="mk-divider     divider_full_width center thin_solid  " style="
    width: 100%;
">
                                            <div class="divider-inner"></div>
                                        </div>
                                        <div class="clearboth"></div>
                                    </div>
                                </div>
<div data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-false attched-false js-master-row mk-grid mk-in-viewport">
				
<div class="vc_col-sm-12 wpb_column column_container   _ height-full">
	
<h2 id="fancy-title-8" class="mk-fancy-title  simple-style   color-single">
	<span>
				<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">연혁</font></font></p>
			</span>
</h2>
<div class="clearboth"></div>



	<div class=" vc_custom_1522877156072">

<div id="text-block-9" class="mk-text-block   ">

	
	<h3><a href="http://www.cardrates.com/news/stocktwits-goes-from-twitter-api-to-self-sustaining-social-network/"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Jutopia, 자립형 소셜 네트워크 구축&nbsp;</font></font></a></h3>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Jutopia 플랫폼의 힘은 커뮤니티에 있습니다. </font><font style="vertical-align: inherit;">다양한 의견과 경험 수준으로 인해 서로 다른 주식을 조사하고 비교하는 즉시 최신 프로세스가됩니다.</font></font></p>
<p><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2021 년 04 월 30 일</font></font></em></p>
<h3><a href="/"></a></h3>















	<div class="clearboth"></div>
</div>

	</div>
</div>
	</div>
                                
                                
                                
                                
                                
                                <div data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-false attched-false js-master-row mk-grid mk-in-viewport">
                                    <div class="vc_col-sm-12 wpb_column column_container   _ height-full">
                                        <div id="padding-33" class="mk-padding-divider   clearfix"></div>
                                    </div>
                                </div>
                                <div class="clearboth"></div>
                                <div class="clearboth"></div>
                            </div>
                            <div class="clearboth"></div>
                        </div>
                    </div>
                </div>
                <section id="mk-footer-unfold-spacer" style="height: 0px;"></section>
                <section id="mk-footer" class="" role="contentinfo" itemscope="itemscope" itemtype="https://schema.org/WPFooter">
                    <div class="footer-wrapper fullwidth-footer">
                        <div class="mk-padding-wrapper">
                            <div class="mk-col-1-4">
                                <section id="nav_menu-2" class="widget widget_nav_menu mk-in-viewport">
                                    <div class="widgettitle">
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">Jutopia 정보</font>
                                        </font>
                                    </div>
                                    <div class="menu-main-menu-container">
                                        <ul id="menu-main-menu-2" class="menu">
                                            <li id="menu-item-14" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-9 current_page_item menu-item-14">
                                                <a href="/companyinfo/about" aria-current="page">
                                                    <svg class="mk-svg-icon" data-name="mk-icon-angle-right" data-cacheid="icon-60aaff90706e6" style=" height:14px; width: 5px; " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 1792">
                                                        <path d="M595 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"></path>
                                                    </svg>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">회사 소개</font>
                                                    </font>
                                                </a>
                                            </li>
                                            <li id="menu-item-337" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-337">
                                                <a href="/companyinfo/history">
                                                    <svg class="mk-svg-icon" data-name="mk-icon-angle-right" data-cacheid="icon-60aaff90706e6" style=" height:14px; width: 5px; " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 1792">
                                                        <path d="M595 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"></path>
                                                    </svg>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">연혁</font>
                                                    </font>
                                                </a>
                                            </li>
                                            <li id="menu-item-13" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13">
                                                <a href="/companyinfo/contact">
                                                    <svg class="mk-svg-icon" data-name="mk-icon-angle-right" data-cacheid="icon-60aaff90706e6" style=" height:14px; width: 5px; " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 1792">
                                                        <path d="M595 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"></path>
                                                    </svg>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">회사정보</font>
                                                    </font>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </section>
                            </div>
                            <div class="mk-col-1-4">
                                <section id="social-2" class="widget widget_social_networks mk-in-viewport">
                                    <div class="widgettitle">
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">follow sns :</font>
                                        </font>
                                    </div>
                                    <div id="social-60aaff9070a9d" class="align-left">
                                        <a href="https://facebook.com" rel="nofollow" class="builtin-icons dark medium facebook-hover" target="_blank" alt="페이스 북으로 우릴 팔로우 해" title="페이스 북으로 우릴 팔로우 해">
                                            <svg class="mk-svg-icon" data-name="mk-jupiter-icon-simple-facebook" data-cacheid="icon-60aaff9070c1d" style=" height:24px; width: 24px; " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                <path d="M192.191 92.743v60.485h-63.638v96.181h63.637v256.135h97.069v-256.135h84.168s6.674-51.322 9.885-96.508h-93.666v-42.921c0-8.807 11.565-20.661 23.01-20.661h71.791v-95.719h-83.57c-111.317 0-108.686 86.262-108.686 99.142z"></path>
                                            </svg>
                                        </a>
                                        <a href="https://www.instagram.com" rel="nofollow" class="builtin-icons dark medium instagram-hover" target="_blank" alt="Instagram에서 팔로우" title="Instagram에서 팔로우">
                                            <svg class="mk-svg-icon" data-name="mk-jupiter-icon-simple-instagram" data-cacheid="icon-60aaff9070d31" style=" height:24px; width: 24px; " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 81.2 81.2">
                                                <path d="M81,23.9c-0.2-4.3-0.9-7.3-1.9-9.9c-1-2.7-2.4-4.9-4.7-7.2c-2.3-2.3-4.5-3.6-7.2-4.7c-2.6-1-5.5-1.7-9.9-1.9 C53,0,51.6,0,40.6,0c-11,0-12.4,0-16.7,0.2c-4.3,0.2-7.3,0.9-9.9,1.9c-2.7,1-4.9,2.4-7.2,4.7C4.6,9.1,3.2,11.3,2.1,14 c-1,2.6-1.7,5.5-1.9,9.9C0,28.2,0,29.6,0,40.6c0,11,0,12.4,0.2,16.7c0.2,4.3,0.9,7.3,1.9,9.9c1,2.7,2.4,4.9,4.7,7.2 c2.3,2.3,4.5,3.6,7.2,4.7c2.6,1,5.5,1.7,9.9,1.9c4.3,0.2,5.7,0.2,16.7,0.2c11,0,12.4,0,16.7-0.2c4.3-0.2,7.3-0.9,9.9-1.9 c2.7-1,4.9-2.4,7.2-4.7c2.3-2.3,3.6-4.5,4.7-7.2c1-2.6,1.7-5.5,1.9-9.9c0.2-4.3,0.2-5.7,0.2-16.7C81.2,29.6,81.2,28.2,81,23.9z  M73.6,57c-0.2,4-0.8,6.1-1.4,7.5c-0.7,1.9-1.6,3.2-3,4.7c-1.4,1.4-2.8,2.3-4.7,3c-1.4,0.6-3.6,1.2-7.5,1.4 c-4.3,0.2-5.6,0.2-16.4,0.2c-10.8,0-12.1,0-16.4-0.2c-4-0.2-6.1-0.8-7.5-1.4c-1.9-0.7-3.2-1.6-4.7-3c-1.4-1.4-2.3-2.8-3-4.7 C8.4,63.1,7.7,61,7.6,57c-0.2-4.3-0.2-5.6-0.2-16.4c0-10.8,0-12.1,0.2-16.4c0.2-4,0.8-6.1,1.4-7.5c0.7-1.9,1.6-3.2,3-4.7 c1.4-1.4,2.8-2.3,4.7-3c1.4-0.6,3.6-1.2,7.5-1.4c4.3-0.2,5.6-0.2,16.4-0.2c10.8,0,12.1,0,16.4,0.2c4,0.2,6.1,0.8,7.5,1.4 c1.9,0.7,3.2,1.6,4.7,3c1.4,1.4,2.3,2.8,3,4.7c0.6,1.4,1.2,3.6,1.4,7.5c0.2,4.3,0.2,5.6,0.2,16.4C73.9,51.4,73.8,52.7,73.6,57z"></path>
                                                <path d="M40.6,19.8c-11.5,0-20.8,9.3-20.8,20.8c0,11.5,9.3,20.8,20.8,20.8c11.5,0,20.8-9.3,20.8-20.8 C61.4,29.1,52.1,19.8,40.6,19.8z M40.6,54.1c-7.5,0-13.5-6.1-13.5-13.5c0-7.5,6.1-13.5,13.5-13.5c7.5,0,13.5,6.1,13.5,13.5 C54.1,48.1,48.1,54.1,40.6,54.1z"></path>
                                                <circle cx="62.3" cy="18.9" r="4.9"></circle>
                                            </svg>
                                        </a>
                                        <a href="https://twitter.com" rel="nofollow" class="builtin-icons dark medium twitter-hover" target="_blank" alt="트위터에서 우리를 따르라" title="트위터에서 우리를 따르라">
                                            <svg class="mk-svg-icon" data-name="mk-jupiter-icon-simple-twitter" data-cacheid="icon-60aaff9070e22" style=" height:24px; width: 24px; " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                <path d="M454.058 213.822c28.724-2.382 48.193-15.423 55.683-33.132-10.365 6.373-42.524 13.301-60.269 6.681-.877-4.162-1.835-8.132-2.792-11.706-13.527-49.679-59.846-89.698-108.382-84.865 3.916-1.589 7.914-3.053 11.885-4.388 5.325-1.923 36.678-7.003 31.749-18.079-4.176-9.728-42.471 7.352-49.672 9.597 9.501-3.581 25.26-9.735 26.93-20.667-14.569 1.991-28.901 8.885-39.937 18.908 3.998-4.293 7.01-9.536 7.666-15.171-38.91 24.85-61.624 74.932-80.025 123.523-14.438-13.972-27.239-25.008-38.712-31.114-32.209-17.285-70.722-35.303-131.156-57.736-1.862 19.996 9.899 46.591 43.723 64.273-7.325-.986-20.736 1.219-31.462 3.773 4.382 22.912 18.627 41.805 57.251 50.918-17.642 1.163-26.767 5.182-35.036 13.841 8.043 15.923 27.656 34.709 62.931 30.82-39.225 16.935-15.998 48.234 15.93 43.565-54.444 56.244-140.294 52.123-189.596 5.08 128.712 175.385 408.493 103.724 450.21-65.225 31.23.261 49.605-10.823 60.994-23.05-17.99 3.053-44.072-.095-57.914-5.846z"></path>
                                            </svg>
                                        </a>
                                    </div>
                                </section>
                            </div>
                            <div class="mk-col-1-4">
                                <section id="media_image-2" class="widget widget_media_image mk-in-viewport">
                                    <a href="https://www.apple.com/app-store/"><img width="180" height="53" src="https://about.stocktwits.com/wp-content/uploads/2018/04/badge-apple-180.png" class="image wp-image-334  attachment-full size-full" alt="" loading="lazy" style="max-width: 100%; height: auto;" itemprop="image"></a>
                                </section>
                            </div>
                            <div class="mk-col-1-4">
                                <section id="media_image-3" class="widget widget_media_image mk-in-viewport">
                                    <a href="https://play.google.com/store"><img width="180" height="53" src="https://about.stocktwits.com/wp-content/uploads/2018/04/badge-android-180.png" class="image wp-image-335  attachment-full size-full" alt="" loading="lazy" style="max-width: 100%; height: auto;" itemprop="image"></a>
                                </section>
                            </div>
                            <div class="clearboth"></div>
                        </div>
                    </div>
                    <div id="sub-footer">
                        <div class=" fullwidth-footer">
                            <span class="mk-footer-copyright">
                                <font style="vertical-align: inherit;">
                                    <font style="vertical-align: inherit;">저작권 판권 소유 © 2021</font>
                                </font>
                            </span>
                            <nav id="mk-footer-navigation" class="footer_menu">
                                <ul id="menu-main-menu-3" class="menu">
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-9 current_page_item menu-item-14">
                                        <a href="/companyinfo/about" aria-current="page">
                                            <font style="vertical-align: inherit;">
                                                <font style="vertical-align: inherit;">회사 소개</font>
                                            </font>
                                        </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-337">
                                        <a href="/companyinfo/history">
                                            <font style="vertical-align: inherit;">
                                                <font style="vertical-align: inherit;">연혁</font>
                                            </font>
                                        </a>
                                    </li>
                                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13">
                                        <a href="/companyinfo/contact">
                                            <font style="vertical-align: inherit;">
                                                <font style="vertical-align: inherit;">회사정보</font>
                                            </font>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="clearboth"></div>
                    </div>
                </section>
                <div class="resize-triggers">
                    <div class="expand-trigger">
                        <div style="width: 1354px; height: 2393px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
                <div class="resize-triggers">
                    <div class="expand-trigger">
                        <div style="width: 734px; height: 3306px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
                <div class="resize-triggers">
                    <div class="expand-trigger">
                        <div style="width: 1343px; height: 2233px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
            <div class="resize-triggers"><div class="expand-trigger"><div style="width: 1439px; height: 1988px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 1439px; height: 1261px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 1138px; height: 1427px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 949px; height: 1518px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 1550px; height: 1261px;"></div></div><div class="contract-trigger"></div></div></div>
        </div>
        <div class="bottom-corner-btns js-bottom-corner-btns">
            <a href="#top-of-page" class="mk-go-top js-smooth-scroll js-bottom-corner-btn js-bottom-corner-btn--back">
                <svg class="mk-svg-icon" data-name="mk-icon-chevron-up" data-cacheid="icon-60aaf623d8d38" style=" height:16px; width: 16px; " xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792">
                    <path d="M1683 1331l-166 165q-19 19-45 19t-45-19l-531-531-531 531q-19 19-45 19t-45-19l-166-165q-19-19-19-45.5t19-45.5l742-741q19-19 45-19t45 19l742 741q19 19 19 45.5t-19 45.5z"></path>
                </svg>
            </a>
        </div>
        <style type="text/css"></style>
        <style id="mk-shortcode-static-styles" type="text/css">
            #fancy-title-4 {
                letter-spacing: 2px;
                text-transform: uppercase;
                font-size: 60px;
                color: #ffffff;
                text-align: center;
                font-style: inherit;
                font-weight: 300;
                padding-top: 0;
                padding-bottom: 0;
            }
            #fancy-title-4 span {}
            #fancy-title-4 span i {
                font-style: inherit;
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-4 {
                    text-align: center !important;
                }
            }
            @media handheld,
            only screen and(min-width:768px) and(max-width:1024px) {
                #fancy-title-4 {
                    font-size: 40px;
                }
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-4 {
                    font-size: 30px;
                }
            }
            .full-width-2 .mk-video-color-mask {
                background: #2a363b;
                background: -moz-linear-gradient(top, #2a363b 0%, #2e2a3b 100%);
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#2a363b), color-stop(100%,#2e2a3b));
                background: -webkit-linear-gradient(top, #2a363b 0%,#2e2a3b 100%);
                background: -o-linear-gradient(top, #2a363b 0%,#2e2a3b 100%);
                background: -ms-linear-gradient(top, #2a363b 0%,#2e2a3b 100%);
                background: linear-gradient(to bottom, #2a363b 0%,#2e2a3b 100%);
                opacity: 0.7;
            }
            .full-width-2 {
                min-height: 500px;
                margin-bottom: 0;
            }
            .full-width-2 .page-section-content {
                padding: 0 0 10px;
            }
            #background-layer--2 {
                ;
                background-position: center center;
                background-repeat: no-repeat;
            }
            #background-layer--2 .mk-color-layer {
                ;
                width: 100%;
                height: 100%;
                position: absolute;
                top: 0;
                left: 0;
            }
            #divider-6 {
                padding: 0 0 160px;
            }
            #divider-6 .divider-inner {
                border-top-width: 10px;
            }
            #divider-6 .divider-inner:after {
                background: #00baff;
                background: -webkit-linear-gradient(left,#33435e 0%, #00baff 100%);
                background: linear-gradient(to right,#33435e 0%, #00baff 100%);
                height: 10px;
                top: -10px;
                content: "";
            }
            #fancy-title-9 {
                letter-spacing: 2px;
                text-transform: capitalize;
                font-size: 54px;
                line-height: 90%;
                color: #33435e;
                text-align: left;
                font-style: inherit;
                font-weight: 300;
                padding-top: 0;
                padding-bottom: 40px;
            }
            #fancy-title-9 span {}
            #fancy-title-9 span i {
                font-style: inherit;
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-9 {
                    text-align: center !important;
                }
            }
            @media handheld,
            only screen and(min-width:768px) and(max-width:1024px) {
                #fancy-title-9 {
                    font-size: 40px;
                }
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-9 {
                    font-size: 36px;
                }
            }
            #mk-font-icons-11 {
                margin: 4px;
            }
            #mk-font-icons-11 .font-icon {}
            #padding-12 {
                height: 20px;
            }
            #fancy-title-13 {
                letter-spacing: 0;
                text-transform: uppercase;
                font-size: 14px;
                color: #00baff;
                text-align: left;
                font-style: inherit;
                font-weight: bold;
                padding-top: 0;
                padding-bottom: 0;
            }
            #fancy-title-13 span {}
            #fancy-title-13 span i {
                font-style: inherit;
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-13 {
                    text-align: center !important;
                }
            }
            #text-block-14 {
                margin-bottom: 0;
                text-align: left;
            }
            #padding-15 {
                height: 40px;
            }
            #mk-font-icons-17 {
                margin: 4px;
            }
            #mk-font-icons-17 .font-icon {}
            #padding-18 {
                height: 20px;
            }
            #fancy-title-19 {
                letter-spacing: 0;
                text-transform: uppercase;
                font-size: 14px;
                color: #00baff;
                text-align: left;
                font-style: inherit;
                font-weight: bold;
                padding-top: 0;
                padding-bottom: 0;
            }
            #fancy-title-19 span {}
            #fancy-title-19 span i {
                font-style: inherit;
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-19 {
                    text-align: center !important;
                }
            }
            #text-block-20 {
                margin-bottom: 0;
                text-align: left;
            }
            #padding-21 {
                height: 40px;
            }
            #mk-font-icons-23 {
                margin: 4px;
            }
            #mk-font-icons-23 .font-icon {}
            #padding-24 {
                height: 20px;
            }
            #fancy-title-25 {
                letter-spacing: 0;
                text-transform: uppercase;
                font-size: 14px;
                color: #00baff;
                text-align: left;
                font-style: inherit;
                font-weight: bold;
                padding-top: 0;
                padding-bottom: 0;
            }
            #fancy-title-25 span {}
            #fancy-title-25 span i {
                font-style: inherit;
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-25 {
                    text-align: center !important;
                }
            }
            #text-block-26 {
                margin-bottom: 0;
                text-align: left;
            }
            .full-width-7 {
                min-height: 100px;
                margin-bottom: 0;
            }
            .full-width-7 .page-section-content {
                padding: 0 0 100px;
            }
            #background-layer--7 {
                ;
                background-position: left top;
                background-repeat: repeat;
            }
            #background-layer--7 .mk-color-layer {
                ;
                width: 100%;
                height: 100%;
                position: absolute;
                top: 0;
                left: 0;
            }
            #padding-28 {
                height: 80px;
            }
            #fancy-title-30 {
                letter-spacing: 2px;
                text-transform: capitalize;
                font-size: 100px;
                line-height: 80%;
                color: #00baff;
                text-align: center;
                font-style: inherit;
                font-weight: 300;
                padding-top: 0;
                padding-bottom: 0;
            }
            #fancy-title-30 span {}
            #fancy-title-30 span i {
                font-style: inherit;
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-30 {
                    text-align: center !important;
                }
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-30 {
                    font-size: 60px;
                }
            }
            #fancy-title-31 {
                letter-spacing: 2px;
                text-transform: capitalize;
                font-size: 54px;
                line-height: 90%;
                color: #33435e;
                text-align: center;
                font-style: inherit;
                font-weight: 300;
                padding-top: 0;
                padding-bottom: 40px;
            }
            #fancy-title-31 span {}
            #fancy-title-31 span i {
                font-style: inherit;
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-31 {
                    text-align: center !important;
                }
            }
            @media handheld,
            only screen and(min-width:768px) and(max-width:1024px) {
                #fancy-title-31 {
                    font-size: 40px;
                }
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-31 {
                    font-size: 36px;
                }
            }
            #padding-33 {
                height: 80px;
            }
        </style>
        <script type="text/javascript">
            php = {
                hasAdminbar: false,
                json: (null != null)
                    ? null
                    : "",
                jsPath: 'https://about.stocktwits.com/wp-content/themes/jupiter/assets/js'
            };
        </script><link rel="stylesheet" id="Lato-css" href="//fonts.googleapis.com/css?family=Lato%3A100italic%2C200italic%2C300italic%2C400italic%2C500italic%2C600italic%2C700italic%2C800italic%2C900italic%2C100%2C200%2C300%2C400%2C500%2C600%2C700%2C800%2C900&amp;ver=5.7.1" type="text/css" media="all">
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/themes/jupiter/assets/js/core-scripts.6.1.2.js?ver=1522159847" id="core-scripts-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/themes/jupiter/assets/js/components-full.6.1.2.js?ver=1522159847" id="components-full-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/themes/jupiter/assets/js/plugins/wp-enqueue/smoothscroll.js?ver=1522159847" id="smoothscroll-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/themes/jupiter/header-builder/includes/assets/js/mkhb-render.js?ver=6.1.2" id="mkhb-render-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/themes/jupiter/header-builder/includes/assets/js/mkhb-column.js?ver=6.1.2" id="mkhb-column-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-includes/js/wp-embed.min.js?ver=5.7.1" id="wp-embed-js"></script>
        <script type="text/javascript" src="https://about.stocktwits.com/wp-content/plugins/js_composer_theme/assets/js/dist/js_composer_front.min.js?ver=5.4.5" id="wpb_composer_front_js-js"></script>
        <script type="text/javascript">
            var ga_fired = false;
            window.addEventListener("scroll", function () {
                if ((document.documentElement.scrollTop != 0 && ga_fired === false) || (document.body.scrollTop != 0 && ga_fired === false)) {
                    (function (i, s, o, g, r, a, m) {
                        i['GoogleAnalyticsObject'] = r;
                        i[r] = i[r] || function () {
                            (i[r].q = i[r].q || []).push(arguments)
                        },
                        i[r].l = 1 * new Date();
                        a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                        a.async = 1;
                        a.src = g;
                        m.parentNode.insertBefore(a, m)
                    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
                    ga('create', 'UA-103142-41', 'auto');
                    ga('send', 'pageview');
                    ga_fired = true;
                }
            }, true);
        </script>
        <script type="text/javascript">
            window.get = {};
            window.get.captcha = function (enteredCaptcha) {
                return jQuery.get(ajaxurl, {
                    action: "mk_validate_captcha_input",
                    captcha: enteredCaptcha
                });
            };
        </script>
        <div style="position: absolute;z-index: -10000;top: 0px;left: 0px;right: 0px;height: 1252px;"></div>
        <div style="clear: both;"></div>
        <div style="position: absolute;z-index: -10000;top: 0px;left: 0px;right: 0px;height: 1252px;"></div>
        <div id="goog-gt-tt" class="skiptranslate" dir="ltr">
            <div style="padding: 8px;">
                <div>
                    <div class="logo"><img src="https://www.gstatic.com/images/branding/product/1x/translate_24dp.png" width="20" height="20" alt="Google 번역"></div>
                </div>
            </div>
            <div class="top" style="padding: 8px; float: left; width: 100%;">
                <h1 class="title gray">원본 텍스트</h1>
            </div>
            <div class="middle" style="padding: 8px;">
                <div class="original-text"></div>
            </div>
            <div class="bottom" style="padding: 8px;">
                <div class="activity-links">
                    <span class="activity-link">번역 제안하기</span>
                    <span class="activity-link"></span>
                </div>
                <div class="started-activity-container"><hr style="color: #CCC; background-color: #CCC; height: 1px; border: none;"><div class="activity-root"></div>
                </div>
            </div>
            <div class="status-message" style="display: none;"></div>
        </div>
        <div style="clear: both;"></div>
        <div class="goog-te-spinner-pos">
            <div class="goog-te-spinner-animation">
                <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66">
                    <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle>
                </svg>
            </div>
        </div>
    
</body></html>