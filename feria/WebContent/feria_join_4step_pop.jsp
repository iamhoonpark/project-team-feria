<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>페리아 참가하기</title>
    <link rel="icon" href="img/logo.jpg">
    <link href="css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/notosanskr.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/tui-date-picker.css">
    <link rel="stylesheet" href="css/flag.css">
    <link rel="stylesheet" href="css/feria_join_4step.css">
    <style>

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


<div id="wrapContentFour">
    <h2>호스트에게 보답 할 비베를 입력해 볼까요?</h2>
    <h3>페리아 참가하기</h3>
    <div id="wrap_bibe_formBox">
        <div class="wrap_cena_information" >
            <div class="flag flag_b"></div>
            <h4>상큼한 카레라이스</h4>
            <div class="cena_img"><img class="cena_img" src="img/cena1.png" alt=""></div>
            <div class="cena_serve"><ul><li>#새우튀김</li><li>#어묵우동</li><li>#샐러드</li></ul></div>
        </div>
        <div class="wrap_bibe_search"><!--wrap_search_bibe-->
            <form action="">
                <fieldset>
                    <div class="search_bar"><input type="text" id="input_search" name="query" placeholder="비베 이름을 입력해 주세요." autocomplete="off"><button class="btn_search" type="button">검색</button></div>
            <div class="wrap_list_mybibe"><h5>나의 비베 리스트</h5><!--wrap_list_mybibe-->
                <ul class="list_item_my_bibe"><!--list_result_mybibe-->

                </ul>
            </div>
            <div class="wrap_result_search"><h5>검색 결과</h5><!--wrap_result_search-->
                <ul class="list_item_search_bibe"> <!--list_result_search-->

                </ul>
                <button class="btn_input"><i class="fas fa-plus"></i> 직접 비베 추가</button>
            </div>
                </fieldset>
            </form>
        </div>
        <div class="wrap_bibe_selected"><!--대문자 지우고-->

        </div>
        <button class="btn_complete">완료하기</button>

    </div>
    <div id="wrapProgress">
        <div class="wrap_bar">
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>
    <!--팝업-->
    <div id="wrapPopBibe">

    </div>
    <!--팝업 end-->
    <script type="text/template" id="itemSearchBibe">
        <@_.each(searchBibes,function(bibe) {@>
        <li class="item_bibe_detail" data-bibeno="<@=bibe.no@>"><!--item_result_search-->
            <img src="img/montegri1.jpg" alt=""><span>참이슬 후레쉬</span>
        </li>
        <@})@>
    </script>
    <script type="text/template" id="itemMyBibe">
        <@_.each(myBibes,function(bibe) {@>
        <li class="item_bibe_detail"><img src="img/montegri1.jpg" alt=""><span>참이슬 후레쉬</span></li>
        <@})@>
    </script>
    <script type="text/template" id="bibeDetailInfo">
        <@_.each(bibeDetails,function(bibe) {@>
        <div class="wrap_pop_bibe">
            <div class="wrap_pop_bibe_information"><!--wrap_pop_bibe_info-->
                <div class="wrap_bibe_img"><img class="bibe_img" src="img/bibe1.jpg" alt=""></div>
                <p>상세정보</p>
                <ul>
                    <li id="bibeTitle">참이슬 후레쉬</li>
                    <li id="bibeAVB">도수 16.9도</li>
                    <li id="bibeManufacturer">제조 하이트진로</li>
                    <li id="bibeVolume">용량 360ml</li>
                    <li id="bibePrice">가격 1800원</li>
                </ul>
            </div>
            <div class="wrap_pop_bibe_pie">
                <div class="canvas">
                    <canvas id="donut" width="100" height="50"></canvas>
                </div>
            </div>
            <div class="wrap_bibe_grade">

                    <div class="wrap_grade">
                        <strong class="info_left">드라이</strong>
                        <div class="bar_toggle1 toggle" id="bibeSweet">
                            <div class="bar_toggle2 toggle"></div>
                        </div>
                        <strong class="info_right">달콤함</strong>
                    </div>
                    <div class="wrap_grade">
                        <strong class="info_left">탄산</strong>
                        <div class="bar_toggle1 toggle" id="bibeCarbonate">
                            <div class="bar_toggle2 toggle"></div>
                        </div>
                        <strong class="info_right">무탄산</strong>
                    </div>
                    <div class="wrap_grade">
                        <strong class="info_left">가벼움</strong>
                        <div class="bar_toggle1 toggle" id="bibeWeight">
                            <div class="bar_toggle2 toggle"></div>
                        </div>
                        <strong class="info_right">무거움</strong>
                    </div>
            </div>
            <div class="wrap_input_quantity">
                <h4>수량</h4>
                <div>
                    <label for="input_quantity" class="screen_out">최소</label>
                    <input type="number" name="input_quantity" id="input_quantity" placeholder="수량 입력" min="1" class="input_quantity">
                </div><!--#minHeadCount-->
            </div><!--//.wrap_feria_headCount-->

            <button class="btn_bibe_select">선택</button>
            <button class="btn_bibe_close"><i class="fas fa-times"></i></button>
        </div>
        <@})@>
    </script>
    <script src="js/jquery.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="js/underscore-min.js"></script>
    <script>
    
    	_.templateSettings = {interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};

        $btnBibeClose = $(".btn_bibe_close");
        $btnBibeSelect = $(".btn_bibe_select");
        $inputSeacrch = $("#input_search");
        //ul
        $wrapListMybibe = $(".list_item_my_bibe");
        //ul
        $wrapListResult = $(".list_item_search_bibe");
        $bibeItem = $(".item_bibe_detail");
        $resultBibeTmp = _.template($("#itemSearchBibe").html());
        $myBibeTmp = _.template($("#itemMyBibe").html());
        $bibeDetail = _.template($("#bibeDetailInfo").html());
        $wrapPopBibe = $("#wrapPopBibe");
        $wrapBibeFormBox = $("#wrap_bibe_formBox");
        let no = 0;


        $inputSeacrch.keyup(function () {
            $.ajax({
                type: "get",
                url : "ajax/bibeList.json",
                error:function () {
                    alert("점검중")
                },//error end
                success:function (json) {

                    $wrapListResult.html($resultBibeTmp({searchBibes:json}));

                }//success end
            })
        });


        $wrapPopBibe.on("click",$btnBibeClose,function () {
            $("#wrapPopBibe").css("display","none");
        })

        $wrapListResult.on("click","li",function () {
            $("#wrapPopBibe").css("display","block");

            $.ajax({
                type:"get",
                url : "ajax/bibeInfo.json",

                error : function () {
                    alert("점검중");
                },//error end
                success : function (json) {

                    $wrapPopBibe.html($bibeDetail({bibeDetails:json}));

                    setTimeout(function () {

                        /*도넛 차트*/
                        var $donut = $("#donut");
                        var donutData = {
                            datasets: [{
                                data: [59, 43 , 21],
                                backgroundColor: ["rgb(255, 99, 132)", "rgb(54, 162, 235)","rgb(81,235,54)"],
                                hoverBackgroundColor: ["rgba(255, 99, 132,0.7)", "rgba(54, 162, 235,0.7)","rgba(81,235,54,0.7)"],
                                hoverBorderColor: ["rgba(255, 99, 132,1)", "rgba(54, 162, 235,1)","rgba(81,235,54,1)"],
                                hoverBorderWidth: 6
                            }],

                            labels: [
                                '한식',
                                '일식',
                                '중식'

                            ]
                        };

                        var donutChart = new Chart($donut, {
                            type: 'doughnut',
                            data: donutData,
                            options: {
                                title: {
                                    display: true,
                                    text: "함께한 세나들",
                                    fontSize: 26
                                },
                                cutoutPercentage: 50, // 도넛 가운데 구멍 크기(50은 기본 0은 꽉 막힘)
                                rotation: 0.5 * Math.PI, // 시작 각도 변경 (기본: -0.5 * Math.PI)
                                animation: {animateScale: true, animateRotate: true}// 차트 나타날 때 애니메이션

                            }
                        });
                        /*도넛차트 end*/
                    },100)

                }//success
            })
        })//wrapResult li click end

        function getMybibe() {

            $.ajax({

                url:"ajax/Mybibe.json",
                type : "get",
                dataType:"json",

                error:function () {
                    alert("점검중");
                },
                success:function (json) {
                    $wrapListMybibe.html($myBibeTmp({myBibes:json}));
                }

            })

        }//getMybibe

        getMybibe();

        $wrapListMybibe.on("click","li",function () {
            $("#wrapPopBibe").css("display","block");

            $.ajax({
                type:"get",
                url : "ajax/bibeInfo.json",

                error : function () {
                    alert("점검중");
                },//error end
                success : function (json) {

                    $wrapPopBibe.html($bibeDetail({bibeDetails:json}));

                    setTimeout(function () {

                        /*도넛 차트*/
                        var $donut = $("#donut");
                        var donutData = {
                            datasets: [{
                                data: [59, 43 , 21],
                                backgroundColor: ["rgb(255, 99, 132)", "rgb(54, 162, 235)","rgb(81,235,54)"],
                                hoverBackgroundColor: ["rgba(255, 99, 132,0.7)", "rgba(54, 162, 235,0.7)","rgba(81,235,54,0.7)"],
                                hoverBorderColor: ["rgba(255, 99, 132,1)", "rgba(54, 162, 235,1)","rgba(81,235,54,1)"],
                                hoverBorderWidth: 6
                            }],

                            labels: [
                                '한식',
                                '일식',
                                '중식'

                            ]
                        };

                        var donutChart = new Chart($donut, {
                            type: 'doughnut',
                            data: donutData,
                            options: {
                                title: {
                                    display: true,
                                    text: "함께한 세나들",
                                    fontSize: 26
                                },
                                cutoutPercentage: 50, // 도넛 가운데 구멍 크기(50은 기본 0은 꽉 막힘)
                                rotation: 0.5 * Math.PI, // 시작 각도 변경 (기본: -0.5 * Math.PI)
                                animation: {animateScale: true, animateRotate: true}// 차트 나타날 때 애니메이션

                            }
                        });
                        /*도넛차트 end*/
                    },100)

                }//success
            })
        })//wrapMybibe li click end

        $wrapPopBibe.on("click",$btnBibeSelect,function () {

            $(this).css("display","none");

            $(".wrap_bibe_selected").append($bibeDetail);
        })//$btnBibeSelect click end


    </script>
</body>
</html>