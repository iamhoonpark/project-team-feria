<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/notosanskr.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/starrr.css">
    <!--하단 슬라이더용 링크-->
    <link rel="stylesheet" type="text/css" href="http://black-flag.net/data/css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

    <style>
        #wrapFeriaDetail{

        }
        #wrapFeriaDetail h3{
            font-size: 16px;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        .feria_info {
            margin: auto;
            width: 1200px;
            height: 350px;

            border-bottom: 2px solid #424242;

        }
        .text_feria_title{
            margin-bottom: 10px;
        }

        .feria_info_header{
            margin-bottom: 20px;
        }

        .feria_info h2{
            display: inline;
        }
        .feria_info h3{
            display: inline;
        }
        .feria_info strong{
            display: inline;
        }

        .feria_info .btn_review{
            position: absolute;
            width: 120px;
            height: 40px;
            margin-left: 1100px;
            background-color: rgb(232, 82, 1);
            color: white;
            border: 0px;
            border-radius: 5px;
        }

        .feria_info_photo .img_feria{
            width: 180px;
            height: 180px;
            margin-bottom: 5px;
            border: 1px solid #dddddd;
            box-sizing: border-box;
        }

        .feria_info_photo .min_profile{
            width: 180px;
            height: 40px;
            border: 1px solid  #dddddd;
            line-height: 8px;
            box-sizing: border-box;
        }
        .feria_info_photo li{
            float: left;
            margin-right: 10px;
        }
        .feria_info_photo .min_profile img{
            margin-bottom: 5px;
            float: left;
            width: 38px;
            height: 38px;
            border-right: 1px solid #dddddd;
        }
        .feria_info_photo .min_profile span{
            position: relative;
            top:15px;
        }
        .feria_photo{
            margin: auto;
            width: 1200px;
            height: 650px;


            border-bottom: 2px solid #424242;
            box-sizing: border-box;
        }

        .feria_photo h3{
            margin: 10px 0;
            padding-bottom: 5px;
            width: 200px;
            border-bottom: 2px solid #424242;
        }
        .feria_review{
            margin: auto;
            width: 1200px;
            height: 300px;
        }
        .review_photo{
        }
        .feria_review h3{
            margin: 10px 0;
            padding-bottom: 5px;
            width: 200px;
            border-bottom: 2px solid #424242;
        }
        .review_photo img{
            width: 360px;
            height: 270px;
            margin-right: 10px;
            margin-bottom: 10px;
            border: 1px solid #424242;
        }

/*팝업용 메뉴*/
        #reviewEditWrap {
            width:100%;
            height:100%;
            left:0;
            top:0;
            position: fixed;
            background-color: rgba(0,0,0,.75);
            display: none;
        }

        .review_window {
            width: 1000px;
            height: 1200px;

            top: 50%;
            left: 50%;

            margin-left: -500px;
            margin-top: -600px;

            position: fixed;

            /*팝업시 뜨는 창*/
            /*left:50%;*/
            /*top:300px;*/
            padding-top: 50px;
            background-color: white;
            overflow: scroll;
        }


        .review_window h1{
            font-size: 20px;
        }
        .review_edit_header{
            position: relative;
            top: 20px;
            margin: auto;
            width: 700px;
            border-bottom: 2px solid #424242;
        }
        .review_edit_header h1{
            font-size: 24px;
        }

        .review_edit_add_photo{
            position: relative;
            top: 20px;
            margin: 20px auto;
            width: 700px;
        }

        .review_edit_add_photo h4{
            margin: 5px 0;
            font-size: 12px;
        }
        .review_edit_add_photo img{
            width: 150px;
            height: 150px;
         }

        .review_edit_text{
            position: relative;
            top: 20px;
            margin: auto;
            width: 700px;
        }
        .review_edit_text textarea{
            height: 150px;
            width: 700px;
            margin: 10px 0 20px 0;
        }


        .review_edit_bibe_review{
            position: relative;
            top: 20px;
            margin: auto;
            width: 700px;
        }
        .review_edit_bibe_review .testimg2{
            position: relative;
            margin: 10px 20px 10px 0;
            width: 300px;
            height: 250px;
            border: 1px solid black;
            float: left;
        }

        .review_edit_bibe_review li{
            position: relative;
            margin: 10px 20px 10px 0;
            width: 300px;
            height: 172px;
            float: left;
        }

        .review_edit_bibe_review .review_img{
            position: relative;
            width: 150px;
            height: 170px;
            border: 1px solid #424242;
            float: left;
        }

        /*.review_edit_bibe_review label{*/
        /*    background-color: red;*/
        /*    border: 1px solid black;*/
        /*}*/

        .review_edit_buttons{
            position: relative;
            clear: both;
            float: right;
            margin-right: 150px;
            margin-top: 30px;
            margin-bottom: 40px;
        }

        .review_edit_buttons button{
            width: 50px;
            height: 30px;
            border-radius: 5px;
            border: 1px solid #424242;
            margin-right: 10px;
            box-sizing: border-box;
        }
        .review_edit_buttons .submit{
            background-color: rgb(232, 82, 1);
            color: white;
            border: 1px solid rgb(232, 82, 1);
        }


        .wrap_label{
            position: absolute;
            margin-left: 152px;
            width: 50px;
            height: 100px;
        }

        .wrap_label label{
            display: block;
            margin-top : 15px;
        }

        .wrap_toggle{
            position: absolute;
            margin-left: 202px;
            margin-top: 10px;
            width: 50px;
            height: 100px;
            top: 28px;
        }
        .wrap_toggle span{
            margin-bottom: 0px;
        }
