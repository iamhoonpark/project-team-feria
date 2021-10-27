<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Feria | 세나관리</title>
    <!--  reset.css  -->
    <link rel="stylesheet" href="css/reset.css"/>
    <!--  notosanskr.css  -->
    <link rel="stylesheet" href="css/notosanskr.css"/>
    <!--  favicon 설정  -->
    <link rel="icon" href="img/logo.ico"/>
    <!-- 폰트어썸 아이콘 -->
    <link rel="stylesheet" href="css/all.min.css">
    <!-- header.css -->
    <link rel="stylesheet" href="css/header.css"/>
    <!-- small_header.css -->
    <link rel="stylesheet" href="css/small_header.css">
    <!-- allergy.css -->
    <link rel="stylesheet" href="css/allergy.css">
    <!--cena_management.css-->
    <link rel="stylesheet" href="css/cena_management.css">

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
    <div id="feria_open">
        <button class="btn_feria_open">페리아 오픈</button>
    </div>
    <h2 class="first_header">세나 관리</h2>
    <h3 class="second_header">등록한 세나를 수정하고 페리아를 오픈할 수 있어요.</h3>

    <div id="insertCena">
        <form action="cena_insert.jsp" id="cenaForm" method="post" enctype="multipart/form-data"></form>
        <fieldset>
            <legend class="screen_out">세나 등록 폼</legend>
            <div class="insert_cena_left not">
                <label for="titleCena" class="screen_out"></label>
                <input form="cenaForm" autocomplete="off" class="title_cena" id="titleCena" type="text"
                       name="title_cena"
                       placeholder="&ast;세나의 제목을 입력하세요." style="outline: none"
                       title="제목을 입력하세요."/>
                <!--이미지 등록-->
                <div class="plus_image_cena">
                    <input form="cenaForm" type="file" id="insertCenaImg" name="cenaImg"
                           accept="image/*">
                    <label for="insertCenaImg"></label>
                    <img id="cenaImg" src="img/kim.jpg"/>
                    <button class="btn_remove" type="button"><i class="fa fa-times"></i></button>
                </div><!--//이미지 등록-->
                <p class="not cena_img_msg msg">&ast;사진을 등록해주세요.</p>
            </div><!--//.insert_cena_left-->
            <div class="insert_cena_right">
                <div class="cena_kategorie_food">
                    <input checked id="korean" type="radio" name="food" value="korean"><label for="korean">한식</label>
                    <input id="chinese" type="radio" name="food" value="chinese"><label for="chinese">중식</label>
                    <input id="japanese" type="radio" name="food" value="japanese"><label for="japanese">일식</label>
                    <input id="asian" type="radio" name="food" value="asian"><label for="asian">아시안</label>
                    <input id="western" type="radio" name="food" value="western"><label for="western">양식</label>
                </div><!--//.cena_kategorie_food-->
                <div class="wrap_input_allergy">
                    <h4>알레르기 유발 식품 선택</h4>
                    <div class="allergy_img">
                        <input type="checkbox" name="allergy" value="1" class="allergy_check" id="allergy1">
                        <label for="allergy1"></label>
                        <input type="checkbox" name="allergy" value="2" class="allergy_check" id="allergy2">
                        <label for="allergy2"></label>
                        <input type="checkbox" name="allergy" value="3" class="allergy_check" id="allergy3">
                        <label for="allergy3"></label>
                        <input type="checkbox" name="allergy" value="4" class="allergy_check" id="allergy4">
                        <label for="allergy4"></label>
                        <input type="checkbox" name="allergy" value="5" class="allergy_check" id="allergy5">
                        <label for="allergy5"></label>
                        <input type="checkbox" name="allergy" value="6" class="allergy_check" id="allergy6">
                        <label for="allergy6"></label>
                        <input type="checkbox" name="allergy" value="7" class="allergy_check" id="allergy7">
                        <label for="allergy7"></label>
                        <input type="checkbox" name="allergy" value="8" class="allergy_check" id="allergy8">
                        <label for="allergy8"></label>
                        <input type="checkbox" name="allergy" value="9" class="allergy_check" id="allergy9">
                        <label for="allergy9"></label>
                        <input type="checkbox" name="allergy" value="10" class="allergy_check" id="allergy10">
                        <label for="allergy10"></label>
                        <input type="checkbox" name="allergy" value="11" class="allergy_check" id="allergy11">
                        <label for="allergy11"></label>
                        <input type="checkbox" name="allergy" value="12" class="allergy_check" id="allergy12">
                        <label for="allergy12"></label>
                    </div><!--//.allergy_img-->
                </div><!--//.wrap_input_allergy-->
                <div class="host_msg not">
                    <h4>호스트 한마디<span class="star">&ast;</span></h4>
                    <textarea placeholder="ex) 군대 취사병 출신, 파스타만큼은 정말 자신있습니다 !"
                              name="hostMsg" id="hostMsg" title="한마디를 입력해주세요." style="outline: none"></textarea>
                </div><!--//.host_msg-->
            </div><!--//.insert_cena_right-->
            <div class="insert_cena_bottom">
                <div class="kind_cena">
                    <h4>세나 종류 선택</h4>
                    <input checked type="radio" name="kindCena" value="s" class="kind_check" id="ss">
                    <label for="ss"> 술상</label>
                    <input type="radio" name="kindCena" value="b" class="kind_check" id="bs">
                    <label for="bs"> 밥상</label>

                    <!--<p class="cena_kind_msg msg">&ast;세나 종류를 선택해주세요.</p>-->
                </div><!--//.kind_cena-->
                <div class="food_tags not">
                    <h4>요리 태그<span class="star">&ast;</span></h4>
                    <ul class="plus_tag_food">

                        <!--언더스코어 템플릿 자리-->

                        <li><input autocomplete="off" style="outline: none" id="insertTag" placeholder="태그입력"/></li>
                    </ul><!--//.plus_tag_food-->
                </div><!--//.food_tags-->
                <div class="btn_enrollment">
                    <button form="cenaForm" disabled class="update_btn btn" type="submit">적용</button>
                    <button form="cenaForm" class="btn_cena_delete btn" type="button">삭제</button>
                </div><!--//.btn_enrollment-->
            </div><!--//.insert_cena_bottom-->
        </fieldset>
    </div><!--//#insertCena-->
