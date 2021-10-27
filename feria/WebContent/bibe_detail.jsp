<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/notosanskr.css" />
    <link rel="icon" href="img/logo.png"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/all.min.css" rel="stylesheet">

    <style>
        #wrapBibeDetail{
            width: 1200px;
            margin: auto;
        }
        .wrap_bibe_info{
            width: 1200px;
            position: relative;
            padding: 40px 0;
        }
        .bibe_info_area{
            padding-bottom: 20px;
            border-bottom: 2px solid #9e9e9e;
        }
        .bibe_info_area img{
            width: 200px;
            height: 200px;
            float: left;

        }
        .bibe_info_area .bibe_name{
            margin-left: 220px;
            font-size: 24px;
            margin-bottom: 40px;
        }


        .bibe_discoverer{
            position: relative;
            left: 750px;
            bottom: 80px;
            float: left;
        }
        .bibe_discoverer img{
            width: 80px;
            height: 80px;
        }
        .bibe_discoverer strong{
            font-size: 18px;
            font-weight: bold;
        }
        .bibe_discoverer .discoverer_info{
            position: absolute;
            width: 200px;
            left: 80px;
            top: 30px;
            line-height: 20px;
            font-size: 16px;
            color: #9e9e9e;
        }

        /*재료 표시부*/

        .bibe_ingredient_ratio_area{
            padding-bottom: 40px;
            /*border-bottom: 2px solid #9e9e9e;*/
        }
        .bibe_ingredient_ratio_area span{
            position: absolute;
            right: 0;
            margin-top: 20px;
        }
        .ingredient_imgs{
            clear: both;
            width: 1200px;
        }
        .ingredient_imgs::after{
            content: "";
            display: block;
            clear: both;
        }
        .ingredient_imgs>li{
            border: 1px solid #dddddd;
            float: left;
            width: 150px;
            margin-right: 10px;
        }
        .ingredient_imgs li img{
            width: 150px;
            height: 150px;
        }
        .ingredient_imgs li div{
            text-align: center;
            margin: 5px 0;
            font-size: 16px;
        }
        .wrap_cocktailcup{
            width: 150px;
            height: 200px;
            position: relative;
        }
        .wrap_cocktailcup::after{
            content: "";
            display: block;
            clear: both;
        }
        .wrap_cocktailcup img{
            width: 150px;
            height: 150px;
            position: absolute;
            bottom: 25px;
        }
        .wrap_cocktailcup #ing1{
            right: 5px;
            height: 85px;
            bottom: 48px;
            background-color: red;
        }
        .wrap_cocktailcup #ing2{
            right: 5px;
            height: 10px;
            bottom: 133px;
            background-color: blue;
        }
        .wrap_cocktailcup #ing3{
            right: 5px;
            height: 2px;
            bottom: 134px;
            background-color: orange;
        }
        .wrap_cocktailcup #ing4{
            right: 5px;
            height: 1px;
            bottom: 136px;
            background-color: green;
        }
        .wrap_cocktailcup #ing5{
            right: 5px;
            height: 1px;
            bottom: 137px;
            background-color: red;
        }
        .wrap_cocktailcup #ing6{
            right: 5px;
            height: 1px;
            bottom: 138px;
            background-color: deepskyblue;
        }


        .wrap_cocktailcup .ing{
            position: absolute;
            bottom: 45px;
            margin-left: 5px;
            width: 155px;
            background-color: blue;
        }
        /*재료 표시부 끝*/

        /*상세 내용부*/
        .bibe_description_area{
            width: 1000px;
            margin-left: 20px;
            padding: 5px;
            border: 1px solid #9e9e9e;
        }

        .bibe_description_area .more_button{
            text-align: center;
            font-weight: bold;
        }
        /*상세 내용부 끝*/

        .wrap_bibe_review_tab{
            position: relative;
            height: auto;
        }
        .wrap_bibe_review_tab .review_header{
            height: 30px;
            position: relative;
            margin-top: 40px;
            margin-right: 10px;
            border-bottom: 2px solid #9e9e9e;
        }
        .wrap_bibe_review_tab .review_header h3{
            float: left;
            margin-right: 10px;
        }
        .wrap_bibe_review_tab .review_header h4{
            float: left;
            margin-right: 10px;
        }

        .wrap_bibe_review_tab .tab_area{
            width: 1200px;
            height: 500px;/*추후 오토로*/
        }
        .select_tab section{
            display: none;
            /*padding: 20px 0 0;*/
            /*border-top: 1px solid #ddd;*/
        }
        .select_tab input{
            display: none;
        }
        .select_tab label{
            display: inline-block;
            margin: 0 0 -1px;
            padding:15px 25px;
            font-weight: 600;
            text-align: center;
            color: #9e9e9e;/*
            border: 1px solid transparent;*/
        }
        .select_tab label:hover{
            color: #2e9cdf;
            cursor: pointer;
        }
        .select_tab input:checked + label{
            /*color: #555;*/
            /*border:1px solid #ddd;*/
            /*border-top: 2px solid #2e9cdf;*/
            /*border-bottom: 1px solid #ffffff;*/
            }
        #reviewTab:checked ~ #reviewPage,
        #commentTab:checked ~ #commentPage{
            display: block;
        }

        .tab_review{
            width: 1000px;
            height: 400px;
            margin: 30px 0;
            border-top: 2px solid #9e9e9e;
            padding-top: 20px;
            position: relative;
        }
        .tab_review .img_faria img{
            width: 400px;
            height: 300px;
            box-sizing: border-box;
            float: left;
            margin-top: 50px;
        }
        .tab_review .rating_faria_bibe{
            position: absolute;
            left: 410px;
            top: 70px;
            width: 600px;
            height: 300px;
        }
        .tab_review .rating_faria_bibe img {
            width: 40px;
            height: 40px;
            margin: 5px;
            box-sizing: border-box;
            float: left;
            display: block;
        }

        .tab_review .rating_faria_bibe .user_info{
            height: 25px;
            width: 150px;
            float: left;
            margin-top: 12.5px;
        }
        .tab_review .rating_faria_bibe .user_info .user_name{
            float: left;
            font-size: 18px;
            line-height: 25px;
        }
        .wrap_review .created_date{
            line-height: 1.4;
            color: #7b8184;
            float: left;
            width: 130px;
            height: 25px;
            position: absolute;
            right: 0;
            top: 12.5px;
        }

        .tab_review .rating_faria_bibe .flavor{
            height: 25px;
            font-size: 16px;
        }
        .tab_review .rating_faria_bibe .flavor div{
            height: 25px;
            font-size: 16px;
            line-height: 1.5;
            border-radius: 5px;
            color: white;
            margin: 12.5px 2px 2px 0;
        }
        .tab_review .rating_faria_bibe .flavor .sweet{
            float: left;
            background-color: rgb(232,82,1);
        }
        .tab_review .rating_faria_bibe .flavor .co2{
            float: left;
            background-color: rgb(232,82,1);
        }
        .tab_review .rating_faria_bibe .flavor .bibe_body{
            float: left;
            background-color: rgb(232,82,1);
        }
        .tab_review .rating_faria_bibe .flavor .star{
            float: left;
            background-color: #ffffff;
            color: #e65100;
        }

        .tab_review .img_bibe_cup{
            position: relative;
            left: 450px;
            float: left;
        }
        .tab_review .img_bibe_cup img{
            width: 200px;
            height: 300px;
            float: left;
        }

        /*이하 전체댓글 탭 부분*/

        .tab_comment .btn_submit{
            background-color: rgb(232,82,1);
            color: white;
            border: none;
            width: 80px;
            height: 40px;
            border-radius: 5px;
            font-size: 18px;
        }
        .user_comment .comment_text{
            clear: both;
            margin: 20px 0;
        }

        .tab_comment{

            width: 1200px;
        }

        /*댓글입력창*/
        .tab_comment .comment_header_text{
            margin: 20px 10px 0 10px;
            font-size: 24px;
        }
        .tab_comment .comment_input_area{
            background-color: #fafafa;
            height: 200px;
            width: 1200px;
            border-bottom: 2px solid #72777b;
        }
        .tab_comment .comment_input_area textarea{
            margin: 0 150px;
            height: 160px;
            width: 900px;
            box-sizing: border-box;
        }
        .tab_comment .btn_comment_sumit{
            position: relative;
            left: 970px;
            top: -43px;
        }
        /*댓글입력창 끝*/

        /*!*대댓글입력창*!*/
        .comment_contents .fas fa-arrow-right{
            left: 100px;
            float: left;
        }
        .comment_on_comments_input_area{
            background-color: #bbbbbb;
            border-bottom: 2px solid #72777b;
        }
        .comment_on_comments_input_area .comment_on_comments_header_text{
            margin: 0 10px 0 10px;
            font-size: 24px;
        }
       .comment_on_comments_input_area .comment_on_comments_textarea{
           margin: 10px 150px 0 150px;
           height: 160px;
           width: 900px;
           box-sizing: border-box;
       }
       .comment_on_comments_input_area .btn_comment_on_comments_sumit{
           position: relative;
           left: 970px;
           top: -43px;
       }
        /*!*대댓글입력창 끝*!*/

        /*댓글 css*/
        .tab_comment .user_comment{
            margin: 20px 0;
            border-bottom: 2px solid #72777b;
        }
        .user_comment .comment_contents .img_min_profile img{
            width: 80px;
            height: 80px;
            margin-bottom: 20px;
            float: left;
        }
        .user_comment .comment_contents .user_name{
            margin-top: 20px;
            margin-left: 100px;
            margin-bottom: 10px;
            height: 30px;
            line-height: 3;
            font-size: 20px;
        }
        .user_comment .comment_contents .created_date{
            height: 30px;
            margin-left: 20px;
            float: left;
            line-height: 3;
            color: #7b8184;
        }
        .user_comment .comment_contents .btn_report_user{
            height: 30px;
            margin-left: 20px;
            line-height: 3;
            float: left;
        }
        /*댓글 css 끝*/

        /*대댓글 css*/
        .tab_comment .comment_on_comments{
            margin: 20px 100px;
            background-color: #9e9e9e;
        }
        .user_comment .comment_on_comments .img_min_profile img{
            width: 80px;
            height: 80px;
            margin-bottom: 20px;
            float: left;
        }
        .user_comment .comment_on_comments .user_name{
            margin-top: 20px;
            margin-left: 100px;
            margin-bottom: 10px;
            height: 30px;
            line-height: 3;
            font-size: 20px;
        }
        .user_comment .comment_on_comments .created_date{
            height: 30px;
            margin-left: 20px;
            float: left;
            line-height: 3;
            color: #7b8184;
        }
        .user_comment .comment_on_comments .btn_report_user{
            height: 30px;
            margin-left: 20px;
            line-height: 3;
            float: left;
        }
        /*대댓글 css 끝*/



