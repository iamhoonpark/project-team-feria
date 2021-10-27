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
    <link rel="stylesheet" href="css/tui-time-picker.css">
    <link rel="stylesheet" href="css/feria_join_1step.css">
    <link rel="stylesheet" href="css/feria_join_2step.css">
    <link rel="stylesheet" href="css/feria_join_step3.css">
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
        #wrapContent{
            width: 1200px;
            margin: 100px auto 100px;
            overflow: auto;
        }
        #wrapContent legend{
            display: none;
        }

        #wrapProgress{
            width: 1200px;
            margin: auto;
        }
        #wrapProgress .wrap_bar ul{
            margin: auto;
            width: 880px;
            height: 30px;
        }
        #wrapProgress .wrap_bar li{
            float: left;
            width: 200px;
            height: 10px;
            background-color: #9e9e9e;
            margin: 10px;
            border-radius: 15px;
        }
        #wrapProgress .wrap_bar li:nth-child(1){
            background-color: #E65100;
        }
    /*컨테이너*/
        #container {
            width:1200px;
            height:800px;
        }

        #container.step1 #step1{
            display: block;
        }
        #container.step2 #step2 {
            display: block;
        }
        #container.step3 #step3 {
            display: block;
        }
        #container.step4 #step4 {
            display: block;
        }

        #step1,#step2,#step3,#step4 {
            width:300px;
            height:300px;
            position: absolute;
            display: none;
        }
        #step4 {background: orange}
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
<button class="button1">1</button>
<button class="button2">2</button>
<button class="button3">3</button>
<button class="button4">4</button>
<div id="wrapContent">
    <div id="container" class="step1">
        <div id="step1">
            <div id="wrapContentOne">
                <h2>페리아 참가하기</h2>
                <h3>페리아에 참가하여 사람들과 만나볼까요?</h3>
                <div id="wrapContentOne_formBox">
                    <form action="" method="get" id="wrapContentOne_form">
                        <fieldset>

                            <legend>페리아 참가 폼</legend>
                            <div class="wrap_half_left">
                                <div class="wrap_input_location" >
                                    <div class = "join join_location_input">
                                        <h4>여행 위치</h4>
                                        <input type="radio" name="location"  value="" class="trip" id="preTrip" checked>
                                        <label for="preTrip">여행 떠나기</label>
                                        <input type="radio" name="location"  value="" class="trip" id="afterTrip">
                                        <label for="afterTrip" id="currentLocation">현재 위치에서 먹기</label>
                                    </div>
                                    <p class="input_msg">*여행 위치를 선택해주세요.</p>
                                </div>
                                <div class="wrap_input_time">
                                    <div class = "join join_time_input">
                                        <h4>시간</h4>
                                        <input type="radio" name="time"  value="" class="trip" id="breakfast">
                                        <label for="breakfast">아침</label>
                                        <input type="radio" name="time"  value="" class="trip" id="lunch">
                                        <label for="lunch">점심</label>
                                        <input type="radio" name="time"  value="" class="trip" id="dinner" checked>
                                        <label for="dinner">저녁</label>
                                    </div>
                                    <p class="input_msg">*시간을 선택해주세요.</p>
                                </div>
                                <div class="wrap_input_kinds">
                                    <div class = "join join_kinds_input">
                                        <h4>종류</h4>
                                        <input type="radio" name="kinds"  value="" class="trip" id="rice" checked>
                                        <label for="rice">밥상</label>
                                        <input type="radio" name="kinds"  value="" class="trip" id="drink">
                                        <label for="drink">술상</label>
                                    </div>
                                    <p class="input_msg">*종류를 선택해주세요.</p>
                                </div>
                                <div class="wrap_input_friends">
                                    <div class = "join join_friends_input">
                                        <h4>친구목록</h4>
                                        <input type="checkbox" name="friends"  value="1" class="trip friend" id="friends1">
                                        <label for="friends1"><img src="img/user.png" alt="">박혜민</label>
                                        <input type="checkbox" name="friends"  value="2" class="trip friend" id="friends2">
                                        <label for="friends2"><img src="img/user.png" alt="">이제우</label>
                                        <input type="checkbox" name="friends"  value="3" class="trip friend" id="friends3">
                                        <label for="friends3"><img src="img/user.png" alt="">이원희</label>
                                        <input type="checkbox" name="friends"  value="4" class="trip friend" id="friends4">
                                        <label for="friends4"><img src="img/user.png" alt="">김두완</label>
                                        <input type="checkbox" name="friends"  value="5" class="trip friend" id="friends5">
                                        <label for="friends5"><img src="img/user.png" alt="">술상</label>
                                        <input type="checkbox" name="friends"  value="6" class="trip friend" id="friends6">
                                        <label for="friends6"><img src="img/user.png" alt="">술상</label>
                                    </div>
                                </div>
                                <div class="wrap_result_friends">함께할 친구를 선택해주세요.</div>
                            </div>
                            <div class="wrap_half_right">
                                <div class="wrap_input_date">
                                    <h4>날짜</h4>
                                    <div class="date">
                                        <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                                            <input type="text" id="datepicker-input" aria-label="Date-Time">
                                            <span class="tui-ico-date"></span>
                                        </div>
                                        <div id="wrapper"></div>
                                        <p class="date_msg">*날짜를 선택해주세요.</p>
                                    </div>
                                </div>
                                <div class="wrap_input_allergy">
                                    <h4>알레르기 유무</h4>
                                    <div class="allergy_img">
                                        <input type="checkbox" name="allergy"  value="1" class="allergy_check" id="allergy1">
                                        <label for="allergy1"></label>
                                        <input type="checkbox" name="allergy"  value="2" class="allergy_check" id="allergy2">
                                        <label for="allergy2"></label>
                                        <input type="checkbox" name="allergy"  value="3" class="allergy_check" id="allergy3">
                                        <label for="allergy3"></label>
                                        <input type="checkbox" name="allergy"  value="4" class="allergy_check" id="allergy4">
                                        <label for="allergy4"></label>
                                        <input type="checkbox" name="allergy"  value="5" class="allergy_check" id="allergy5">
                                        <label for="allergy5"></label>
                                        <input type="checkbox" name="allergy"  value="6" class="allergy_check" id="allergy6">
                                        <label for="allergy6"></label>
                                        <input type="checkbox" name="allergy"  value="7" class="allergy_check" id="allergy7">
                                        <label for="allergy7"></label>
                                        <input type="checkbox" name="allergy"  value="8" class="allergy_check" id="allergy8">
                                        <label for="allergy8"></label>
                                        <input type="checkbox" name="allergy"  value="9" class="allergy_check" id="allergy9">
                                        <label for="allergy9"></label>
                                        <input type="checkbox" name="allergy"  value="10" class="allergy_check" id="allergy10">
                                        <label for="allergy10"></label>
                                        <input type="checkbox" name="allergy"  value="11" class="allergy_check" id="allergy11">
                                        <label for="allergy11"></label>
                                        <input type="checkbox" name="allergy"  value="12" class="allergy_check" id="allergy12">
                                        <label for="allergy12"></label>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn_complete">다음</button>
                        </fieldset>
                    </form>
                </div>
            </div>

            <div id="wrapPop">
                <div class="wrap_pop_map">
                    <div class="wrap_locationBox">
                        <div id="locationBox">
                            <input id="search" placeholder="주소입력"/>
                            <button id="searchBtn">검색</button>
                            <ul id="placesList">
                            </ul>
                            <div id="pagination"></div>
                        </div>
                    </div>
                    <div id="map"></div>
                    <button class="btn_locate_close"><i class="fas fa-times"></i></button>
                    <button class="btn_locate_confirm">확인</button>
                </div>
            </div>

            <script type="text/template" id="liTmp">
                <li data-lat='<@=place.y@>' data-address="<@=place.address_name@>"
                    data-lng="<@=place.x@>" class="item">
                    <span class="markerbg marker_<@=idx+1@>"></span>
                    <h5><@=place.place_name@></h5>
                </li>
            </script>

            <script src="js/jquery.js"></script>
            <script src="js/tui-time-picker.js"></script>
            <script src="js/tui-date-picker.js"></script>
            <script src="js/moment-with-locales.js"></script>
            <script src="js/underscore-min.js"></script>
            <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d7752a1a79671239288745aa10b42bce&libraries=services"></script>
            <script>
            
            _.templateSettings = {interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};

                //var geocoder = new kakao.maps.services.Geocoder();
                var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
                    infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다
                const $btnConfirm = $(".btn_locate_confirm");
                const $friend = $(".friend");
                const $afterTripInput = $("#afterTrip");
                const $btnClose = $(".btn_locate_close");
                const $wrapPop = $("#wrapPop");
                let map = null;
                const $btnComplete = $(".btn_complete");
                let addressLatLng = null;
                const $currentLocation = $("#currentLocation");

                let addressName = "";

                //datepicker 출력
                const datepicker = new tui.DatePicker('#wrapper', {
                    date: new Date(),
                    input: {
                        element: '#datepicker-input',
                        format: 'yyyy-MM-dd'
                    },
                    language:'ko',
                    timePicker:true
                });

                /*다음 click evenvt*/
                $btnComplete.click(function () {
                    $.ajax({
                        url:"ajax/locationList.json",
                        error:function () {
                            alert("에러!");
                        },
                        success:function (json) {

                            $listLocation.html(locationTmp({regions:json}));

                            $("#container").attr("class","step2");
                        }
                    });//$.ajax() end
                })//$btnComplete click end
                /*다음 click evenvt END*/

                /*pop confirm event*/
                $btnConfirm.click(function () {
                    $wrapPop.css("display","none");
                    $("#container").attr("class","step1");
                });

                /*pop close event*/
                $btnClose.click(function () {
                    $wrapPop.css("display","none");
                    $("#container").attr("class","step1");
                });
                /*pop close evnet END*/

                /*pop open event*/
                $afterTripInput.click(function () {
                    $wrapPop.css("display","block")

                    let level = 3;
                    //현재 위치를 유저가 설정하지 않았을때 나오는 기본 맵의 가운데 좌표(에그옐로우)
                    const latlng = new daum.maps.LatLng(37.48094907957599, 126.95208479057423);

                    //맵이 만들어질 요소 지정
                    const container = document.getElementById('map');
                    //맵이 만들어질때 옵션 지정
                    const options = {
                        center: latlng,
                        level: level
                    };

                    //맵 생성
                    map = new daum.maps.Map(container, options);

                    navigator.geolocation.getCurrentPosition(function (e) {

                        // 현재위치를 얻어와서
                        const latlng = new daum.maps.LatLng(e.coords.latitude, e.coords.longitude);
                        //맵의 가운데로 지정
                        map.setCenter(latlng);

                    }, function () {
                        // 유저가 현재위치를 원하지 않음
                        console.log("유저가 원하지 않음!!");
                    });//getCurrentPosition() end
                })
                /*pop open event END*/

                /*친구 확인 기능*/
                const $wrapReultBox = $(".wrap_result_friends");

                $friend.change(function () {
                    var chkNum = $("input:checkbox[name=friends]:checked").length;
                    console.log(chkNum);
                    if (chkNum==0){
                        $wrapReultBox.text("선택된 친구가 없습니다.");
                    }else{
                        $wrapReultBox.append().text("선택된 친구는 "+chkNum+"명 입니다.");
                    }

                });
                /*친구 확인 기능 END*/

                //검색후 마커들을 모아놓는 배열
                const markers = [];

                //검색버튼
                const $search = $("#search");

                //페이지네이션 요소
                const $pagination = $("#pagination");

                //장소list item 템플릿
                const tmp = _.template($("#liTmp").html());



                const $placeList = $("#placesList");


                //주소-좌표간 변환 서비스 객체를 생성
                const geocoder = new daum.maps.services.Geocoder();
                //장소 객체
                const placeService = new kakao.maps.services.Places();

                $placeList.on("click", "li", function () {

                    //li요소의 data-lat과 data-lng 얻어오기(위도, 경도)
                    const lat = $(this).attr("data-lat");
                    const lng = $(this).attr("data-lng");
                    addressName = this.dataset.address;


                    console.log(addressName);

                    $currentLocation.text("");
                    $currentLocation.text(addressName);

                    //카카오맵 API에 있는 LatLng객체로 생성
                    const latlng = new daum.maps.LatLng(lat, lng);

                    //마커 생성
                    const marker = new daum.maps.Marker();

                    //마커를 맵에 세팅
                    marker.setPosition(latlng);
                    //맵의 확대축소 레벨을 2로(커질수록 더 넓은 범위를 보여줌)
                    map.setLevel(3);
                    //맵의 센터를 지정
                    map.setCenter(latlng);

                    $(this).siblings().css("border","none");

                    $(this).css("border","2px solid #E65100");

                    /*addressLatLng = latlng;
                    console.log(addressLatLng);*/


                });//click() end







                //검색하는 함수
                function searchPlace() {

                    console.log("다시 검색!");

                    const q = $search.val();

                    console.log("1");

                    //검색후 input 비우고 포커스 맞추기
                    // $search.val("").focus();

                    placeService.keywordSearch(q, function (result, status, pagination) {

                        // 정상적으로 검색이 완료됐으면
                        if (status === daum.maps.services.Status.OK) {

                            $placeList.empty();

                            displayPagination(pagination);

                            console.log(result);

                            //바운드 지정
                            var bounds = new daum.maps.LatLngBounds();

                            $(result).each(function (idx) {



                                var lat = this.y;
                                var lng = this.x;

                                var latlng = new daum.maps.LatLng(lat, lng);

                                bounds.extend(latlng);

                                displayMarker(this, idx);

                            });//each() end

                            map.setBounds(bounds);

                            level = map.getLevel();

                            $placeList.scrollTop(0);

                        }//if end

                    });//keywordSearch end


                    console.log("2");
                }//searchAddress() end

                // 지도에 마커를 표시하는 함수입니다
                function displayMarker(place, idx) {

                    console.log(place);

                    //https://place.map.kakao.com/main/v/41742921 이 json을 이용하면 플레이스 모든 정보 얻어올 수 있음

                    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                        imgOptions = {
                            spriteSize: new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                            spriteOrigin: new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                        },
                        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                        marker = new kakao.maps.Marker({
                            position: new kakao.maps.LatLng(place.y, place.x), // 마커의 위치
                            image: markerImage
                        });

                    marker.setMap(map); // 지도 위에 마커를 표출합니다

                    markers.push(marker);

                    // 마커에 클릭이벤트를 등록합니다
                    kakao.maps.event.addListener(marker, 'mouseover', function () {
                        displayInfowindow(marker, place.place_name);
                    });

                    kakao.maps.event.addListener(marker, 'mouseout', function() {
                        infowindow.close();
                    });

                    const markup = $(tmp({place: place, idx:idx})).on("mouseenter",function () {
                        displayInfowindow(marker, place.place_name);
                    }).on("mouseleave",function () {
                        infowindow.close();
                    });

                    console.log(place);

                    $placeList.append(markup);

                }//displayMarker() end

                function displayInfowindow(marker,title) {
                    // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
                    infowindow.setContent('<div style="padding:5px;font-size:12px;">' + title + '</div>');
                    infowindow.open(map, marker);
                    map.setLevel(level);
                }

                // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
                function displayPagination(pagination) {

                    //기존의 마커들 제거
                    $(markers).each(function () {
                        //console.log("기존의 마커 제거!");
                        this.setMap(null);
                    });//each() end

                    markers.splice(0);

                    $pagination.empty();

                    for (let i = 1; i <= pagination.last; i++) {
                        const $a = $("<a href='#'>").text(i);

                        if (i === pagination.current) {
                            $a.addClass("on");
                        } else {


                            $a.on("click", function () {
                                pagination.gotoPage(i);
                                // console.log("click했음");
                            });
                        }

                        $pagination.append($a);
                    }

                }//displayPagination() end

                //검색하면 searchAddress 함수 호출
                $("#searchBtn").click(searchPlace);

                //검색하면 searchAddress 함수 호출
                $search.keyup(function (e) {
                    if (e.keyCode == 13) {
                        searchPlace();
                    }//if end
                });//keyup() end

                //검색하는 함수
                function searchPlace() {

                    console.log("다시 검색!");

                    const q = $search.val();

                    //검색후 input 비우고 포커스 맞추기
                    // $search.val("").focus();

                    placeService.keywordSearch(q, function (result, status, pagination) {


                        // 정상적으로 검색이 완료됐으면
                        if (status === daum.maps.services.Status.OK) {

                            $placeList.empty();

                            displayPagination(pagination);


                            //바운드 지정
                            var bounds = new daum.maps.LatLngBounds();

                            $(result).each(function (idx) {

                                console.log(this);

                                var lat = this.y;
                                var lng = this.x;

                                var latlng = new daum.maps.LatLng(lat, lng);

                                bounds.extend(latlng);

                                displayMarker(this, idx);

                            });//each() end

                            map.setBounds(bounds);

                            level = map.getLevel();

                            $placeList.scrollTop(0);

                        }//if end

                    });//keywordSearch end

                }//searchAddress() end

                // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
                function displayPagination(pagination) {

                    //기존의 마커들 제거
                    $(markers).each(function () {
                        //console.log("기존의 마커 제거!");
                        this.setMap(null);
                    });//each() end

                    markers.splice(0);

                    $pagination.empty();

                    for (let i = 1; i <= pagination.last; i++) {
                        const $a = $("<a href='#'>").text(i);

                        if (i === pagination.current) {
                            $a.addClass("on");
                        } else {


                            $a.on("click", function () {
                                pagination.gotoPage(i);
                                // console.log("click했음");
                            });
                        }

                        $pagination.append($a);
                    }

                }//displayPagination() end

                // 지도에 마커를 표시하는 함수입니다
                function displayMarker(place, idx) {

                    //console.log(place);

                    //https://place.map.kakao.com/main/v/41742921 이 json을 이용하면 플레이스 모든 정보 얻어올 수 있음

                    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                        imgOptions = {
                            spriteSize: new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                            spriteOrigin: new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                        },
                        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                        marker = new kakao.maps.Marker({
                            position: new kakao.maps.LatLng(place.y, place.x), // 마커의 위치
                            image: markerImage
                        });

                    marker.setMap(map); // 지도 위에 마커를 표출합니다

                    markers.push(marker);

                    // 마커에 클릭이벤트를 등록합니다
                    kakao.maps.event.addListener(marker, 'mouseover', function () {
                        displayInfowindow(marker, place.place_name);
                    });

                    kakao.maps.event.addListener(marker, 'mouseout', function() {
                        infowindow.close();
                    });

                    const markup = $(tmp({place: place, idx:idx})).on("mouseenter",function () {
                        displayInfowindow(marker, place.place_name);
                    }).on("mouseleave",function () {
                        infowindow.close();
                    });

                    $placeList.append(markup);

                }//displayMarker() end
                function displayInfowindow(marker,title) {
                    // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
                    infowindow.setContent('<div style="padding:5px;font-size:12px;">' + title + '</div>');
                    infowindow.open(map, marker);
                    map.setLevel(level);
                }

            </script>
        </div>
        <div id="step2">
            <div id="wrapContentTwo">
                <h2>가고싶은 지역을 선택해 볼까요?</h2>
                <h3>페리아 참가하기</h3>
                <div id="wrapContentTwo_formBox">
                    <form action="">
                        <fieldset>
                            <legend class="screen_out">페리아 지역 선택 폼</legend>
                            <button type="button" class="btn_redo"><i class="fas fa-redo-alt"></i></button>
                            <div class="versus">VS</div>
                            <ul class="list_location">

                            </ul>
                        </fieldset>
                    </form>
                </div>
            </div>
            <script type="text/template" id="locationTmpl">
                <@_.each(regions,function(location) {@>
                <li class="img_location"><a href="#" class="location_click"><img src="<@=location.src@>" alt=""></a></li>
                <@})@>
            </script>
            <script>
                //ul
                const $listLocation = $(".list_location");

                const locationTmp = _.template($("#locationTmpl").html());


                $listLocation.on("click",".img_location",function () {

                    $.ajax({
                        url:"ajax/cenaList.json",
                        error:function () {
                            alert("에러!");
                        },
                        success:function (json) {

                            console.log(json);

                            $listCena.html(cenaTmp({cenas:json})); //json이 뒤로

                            $("#container").attr("class","step3");
                        }
                    });//$.ajax() end

                });//imgLocation click end

            </script>
        </div>
        <div id="step3">
            <div id="wrapContentThree">
                <h2>가고싶은 지역을 선택해 볼까요?</h2>
                <h3>페리아 참가하기</h3>
                <div id="wrapContentThree_formBox">
                    <form action="">
                        <fieldset>
                            <legend class="screen_out">페리아 세나 선택 폼</legend>
                            <button type="button" class="btn_redo"><i class="fas fa-redo-alt"></i></button>
                            <div class="versus">VS</div>
                            <ul class="list_cena">

                            </ul>
                        </fieldset>
                    </form>
                </div>
            </div>

            <script type="text/template" id="cenaTmpl">
                <@_.each(cenas,function(cena) {@>
                <li class="img_cena">
                    <input type="radio" name="cena" class="input_img_cena" id="cena<@=cena.no@>">
                    <label for="cena<@=cena.no@>">
                        <h4><@=cena.title@></h4><img src="<@=cena.src@>" alt=""><!--<a href="#"></a>-->
                        <dl class="list_cena_serve">
                            <dt class="screen_out">반찬들</dt>
                            <@_.each(cena.serve,function(serve){@>
                            <dd><@=serve@></dd>
                            <@})@>
                        </dl>
                    </label>
                </li>
                <@})@>
            </script>
            <script>
                const $btnRedo = $(".btn_redo");
                //ul
                const $listCena = $(".list_cena");

                //const $listServe = $(".list_cena_serve");

                const cenaTmp = _.template($("#cenaTmpl").html());

                /*리롤 버튼을 눌렀을 때*/
                $btnRedo.on("click",function () {
                    confirm("되돌리기를 하시면 포인트가 사용됩니다." +
                        " 다시 매칭하여 이용하시겠습니까?")
                })
            </script>
        </div>
        <div id="step4">

        </div>
    </div>
    <script src="js/jquery.js"></script>
    <script>

        /*$("button").click(function () {
            const idx = $(this).index()+1;
            $("#container").attr("class","step"+idx);
        })*/

        $btn1 = $(".button1"); $btn2 = $(".button2"); $btn3 = $(".button3"); $btn4 = $(".button4");
        $btn1.click(function () {
            $("#container").attr("class","step1");
        })
        $btn2.click(function () {
            $("#container").attr("class","step2");
        })
        $btn3.click(function () {
            $("#container").attr("class","step3");
        })
        $btn4.click(function () {
            $("#container").attr("class","step4");
        })

    </script>
</div>

<script src="js/jquery.js"></script>
<script src="js/tui-time-picker.js"></script>
<script src="js/tui-date-picker.js"></script>
<script src="js/moment-with-locales.js"></script>
<script>


    const $btnComplete = $(".btn_complete");

    const $input = $("<input>");
    const $inputMsg = $(".input_msg");
    const $dateMsg = $(".date_msg");

    const datepicker = new tui.DatePicker('#wrapper', {
        date: new Date(),
        input: {
            element: '#datepicker-input',
            format: 'yyyy-MM-dd'
        },
        language:'ko',
        timePicker:true
    });


    const $friend = $(".friend");
    const $wrapReultBox = $(".wrap_result_friends");

    $friend.change(function () {
        var chkNum = $("input:checkbox[name=friends]:checked").length;
        console.log(chkNum);
        if (chkNum==0){
            $wrapReultBox.text("선택된 친구가 없습니다.");
        }else{
            $wrapReultBox.append().text("선택된 친구는 "+chkNum+"명 입니다.");
        }

    });




</script>
</body>
</html>