<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

        .gestTabmenu{
            height: 40px;
            width: 1200px;
            margin: auto;
        }

        .gestTabmenu ul li{
            display:  inline-block;
            float:left;
            margin-right: 20px;
            text-align:center;
        }

        .gestTabmenu label{
            display:block;
            width:100%;
            height:40px;
            line-height:35px;
            font-size: 25px;
        }
        .gestTabmenu input{
            display:none;
        }

        .gestTabmenu input:checked ~ label{
            border-bottom: 2px solid rgb(34,34,34);
        }
        #pageArea{
        }

    </style>

</head>
<body>


<!--게스트 탭 끝-->
    <div class="gestTabmenu">
        <ul>
            <li id="gestTab1" class="btnCon"> <input type="radio" checked name="gestTabmenu" id="gestTabmenu1">
                <label for="gestTabmenu1">참가한 페리아</label>
            </li>

            <li id="gestTab2" class="btnCon"><input type="radio" name="gestTabmenu" id="gestTabmenu2">
                <label for="gestTabmenu2">예약 리스트</label>
            </li>

            <li id="gestTab3" class="btnCon"><input type="radio" name="gestTabmenu" id="gestTabmenu3">
                <label for="gestTabmenu3">비베 리스트</label>
            </li>
        </ul>
    </div>
    <div id="pageArea">

    </div>
    <!--게스트 탭 끝-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $("#pageArea").load("guest_participatedFeria.html");
    });

    $('.gestTabmenu ul #gestTab1').click(function(){
        $("#pageArea").load("guest_participatedFeria.html");
    });

    $('.gestTabmenu ul #gestTab2').click(function(){
        $("#pageArea").load("guest_reserveFeria.html");
    });

    $('.gestTabmenu ul #gestTab3').click(function(){
        $("#pageArea").load("bibe_list.html");
    });


</script>

</body>
</html>