/*맛표시바*/
        .wrap_info{
            height: 30px;
            position: relative;
            margin: 5px 0 0 290px;
            width: 200px;
        }
        .wrap_info strong{
            position: absolute;
            text-shadow: 0 0 1px #424242;
        }
        .wrap_info strong.info_text{
            left: -70px; top: 5px;
        }
        .wrap_info strong.info_left{
            left: 0; top: 5px;
        }
        .wrap_info strong.info_right{
            right: 0; top: 5px;
        }
        /*.wrap_info .slider{*/
        /*    position: absolute;*/
        /*    left: 50px;*/
        /*}*/

        /*li:hover .list_inner-box{*/
        /*    display: block;*/
        /*}*/
        /*li:hover {*/
        /*    background-color: #aaaaaa;*/
        /*}*/
        /*li:hover .btn_heart{*/
        /*    background: white;*/
        /*}*/
        .toggle{
            width: 100px;
            height: 20px;
            border-radius: 5px;
            position: absolute;
            top: 3px;
            left: 50px;
        }
        .bar_toggle1{
            background-color: #dddddd;
            position: relative;
        }
        .bar_toggle2{
            width: 80px;
            position: absolute;
            left: 0; top: 0;
            background-color: #e65100;
        }
        /*맛표시바 끝*/

        /*별점 고정*/
        .bibe_info_area .bg_full_star{
            position: absolute;
            top: 5px;
            font-size: 16px;
            color: #eee;
            background-image: url("img/bg_star.png");
            width: 110px; height: 17px;
            background-position: 0 -20px;
            z-index: 1;
            background-color: inherit;
        }
        .bibe_info_area .bg_void_star{
            position: absolute;
            top: 5px;
            font-size: 16px;
            color: #eee;
            background-image: url("img/bg_star.png");
            width: 110px; height: 17px;
            background-position: 0 0;
            background-color: inherit;
        }
        .wrap_review{
            width: 550px;
            height: 50px;
            position: relative;
        }

        /*별점 고정 끝끝*/

   </style>
