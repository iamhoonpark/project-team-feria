<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>블랙리스트</title>
    <link href="css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/notosanskr.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/paginate.css">
    <link rel="icon" href="img/logo.jpg">
    <style>
        /*폰트*/
        body{font-family: 'Noto Sans KR', sans-serif;}

        .wrap_content{
            margin: auto;
        }
        .wrap_black_header{
            margin: auto;
            text-align: center;
            width: 1000px;
        }
        .wrap_black_header h2{
            padding-top: 20px;
            font-size: 30px;
            margin-bottom: 10px;
        }
        .wrap_black_header h3{
            border-bottom: 1px solid #9e9e9e;
            padding-bottom: 10px;
            margin-bottom: 30px;
        }
        .wrap_black{
            width : 1000px;
            height: 450px;
            margin : auto;
            text-align: center;
            position: relative;
        }
        .wrap_black ul{
            float: left;
            width: 1000px;
        }
        .wrap_black li{
            border: 1px solid #9e9e9e;
            height: 80px; width: 240px;
            line-height: 80px;
            display: inline-block;
            float: left;
            margin: 20px 3.5px 0 3.5px;
        }
        .wrap_black li img{
            height: 80px; width: 80px;
            float: left;
        }
        .wrap_black li h4{
            margin-left: 20px;
            float: left;
        }
        .wrap_black li .btn_delete_black{
            background-color: #E0E0E0;
            border: 1px solid #9e9e9e;
            text-decoration: none;
            color: #000;
            font-size: 15px;
            font-weight: 100;
            border-radius: 5px;
            padding: 0 10px;
        }
        .paginate{
            width: 1000px;
            height: 30px;
            position: absolute;
            margin: 0;
            bottom: 0;
        }
    </style>
</head>
<body>
<div class="wrap_content">
    <div class="wrap_black">
        <ul>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>
            <li>
                <img src="img/spongebob.jpg" alt="프로필">
                <h4>스폰지밥</h4>
                <a href="" class="btn_delete_black">삭제</a>
            </li>

        </ul>
        <div class=paginate>
            <a href="#" title='이전 페이지로'><i class='fa fa-chevron-left'></i><span class='screen_out'>이전 페이지</span></a>
            <a href="#" title='현재페이지'>1</a>
            <a href="#" title='다음 페이지로'><i class='fa fa-chevron-right'></i><span class='screen_out'>다음 페이지</span></a>
        </div><!--//.paginate end-->
    </div><!--//.wrap_black end-->
</div><!--//.wrapBlackList end-->
</body>
</html>
