<%@page import="com.intime.feria.dao.FImagesDAO"%>
<%@page import="com.intime.feria.dao.FDatesDAO"%>
<%@page import="com.intime.feria.vo.FDate"%>
<%@page import="java.util.List"%>
<%@page import="com.intime.feria.vo.PageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//현재 페이지 번호
	int pageNo = 1;
	
	String pageNoStr = request.getParameter("page");
	
	try {
		pageNo = Integer.parseInt(pageNoStr);
	}catch(Exception e){
		response.sendRedirect("/feria.jsp?page=1");
	}
	
	//한 페이지에 보여지는 게시물수
	int numPage = 6;

	PageVO pageVO = new PageVO(pageNo,numPage);

	List<FDate> fDates = FDatesDAO.selectList(pageVO);
	
	//리스트가 비어있으면
	if(fDates.isEmpty()) {
		response.sendRedirect("/feria.jsp?page=1");
		return;
		//밑에 코드는 만날 필요가 없으니까 리턴
	}
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Feria | 둘러보기</title>
    <!--  reset.css  -->
    <link rel="stylesheet" href="css/reset.css"/>
    <!--  notosanskr.css  -->
    <link rel="stylesheet" href="css/notosanskr.css"/>
    <!--  favicon 설정  -->
    <link rel="icon" href="img/logo.ico"/>
    <!-- 폰트어썸 아이콘 -->
    <link rel="stylesheet" href="css/all.min.css">
    <!--  외부 feria.css  -->
    <link rel="stylesheet" href="css/feria.css"/>
    <!--  외부 flag.css  -->
    <link rel="stylesheet" href="css/flag.css"/>
    <!-- header.css -->
    <link rel="stylesheet" href="css/header.css"/>
    <!-- small_header.css -->
    <link rel="stylesheet" href="css/small_header.css">
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
    <h2 class="first_header">페리아</h2>
    <h3 class="second_header">행복한 식사, 즐거운 술자리 기록을 살펴보고 자신만의 세나를 준비해보세요.</h3>
    <div class="list_feria">
        <ul>
        	            
        </ul>
    </div><!--//.list_feria-->
</div><!--//#wrapContent-->

<script type="text/template" id="feriaListTmpl">
<@ _.each(feriaList,function(feria) { @>
	<li class="feria flag_<@=feria.cenaType@> flag">
                <a href="feria_detail.jsp">
                    <div class="wrap_image_feria">
                        <!-- 사진 목록 -->
                        <ul class="list_image_feria">
						<@ _.each(feria.fImages, function(image) { @>
                            <li class="party"><img src="/img/<@=image.fImg@>" alt="페리아 이미지"/></li>
						<@ }) @>
                        </ul>
                    </div>
                    <button class="btn_prev"><i class="fas fa-caret-left"></i></button>
                    <button class="btn_next"><i class="fas fa-caret-right"></i></button>
                    <h4><@=feria.feriaName@></h4>
                    <strong class="num_heart">3,383k</strong>
                    <!--하트-->
                    <div class="btn_heart">
                        <div>
                            <input type="checkbox" class="checkbox" id="checkbox1"/>
                            <label for="checkbox1">
                                <svg id="heart-svg" viewBox="467 392 58 57" xmlns="http://www.w3.org/2000/svg">
                                    <g id="Group" fill="none" fill-rule="evenodd" transform="translate(467 392)">
                                        <path d="M29.144 20.773c-.063-.13-4.227-8.67-11.44-2.59C7.63 28.795 28.94 43.256 29.143 43.394c.204-.138 21.513-14.6 11.44-25.213-7.214-6.08-11.377 2.46-11.44 2.59z"
                                              id="heart" fill="#AAB8C2"/>
                                        <circle id="main-circ" fill="#E2264D" opacity="0" cx="29.5" cy="29.5" r="1.5"/>

                                        <g id="grp7" opacity="0" transform="translate(7 6)">
                                            <circle id="oval1" fill="#9CD8C3" cx="2" cy="6" r="2"/>
                                            <circle id="oval2" fill="#8CE8C3" cx="5" cy="2" r="2"/>
                                        </g>

                                        <g id="grp6" opacity="0" transform="translate(0 28)">
                                            <circle id="oval1" fill="#CC8EF5" cx="2" cy="7" r="2"/>
                                            <circle id="oval2" fill="#91D2FA" cx="3" cy="2" r="2"/>
                                        </g>

                                        <g id="grp3" opacity="0" transform="translate(52 28)">
                                            <circle id="oval2" fill="#9CD8C3" cx="2" cy="7" r="2"/>
                                            <circle id="oval1" fill="#8CE8C3" cx="4" cy="2" r="2"/>
                                        </g>

                                        <g id="grp2" opacity="0" transform="translate(44 6)">
                                            <circle id="oval2" fill="#CC8EF5" cx="5" cy="6" r="2"/>
                                            <circle id="oval1" fill="#CC8EF5" cx="2" cy="2" r="2"/>
                                        </g>

                                        <g id="grp5" opacity="0" transform="translate(14 50)">
                                            <circle id="oval1" fill="#91D2FA" cx="6" cy="5" r="2"/>
                                            <circle id="oval2" fill="#91D2FA" cx="2" cy="2" r="2"/>
                                        </g>

                                        <g id="grp4" opacity="0" transform="translate(35 50)">
                                            <circle id="oval1" fill="#F48EA7" cx="6" cy="5" r="2"/>
                                            <circle id="oval2" fill="#F48EA7" cx="2" cy="2" r="2"/>
                                        </g>

                                        <g id="grp1" opacity="0" transform="translate(24)">
                                            <circle id="oval1" fill="#9FC7FA" cx="2.5" cy="3" r="2"/>
                                            <circle id="oval2" fill="#9FC7FA" cx="7.5" cy="2" r="2"/>
                                        </g>
                                    </g>
                                </svg>
                            </label>
                        </div>
                    </div><!--//하트-->
                    <div class="list_member">
                        <img src="/img/<@=feria.profileImg@>" class="member king"/><span class="king_name"><@=feria.hostName@></span>
						<@ _.each(feria.pHeads, function(pHead) { @>
                        <img src="/img/<@=pHead.profileImg@>" class="member member<@=pHead.rownum@>"/>
						<@ }) @>
                    </div><!-- //.list_member-->
                </a><!--jsp는 임의로 지정함-->
            </li>
<@ }) @>
</script>

