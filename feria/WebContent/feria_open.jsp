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
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/feriaopen.css" />
    <link rel="stylesheet" href="css/tui-date-picker.css" />
    <link rel="stylesheet" href="css/tui-time-picker.css" />
    <style>
        .tui-datepicker .tui-is-selectable.tui-is-selected {
            background: #e65100;
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
</div><!--//#wrapHeader-->
<div id="wrapContent">
    <h2 class="first_header">페리아 오픈</h2>
    <h3 class="second_header">페리아를 오픈해 게스트를 초대해보세요.</h3>
    <div class="feria_open_formbox">
        <form action="" method="post" enctype="multipart/form-data">
            <fieldset>
                <legend class="screen_out">페리아 오픈 폼</legend>
                <div class="wrap_500px left">
                    <div class="wrap_feria_name row full">
                        <label for="feriaName" class="screen_out">페리아 이름</label>
                        <input type="text" name="feriaName" id="feriaName" placeholder="페리아 제목을 입력하세요.">
                    </div>

                    <div class="feria_address row full">
                        <h3>주소</h3>
                        <label for="postcode" class="screen_out">우편번호</label>
                        <input type="text" id="postcode" placeholder="우편번호" readonly class="sub_row">
                        <button class="btn" type="button" id="searchBtn">우편번호 찾기</button>
                        <div class="sub_row">
                            <label for="address1" class="screen_out">주소</label>
                            <input name="address1" type="text" id="address1" placeholder="주소" size="50" readonly>
                        </div>
                        <div class="sub_row">
                            <label for="address2" class="screen_out">상세주소</label>
                            <input name="address2" type="text" id="address2" placeholder="상세주소" size="50">
                        </div>
                    </div><!--//.feria_address-->
                </div><!--//.wrap_500px left-->
                <div class="wrap_500px">
                    <div class="wrap_feria_headCount  row full">
                        <h3>인원</h3>
                        <div>
                            <label for="minHeadCount" class="screen_out">최소</label>
                            <input type="number" name="minHeadCount" id="minHeadCount" placeholder="최소 인원" min="1" max="6">
                        </div><!--#minHeadCount-->
                        <div>
                            <label for="maxHeadCount" class="screen_out">최대</label>
                            <input type="number" name="maxHeadCount" id="maxHeadCount" placeholder="최대 인원" min="1" max="6">
                        </div><!--#maxeadCount-->
                    </div><!--//.wrap_feria_headCount-->
                    <div class = "feria_time row full">
                        <h3 class="mid_header">시간</h3>
                        <div class="feria_time_radio">
                            <input type="radio" name="feriaTimeRadio"  value="" class="btn_filter" id="breakfast">
                            <label for="breakfast" >아침</label>
                            <input type="radio" name="feriaTimeRadio"  value="" class="btn_filter" id="lunch">
                            <label for="lunch">점심</label>
                            <input type="radio" name="feriaTimeRadio"  value="" class="btn_filter" id="dinner" checked>
                            <label for="dinner" class="on">저녁</label>
                        </div><!--//.wrap_bibe_category-->
                        <div class="feria_time_input">
                            <input type="time" name="feriaTimeInput" id="feriaTime">
                        </div>
                    </div><!--//.feria_time-->
                    <div class="feria_date row full">
                        <h3>일시</h3>
                        <div class="datepicker_input">
                            <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                                <input type="text" id="datepicker-input" aria-label="Date-Time">
                                <div id="wrapper"></div>
                                <span class="tui-ico-date"></span>
                            </div><!--//datepicker-->
                        </div><!--//datepicker_input-->
                        <div class="date_range_output">
                            <div class="date_range_start"></div>
                            <span> ~</span>
                            <div class="date_range_end"> </div>
                            <button class="btn_delete_repeat"></button>
                        </div><!--//date_range_output-->
                        <button type="button" class="btn_repeat btn">반복</button>
                        <div id="wrapRepeat" class="test">
                            <div>
                                <div class="wrap_repeat">
                                    <h3>반복</h3>
                                    <div class = "wrap_repeat_cycle">
                                        <h4 class="mid_header">주기</h4>
                                        <div class="repeat_cycle">
                                            <input type="checkbox" name="repeatCycle"  value="" class="btn_filter" id="monday">
                                            <label for="monday">월</label>
                                            <input type="checkbox" name="repeatCycle"  value="" class="btn_filter" id="tuesday">
                                            <label for="tuesday">화</label>
                                            <input type="checkbox" name="repeatCycle"  value="" class="btn_filter" id="wednesday">
                                            <label for="wednesday">수</label>
                                            <input type="checkbox" name="repeatCycle"  value="" class="btn_filter" id="thursday">
                                            <label for="thursday">목</label>
                                            <input type="checkbox" name="repeatCycle"  value="" class="btn_filter" id="friday">
                                            <label for="friday">금</label>
                                            <input type="checkbox" name="repeatCycle"  value="" class="btn_filter" id="saturday">
                                            <label for="saturday">토</label>
                                            <input type="checkbox" name="repeatCycle"  value="" class="btn_filter" id="sunday">
                                            <label for="sunday">일</label>
                                        </div><!--//repeat_cycle-->
                                    </div><!--//wrap_repeat_cycle-->
                                    <div class = "wrap_date_range">
                                        <h4>기간</h4>
                                        <div class="date_range">
                                            <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                                                <input id="startpicker-input" type="text" aria-label="Date">
                                                <span class="tui-ico-date"></span>
                                                <div id="startpicker-container" style="margin-left: -1px;"></div>
                                            </div>
                                            <span>~</span>
                                            <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                                                <input id="endpicker-input" type="text" aria-label="Date" autocomplete="none">
                                                <span class="tui-ico-date"></span>
                                                <div id="endpicker-container" style="margin-left: -1px;"></div>
                                            </div>
                                        </div><!--//.date_range-->
                                    </div><!--//.wrap_date_range-->
                                </div>
                                <button class="btn_close"></button>
                                <button class="btn_confirm">적용</button>
                            </div>
                        </div><!--//#wrapRepeat-->
                    </div><!--//.feria_date-->
                    <div class = "wrap_feria_alarm row full">
                        <h3 class="mid_header">알림</h3>
                        <div class="feria_alarm">
                            <input type="checkbox" name="alarm12h"  value="" class="btn_filter" id="alarm12h" checked>
                            <label for="alarm12h" class="on">12시간 전</label>
                            <input type="checkbox" name="alarm1d"  value="" class="btn_filter" id="alarm1d">
                            <label for="alarm1d">1일 전</label>
                            <input type="checkbox" name="alarm2d"  value="" class="btn_filter" id="alarm2d">
                            <label for="alarm2d">2일 전</label>
                            <input type="checkbox" name="alarm3d"  value="" class="btn_filter" id="alarm3d">
                            <label for="alarm3d">3일 전</label>
                            <input type="checkbox" name="alarm1w"  value="" class="btn_filter" id="alarm1w">
                            <label for="alarm1w">일주일 전</label>
                        </div>
                        <!--<input type="number" name="alarm1w"  value="" class="btn_filter" id="alarmCustom">
                        <label for="alarmCustom">일 전</label>
                        <button class="btn" type="button" id="addAlarmhBtn">알림추가</button>-->
                    </div>
                </div><!--//.wrap_500px right-->
                <button class="btn_next btn" type="submit">등록</button>
            </fieldset>
        </form><!--//form-->
    </div><!--//.feria_open_formbox-->
</div><!--//#wrapContent-->
<script src="js/tui-time-picker.js"></script>
<script src="js/tui-date-picker.js"></script>
<script src="js/jquery.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="js/moment-with-locales.js"></script>
<script>

    var $postcode = $("#postcode");
    var $address1 = $("#address1");
    var $address2 = $("#address2");

    var width = 500; //팝업의 너비
    var height = 600; //팝업의 높이

    var themeObj = {
        bgColor: "#162525", //바탕 배경색
        searchBgColor: "#162525", //검색창 배경색
        contentBgColor: "#162525", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
        pageBgColor: "#162525", //페이지 배경색
        textColor: "#FFFFFF", //기본 글자색
        queryTextColor: "#FFFFFF", //검색창 글자색
        //postcodeTextColor: "", //우편번호 글자색
        //emphTextColor: "", //강조 글자색
        outlineColor: "#444444" //테두리
    };

    $("#searchBtn,#postcode").click(function () {

        new daum.Postcode({
            //theme:themeObj,
            width: width, //생성자에 크기 값을 명시적으로 지정해야 합니다.
            height: height,
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $postcode.val(data.zonecode); //5자리 새우편번호 사용

                //alert(fullAddr);
                $address1.val(fullAddr);

                // 커서를 상세주소 필드로 이동한다.
                $address2.focus();
            }
        }).open({
            left: (window.screen.width / 2) - (width / 2),
            top: (window.screen.height / 2) - (height / 2)
            ,popupName: '멋진 웹서비스'});
    });