/*토클 소스*/
        .slider{
        }
        .slider span{
            display: inline-block;
            width: 90px; height: 25px;
            background-color: #bbb;
            cursor: pointer;
            border-radius: 24px;
            transition: .2s ease;
            position: relative;
            color: white;
            line-height: 15px;
        }
        .slider .first_value{
            position: absolute;
            margin-top: 6px;
            margin-left: 4px;
            display: none;
            font-size: 13px;
        }
        .slider input:checked+span .first_value {
            display: block;
        }
        .slider .second_value{
            position: absolute;
            margin-top: 6px;
            margin-left: 45px;
            font-size: 13px;
        }
        .slider input:checked+span .second_value {
            display: none;
        }

        .slider span::before {
            content: "";
            position: absolute;
            width: 40px; height: 17px;
            background-color: #fff;
            border-radius: 16px;
            top: 4px; left: 4px;
            transition: .2s ease;
        }
        .slider input{
            display: none;
        }
        .slider input:checked+span{
            background-color: rgb(33, 150, 243);
        }


        .slider input:checked+span::before{
            transform: translateX(40px);
        }

        /*별점 소스*/
        .star_point_container {
            position: relative;
            width: 450px;
            top: 120px;
            left: 55px;
        }
    /*포토뷰어용 팝업*/
        #photoViewWrap {
            width:100%;
            height:100%;
            left:0;
            top:0;
            position: fixed;
            background-color: rgba(0,0,0,.75);
            display: none;
        }

        .photo_view_window {
            position: fixed;
            width: 830px;
            height: 735px;
            top: 50%;
            left: 50%;
            margin-left: -415px;
            margin-top: -352px;
            background-color: #2c3135;

        }

        /*.photo_view_window .big_photo img{*/
        /*    position: absolute;*/
        /*    width: 600px;*/
        /*    height: 600px;*/
        /*    margin-left: -300px;*/
        /*    left: 50%;*/

        /*}*/
        /*.photo_view_window .small_photo{*/
        /*    background-color: #006666;*/
        /*    position: absolute;*/
        /*    left: 50%;*/
        /*    bottom: 1%;*/
        /*    margin-left: -458px;*/
        /*    width: 1916px;*/
        /*}*/
        /*.photo_view_window .small_photo img{*/
        /*    position: relative;*/
        /*    width: 170px;*/
        /*    height: 170px;*/
        /*    margin: 5px;*/
        /*}*/

    </style>
