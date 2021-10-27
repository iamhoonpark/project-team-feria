<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/notosanskr.css">
    <link rel="stylesheet" href="css/reset.css">
    <style>
        /*폰트*/
        body{font-family: 'Noto Sans KR', sans-serif;}

        /*header 영역*/
        #wrapHeader{
            width: 1200px;
            height: 122px;
            margin: auto;
            border-bottom: solid 1px #aaaaaa;
        }
        #wrapHeader::after{
            content: "";
            clear: both;
        }
        #wrapHeader h1{
            float: left;
            padding: 10px 0 0 10px;
        }
        #wrapHeader h1 a{
            display: block;
            width: 100px; height: 100px;
            background: url(img/logo.jpg) no-repeat left top;
            background-size: 100px;
            text-indent: -5000px;
        }
        #wrapMenu{
            float: right;
            margin: 46.5px 20px 0 0;
        }
        #wrapMenu ul {
            text-align: center;
        }
        #wrapMenu ul::before{
            content: "";
            clear: both;
        }
        #wrapMenu ul li{
            float: left;
            margin-left: 20px;

        }
        #wrapMenu ul li .btn_menu::after, #wrapMenu ul li .btn_menu::before{
            content: "";
            width: 0;
            height:2px;

            position: absolute;
            bottom: 0;
            background-color: #222;

            transition: .2s ease;

        }
        .tabmenu label{
            /*position: relative;*/
            /*left: -10px;*/
        }
        #wrapMenu ul li .btn_menu::before{
            left: 50%;
        }
        #wrapMenu ul li .btn_menu::after{
            right: 50%;
        }
        #wrapMenu ul li .btn_menu:hover::before{
            transform: scaleX(1);
            width: 50%;
        }
        #wrapMenu ul li .btn_menu:hover::after{
            transform: scaleX(1);
            width: 50%;
        }
        #wrapHeader #wrapMenu ul li a{
            position:relative;
            text-decoration: none;
            color: #222222;
            display: block;
            height: 30px;
            line-height: 30px;
        }

        #wrapHeader #wrapMenu .btn_alarm{
            display: block;
            font-size: 22px;
        }
        #wrapHeader #wrapMenu .btn_account{
            display: block;
            text-align: center;
            line-height: 30px;
            width: 150px;
            height: 30px;
            border-radius: 20px;
            position: relative;
        }
        #wrapHeader #wrapMenu .btn_account img{
            display: inline-block;
            width:  25px;
            height: 25px;
            position: absolute;
            left: 2.5px;
            top: 2.5px;
        }
        #wrapHeader #wrapMenu .btn_account span{
            display: inline-block;
            position: absolute;
            left: 30px;
        }
        #wrapHeader #wrapMenu .account_depth::before{

        }/*비어있음*/
        #wrapHeader #wrapMenu .account_depth{
            margin-top: 5px;
            border: 1px solid #9e9e9e;
            background-color: #fff;
            border-radius: 5px;
        }
        #wrapHeader #wrapMenu .account_depth li{
            border-bottom: 1px solid #9e9e9e;
            float: none;
            width: 75%;
            height: 25px;
            margin: auto;
        }
        #wrapHeader #wrapMenu .account_depth li:nth-child(4){

            border-bottom: none;
            margin: auto;
        }
        #wrapHeader #wrapMenu .account_depth li a{

            width: 75%;
            height: 20px;
            line-height: 25px;
            font-size: 14px;
            margin: auto;
            text-align: center;
        }

        /*마이페이지 css*/
        #wrapMypageHeader{
            width: 1140px;
            height: 185px;
            background-color: burlywood;
            margin: 20px auto;
            padding: 10px;

        }
        #wrapMypageHeader .mypage_img{
            height: 185px;
            float: left;
            display: inline-block;
        }
        #wrapMypageHeader .mypage_img img{
            margin-left: 20px;
            margin-top: 20px;
            width: 120px;
            height: 120px;
        }
        #wrapMypageHeader .mypage_img h4{
            padding-left: 20px;
            height: 33px;
            width: 120px;

            text-align: center;
            line-height: 1.6;
            font-size: 20px;
        }

        #wrapMypageHeader .mypage_text{
            height: 111px;
            width:470px;

            line-height: 1.5;
            font-size: 39px;
            text-align: left;

            float: left;
            margin-left: 60px;
        }

        #wrapMypageHeader .mypage_info{
            height: 165px;
            width: 430px;
            margin-left: 690px;
            padding: 10px 10px;
            background-color: rgb(230, 230, 230);
        }
        #wrapMypageHeader .mypage_info .text_box1{
            position: absolute;
            height: 120px;
            width: 290px;
            font-size: 18px;
        }

        #wrapMypageHeader .mypage_info .text_box1 strong{
            font-weight: bold;
        }

        #wrapMypageHeader .mypage_info .text_box2{
            position: absolute;
            margin-top: 130px;
            height: 40px;
            width: 135px;
        }

        #wrapMypageHeader .mypage_info .img_box{
            position: absolute;
            background-color: white;
            height: 160px;
            width: 135px;
            border: 2px solid rgb(232, 82, 1);
            border-radius: 18px;
            margin-left: 290px;
        }
        #wrapMypageHeader .mypage_info .img_box img{
            margin: 15px 38px;
            width: 60px;
            height: 60px;
        }

        #wrapMypageHeader .mypage_info .img_text{
            width: 110px;
            height: 56px;
            margin: 20px auto;
            text-align: center;
        }


        /*마이페이지 css 끝*/

    /*    마이페이지 탭*/



        .tabmenu{
            margin-top: 20px;
            position: absolute;
        }

        .tabmenu ul li{
            display:  inline-block;
            float:left;
            margin-right: 10px;
            text-align:center;
            position: relative;
            left: -10px;
        }

        .tabmenu ul #tab1{
            width: 100px;
            height: 36px;
            border: 2px solid rgb(232, 82, 1);
            border-radius: 6px;
            color: rgb(232, 82, 1);
            position: relative;
            left: -10px;
        }
        .tabmenu ul #tab2{
            width: 100px;
            height: 36px;
            border: 2px solid rgb(232, 82, 1);
            line-height: 1.4;
            border-radius: 6px;
            color: rgb(232, 82, 1);
            position: relative;
            left: -10px;
        }

        .tabmenu label{
            display:block;
            width:100%;
            height:40px;
            line-height:35px;
            font-size: 25px;
        }
        .tabmenu input{
            display:none;
        }

        .tabmenu #tab1 input:checked ~ label{
            height: 36px;
            border-radius: 3px;
            background:rgb(232, 82, 1);
            border: 2px solid rgb(232, 82, 1);
            box-sizing: border-box;
            color: white;
            font-size: 25px;
            line-height:34px;

        }
        .tabmenu #tab2 input:checked ~ label{
            height: 36px;
            border-radius: 3px;
            background:rgb(232, 82, 1);
            border: 2px solid rgb(232, 82, 1);
            box-sizing: border-box;
            color: white;
            font-size: 25px;
            line-height:34px;

        }
        .tabmenu #tab3 input:checked ~ label{
            border-bottom: 2px solid rgb(34,34,34);
        }
        .tabmenu #tab4 input:checked ~ label{
            border-bottom: 2px solid rgb(34,34,34);
        }

        /*.tabmenu input:checked ~ .tabCon{*/
        /*    width: 1140px;*/
        /*    height: 1000px;*/
        /*    display:block;*/
        /*}*/
    /*    마이페이지 탭 끝*/


        #loadPageLocal{
            width: 1200px;
            /*height: 1000px;*/
            margin: 60px auto;
        }


    </style>