</script>
<script>

    $startpickerInput = $("#startpicker-input");
    $dateRangeStart = $(".date_range_start");
    $dateRangeEnd = $(".date_range_end");
    $dateRangeOutput = $(".date_range_output");
    $datepickerInput = $(".datepicker_input");
    $btnDeleteRepeat = $(".btn_delete_repeat")

    const $btnClose = $(".btn_close");
    const $btnRepeat = $(".btn_repeat");
    const $btnConfirm = $(".btn_confirm");
    const $wrapRepeat = $("#wrapRepeat");

    const $btnFilterLabel = $(".btn_filter+label");


    var datepicker = new tui.DatePicker('#wrapper', {
        date: new Date(),
        input: {
            element: '#datepicker-input',
            format: 'yyyy-MM-dd'
        },
        language:'ko',
        timePicker:true
    });

    /*팝업 닫는 이벤트*/

    $btnClose.click(function (e) {
        e.preventDefault();
        $wrapRepeat.hide();
    });
    $btnConfirm.click(function (e) {
        e.preventDefault();
        $wrapRepeat.hide();
        $datepickerInput.hide();
        $dateRangeOutput.show();
        $btnRepeat.css("left",265);
    });
    /*팝업 뜨게하는 이벤트*/
    $btnRepeat.click(function (e) {
        e.preventDefault();
        $wrapRepeat.show();

    })//팝업뜨게 하는 이벤트

    var today = new Date();
    var picker = tui.DatePicker.createRangePicker({
        startpicker: {
            date: today,
            input: '#startpicker-input',
            container: '#startpicker-container'
        },
        endpicker: {
            date: today,
            input: '#endpicker-input',
            container: '#endpicker-container'
        },
        selectableRanges: [
            [today, new Date(today.getFullYear() + 1, today.getMonth(), today.getDate())]
        ],
        language:'ko'
    });

    $btnFilterLabel.on("click",function (e) {
        e.preventDefault();
        let id = $(this).attr("for");
        $("#"+id).attr('checked',function(){
            return !$(this).attr('checked');
        });
        $(this).toggleClass("on");
        console.log(id);
    });

    //기간 시작일 가져오기

    picker.on('change:start', function() {
        const startDate = moment(picker.getStartDate());
        console.log(startDate.format("YYYY-MM-DD"));
        $dateRangeStart.text(startDate.format("YYYY-MM-DD")+" ");

    });

   picker.on('change:end', function() {
        const endDate = moment(picker.getEndDate());
        console.log(endDate);
        $dateRangeEnd.text(" "+endDate.format("YYYY-MM-DD"));
    });

    $btnDeleteRepeat.on("click",function () {
        $datepickerInput.show();
        $dateRangeOutput.hide();
        $dateRangeStart.empty();
        $dateRangeEnd.empty();
    });

</script>
</body>
</html>