</head>
<body>
    <div id="wrapFeriaDetail">

        <!--https://dimsemenov.com/plugins/magnific-popup/-->
        <!--feria info-->
        <div class="feria_info">
            <button class="btn_review">리뷰 작성하기</button>
            <div class="text_feria_title">
                <h2>펭귄들의 페리아</h2>
                <h3>일시 2020년 7월 28일</h3>
                <strong>저녁</strong>
                <h3>17시 30분</h3>
            </div>
            <div class="feria_info_header">
                <h3>페리아에 함께 즐긴 세나와 비베</h3>
            </div>
            <div class="feria_info_photo">
                <ul>
                    <li>
                        <img class="img_feria" src="img/음식1.JPG"><!--첫번째만 무조건 세나사진-->
                        <div class="min_profile">
                            <img src="img/user.png">
                            <span>사용자1</span>
                        </div>
                    </li>
                    <li>
                        <img class="img_feria" src="img/술1.jpg">
                        <div class="min_profile">
                            <img src="img/user.png">
                            <span>사용자1</span>
                        </div>
                    </li>
                    <li>
                        <img class="img_feria" src="img/술2.jpg">
                        <div class="min_profile">
                            <img src="img/user.png">
                            <span>사용자1</span>
                        </div>
                    </li>
                    <li>
                        <img class="img_feria" src="img/술3.jpg">
                        <div class="min_profile">
                            <img src="img/user.png">
                            <span>사용자1</span>
                        </div>
                    </li>
                    <li>
                        <img class="img_feria" src="img/술1.jpg">
                        <div class="min_profile">
                            <img src="img/user.png">
                            <span>사용자1</span>
                        </div>
                    </li>
                    <li>
                        <img class="img_feria" src="img/술3.jpg">
                        <div class="min_profile">
                            <img src="img/user.png">
                            <span>사용자1</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
