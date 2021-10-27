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

        }
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
            float: none;
            border-bottom: none;
            margin: auto;
        }
        #wrapHeader #wrapMenu .account_depth li a{
            display: block;
            width: 75%;
            height: 20px;
            line-height: 25px;
            font-size: 14px;
            margin: auto;
            text-align: center;
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
    </div><!--//wrapHeader end-->
</body>
</html>