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

        .gestTabmenu{
            height: 40px;
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
                <label for="gestTabmenu1">지난 페리아</label>
            </li>

            <li id="gestTab2" class="btnCon"><input type="radio" name="gestTabmenu" id="gestTabmenu2">
                <label for="gestTabmenu2">진행중인 페리아</label>
            </li>

            <li id="gestTab3" class="btnCon"><input type="radio" name="gestTabmenu" id="gestTabmenu3">
                <label for="gestTabmenu3">세나 리스트</label>
            </li>

            <li id="gestTab4" class="btnCon"><input type="radio" name="gestTabmenu" id="gestTabmenu4">
                <label for="gestTabmenu4">핀 설정</label>
            </li>
        </ul>
    </div>
    <div id="pageArea">

    </div>
    <!--게스트 탭 끝-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $("#pageArea").load("host_lastFeria.html");
    });

    $('.gestTabmenu ul #gestTab1').click(function(){
        $("#pageArea").load("host_lastFeria.html");
    });

    $('.gestTabmenu ul #gestTab2').click(function(){
        $("#pageArea").load("host_progressingFeria.html");
    });

    $('.gestTabmenu ul #gestTab3').click(function(){
        $("#pageArea").load("feria_cena_list.html");/*나중에 이프문으로 세나리스트가 없을경우 cenaList_zero.html로 변경*/
    });

    $('.gestTabmenu ul #gestTab4').click(function(){
        $("#pageArea").load("pinSet.html");
    });

</script>

</body>
</html>