<!--feria info끝-->

        <!--review photo-->
        <div class="feria_photo">
            <div class="feria_photo_header">
                <h3>페리아에 대한 추억 나누기</h3>
            </div>
            <div class="review_photo">
                <img src="img/party2.jpg">
                <img src="img/party3.jpg">
                <img src="img/party4.jpg">
                <img src="img/party5.jpg">
                <img src="img/kim3.jpg">
            </div>
        </div>

        <!--review photo 끝-->
        <div class="feria_review">
            <div class="feria_review_header">
                <h3>페리아에 대한 추억 나누기</h3>
            </div>
        </div>

        <div id="reviewEditWrap">
            <div class="review_window">
                <div class="review_edit_header">
                    <h1>즐거웠던 페리아와</h1>
                    <h1>같이 마시며 즐긴 비베의 리뷰를 작성해 볼까요?</h1>
                </div>
                <div class="review_edit_add_photo">
                    <h1>즐거웠던 페리아 사진 넣기</h1>
                    <h4>최대 5장</h4>
                    <img src="img/imageAddPlus.jpg">
                </div>
                <div class="review_edit_text">
                    <h1>페리아 리뷰</h1>
                    <textarea></textarea>
                </div>
                <div class="review_edit_bibe_review">
                    <h1>함께 마신 비베 리뷰</h1>
                    <ul>
                        <li>
                            <img class="review_img" src="img/술1.jpg">
                            <h3>꽐라만씨</h3>
                            <div class="wrap_label">
                                <label>당도</label>
                                <label>탄산</label>
                                <label>바디감</label>
                                <label>별점</label>
                            </div>
                            <div class="wrap_toggle">
                                <label class="slider">
                                    <input class="input_sweet" type="checkbox" name="sweet">
                                    <span class="sweet">
                                    <label class="first_value">달달함</label>
                                    <label class="second_value">드라이</label>
                                </span>
                                </label>

                                <label class="slider">
                                    <input class="input_co2" type="checkbox" name="co2">
                                    <span class="input_co2">
                                    <label class="first_value">탄산</label>
                                    <label class="second_value">무탄산</label>
                                </span>
                                </label>

                                <label class="slider">
                                    <input class="input_body" type="checkbox" name="co2">
                                    <span class="bodys">
                                        <label class="first_value">무거움</label>
                                        <label class="second_value">가벼움</label>
                                    </span>
                                </label>
                            </div>
                            <div class="star_point_container">
                                <div class='starrr' id='star1'></div>
                                <div>
                                    <!--&nbsp;

                                              <span class='your-choice-was' style='display: none;'>
                                                Your rating was <span class='choice'></span>.
                                              </span>-->
                                </div>
                            </div>

                        </li>

                        <!---->

                        <li>
                            <img class="review_img" src="img/술2.jpg">
                            <h3>꽐라만씨</h3>
                            <div class="wrap_label">
                                <label>당도</label>
                                <label>탄산</label>
                                <label>바디감</label>
                                <label>별점</label>
                            </div>
                            <div class="wrap_toggle">
                                <label class="slider">
                                    <input class="input_sweet" type="checkbox" name="sweet">
                                    <span class="sweet">
                                    <label class="first_value">달달함</label>
                                    <label class="second_value">드라이</label>
                                </span>
                                </label>

                                <label class="slider">
                                    <input class="input_co2" type="checkbox" name="co2">
                                    <span class="input_co2">
                                    <label class="first_value">탄산</label>
                                    <label class="second_value">무탄산</label>
                                </span>
                                </label>

                                <label class="slider">
                                    <input class="input_body" type="checkbox" name="co2">
                                    <span class="bodys">
                                        <label class="first_value">무거움</label>
                                        <label class="second_value">가벼움</label>
                                    </span>
                                </label>
                            </div>
                            <div class="star_point_container">
                                <div class='starrr' id='star2'></div>
                                <div>
                                    <!--&nbsp;

                                              <span class='your-choice-was' style='display: none;'>
                                                Your rating was <span class='choice'></span>.
                                              </span>-->
                                </div>
                            </div>

                        </li>



                        <li>
                            <img class="review_img" src="img/술3.jpg">
                            <h3>꽐라만씨</h3>
                            <div class="wrap_label">
                                <label>당도</label>
                                <label>탄산</label>
                                <label>바디감</label>
                                <label>별점</label>
                            </div>
                            <div class="wrap_toggle">
                                <label class="slider">
                                    <input class="input_sweet" type="checkbox" name="sweet">
                                    <span class="sweet">
                                    <label class="first_value">달달함</label>
                                    <label class="second_value">드라이</label>
                                </span>
                                </label>

                                <label class="slider">
                                    <input class="input_co2" type="checkbox" name="co2">
                                    <span class="input_co2">
                                    <label class="first_value">탄산</label>
                                    <label class="second_value">무탄산</label>
                                </span>
                                </label>

                                <label class="slider">
                                    <input class="input_body" type="checkbox" name="co2">
                                    <span class="bodys">
                                        <label class="first_value">무거움</label>
                                        <label class="second_value">가벼움</label>
                                    </span>
                                </label>
                            </div>
                            <div class="star_point_container">
                                <div class='starrr' id='star3'></div>
                                <div>
                                    <!--&nbsp;

                                              <span class='your-choice-was' style='display: none;'>
                                                Your rating was <span class='choice'></span>.
                                              </span>-->
                                </div>
                            </div>

                        </li>




                    </ul>

                </div>
                <div class="review_edit_buttons">
                    <button class="cancel">취소</button>
                    <button class="submit">등록</button>
                </div>

            </div>
        </div><!--//#reviewEditWrap-->


        <div id="photoViewWrap">
            <div class="photo_view_window">
                <div class="container">

                    <div class="flickSlider">

                        <div class="flickView">
                            <ul>
                                <li><a href="#1"><img src="img/party2.jpg" alt=""></a></li>
                                <li><a href="#2"><img src="img/party3.jpg" alt=""></a></li>
                                <li><a href="#3"><img src="img/party4.jpg" alt=""></a></li>
                                <li><a href="#4"><img src="img/party5.jpg" alt=""></a></li>
                                <li><a href="#5"><img src="img/kim3.jpg" alt=""></a></li>
                            </ul>
                        </div><!--/.flickView-->

                        <div class="flickThumb">
                            <ul>
                                <li><img src="img/party2.jpg" alt=""></li>
                                <li><img src="img/party3.jpg" alt=""></li>
                                <li><img src="img/party4.jpg" alt=""></li>
                                <li><img src="img/party5.jpg" alt=""></li>
                                <li><img src="img/kim3.jpg" alt=""></li>
                            </ul>
                        </div><!--/.flickThumb-->

                    </div><!--/.flickSlider-->
<!--<h2>COPYRIGHT &copy; <a href="http://black-flag.net/">BLACKFLAG.NET</a> ALL RIGHTS RESERVED.</h2>저작권은 이분꼐 -->
                </div><!--/#container-->
            </div>
        </div>
    </div>


    <script src="js/jquery.js"></script>
    <script src="js/starrr.js"></script>
    <script>

        // $(document).ready(function(){
        //     $("#photoViewWrap").fadeOut(100);
        // });