</head>
<body>
    <div id="wrapBibeDetail">
        <div class="wrap_bibe_info">
            <div class="bibe_info_area">
                <img src="img/cocktail.JPG">
                <div class="bibe_name">타이 올드 패션드</div>

                <div class="wrap_info">
                    <strong class="info_text">당도</strong>
                    <strong class="info_left">드라이</strong>
                    <div class="bar_toggle1 toggle">
                        <div class="bar_toggle2 toggle" style="width:<%-- <%=bibe.sweet%> --%>10px"></div>
                    </div>
                    <strong class="info_right">달콤함</strong>
                </div>
                <div class="wrap_info">
                    <strong class="info_text">탄산감</strong>
                    <strong class="info_left">탄산</strong>
                    <div class="bar_toggle1 toggle">
                        <div class="bar_toggle2 toggle" style="width:<%-- <%=bibe.carbonate%> --%>10px"></div>
                    </div>
                    <strong class="info_right">무탄산</strong>
                </div>
                <div class="wrap_info">
                    <strong class="info_text">바디감</strong>
                    <strong class="info_left">가벼움</strong>
                    <div class="bar_toggle1 toggle">
                        <div class="bar_toggle2 toggle" style="width:<%-- <%=bibe.weight%> --%>10px"></div>
                    </div>
                    <strong class="info_right">무거움</strong>
                </div>
                <div class="wrap_info">
                    <strong class="info_text">별점</strong>
                    <span class="bg_full_star"></span>
                    <span class="bg_void_star"></span>
                </div>

                <div class="bibe_discoverer">
                    <img src="img/user.png">
                    <strong>발견자 사용자이름</strong>
                    <div class="discoverer_info">
                        <div class="discoverer_date">최종수정일</div>
                        <div class="discoverer_date">2020.06.30 16:17</div>
                    </div>
                </div>
            </div>
            <div class="bibe_ingredient_ratio_area">
                <a href="#"><span>바쿠스에게 수정제안</span></a>
                <ul class="ingredient_imgs">
                    <li class="wrap_cocktailcup">
                        <div id="ing1" class="ing"></div>
                        <div id="ing2" class="ing"></div>
                        <div id="ing3" class="ing"></div>
                        <div id="ing4" class="ing"></div>
                        <div id="ing5" class="ing"></div>
                        <div id="ing6" class="ing"></div>
                        <img src="img/cup2.png" alt="유리컵">
                    </li><!--wrap_cocktailcup-->
                </ul>
            </div>
            <div class="bibe_description_area">
                <p>더보기 기능 확인용</p>
                <p class="more_button" id="bMore2" onclick="fnMore1()">
                    상세 내용 보기
                </p>
                <div id="divMore2" style="display: none;">
                    <p>더보기 기능을 사용효과</p>
                    <p>더보기 기능을 사용효과</p>
                    <p>더보기 기능을 사용효과</p>
                    <p class="more_button" onclick="fnMore2()">접기</p>
                </div>

            </div>
        </div>
        <div class="wrap_bibe_review_tab">
            <div class="review_header">
                <h3>의견 쓰기</h3>
                <h4>총 n건</h4>
                <div>새로고침 아이콘</div>
            </div>
            <div class="tab_area">
                <div class="select_tab">
                    <input id="reviewTab" type="radio" name="bibe_review_tab" checked>
                    <label for="reviewTab">리뷰</label>
                    <input id="commentTab" type="radio" name="bibe_review_tab">
                    <label for="commentTab">전체댓글</label>

                    <section id="reviewPage">
                        <div class="tab_review">

                            <div class="img_faria"><img src="img/party5.jpg"></div>

                            <div class="rating_faria_bibe">
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>

                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>

                            </div>


                        </div>

                        <div class="tab_review">

                            <div class="img_faria"><img src="img/party5.jpg"></div>

                            <div class="rating_faria_bibe">
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>

                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>

                            </div>


                        </div>

                        <div class="tab_review">

                            <div class="img_faria"><img src="img/party5.jpg"></div>

                            <div class="rating_faria_bibe">
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>

                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>
                                <div class="wrap_review">
                                    <div class="profile_img"><img src="img/user.png"></div>
                                    <div class="user_info">
                                        <div class="user_name"><strong>전미도</strong></div>
                                    </div>
                                    <div class="flavor">
                                        <div class="sweet">달달함</div>
                                        <div class="co2">무탄산</div>
                                        <div class="bibe_body">무거움</div>
                                        <div class="star">★★★</div>
                                    </div>
                                    <div class="created_date">2020.01.01 16:11</div>
                                </div>

                            </div>


                        </div>

                        <div class="for_paginate"></div>
                    </section>

                    <section id="commentPage">
                        <div class="tab_comment">
                            <div class="comment_input_area">
                                <div class="comment_header_text">댓글 달기</div>
                                <textarea placeholder="주제와 무관한 댓글이나 악플은 경고조치 없이 삭제되며 징계 대상이 될 수 있습니다."></textarea>
                                <button class="btn_submit btn_comment_sumit">등록</button>
                            </div>

                            <div class="user_comment">
                                <div class="comment_contents">
                                    <div class="img_min_profile"><img src="img/user.png"></div>
                                    <div class="user_name">이현지</div>
                                    <div class="created_date">2020.01.01 10:10</div>
                                    <div class="btn_report_user">신고버튼</div>
                                </div>
                                <div class="comment_text">배아파</div>
                                <button class="btn_submit btn_comment_on_comment">답글</button>

                                <div class="comment_on_comments_input_area">
                                    <div class="comment_on_comments_header_text"><i class="fas fa-arrow-right"></i>유저이름asssssssssssssssaaa에게 답글달기</div>
                                    <textarea class="comment_on_comments_textarea" placeholder="주제와 무관한 댓글이나 악플은 경고조치 없이 삭제되며 징계 대상이 될 수 있습니다."></textarea>
                                    <button class="btn_submit btn_comment_on_comments_sumit">등록</button>
                                </div><!--입력버튼 누를시 생성되게게-->
                               <div class="comment_on_comments">
                                    <div class="comment_on_comments_contents">
                                        <div class="img_min_profile"><img src="img/user.png"></div>
                                        <div class="user_name">이현지</div>
                                        <div class="created_date">2020.01.01 10:10</div>
                                        <div class="btn_report_user">신고버튼</div>
                                    </div>
                                    <div class="comment_text">왜아픔?</div>

                                    <div class="comment_on_comments_contents">
                                        <div class="img_min_profile"><img src="img/user.png"></div>
                                        <div class="user_name">이현지</div>
                                        <div class="created_date">2020.01.01 10:10</div>
                                        <div class="btn_report_user">신고버튼</div>
                                    </div>
                                    <div class="comment_text">왜아픔?</div>

                                    <div class="comment_on_comments_contents">
                                        <div class="img_min_profile"><img src="img/user.png"></div>
                                        <div class="user_name">이현지</div>
                                        <div class="created_date">2020.01.01 10:10</div>
                                        <div class="btn_report_user">신고버튼</div>
                                    </div>
                                    <div class="comment_text">왜아픔?</div>
                                </div>
                            </div>
                            <div class="user_comment">
                                <div class="comment_contents">
                                    <div class="img_min_profile"><img src="img/user.png"></div>
                                    <div class="user_name">이현지</div>
                                    <div class="created_date">2020.01.01 10:10</div>
                                    <div class="btn_report_user">신고버튼</div>
                                </div>
                                <div class="comment_text">배아파</div>
                                <button class="btn_submit btn_comment_on_comment">답글</button>

                                    <div class="comment_on_comments"></div>
                                </div>
                            <div class="user_comment">
                                <div class="comment_contents">
                                    <div class="img_min_profile"><img src="img/user.png"></div>
                                    <div class="user_name">이현지</div>
                                    <div class="created_date">2020.01.01 10:10</div>
                                    <div class="btn_report_user">신고버튼</div>
                                </div>
                                <div class="comment_text">배아파</div>
                                <button class="btn_submit btn_comment_on_comment">답글</button>

                                <div class="comment_on_comments">
                                    <div class="comment_on_comments_contents">
                                        <div class="img_min_profile"><img src="img/user.png"></div>
                                        <div class="user_name">이현지</div>
                                        <div class="created_date">2020.01.01 10:10</div>
                                        <div class="btn_report_user">신고버튼</div>
                                    </div>
                                    <div class="comment_text">왜아픔?</div>

                                    <div class="comment_on_comments_contents">
                                        <div class="img_min_profile"><img src="img/user.png"></div>
                                        <div class="user_name">이현지</div>
                                        <div class="created_date">2020.01.01 10:10</div>
                                        <div class="btn_report_user">신고버튼</div>
                                    </div>
                                    <div class="comment_text">왜아픔?</div>

                                    <div class="comment_on_comments_contents">
                                        <div class="img_min_profile"><img src="img/user.png"></div>
                                        <div class="user_name">이현지</div>
                                        <div class="created_date">2020.01.01 10:10</div>
                                        <div class="btn_report_user">신고버튼</div>
                                    </div>
                                    <div class="comment_text">왜아픔?</div>
                                </div>
                                </div>
                            <div class="for_paginate"></div>
                        </div>
                    </section>

                </div>
            </div>
        </div>
    </div>
    <script>
        let ingIdx = 1;
        function fnMore1()
        {
        document.getElementById("divMore2").style.display="";
        document.getElementById("bMore2").style.display="none";
        }

        function fnMore2()
        {
        document.getElementById("divMore2").style.display="none";
        document.getElementById("bMore2").style.display="";
        }
    </script>
    <script type="text/template" id="ingTmpl">
        <@ _.each(ingredients,function(ingredient) { @>
        <div id="ing<@=ingIdx+@>" class="ing" style="height:<@=ingredient.percent@>"></div>
        <@ }) @>
    </script>
    <script type="text/template" id="ingredientTmpl">
        <@ _.each(ingredients,function(ingredient) { @>
        <li><img src="<@=ingredient.img@>"><div><@=ingredient.title@></div><div><@=ingredient.percent@>%</div></li>
        <@ }) @>
    </script>
    <script src="js/jquery.js"></script>
    <script src="js/underscore-min.js"></script>
    <script>
    	_.templateSettings = {interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};
        $ingredientTmpl = _.template($("#ingredientTmpl").html());
        $ingredientImgs = $(".ingredient_imgs");


        function getIngredient() {
            $.ajax({
                url:"ajax/oldfashion.json",
                type:"get",
                error:function () {
                    alert("점검중");
                },
                success:function (json) {
                    $ingredientImgs.append($ingredientTmpl({ingredients:json}));
                }
            })
        }
        getIngredient();

        /*$wrapCocktailcup = $(".wrap_cocktailcup");
        $ingTmpl = _.template($("#ingTmpl").html());*/
        /*function getIng() {
            $.ajax({
                url:"ajax/oldfashion.json",
                type:"get",
                error:function () {
                    alert("점검중");
                },
                success:function (json) {
                    $wrapCocktailcup.append($ingTmpl({ingredients:json}));
                }
            })
        }
        getIng();*/
    </script>
</body>
</html>