<script src="js/jquery.js"></script>
<script src="js/moment-with-locales.js"></script>
<script src="js/underscore-min.js"></script>
<script>

//언더스코어 템플릿을 % -> @으로 변경
_.templateSettings = 
{interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};

const $feriaListTmp = _.template($("#feriaListTmpl").html());

const $feriaList = $(".list_feria > ul");

//윈도우객체를 jquery객체로
const $window = $(window);
//문서객체를 jquery객체로
const $document = $(document);

    //각각의 파티
    let cnts = [0, 0, 0, 0, 0, 0];

    //왼쪽 버튼을 클릭하면
    $(".btn_prev").click(function (e) {

        //자신이 몇 번째 파티인지 얻어옴
        const idx = $(this).parents(".feria").index();
        /*alert(idx);*/

        //클릭시 링크 이동을 막는다.
        e.preventDefault();

        //1씩 감소
        --cnts[idx];

        //만약 idx가 -1이면 다시 6으로
        if (cnts[idx] == -1) {

            cnts[idx] = $(this).parent().find(".party").length - 1;

        }//if() end

        //이미지의 width 만큼
        let left = cnts[idx] * 380;

        //그 페리아의 이미지 ul을 왼쪽으로 옮겨 오른쪽 사진이 나오게 함
        $(this).parent().find(".list_image_feria").css("left", -left);

    });

    //오른쪽 버튼을 클릭하면
    $(".btn_next").click(function (e) {

        const idx = $(this).parents(".feria").index();

        //클릭시 링크 이동을 막는다.
        e.preventDefault();
        //1씩 증가
        ++cnts[idx];

        const partyNum = $(this).parent().find(".party").length;

        //만약 숫자가 6이 되면 다시 0번째 사진으로 가도록 함
        if (cnts[idx] == partyNum) {
            cnts[idx] = 0;
        }
        let left = cnts[idx] * 380;
        $(this).parent().find(".list_image_feria").css("left", -left);

    });


    /*삽질*/

    /*$('.fa-heart').click(function () {
        if (this.hasClass(".fas")) {
            $(this).removeClass("fas").addClass("far");
        } else {
            $(this).removeClass("far").addClass("fas");
        }
    });*/

    /*$(".far.fa-heart").click(function () {
        $(this).removeClass("far fa-heart").addClass("fas fa-heart");
        alert("dd");
    });

    $(".fas.fa-heart").click(function () {
        $(this).removeClass("fas fa-heart").addClass("far fa-heart");
        alert("zz");
    });*/

    /*if( $(".far").click() == true ){
        $(this).removeClass("far").addClass("fas");
    }else {
        $(this).removeClass("fas").addClass("far");
    }//if~else end*/

    /* //하트를 클릭하면

         if (this.attr('class')){
             this.removeClass("far");
         }else {

         }

         this.attr('class','fas fa-heart')

         /!*$(this).removeClass("far").addClass("fas");
         alert("ㅎㅎ");*!/

         /!*만약 fas를 가지고있으면 far을 뺴고*!/
     });*/

     let pageNo = 1;
     
     function getFeriaList() {
		$.ajax({
			url:"/ajax/getFeriaList.jsp",
			type:"get",
			data:{
				page:pageNo,
			},
			dataType:"json",
			error:function(xhr,error,code){
				alert("점검중");
			},
			success:function(json){
				alert("연결됨");
				
				console.log(json);
				
				$feriaList.append($feriaListTmp({feriaList:json}));
			},
			
		})//ajax() end
		
     };
     getFeriaList();

     //스크롤이벤트
     $window.on("scroll",function () {
    	 
         const sTop = $window.scrollTop();
         const wHeight = $window.height();
         const dHeight = $document.height();

         console.log(sTop+":"+dHeight+":"+wHeight);

         if(sTop + wHeight == dHeight) {

        	 //불러오기 전에 페이지를 늘려줌
        	 pageNo++;
        	 console.log(pageNo);
        	 
           	//스크롤끝에서 페리아를 불러오는 함수 호출
           	getFeriaList();
             
         }//if() end

     });//on() end
     
</script>
</body>
</html>