<!--리뷰 작성 팝업용-->
        $(".btn_review").click(function () {
            $("#reviewEditWrap").fadeIn(200);
            /*바디 스크롤 막기*/
            $('html').css({'overflow': 'hidden', 'height': '100%'});
            //$('html, body').css({'overflow': 'hidden', 'height': '100%'});
            $('#element').on('scroll touchmove mousewheel', function(event) {
                event.preventDefault();
                event.stopPropagation();
                return false;
            });
        });

        $(".review_window").click(function (e) {
            //부모로 이벤트 전파를 막음
            e.stopPropagation();
        })

        $(".cancel,#reviewEditWrap").click(function () {
            $("#reviewEditWrap").fadeOut(200);

            /*바디 스크롤 막기 해제코드*/
            $('html').css({'overflow': 'auto', 'height': '100%'});
            $('#element').off('scroll touchmove mousewheel');
        });

<!--리뷰 작성 팝업용 끝-->

<!--사진뷰어용-->
        $(".review_photo img").click(function () {
            $("#photoViewWrap").fadeIn(200);
            /*바디 스크롤 막기*/
            $('html').css({'overflow': 'hidden', 'height': '100%'});
            //$('html, body').css({'overflow': 'hidden', 'height': '100%'});
            $('#element').on('scroll touchmove mousewheel', function(event) {
                event.preventDefault();
                event.stopPropagation();
                return false;
            });




            /*슬라이더 스크립트*/
            var setWrap = $('.flickSlider'),
                setMainView = $('.flickView'),
                setThumbNail = $('.flickThumb'),
                setMaxWidth = 800,
                setMinWidth = 320,
                thumbNum = 5,
                thumbOpc = 0.5,
                scrollSpeed  = 500,
                delayTime = 5000,
                easing = 'linear',
                sideNavi = 'on', // 'on' or 'off'
                autoPlay = 'off'; // 'on' or 'off'

            var agent = navigator.userAgent;
            setWrap.each(function(){
                var thisObj = $(this),
                    childMain = thisObj.find(setMainView),mainUl = childMain.find('ul'),mainLi = mainUl.find('li'),mainLiLink = mainLi.children('a'),mainLiImg = mainLi.find('img'),
                    childThumb = thisObj.find(setThumbNail),thumbUl = childThumb.find('ul'),thumbLi = childThumb.find('li'),thumbLiFst = childThumb.find('li:first'),thumbLiLst = childThumb.find('li:last'),
                    mainWidth = parseInt(childMain.css('width')),mainHeight = parseInt(childMain.css('height')),listCount = mainUl.children('li').length;

                thisObj.css({display:'block'});

                // レスポンシブ動作メイン
                imgSize();
                function imgSize(){
                    var windowWidth = parseInt($(window).width()),
                        setUlLeft = parseInt(mainUl.css('left')),
                        setlistWidth = parseInt(mainLi.css('width')),
                        setLeft = setUlLeft / setlistWidth;

                    if(windowWidth >= setMaxWidth) {
                        thisObj.css({width:setMaxWidth});
                        childMain.css({width:setMaxWidth});
                        mainUl.css({width:((setMaxWidth)*(listCount))});
                        mainLi.css({width:setMaxWidth});

                        var listWidthA = parseInt(mainLi.css('width')),
                            leftMax = -((listWidthA)*((listCount)-1)),
                            baseHeight = mainLiImg.height();
                        childMain.css({height:baseHeight});
                        mainUl.css({height:baseHeight});
                        mainLi.css({height:baseHeight});

                        thumbUl.css({width:setMaxWidth});
                        thumbLi.css({width:((setMaxWidth)/(thumbNum)),height:''});
                    } else if(windowWidth < setMaxWidth) {
                        var listWidthB = parseInt(childMain.css('width')),
                            leftMax = -((listWidthB)*((listCount)-1));
                        thisObj.css({width:setMaxWidth});
                        if(windowWidth >= setMinWidth) {
                            thisObj.css({width:'100%'});
                            childMain.css({width:'100%'});
                            mainUl.css({width:((listWidthB)*(listCount))});
                            mainLi.css({width:(listWidthB)});
                        } else if(windowWidth < setMinWidth) {
                            thisObj.css({width:setMinWidth});
                            childMain.css({width:setMinWidth});
                            mainUl.css({width:((setMinWidth)*(listCount))});
                            mainLi.css({width:setMinWidth});
                        }
                        var reHeight = mainLiImg.height();
                        childMain.css({height:reHeight});
                        mainUl.css({height:reHeight});
                        mainLi.css({height:reHeight});

                        var reWidth = setThumbNail.width();
                        thumbUl.css({width:reWidth});
                        thumbLi.css({width:((reWidth)/(thumbNum))});
                    }

                    var adjLeftWidth = parseInt(mainLi.css('width')),
                        adjLeft = adjLeftWidth * setLeft;
                    mainUl.css({left:(adjLeft)});
                }
                imgSize();
                $(window).resize(function(){
                    if(!(agent.search(/iPhone/) != -1 || agent.search(/iPad/) != -1 || agent.search(/iPod/) != -1 || agent.search(/Android/) != -1)){
                        if(autoPlay == 'on'){clearInterval(setTimer);}
                        imgSize();
                        if(autoPlay == 'on'){slideTimer();}
                    } else {
                        imgSize();
                    }
                });

                // フリックアクション
                var isTouch = ('ontouchstart' in window);
                mainUl.on(
                    {'touchstart mousedown': function(e){
                            if(mainUl.is(':animated')){
                                e.preventDefault();
                            } else {
                                if(autoPlay == 'on'){clearInterval(setTimer);}
                                if(!(agent.search(/iPhone/) != -1 || agent.search(/iPad/) != -1 || agent.search(/iPod/) != -1 || agent.search(/Android/) != -1)){
                                    e.preventDefault();
                                }
                                this.pageX = (isTouch ? event.changedTouches[0].pageX : e.pageX);
                                this.leftBegin = parseInt($(this).css('left'));
                                this.left = parseInt($(this).css('left'));
                                this.touched = true;
                            }
                        },'touchmove mousemove': function(e){
                            if(!this.touched){return;}
                            e.preventDefault();
                            this.left = this.left - (this.pageX - (isTouch ? event.changedTouches[0].pageX : e.pageX) );
                            this.pageX = (isTouch ? event.changedTouches[0].pageX : e.pageX);
                            $(this).css({left:this.left});
                        },'touchend mouseup mouseout': function(e){
                            if (!this.touched) {return;}
                            this.touched = false;

                            var setThumbLiActive = thumbUl.children('li.active'),
                                listWidth = parseInt(mainLi.css('width')),leftMax = -((listWidth)*((listCount)-1));

                            if(((this.leftBegin)-30) > this.left && (!((this.leftBegin) === (leftMax)))){
                                $(this).stop().animate({left:((this.leftBegin)-(listWidth))},scrollSpeed,easing);
                                setThumbLiActive.each(function(){
                                    $(this).removeClass('active');
                                    $(this).next().addClass('active');
                                });
                            } else if(((this.leftBegin)+30) < this.left && (!((this.leftBegin) === 0))){
                                $(this).stop().animate({left:((this.leftBegin)+(listWidth))},scrollSpeed,easing);
                                setThumbLiActive.each(function(){
                                    $(this).removeClass('active');
                                    $(this).prev().addClass('active');
                                });
                            } else if(this.leftBegin === 0) {
                                $(this).stop().animate({left:'0'},scrollSpeed,easing);
                            } else if(this.leftBegin <= leftMax) {
                                $(this).stop().animate({left:(leftMax)},scrollSpeed,easing);
                            } else if(this.left >= 0) {
                                $(this).stop().animate({left:'0'},scrollSpeed);
                            } else if(this.left <= leftMax) {
                                $(this).stop().animate({left:(leftMax)},scrollSpeed,easing);
                            } else {
                                $(this).stop().animate({left:(this.leftBegin)},scrollSpeed,easing);
                            }
                            compBeginLeft = this.leftBegin;
                            compThisLeft = this.left;
                            mainLiLink.click(function(e){
                                if(!(compBeginLeft === compThisLeft)){
                                    e.preventDefault();
                                }
                            });
                            if(autoPlay == 'on'){slideTimer();}
                        }
                    });

                // ボタン移動動作
                thumbLi.click(function(){
                    if(autoPlay == 'on'){clearInterval(setTimer);}
                    var listWidth = parseInt(mainLi.css('width')),leftMax = -((listWidth)*((listCount)-1)),
                        connectCont = thumbLi.index(this);
                    mainUl.stop().animate({left:(-(listWidth)*(connectCont))},scrollSpeed,easing);
                    thumbLi.removeClass('active');
                    $(this).addClass('active');
                    if(autoPlay == 'on'){slideTimer();}
                });
                thumbLiFst.addClass('active');
                thumbLi.css({opacity:thumbOpc});

                // サイドナビボタン（有り無し）
                if(sideNavi == 'on'){
                    childMain.append('<div class="btnPrev"></div><div class="btnNext"></div>');
                    var setPrev = childMain.find('.btnPrev'),setNext = childMain.find('.btnNext'),setPrevNext = childMain.find('.btnPrev,.btnNext');
                    setPrevNext.css({opacity:0});

                    setNext.click(function(){
                        var setThumbLiActive = thumbUl.children('li.active');
                        setThumbLiActive.each(function(){
                            var listLengh = thumbLi.length;
                            var listIndex = thumbLi.index(this);
                            var listCount = listIndex+1;
                            if(listLengh == listCount){
                                thumbLiFst.click();
                            } else {
                                $(this).next('li').click();
                            }
                        });
                    });
                    setPrev.click(function(){
                        var setThumbLiActive = thumbUl.children('li.active');
                        setThumbLiActive.each(function(){
                            var listLengh = thumbLi.length;
                            var listIndex = thumbLi.index(this);
                            var listCount = listIndex+1;
                            if(1 == listCount){
                                thumbLiLst.click();
                            } else {
                                $(this).prev('li').click();
                            }
                        });
                    });
                }

                // サムネイルマウスオーバー
                if(!(agent.search(/iPhone/) != -1 || agent.search(/iPad/) != -1 || agent.search(/iPod/) != -1 || agent.search(/Android/) != -1)){
                    thumbLi.hover(function(){
                        $(this).stop().animate({opacity:'1'},300);
                    },function(){
                        $(this).stop().animate({opacity:thumbOpc},300);
                    });
                    if(sideNavi == 'on'){
                        setPrevNext.hover(function(){
                            $(this).stop().animate({opacity:'1'},300);
                        },function(){
                            $(this).stop().animate({opacity:0},300);
                        });
                    }
                }

                // 自動再生（有り無し）
                if(autoPlay == 'on'){
                    function slideTimer() {
                        setTimer = setInterval(function(){
                            var setThumbLiActive = thumbUl.children('li.active');
                            setThumbLiActive.each(function(){
                                var listLengh = thumbLi.length;
                                var listIndex = thumbLi.index(this);
                                var listCount = listIndex+1;
                                if(listLengh == listCount){
                                    thumbLiFst.click();
                                } else {
                                    $(this).next('li').click();
                                }
                            });
                        },delayTime);
                    }
                    slideTimer();
                }
            });
/*슬라이더 스크립트 끝*/

            //alert($(".small_photo img").length);요소 개수 확인
        });

        $(".photo_view_window").click(function (e) {
            //부모로 이벤트 전파를 막음
            e.stopPropagation();
        })

        $(".cancel,#photoViewWrap").click(function () {
            $("#photoViewWrap").fadeOut(200);

            /*바디 스크롤 막기 해제코드*/
            $('html').css({'overflow': 'auto', 'height': '100%'});
            $('#element').off('scroll touchmove mousewheel');
        });


