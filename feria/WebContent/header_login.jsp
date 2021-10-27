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
            height:1px;

            position: absolute;
            bottom: -5px;
            background-color: #9e9e9e;

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
        #wrapHeader #wrapMenu .btn_login{
            border: 1px solid #e65100;
            display: block;
            width: 60px;
            border-radius: 5px;
            background-color: #e65100;
            color: #ffffff;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);

        }
        #wrapHeader #wrapMenu .btn_login:hover{
            border: 1px solid #e65100;
            text-shadow: 0 2px 5px rgba(255, 255, 255, 0.32);
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(255, 255, 255, 0.12);
        }
        #wrapHeader #wrapMenu .btn_login:hover::before,#wrapHeader #wrapMenu .btn_login:hover::after{
            content: "";
            background-color: rgba(0,0,0,100);

        }
    </style>

</head>
<body>
<div id="wrapHeader">
    <h1>
        <a href="#">Feria</a>
    </h1>
    <div id="wrapMenu">
        <ul>
            <li><a href="#" class="btn_menu">페리아에 참가하기</a></li>
            <li><a href="#" class="btn_menu">페리아에 손님 맞이하기</a></li>
            <li><a href="#" class="btn_menu">페리아</a></li>
            <li><a href="#" class="btn_menu">비베</a></li>
            <li><a href="#" class="btn_menu">회원가입</a></li>
            <li>
                <a href="#" class="btn_login">
                    로그인
                </a>
            </li>
        </ul>
    </div><!--#wrapMenu end-->
</div><!--#wrapHeader end  -->
</body>
</html>