</div><!--//#wrapContent-->

<!--세나 삭제 팝업-->
<div id="wrapPopup">
    <div id="popupDeleteCena">
        <form method="post" action="friendDelete.jsp">
            <fieldset>
                <legend class="screen_out">세나 삭제 확인</legend>
                <div class="popup_delete_cena">
                    <span>정말 세나를 삭제하시겠습니까?</span>
                    <div class="btn_delete">
                        <a href="delete_friend.jsp" class="delete">삭제</a>
                        <button type="button" class="not_delete">아니요</button>
                    </div>
                </div><!--//.popup_delete_cena-->
            </fieldset>
        </form>
    </div><!--//#popupDeleteCena-->
</div><!--//#wrapPopup-->

<!-- 요리 태그 템플릿 -->
<script type="text/template" id="foodTagTmpl">
    <li class="tag tag3">
        <input form="cenaForm" type="hidden" name="tag" value="<@=tag @>"/>
        <span># <@= tag @></span>
        <button type="button" class="btn_remove_tag">
            <i class="fa fa-times"></i>
        </button>
    </li>
</script>


<script src="js/jquery.js"></script>
<script src="js/underscore-min.js"></script>
<script>
	_.templateSettings = {interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};

    //요리 태그 템플릿 함수 선언
    const foodTagTmp = _.template($("#foodTagTmpl").html());

    //세나 제목 유효성 검사(1~20자, 공백 가능)
    const titleCenaRegExp = /^[ㄱ-힣|a-z|A-Z|\d|\s]{1,20}$/;
    //이미지 유효성 검사
    const cenaImageRegExp = /^image\//;
    //호스트 한마디 유효성 검사
    const hostMsgRegExp = /^[ㄱ-힣|a-z|A-Z|\d|\s]{1,200}$/;
    //요리태그 유효성 검사(한글, 숫자, 영어 가능, 1~10자, 중간에 공백 불가능)
    const tagRegExp = /^[가-힣|a-z|A-Z|\d]{1,10}$/;

    //세나 + 이미지 객체 생성
    const $plusImageCena = $(".plus_image_cena");

    //사진 틀
    const $insertCenaImg = $("#insertCenaImg+label");

    //사진 틀2
    const $cenaImg = $("#cenaImg");

    //유효성 검사 확인값(제목, 이미지, 한마디, 태그)
    const validArr = [false, false, false, false];


    /*세나 제목 입력*/
    $("#titleCena").keyup(function () {

        //입력한 제목 얻어옴
        const title = $(this).val();
        /*alert(title);*/

        //0번지에 유효성 검사 결과(true, false) 입력
        validArr[0] = titleCenaRegExp.test(title);

        //만약 배열 0번지가 유효성 통과하면(true)
        if (validArr[0]) {
            //제목 인풋에서 not클래스를 뺌
            $(this).parent().removeClass('not').addClass('ok');
        } else {
            //유효성 실패 시 not class 붙임
            $(this).parent().addClass('not').removeClass('ok');
        }//if~else end

        //수정 버튼 활성화 확인 함수
        checkValid();

    });/*//#titleCena keyup()*/

    /*이미지 변경*/
    $("#insertCenaImg").change(function () {

        const cenaImage = this.files[0];

        validArr[1] = cenaImage.size > 0 && cenaImageRegExp.test(cenaImage.type);

        if (validArr[1]) {
            $plusImageCena.addClass("ok");
            $(".cena_img_msg").hide();
        } else {
            $plusImageCena.removeClass("ok");
            alert("이미지를 선택해주세요.")
        }

        checkValid();
        //ajax로 파일업로드.
    });

    /*호스트 한마디 입력*/
    $("#hostMsg").keyup(function () {

        //입력한 한마디 얻어옴
        const msg = $(this).val();
        /*alert(msg);*/

        //2번지에 유효성 검사 결과(true, false) 입력
        validArr[2] = hostMsgRegExp.test(msg);

        //만약 배열 2번지가 유효성 통과하면(true)
        if (validArr[2]) {
            //제목 인풋에서 not클래스를 뺌
            $(this).parent().removeClass('not').addClass('ok');
        } else {
            //유효성 실패 시 not class 붙임
            $(this).parent().addClass('not').removeClass('ok');
        }//if~else end

        //수정 버튼 활성화 확인 함수
        checkValid();

    });/*//#hostMsg keyup()*/

    $(".btn_remove").on("click", function () {

        $("#insertCenaImg").val("");

        $(".cena_img_msg").show();

        validArr[1] = false;

        checkValid();

        $plusImageCena.removeClass("ok");
    });


    /*요리 태그 입력*/
    $("#insertTag").keyup(function (e) {

        e.preventDefault();

        const key = e.keyCode;

        console.log(key);

        //입력한 태그 얻어옴
        const tag = $(this).val();
        /*alert(tag);*/

        //만약 유저가 enter를 누르면
        if (key == 13) {

            validArr[3] = tagRegExp.test(tag);

            //만약 유효성 검사 통과 하면 (true)
            if (validArr[3]) {

                //유저가 입력한 값을 얻어와서 순서대로 붙인다.
                $(".plus_tag_food").children().append(foodTagTmp({tag: $("#insertTag").val()}));

                //유저가 입력한 값이 남아있지 않게 비워준다.
                $("#insertTag").val("");

                //태그 입력을 왼쪽이 아닌 오른쪽으로 가게 한다.
                $(".plus_tag_food").children().append($("#insertTag"));

                //만약 ul의 자식이 3개 이상이면
                if ($(".tag").length >= 3) {

                    //다음 태그 입력을 없앤다.
                    $("#insertTag").hide();

                } else {

                    //다음 태그를 바로 입력할 수 있게 해준다.
                    $("#insertTag").show().focus();

                }//if~else() end

            }//if() end
        }//if(key==13) end

        checkValid();
        return false;

    });/*//#insertTag keyup()*/

    //태그에서 x버튼을 클릭하면
    $(".food_tags").on("click", ".btn_remove_tag", function () {

        //태그를 지운다.
        $(this).parent().remove();

        //만약 ul의 자식이 3개 이상이면
        if ($(".tag").length >= 3) {

            //다음 태그 입력을 없앤다.
            $("#insertTag").hide();

        } else {

            //다음 태그를 바로 입력할 수 있게 해준다.
            $("#insertTag").show().focus();

        }//if~else() end

    });

    //ajax로 태그 자동완성된 걸 클릭하면 텍스트 들어가고 엔터치면 서버로 들어가도록
    //li를 얻


    //유효성 검사 되었나 확인하는 메서드 (중복된 코드가 있으면 함수로 빼세요)
    //배열 안의 값이 true인지 확인한다.
    //유효성 검사 모두 통과하면 수정 버튼 클릭(submit) 가능
    function checkValid() {

        let count = 0;
        //i가 배열 개수보다 작으면
        for (let i = 0; i < validArr.length; i++) {
            //배열 번호 1씩 증가
            if (validArr[i]) count++;
        }//for end

        console.log(validArr);

        //만약 true 값이 배열 개수랑 같으면
        if (count == validArr.length) {

            //수정 버튼 활성화
            $(".update_btn").attr("disabled", false);

        } else {

            $(".update_btn").attr("disabled", true);

        }//if~else end

    }//checkValid() end


    /*세나 삭제 버튼 클릭시*/
    $(".btn_cena_delete").click(function (e) {
        /*세나 삭제 팝업을 띄운다(display none에서 block으로 변경)*/
        e.preventDefault();
        $("#wrapPopup").css("display", "block")
    });

    /*세나 삭제 팝업에서 아니요를 누르면*/
    $(".not_delete").click(function () {
        $("#wrapPopup").css("display", "none")
    });


    // $("form").on("submit",function (e) {
    //     e.preventDefault();
    // });


</script>
</body>
</html>