<!--사진뷰어용 끝-->

<!--슬라이더용 스크립트-->

    <!--슬라이더용 스크립트 part1끝-->


    <!--별점-->

        $('#star1').starrr({
            change: function(e, value){
                if (value) {
                    $('.your-choice-was').show();
                    $('.choice').text(value);
                } else {
                    $('.your-choice-was').hide();
                }
            }
        });
        $('#star2').starrr({
            change: function(e, value){
                if (value) {
                    $('.your-choice-was').show();
                    $('.choice').text(value);
                } else {
                    $('.your-choice-was').hide();
                }
            }
        });
        $('#star3').starrr({
            change: function(e, value){
                if (value) {
                    $('.your-choice-was').show();
                    $('.choice').text(value);
                } else {
                    $('.your-choice-was').hide();
                }
            }
        });
        $('#star4').starrr({
            change: function(e, value){
                if (value) {
                    $('.your-choice-was').show();
                    $('.choice').text(value);
                } else {
                    $('.your-choice-was').hide();
                }
            }
        });
        $('#star5').starrr({
            change: function(e, value){
                if (value) {
                    $('.your-choice-was').show();
                    $('.choice').text(value);
                } else {
                    $('.your-choice-was').hide();
                }
            }
        });

    </script>
    <!--별점끝-->


</body>
</html>