</head>
<body>
<div id="wrapHeader">
    <h1>
        <a href="#">Feria</a>
    </h1>
    <div id="wrapMenu">
        <ul class="wrap_menu">
            <li><a href="#" class="btn_menu">페리아에 참가하기</a></li>
            <li><a href="#" class="btn_menu">페리아에 손님 맞이하기</a></li>
            <li><a href="#" class="btn_menu">페리아</a></li>
            <li><a href="#" class="btn_menu">비베</a></li>
            <li><a href="#" class="btn_alarm"><i class="fas fa-bell"></i></a></li>
            <li><a href="#" class="btn_account"><img src="img/user.png" alt="프로필"><span>MMMMMMMMMM</span></a>
                <ul class="account_depth">
                    <li><a href="#">호스트</a></li>
                    <li><a href="#">게스트</a></li>
                    <li><a href="#">설정</a></li>
                    <li><a href="#">로그아웃</a></li>
                </ul>
            </li>
        </ul>


    </div>
</div>

<!--마이페이지 헤더-->
<div id="wrapMypageHeader">
    <div class="mypage_img">
        <img src="img/user.png" alt="프로필">
        <h4>Hyuongyeon</h4>
    </div>
    <div class="mypage_text">
            <span>만나서 반갑습니다!! 김치찌개드셔보실래요?</span>
    </div>
    <div class="mypage_info">
        <div class="text_box1">
            <div><strong>사용자님은</strong></div>
            <div><strong>n</strong>번의 페리아에 초대받았고,</div>
            <div>직접 준비한 세나로</div>
            <div><strong>n명</strong>의 손님을 맞이 했습니다.</div>
        </div>
        <div class="text_box2">
            <div>회원가입일</div>
            <div>2020-01-01</div>
        </div>
        <div class="img_box">
            <img src="img/pie1.jpg" alt="프로필">
            <div class="img_text">
                <div>밀가루2000g</div>
                <div>설탕2000g</div>
            </div>
        </div>
    </div>

    <!--마이페이지 탭-->
    <div class="tabmenu">
        <ul>
            <li id="tab1" class="btnCon"> <input type="radio" checked name="tabmenu" id="tabmenu1">
                <label for="tabmenu1">호스트</label>
<!--                <div class="tabCon"></div>-->
            </li>

            <li id="tab2" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu2">
                <label for="tabmenu2">게스트</label>
<!--                <div class="tabCon"></div>-->
            </li>

            <li id="tab3" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu3">
                <label for="tabmenu3">친구관리</label>
<!--                <div class="tabCon"></div>-->
            </li>

            <li id="tab4" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu4">
                <label for="tabmenu4">블랙리스트</label>
<!--                <div class="tabCon">There are manys etc.</div>-->
            </li>
        </ul>
    </div>
    <!--마이페이지 탭 끝-->

</div>
<!--마이페이지 헤더끝-->
<div id="loadPageLocal">

</div>
<script src="https://cdn.jsdelivr.net/npm/@jaames/iro@5"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cbdad33602748af025c0cc9710e81872"></script>
<script src="js/jquery.js"></script>
<script>
// <!--    https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js-->
     $('.tabmenu ul #tab1').click(function(){
         $("#loadPageLocal").load("hostpage_header.html");
     });

     $('.tabmenu ul #tab2').click(function(){
         $("#loadPageLocal").load("gestpage_header.html");
     });

     $('.tabmenu ul #tab3').click(function(){
         $("#loadPageLocal").load("friend_management.html");
     });
     $('.tabmenu ul #tab4').click(function(){
         $("#loadPageLocal").load("blackList.html");
     });

     //페이지 첫화면
     $(document).ready(function(){
         $("#loadPageLocal").load("hostpage_header.html");
     });
</script>

</body>
</html>