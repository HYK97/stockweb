<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="ko" class="Chrome Chrome90 cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform wf-lato-i1-active wf-lato-i2-active wf-lato-i3-active wf-lato-i4-active wf-lato-i5-active wf-lato-i6-active wf-lato-i7-active wf-lato-i8-active wf-lato-i9-active wf-lato-n1-active wf-lato-n2-active wf-lato-n3-active wf-lato-n4-active wf-lato-n5-active wf-lato-n6-active wf-lato-n7-active wf-lato-n8-active wf-lato-n9-active wf-active translated-ltr cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform cssanimations csstransitions no-touchevents js_active vc_desktop vc_transform vc_transform">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="format-detection" content="telephone=no">
        <title>Jutopia 정보</title>
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
            PHP.wp_p_id = "9";
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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic,100,200,300,400,500,600,700,800,900" media="all"><script type="text/javascript" id="mk-webfontloader-js-after">
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
        <meta
        name="generator" content="Powered by LayerSlider 6.7.1 - Multi-Purpose, Responsive, Parallax, Mobile-Friendly Slider Plugin for WordPress.">
        <!-- LayerSlider updates and docs at: https://layerslider.kreaturamedia.com -->
        <link rel="https://api.w.org/" href="https://about.stocktwits.com/wp-json/"><link rel="alternate" type="application/json" href="https://about.stocktwits.com/wp-json/wp/v2/pages/9"><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://about.stocktwits.com/xmlrpc.php?rsd">
        <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://about.stocktwits.com/wp-includes/wlwmanifest.xml">
        <link rel="canonical" href="https://about.stocktwits.com/">
        <link rel="shortlink" href="https://about.stocktwits.com/">
        <link rel="stylesheet" type="text/css" href="../../../resources/css/companyinfo.css">
        <link rel="alternate" type="application/json+oembed" href="https://about.stocktwits.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fabout.stocktwits.com%2F">
        <link rel="alternate" type="text/xml+oembed" href="https://about.stocktwits.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fabout.stocktwits.com%2F&amp;format=xml">
        <script>
            var ms_grabbing_curosr = 'https://about.stocktwits.com/wp-content/plugins/masterslider/public/assets/css/common/grabbing.cur',
                ms_grab_curosr = 'https://about.stocktwits.com/wp-content/plugins/masterslider/public/assets/css/common/grab.cur';
        </script>
        <meta name="generator" content="MasterSlider 3.2.2 - Responsive Touch Image Slider">
        <script>
            var isTest = false;
        </script>
        <meta itemprop="author" content=""><meta itemprop="datePublished" content="March 7, 2016"><meta itemprop="dateModified" content="February 1, 2021"><meta itemprop="publisher" content="StockTwits Careers"><style type="text/css">
            .recentcomments a {
                display: inline !important;
                padding: 0 !important;
                margin: 0 !important;
            }
        </style><meta
        name="generator" content="Powered by WPBakery Page Builder - drag and drop page builder for WordPress.">
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
            .vc_custom_1563390829330 {
                margin-bottom: 0 !important;
            }
            .vc_custom_1540324573945 {
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
                margin-right: 13px;
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
    </head>
    <body
        class="home page-template-default page page-id-9 _masterslider _msp_version_3.2.2 wpb-js-composer js-comp-ver-5.4.5 vc_responsive no-transform" itemscope="itemscope" itemtype="https://schema.org/WebPage" data-adminbar="">
        <!-- Target for scroll anchors to achieve native browser bahaviour + possible enhancements like smooth scrolling -->
        <div id="top-of-page"></div>
        <div id="mk-boxed-layout">
            <div id="mk-theme-container" class="trans-header">
               <header data-height="90" data-sticky-height="80" data-responsive-height="90" data-transparent-skin="light" data-header-style="1" data-sticky-style="fixed" data-sticky-offset="header" id="mk-header-1" class="mk-header header-style-1 header-align-left toolbar-false menu-hover-1 sticky-style-fixed mk-background-stretch boxed-header transparent-header light-skin bg-true" role="banner" itemscope="itemscope" itemtype="https://schema.org/WPHeader">
                    <div class="mk-header-holder">
                        <div class="mk-header-inner add-header-height">
                            <div class="mk-header-bg "></div>
                            <div class="mk-grid header-grid">
                                <div class="mk-header-nav-container one-row-style menu-hover-style-1" role="navigation" itemscope="itemscope" itemtype="https://schema.org/SiteNavigationElement">
                                    <nav class="mk-main-navigation js-main-nav">
                                        <ul id="menu-main-menu" class="main-navigation-ul dropdownJavascript">
                                            <li id="menu-item-14" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-9 current_page_item no-mega-menu">
                                                <a class="menu-item-link js-smooth-scroll" href="/companyinfo/about">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">회사 소개</font>
                                                    </font>
                                                </a>
                                            </li>
                                            <li id="menu-item-337" class="menu-item menu-item-type-post_type menu-item-object-page no-mega-menu">
                                                <a class="menu-item-link js-smooth-scroll" href="/companyinfo/history">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">연혁</font>
                                                    </font>
                                                </a>
                                            </li>
                                            <li id="menu-item-13" class="menu-item menu-item-type-post_type menu-item-object-page no-mega-menu">
                                                <a class="menu-item-link js-smooth-scroll" href="/companyinfo/contact">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">문의하기</font>
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
                                    <li id="responsive-menu-item-14" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-9 current_page_item">
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
                                    <li id="responsive-menu-item-13" class="menu-item menu-item-type-post_type menu-item-object-page">
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
                    <div class="mk-main-wrapper-holder">
                        <div id="mk-page-id-9" class="theme-page-wrapper mk-main-wrapper mk-grid full-layout no-padding">
                            <div class="theme-content no-padding" itemprop="mainEntityOfPage">
                                <div class="mk-page-section-wrapper" data-mk-full-width="true" data-mk-full-width-init="true" data-mk-stretch-content="true" style="position: relative; box-sizing: border-box; width: 1225px; left: -47.5px;">
                                    <div id="page-section-2" class="mk-page-section self-hosted full_layout full-width-2 js-el js-master-row center-y mk-in-viewport" data-mk-component="FullHeight" data-fullheight-config="{&quot;min&quot;: 500}" data-intro-effect="false" style="min-height: 977px;">
                                        <div class="mk-page-section-inner">
                                            <div class="mk-video-color-mask"></div>
                                            <div class="mk-section-preloader js-el" data-mk-component="Preloader" style="display: none;">
                                                <div class="mk-section-preloader__icon"></div>
                                            </div>
                                            <div class="background-layer-holder">
                                                <div id="background-layer--2" data-mk-lazyload="false" class="background-layer mk-background-stretch none-blend-effect js-el" data-mk-component="Parallax" data-parallax-config="{&quot;speed&quot; : 0.3 }" data-mk-img-set="{&quot;landscape&quot;:{&quot;desktop&quot;:&quot;../../../resources/img/team.jpg&quot;,&quot;tablet&quot;:&quot;../../../resources/img/team.jpg&quot;,&quot;mobile&quot;:&quot;&quot;},&quot;responsive&quot;:&quot;true&quot;}" mk-img-loaded="" style="background-image: url(&quot;../../../resources/img/team.jpg&quot;); background-attachment: scroll; will-change: transform;">
                                                    <div class="mk-color-layer"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="page-section-content vc_row-fluid mk-grid ">
                                            <div class="mk-padding-wrapper wpb_row">
                                                <div class="vc_col-sm-12 wpb_column column_container   _ height-full">
                                                    <h1 id="fancy-title-4" class="mk-fancy-title  simple-style   color-single">
                                                        <span>
                                                            <p>
                                                                <font style="vertical-align: inherit;">
                                                                    <font style="vertical-align: inherit;">JUTOPIA와 함께하세요</font>
                                                                </font>
                                                                <span style="color: #00baff;">
                                                                    <font style="vertical-align: inherit;">
                                                                        <font style="vertical-align: inherit;">.</font>
                                                                    </font>
                                                                </span>
                                                            </p>
                                                        </span>
                                                    </h1>
                                                    <div class="clearboth"></div>
                                                    <style>
                                                        #fancy-title-4 {
                                                            font-family: "Lato"
                                                        }
                                                    </style>
                                                    <div id="mk-gradient-button-5" class="mk-gradient-button fullwidth-false btn-align-center custom-width-true">
                                                        <a href="/user/register" class="mk-button mk-button--dimension-two mk-button--size-large mk-button--corner-full_rounded light-skin" target="_self">
                                                            <span class="text">
                                                                <font style="vertical-align: inherit;">
                                                                    <font style="vertical-align: inherit;">회원가입</font>
                                                                </font>
                                                            </span>
                                                            <i class="darker-background"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearboth"></div>
                                        </div>
                                        <div class="clearboth"></div>
                                    </div>
                                </div>
                                <div class="vc_row-full-width vc_clearfix"></div>
                                <div data-mk-full-width="true" data-mk-full-width-init="true" data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-true attched-false js-master-row mk-full-content-true mk-in-viewport" style="position: relative; box-sizing: border-box; width: 1225px; left: -62.5px;">
                                    <div class="vc_col-sm-12 wpb_column column_container   _ height-full">
                                        <div id="divider-7" class="mk-divider     divider_full_width center thin_solid  ">
                                            <div class="divider-inner"></div>
                                        </div>
                                        <div class="clearboth"></div>
                                    </div>
                                </div>
                                <div class="vc_row-full-width vc_clearfix"></div>
                                <div data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-false attched-false js-master-row mk-grid mk-in-viewport">
                                    <div class="vc_col-sm-6 wpb_column column_container   _ height-full">
                                        <h3 id="fancy-title-9" class="mk-fancy-title  simple-style   color-single">
                                            <span>
                                                <p>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;font-size: 50%;">투자자인 당신을 위해</font>
                                                    </font>
                                                </p>
                                            </span>
                                        </h3>
                                        <div class="clearboth"></div>
                                        <style>
                                            #fancy-title-9 {
                                                font-family: "Lato"
                                            }
                                        </style>
                                        <h4 id="fancy-title-10" class="mk-fancy-title  simple-style   color-single">
                                            <span>
                                                <p>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;FONT-SIZE: 60%;">투자자 및 거래 자용</font>
                                                    </font>
                                                </p>
                                            </span>
                                        </h4>
                                        <div class="clearboth"></div>
                                        <style>
                                            #fancy-title-10 {
                                                font-family: "Lato"
                                            }
                                        </style>
                                        <div class=" vc_custom_1563390829330">
                                            <div id="text-block-11" class="mk-text-block   ">
                                                <p>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">Jutopia는 5 백만 명 이상의 커뮤니티 회원과 수백만 명의 월간 방문자를 보유한 투자자 및 거래자를위한 최대 규모의 소셜 네트워크입니다.
                                                        </font>
                                                        <font style="vertical-align: inherit;">Jutopia는 일반 투자자와 상인을 서로 연결하여 수익을 올리고 배우고 재미있게 즐길 수 있도록 2020 년에 설립되었습니다.</font>
                                                    </font>
                                                </p>
                                                <p>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">Jutopia는 Twitter 플랫폼에 구축 된 간단한 앱으로 시작했지만 캐시 태그 (예 :
                                                        </font>
                                                    </font>
                                                    <a id="AAPL-1-122" href="/community/chart?search=034220" data-event="click" data-for="cashTag" data-tip="AAPL">
                                                        <font style="vertical-align: inherit;">
                                                            <font style="vertical-align: inherit;">$ LG디스플레이</font>
                                                        </font>
                                                    </a>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">
                                                            )를
                                                        </font>
                                                        <font style="vertical-align: inherit;">사용하여 시세 관련 대화를 구성한 최초의 앱으로
                                                        </font>
                                                        <font style="vertical-align: inherit;">, 이후 트레이더, 투자자, 미디어, 상장 기업 및 기업
                                                        </font>
                                                        <font style="vertical-align: inherit;">으로 구성된
                                                        </font>
                                                        <font style="vertical-align: inherit;">독립형 소셜 네트워크로 성장했습니다. 투자 전문가.
                                                        </font>
                                                        <font style="vertical-align: inherit;">"사회 금융"을 정의하는 목소리 인 Jutopia는 관심있는 시장과 주식에서 지금 무슨 일이 일어나고 있는지 파악하는 가장 좋은 방법이며, 차세대 투자자를 위해 금융 미디어를 재 구상하고 있습니다.</font>
                                                    </font>
                                                </p>
                                                <div class="clearboth"></div>
                                            </div>
                                        </div>
                                        <div id="padding-12" class="mk-padding-divider   clearfix"></div>
                                    </div>
                                    <div class="vc_col-sm-1 wpb_column column_container   _ height-full"></div>
                                    <div class="vc_col-sm-5 wpb_column column_container   _ height-full">
                                        <div class="mk-image mk-image-15   align-left simple-frame inside-image " style="margin-bottom:10px">
                                            <div class="mk-image-container" style="max-width: 626px;">
                                                <div class="mk-image-holder" style="max-width: 626px;">
                                                    <div class="mk-image-inner  "><img class="lightbox-false" alt="Jutopia 앱" title="Jutopia 앱" width="626" height="1248" src="../../../resources/img/companyphone.png"></div>
                                                </div>
                                                <div class="clearboth"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div data-mk-full-width="true" data-mk-full-width-init="true" data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-true attched-false js-master-row mk-full-content-true mk-in-viewport" style="position: relative; box-sizing: border-box; width: 1225px; left: -62.5px;">
                                    <div class="vc_col-sm-12 wpb_column column_container   _ height-full">
                                        <div id="padding-17" class="mk-padding-divider   clearfix"></div>
                                    </div>
                                </div>
                                <div class="vc_row-full-width vc_clearfix"></div>
                                <div data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-false attched-false js-master-row mk-grid mk-in-viewport">
                                    <div class="vc_col-sm-12 wpb_column column_container   _ height-full">
                                        <h2 id="fancy-title-19" class="mk-fancy-title  simple-style   color-single">
                                            <span>
                                                <p>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">숫자로 보는 Jutopia</font>
                                                    </font>
                                                </p>
                                            </span>
                                        </h2>
                                        <div class="clearboth"></div>
                                        <style>
                                            #fancy-title-19 {
                                                font-family: "Lato"
                                            }
                                        </style>
                                    </div>
                                </div>
                                <div data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-false attched-false js-master-row mk-grid mk-in-viewport">
                                    <div class="vc_col-sm-4 wpb_column column_container   _ height-full">
                                        <div id="milestone-21" class="mk-milestone milestone-large center-align scroll-animated">
                                            <i>
                                                <svg class="mk-svg-icon" data-name="mk-icon-users" data-cacheid="icon-60aaff906a708" style=" fill: #00baff; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1920 1792">
                                                    <path d="M593 896q-162 5-265 128h-134q-82 0-138-40.5t-56-118.5q0-353 124-353 6 0 43.5 21t97.5 42.5 119 21.5q67 0 133-23-5 37-5 66 0 139 81 256zm1071 637q0 120-73 189.5t-194 69.5h-874q-121 0-194-69.5t-73-189.5q0-53 3.5-103.5t14-109 26.5-108.5 43-97.5 62-81 85.5-53.5 111.5-20q10 0 43 21.5t73 48 107 48 135 21.5 135-21.5 107-48 73-48 43-21.5q61 0 111.5 20t85.5 53.5 62 81 43 97.5 26.5 108.5 14 109 3.5 103.5zm-1024-1277q0 106-75 181t-181 75-181-75-75-181 75-181 181-75 181 75 75 181zm704 384q0 159-112.5 271.5t-271.5 112.5-271.5-112.5-112.5-271.5 112.5-271.5 271.5-112.5 271.5 112.5 112.5 271.5zm576 225q0 78-56 118.5t-138 40.5h-134q-103-123-265-128 81-117 81-256 0-29-5-66 66 23 133 23 59 0 119-21.5t97.5-42.5 43.5-21q124 0 124 353zm-128-609q0 106-75 181t-181 75-181-75-75-181 75-181 181-75 181 75 75 181z"></path>
                                                </svg>
                                            </i>
                                            <div class="milestone-top">
                                                <span style="color:#33435e;font-size:78px;font-weight:300" class="milestone-number" data-speed="600" data-stop="5">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">5</font>
                                                    </font>
                                                </span>
                                                <span style="color:#33435e;font-size:78px;font-weight:300" class="milestone-suffix">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">M +</font>
                                                    </font>
                                                </span>
                                                <div style="color:#33435e;font-size:42px" class="milestone-text">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">등록 된 회원</font>
                                                    </font>
                                                </div>
                                            </div>
                                            <div class="clearboth"></div>
                                        </div>
                                    </div>
                                    <div class="vc_col-sm-4 wpb_column column_container   _ height-full">
                                        <div id="milestone-23" class="mk-milestone milestone-large center-align scroll-animated">
                                            <i>
                                                <svg class="mk-svg-icon" data-name="mk-icon-comments-o" data-cacheid="icon-60aaff906ab18" style=" fill: #00baff; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1792 1792">
                                                    <path d="M704 384q-153 0-286 52t-211.5 141-78.5 191q0 82 53 158t149 132l97 56-35 84q34-20 62-39l44-31 53 10q78 14 153 14 153 0 286-52t211.5-141 78.5-191-78.5-191-211.5-141-286-52zm0-128q191 0 353.5 68.5t256.5 186.5 94 257-94 257-256.5 186.5-353.5 68.5q-86 0-176-16-124 88-278 128-36 9-86 16h-3q-11 0-20.5-8t-11.5-21q-1-3-1-6.5t.5-6.5 2-6l2.5-5 3.5-5.5 4-5 4.5-5 4-4.5q5-6 23-25t26-29.5 22.5-29 25-38.5 20.5-44q-124-72-195-177t-71-224q0-139 94-257t256.5-186.5 353.5-68.5zm822 1169q10 24 20.5 44t25 38.5 22.5 29 26 29.5 23 25q1 1 4 4.5t4.5 5 4 5 3.5 5.5l2.5 5 2 6 .5 6.5-1 6.5q-3 14-13 22t-22 7q-50-7-86-16-154-40-278-128-90 16-176 16-271 0-472-132 58 4 88 4 161 0 309-45t264-129q125-92 192-212t67-254q0-77-23-152 129 71 204 178t75 230q0 120-71 224.5t-195 176.5z"></path>
                                                </svg>
                                            </i>
                                            <div class="milestone-top">
                                                <span style="color:#33435e;font-size:78px;font-weight:300" class="milestone-number" data-speed="600" data-stop="7">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">7</font>
                                                    </font>
                                                </span>
                                                <span style="color:#33435e;font-size:78px;font-weight:300" class="milestone-suffix">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">M +</font>
                                                    </font>
                                                </span>
                                                <div style="color:#33435e;font-size:42px" class="milestone-text">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">월간 메시지</font>
                                                    </font>
                                                </div>
                                            </div>
                                            <div class="clearboth"></div>
                                        </div>
                                    </div>
                                    <div class="vc_col-sm-4 wpb_column column_container   _ height-full">
                                        <div id="milestone-25" class="mk-milestone milestone-large center-align scroll-animated">
                                            <i>
                                                <svg class="mk-svg-icon" data-name="mk-li-apeaker" data-cacheid="icon-60aaff906ae91" style=" fill: #00baff; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 512 512">
                                                    <path d="M460.122 134.295v-109.728c0-5.602-2.989-10.79-7.848-13.587-4.859-2.806-10.837-2.806-15.695 0l-186.403 107.613h-198.214c-26.002 0-47.086 21.083-47.086 47.086v125.561c0 26.002 21.083 47.086 47.086 47.086h36.418l42.027 117.714c8.936 23.481 28.931 47.086 54.933 47.086h39.238c26.003 0 39.392-23.605 31.39-47.086l-42.027-117.714h36.096l186.543 107.705c2.43 1.395 5.135 2.099 7.848 2.099s5.418-.705 7.848-2.099c4.858-2.806 7.848-7.986 7.848-13.596v-109.805c25.965-.046 47.001-21.106 47.001-47.086v-94.171c-.002-25.972-21.038-47.032-47.003-47.078zm-233.811 332.021c1.019 3.127.407 4.982.376 5.12-.008.007-.59.299-2.108.299h-39.238c-8.568 0-19.726-11.657-25.489-26.585l-38.135-106.824h58.903l45.691 127.99zm-1.732-159.381h-172.617c-8.652 0-15.695-7.043-15.695-15.695v-125.562c0-8.653 7.043-15.695 15.695-15.695h172.617v156.952zm204.153 98.309l-172.763-99.743v-154.009l172.763-99.742v353.494zm47.001-129.699c0 8.629-6.997 15.641-15.61 15.695v-125.547c8.614.046 15.61 7.058 15.61 15.68v94.172z"></path>
                                                </svg>
                                            </i>
                                            <div class="milestone-top">
                                                <span style="color:#33435e;font-size:78px;font-weight:300" class="milestone-number" data-speed="600" data-stop="5">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">5</font>
                                                    </font>
                                                </span>
                                                <span style="color:#33435e;font-size:78px;font-weight:300" class="milestone-suffix">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">M +</font>
                                                    </font>
                                                </span>
                                                <div style="color:#33435e;font-size:42px" class="milestone-text">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">월간 시청자</font>
                                                    </font>
                                                </div>
                                            </div>
                                            <div class="clearboth"></div>
                                        </div>
                                    </div>
                                </div>
                                <div data-mk-full-width="true" data-mk-full-width-init="true" data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-true attched-false js-master-row mk-full-content-true mk-in-viewport" style="position: relative; box-sizing: border-box; width: 1225px; left: -62.5px;">
                                    <div class="vc_col-sm-12 wpb_column column_container   _ height-full">
                                        <div id="padding-27" class="mk-padding-divider   clearfix"></div>
                                    </div>
                                </div>
                                <div class="vc_row-full-width vc_clearfix"></div>
                                <div data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-false attched-false js-master-row mk-grid mk-in-viewport">
                                    <div class="vc_col-sm-12 wpb_column column_container   _ height-full">
                                        <div id="padding-29" class="mk-padding-divider   clearfix"></div>
                                    </div>
                                </div>
                                <div data-mk-stretch-content="true" class="wpb_row vc_row vc_row-fluid mk-fullwidth-false attched-false js-master-row mk-grid mk-in-viewport">
                                    <div class="vc_col-sm-6 wpb_column column_container   _ height-full">
                                        <h4 id="fancy-title-31" class="mk-fancy-title  simple-style   color-single">
                                            <span>
                                                <p style="text-align: center;">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">투자자</font>
                                                    </font>
                                                </p>
                                            </span>
                                        </h4>
                                        <div class="clearboth"></div>
                                        <style>
                                            #fancy-title-31 {
                                                font-family: "Lato"
                                            }
                                        </style>
                                        <div class="wpb_row vc_inner vc_row vc_row-fluid    attched-false   ">
                                            <div class="wpb_column vc_column_container vc_col-sm-3">
                                                <div class="vc_column-inner ">
                                                    <div class="wpb_wrapper">
                                                        <div class="mk-image mk-image-33   align-center simple-frame inside-image " style="margin-bottom:50px">
                                                            <div class="mk-image-container" style="max-width: 160px;">
                                                                <div class="mk-image-holder" style="max-width: 160px;">
                                                                    <div class="mk-image-inner  ">
                                                                        <a href="https://www.kiwoom.com/&quot;" target="_blank" class="mk-image-link"><img class="lightbox-false" alt="키움증권" title="키움증권" width="160" height="61" src="../../../resources/img/키움증권.JPG"></a>
                                                                    </div>
                                                                </div>
                                                                <div class="clearboth"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="wpb_column vc_column_container vc_col-sm-3">
                                                <div class="vc_column-inner ">
                                                    <div class="wpb_wrapper">
                                                        <div class="mk-image mk-image-33   align-center simple-frame inside-image " style="margin-bottom:50px">
                                                            <div class="mk-image-container" style="max-width: 160px;">
                                                                <div class="mk-image-holder" style="max-width: 160px;">
                                                                    <div class="mk-image-inner  ">
                                                                        <a href="https://www.onestopsamsungpop.co.kr/home/stock/?skipSection=forever&amp;utm_source=google&amp;utm_medium=pc-sa&amp;utm_campaign=account&amp;utm_content=brand&amp;utm_term=%EC%82%BC%EC%84%B1%EC%A6%9D%EA%B6%8C&amp;EKAMS=google.1089.7298.23699.2092629.620010558&amp;trackingDays=30" target="_blank" class="mk-image-link"><img class="lightbox-false" alt="삼성증권" title="삼성증권" width="160" height="61" src="../../../resources/img/삼성증권.JPG"></a>
                                                                    </div>
                                                                </div>
                                                                <div class="clearboth"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="wpb_column vc_column_container vc_col-sm-3">
                                                <div class="vc_column-inner ">
                                                    <div class="wpb_wrapper">
                                                        <div class="mk-image mk-image-34   align-center simple-frame inside-image " style="margin-bottom:10px">
                                                            <div class="mk-image-container" style="max-width: 200px;">
                                                                <div class="mk-image-holder" style="max-width: 200px;">
                                                                    <div class="mk-image-inner  ">
                                                                        <a href="https://www.kbsec.com/go.able" target="_blank" class="mk-image-link"><img class="lightbox-false" alt="사회적인" title="사회적인" width="200" height="27" src="../../../resources/img/kb증권.jpg"></a>
                                                                    </div>
                                                                </div>
                                                                <div class="clearboth"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="wpb_column vc_column_container vc_col-sm-3">
                                                <div class="vc_column-inner ">
                                                    <div class="wpb_wrapper">
                                                        <div class="mk-image mk-image-35   align-center simple-frame inside-image " style="margin-bottom:10px">
                                                            <div class="mk-image-container" style="max-width: 300px;">
                                                                <div class="mk-image-holder" style="max-width: 300px;">
                                                                    <div class="mk-image-inner  ">
                                                                        <a href="https://www.wadiz.kr/web/wsub/openfunding/reward?utm_source=rwm_gdn&amp;utm_medium=search&amp;utm_campaign=PC_%EB%A9%94%EC%9D%B4%EC%BB%A4&amp;utm_content=PC_00.%EC%99%80%EB%94%94%EC%A6%88&amp;utm_term=%EC%99%80%EB%94%94%EC%A6%88&amp;gclid=CjwKCAjw-qeFBhAsEiwA2G7NlxhkBNLBiOh0gkysHMUhtw1f2xb4POEb-n63_fuDa11qzGz0lBTTRhoC18cQAvD_BwE" target="_blank" class="mk-image-link"><img class="lightbox-false" alt="스크린 샷 -2020-03-27-at-3.59.39-pm" title="스크린 샷 -2020-03-27-at-3.59.39-pm" width="300" height="300" src="../../../resources/img/와디즈.jpg"></a>
                                                                    </div>
                                                                </div>
                                                                <div class="clearboth"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="padding-36" class="mk-padding-divider   clearfix"></div>
                                    </div>
                                    <div class="vc_col-sm-6 wpb_column column_container   _ height-full">
                                        <h4 id="fancy-title-38" class="mk-fancy-title  simple-style   color-single">
                                            <span>
                                                <p style="text-align: center;">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">이사회</font>
                                                    </font>
                                                </p>
                                            </span>
                                        </h4>
                                        <div class="clearboth"></div>
                                        <style>
                                            #fancy-title-38 {
                                                font-family: "Lato"
                                            }
                                        </style>
                                        <div class=" vc_custom_1540324573945">
                                            <div id="text-block-39" class="mk-text-block   ">
                                                <p style="text-align: center;">
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">김현용</font>
                                                    </font><br><font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">이종현</font>
                                                    </font><br><font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">전건희</font>
                                                    </font><br><font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">최성필</font>
                                                    </font>
                                                </p>
                                                <div class="clearboth"></div>
                                            </div>
                                        </div>
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
                                                    <svg class="mk-svg-icon" data-name="mk-icon-angle-right" data-cacheid="icon-60aaff90706e6" style=" height:14px; width: 5px; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 640 1792">
                                                        <path d="M595 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"></path>
                                                    </svg>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">회사 소개</font>
                                                    </font>
                                                </a>
                                            </li>
                                            <li id="menu-item-337" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-337">
                                                <a href="/companyinfo/history">
                                                    <svg class="mk-svg-icon" data-name="mk-icon-angle-right" data-cacheid="icon-60aaff90706e6" style=" height:14px; width: 5px; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 640 1792">
                                                        <path d="M595 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"></path>
                                                    </svg>
                                                    <font style="vertical-align: inherit;">
                                                        <font style="vertical-align: inherit;">연혁</font>
                                                    </font>
                                                </a>
                                            </li>
                                            <li id="menu-item-13" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13">
                                                <a href="/companyinfo/contact">
                                                    <svg class="mk-svg-icon" data-name="mk-icon-angle-right" data-cacheid="icon-60aaff90706e6" style=" height:14px; width: 5px; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 640 1792">
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
                                            <svg class="mk-svg-icon" data-name="mk-jupiter-icon-simple-facebook" data-cacheid="icon-60aaff9070c1d" style=" height:24px; width: 24px; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 512 512">
                                                <path d="M192.191 92.743v60.485h-63.638v96.181h63.637v256.135h97.069v-256.135h84.168s6.674-51.322 9.885-96.508h-93.666v-42.921c0-8.807 11.565-20.661 23.01-20.661h71.791v-95.719h-83.57c-111.317 0-108.686 86.262-108.686 99.142z"></path>
                                            </svg>
                                        </a>
                                        <a href="https://www.instagram.com" rel="nofollow" class="builtin-icons dark medium instagram-hover" target="_blank" alt="Instagram에서 팔로우" title="Instagram에서 팔로우">
                                            <svg class="mk-svg-icon" data-name="mk-jupiter-icon-simple-instagram" data-cacheid="icon-60aaff9070d31" style=" height:24px; width: 24px; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 81.2 81.2">
                                                <path d="M81,23.9c-0.2-4.3-0.9-7.3-1.9-9.9c-1-2.7-2.4-4.9-4.7-7.2c-2.3-2.3-4.5-3.6-7.2-4.7c-2.6-1-5.5-1.7-9.9-1.9 C53,0,51.6,0,40.6,0c-11,0-12.4,0-16.7,0.2c-4.3,0.2-7.3,0.9-9.9,1.9c-2.7,1-4.9,2.4-7.2,4.7C4.6,9.1,3.2,11.3,2.1,14 c-1,2.6-1.7,5.5-1.9,9.9C0,28.2,0,29.6,0,40.6c0,11,0,12.4,0.2,16.7c0.2,4.3,0.9,7.3,1.9,9.9c1,2.7,2.4,4.9,4.7,7.2 c2.3,2.3,4.5,3.6,7.2,4.7c2.6,1,5.5,1.7,9.9,1.9c4.3,0.2,5.7,0.2,16.7,0.2c11,0,12.4,0,16.7-0.2c4.3-0.2,7.3-0.9,9.9-1.9 c2.7-1,4.9-2.4,7.2-4.7c2.3-2.3,3.6-4.5,4.7-7.2c1-2.6,1.7-5.5,1.9-9.9c0.2-4.3,0.2-5.7,0.2-16.7C81.2,29.6,81.2,28.2,81,23.9z  M73.6,57c-0.2,4-0.8,6.1-1.4,7.5c-0.7,1.9-1.6,3.2-3,4.7c-1.4,1.4-2.8,2.3-4.7,3c-1.4,0.6-3.6,1.2-7.5,1.4 c-4.3,0.2-5.6,0.2-16.4,0.2c-10.8,0-12.1,0-16.4-0.2c-4-0.2-6.1-0.8-7.5-1.4c-1.9-0.7-3.2-1.6-4.7-3c-1.4-1.4-2.3-2.8-3-4.7 C8.4,63.1,7.7,61,7.6,57c-0.2-4.3-0.2-5.6-0.2-16.4c0-10.8,0-12.1,0.2-16.4c0.2-4,0.8-6.1,1.4-7.5c0.7-1.9,1.6-3.2,3-4.7 c1.4-1.4,2.8-2.3,4.7-3c1.4-0.6,3.6-1.2,7.5-1.4c4.3-0.2,5.6-0.2,16.4-0.2c10.8,0,12.1,0,16.4,0.2c4,0.2,6.1,0.8,7.5,1.4 c1.9,0.7,3.2,1.6,4.7,3c1.4,1.4,2.3,2.8,3,4.7c0.6,1.4,1.2,3.6,1.4,7.5c0.2,4.3,0.2,5.6,0.2,16.4C73.9,51.4,73.8,52.7,73.6,57z"></path>
                                                <path d="M40.6,19.8c-11.5,0-20.8,9.3-20.8,20.8c0,11.5,9.3,20.8,20.8,20.8c11.5,0,20.8-9.3,20.8-20.8 C61.4,29.1,52.1,19.8,40.6,19.8z M40.6,54.1c-7.5,0-13.5-6.1-13.5-13.5c0-7.5,6.1-13.5,13.5-13.5c7.5,0,13.5,6.1,13.5,13.5 C54.1,48.1,48.1,54.1,40.6,54.1z"></path>
                                                <circle cx="62.3" cy="18.9" r="4.9"></circle>
                                            </svg>
                                        </a>
                                        <a href="https://twitter.com" rel="nofollow" class="builtin-icons dark medium twitter-hover" target="_blank" alt="트위터에서 우리를 따르라" title="트위터에서 우리를 따르라">
                                            <svg class="mk-svg-icon" data-name="mk-jupiter-icon-simple-twitter" data-cacheid="icon-60aaff9070e22" style=" height:24px; width: 24px; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 512 512">
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
                        <div style="width: 1189px; height: 3169px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
                <div class="resize-triggers">
                    <div class="expand-trigger">
                        <div style="width: 951px; height: 2792px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
                <div class="resize-triggers">
                    <div class="expand-trigger">
                        <div style="width: 1063px; height: 2886px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
                <div class="resize-triggers">
                    <div class="expand-trigger">
                        <div style="width: 1328px; height: 3152px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
                <div class="resize-triggers">
                    <div class="expand-trigger">
                        <div style="width: 1016px; height: 2983px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
                <div class="resize-triggers">
                    <div class="expand-trigger">
                        <div style="width: 1226px; height: 2955px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
                <div class="resize-triggers">
                    <div class="expand-trigger">
                        <div style="width: 1226px; height: 2955px;"></div>
                    </div>
                    <div class="contract-trigger"></div>
                </div>
            </div>
        </div>
        <div class="bottom-corner-btns js-bottom-corner-btns">
            <a href="#top-of-page" class="mk-go-top js-smooth-scroll js-bottom-corner-btn js-bottom-corner-btn--back is-active">
                <svg class="mk-svg-icon" data-name="mk-icon-chevron-up" data-cacheid="icon-60aaff90728ba" style=" height:16px; width: 16px; " xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1792 1792">
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
            #mk-gradient-button-5 {
                margin-top: 0;
                margin-bottom: 15px;
                margin-right: 15px;
            }
            #mk-gradient-button-5 a {
                width: 300px;
                background: #00baff;
                background: -webkit-linear-gradient(left,#33435e 0%, #00baff 100%);
                background: linear-gradient(to right,#33435e 0%, #00baff 100%);
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
                background-position: center top;
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
            #divider-7 {
                padding: 0 0 160px;
            }
            #divider-7 .divider-inner {
                border-top-width: 10px;
            }
            #divider-7 .divider-inner:after {
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
                font-size: 100px;
                line-height: 80%;
                color: #00baff;
                text-align: left;
                font-style: inherit;
                font-weight: 300;
                padding-top: 0;
                padding-bottom: 0;
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
            only screen and(max-width:767px) {
                #fancy-title-9 {
                    font-size: 60px;
                }
            }
            #fancy-title-10 {
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
            #fancy-title-10 span {}
            #fancy-title-10 span i {
                font-style: inherit;
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-10 {
                    text-align: center !important;
                }
            }
            @media handheld,
            only screen and(min-width:768px) and(max-width:1024px) {
                #fancy-title-10 {
                    font-size: 40px;
                }
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-10 {
                    font-size: 36px;
                }
            }
            #text-block-11 {
                margin-bottom: 0;
                text-align: left;
            }
            #padding-12 {
                height: 40px;
            }
            #padding-17 {
                height: 25px;
            }
            #fancy-title-19 {
                letter-spacing: 0;
                text-transform: initial;
                font-size: 54px;
                color: #00baff;
                text-align: left;
                font-style: inherit;
                font-weight: 300;
                padding-top: 0;
                padding-bottom: 20px;
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
            #milestone-21 .milestone-text:after {
                background: #33435e;
            }
            #milestone-23 .milestone-text:after {
                background: #33435e;
            }
            #milestone-25 .milestone-text:after {
                background: #33435e;
            }
            #padding-27 {
                height: 25px;
            }
            #padding-29 {
                height: 40px;
            }
            #fancy-title-31 {
                letter-spacing: 2px;
                text-transform: capitalize;
                font-size: 42px;
                line-height: 90%;
                color: #33435e;
                text-align: left;
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
            #padding-36 {
                height: 80px;
            }
            #fancy-title-38 {
                letter-spacing: 2px;
                text-transform: capitalize;
                font-size: 42px;
                line-height: 90%;
                color: #33435e;
                text-align: left;
                font-style: inherit;
                font-weight: 300;
                padding-top: 0;
                padding-bottom: 40px;
            }
            #fancy-title-38 span {}
            #fancy-title-38 span i {
                font-style: inherit;
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-38 {
                    text-align: center !important;
                }
            }
            @media handheld,
            only screen and(min-width:768px) and(max-width:1024px) {
                #fancy-title-38 {
                    font-size: 40px;
                }
            }
            @media handheld,
            only screen and(max-width:767px) {
                #fancy-title-38 {
                    font-size: 36px;
                }
            }
            #text-block-39 {
                margin-bottom: 0;
                text-align: left;
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
        <div style="position: absolute;z-index: -10000;top: 0px;left: 0px;right: 0px;height: 2881px;"></div>
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
                <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewbox="0 0 66 66">
                    <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle>
                </svg>
            </div>
        </div>
        <div style="position: absolute;z-index: -10000;top: 0px;left: 0px;right: 0px;height: 2881px;"></div>
        <div style="clear: both;"></div>
    </body>
</html>