<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Feria | 비베 리스트</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/notosanskr.css" />
    <link rel="icon" href="img/logo.png"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        body{
            font-family: "Noto Sans KR", sans-serif;
            color: #222;
        }
        #wrapBibeList{
            width: 1000px;
            margin: auto;
        }
        #wrapBibeList .bibe_header{
            text-align: center;
        }
        #wrapBibeList .bibe_header h2{
            font-size: 36px;
            font-weight: 600;
            padding: 10px 0 5px 0;
        }
        #wrapBibeList .bibe_header h3{
            font-size: 24px;
            padding: 10px 0;
            border-bottom: 1px solid #424242;
        }

        .bibe_list{
            margin: auto;
            display: inline-block;
            width: 1000px;
        }

        .bibe_list h3{
            margin:  0 0 20px 120px;
            font-size: 16px;
        }

        .flag_legend{
            margin: 30px 0 ;
        }
        .flag_legend h3{
            margin-bottom: 10px;
        }

        /*상단 설명부 및 헤더*/
        .bibe_list ul{
            height: 100px;
        }

        /*비베 리스트들*/
        .bibe_list ul li{

            margin: 0 10px 10px 0 ;
            height: 120px;
            width: 485px;
            border: 1px solid #424242;
            position: relative;
            float: left;
        }
        .bibe_list img{
            position: absolute;
            width: 120px; height: 120px;
            border-right: 1px solid #424242;
        }
        .bibe_list ul li .wrap_tag{
            width: 320px;
            height: 70px;/*얘 왜 높이 고정 안되냐*/
        }
        .bibe_list ul li .bibe_name{
            position: absolute;
            left: 130px; top: 15px;
            font-size: 18px;
        }
        /*칵테일용*/
        .bibe_list ul li .bibe_ingredient{
            position: relative;
            float: left;
            left: 130px; top: 45px;
            font-size: 16px;
            height: 30px;
            line-height: 1.8;
            border: 1px solid rgb(34,34,34);
            border-radius: 25px;
            padding: 0 15px 0 15px;
            margin-right: 10px;
            margin-bottom: 5px;
        }
        /*기성주류용*/
        .bibe_list ul li .bibe_info{
            position: relative;
            display: block;
            left: 130px; top: 40px;
            font-size: 14px;
            width: auto;
            line-height: 1.4;
        }

    </style>
</head>
<body>
<div id="wrapBibeList">
    <!--bibe_header -->
    <div class="bibe_header">
        <h2>비베 리스트</h2>
        <h3>저장된 Bibe를 관리해보세요.</h3>
    </div>
    <!--bibe_header 끝-->
    <div class="flag_legend">
        <h3>발견자(Discoverer) 표시,  당신이 발견한 술에 표시됩니다.</h3>
        <h3>참여자(Participant) 표시, 당신이 수정에 참여한 술에 표시됩니다.</h3>
    </div>

    <!--bibe_list-->
    <div class="bibe_list">
        <ul>
            <!--칵테일과 기성주류는 나중에 for문돌릴때 if문으로 구분-->
            <li>
                <img src="img/술1.jpg" />
                <span class="bibe_name">카스</span>
                <span class="bibe_info">용량 500ml</span>
                <span class="bibe_info">가격 4000</span>
                <span class="bibe_info">도수 4</span>
                <span class="bibe_info">제조사 몰라효</span>
            </li>


            <li>
                <img src="img/술2.jpg" />
                <span class="bibe_name">모히또</span>
                <span class="bibe_ingredient">#민트</span>

            </li>

            <li>
                <img src="img/술1.jpg" />
                <span class="bibe_name">카스</span>
                <span class="bibe_info">용량 500ml</span>
                <span class="bibe_info">가격 4000</span>
                <span class="bibe_info">도수 4</span>
                <span class="bibe_info">제조사 몰라효</span>
            </li>


            <li>
                <img src="img/술2.jpg" />
                <span class="bibe_name">모히또</span>
                <span class="bibe_ingredient">#민트</span>

            </li>
        </ul>
    </div>
    <!--bibe_list 끝-->

</div><!--wrapbibe-->

</body>
</html>