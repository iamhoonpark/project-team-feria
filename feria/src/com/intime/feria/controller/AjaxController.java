package com.intime.feria.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.intime.feria.service.BReplyService;
import com.intime.feria.service.BReviewService;
import com.intime.feria.service.BibeService;
import com.intime.feria.service.FReviewService;
import com.intime.feria.service.LikeService;
import com.intime.feria.service.UBibeService;
import com.intime.feria.service.UserService;
import com.intime.feria.vo.BReview;
import com.intime.feria.vo.Bibe;
import com.intime.feria.vo.FReview;
import com.intime.feria.vo.Like;
import com.intime.feria.vo.PageVO;
import com.intime.feria.vo.User;

/* 2020-08-07 장유정(기본세팅) */
@RestController
public class AjaxController {

	private BReplyService bReplyService;
	private BReviewService bReviewService;
	private FReviewService fReviewService;
	private LikeService likeService;
	private UBibeService uBibeService;

	public void setbReplyService(BReplyService bReplyService) {
		this.bReplyService = bReplyService;
	}

	public void setbReviewService(BReviewService bReviewService) {
		this.bReviewService = bReviewService;
	}

	public void setfReviewService(FReviewService fReviewService) {
		this.fReviewService = fReviewService;
	}

	public void setLikeService(LikeService likeService) {
		this.likeService = likeService;
	}

	public void setuBibeService(UBibeService uBibeService) {
		this.uBibeService = uBibeService;
	}
	
	//2020-08-11 박상훈 BibeService 멤버필드
	private BibeService bibeService;
	
	//2020-08-11 박상훈 BibeService 세터
	public void setBibeService(BibeService bibeService) {
		this.bibeService = bibeService;
	}
	
	//2020-08-12 박상훈 메서드 선언
	/*
	 * 값이 출력 안됨 - 오답노트
	 * 1. Controller
	 *    json형태로 받기 위해 produces = "application/json; charset=UTF-8" 추가 (*RestController에는 사용하지 않아도 됨)
	 *    자료형 Map 객체로 선언
	 * 2. Mapper의 select구문
	 *    파라미터 타입에 Bibe라고 선언되어 있으나, DAO에는 인자에 Bibe가 없다.
	 * 3. Sevice
	 *    기존 String 자료형을 List<Bibe>를 Map객체로 선언
	 *    기존 리턴 값을 .put의 2번째 인자로 선언
	 * 4. Controller
	 *    인자에 Bibe 선언(val, no),
	 *    인자에 HttpSession 선언(로그인한 멤버의 번호를 가지고 있음)
	 *    Session은 반환형이 Object이다. 그래서 User와 같은 클래스로 맞추기 위해 다운캐스팅
	 *    no를 초기화 후 bibe의 no를 세팅해준다(생성자를 만들경우 no와 val 같이 선언)
	 * 
	 * 5. No mapping for GET /img/
	 *    이유?  const markup = bibeList({bibes:json}); 를
	 *    .bibes 추가해야 한다. 
	 *    =const markup = bibeList({bibes:json.bibes});
	 *    
	 *    List나 String이 리턴자료형일 경우 json을 그냥 받는다.
	 *       - 그냥 json
	 *        
	 *    Map이 리턴자료형일 경우 Json안에 여러 Array들이 들어 있다.
	 *       - 여러개를 묶어서 넣어주는 거임 = 배열이 여러개 생성됨
	 *       - Array 1, 2, 3, 4 각가 다르게
	 *       - 그래서 json.array1 = 5번 예시
	 * */
	@RequestMapping(value = "/ajax/bibeList.feria", method = RequestMethod.GET )
	public List<Bibe> getBibeList(Bibe bibe, HttpSession session) {
		
		//USER vo객체를 가진 변수 user에 session에 있는 User.LOGIN로 초기화
		User user = (User)session.getAttribute("loginUser");
		
		//int형 no 변수는 User vo의 no로 초기화
		int no = user.getNo();
		//userNo 출력
		//System.out.println(no);
		System.out.println(bibe.getVal());
		
		//Bibe객체의 멤버필드 no를 유저 고유 번호로 세팅
		bibe.setNo(no);
		
		//bibeService.메서드 리턴
		return bibeService.getHostsBibeList(bibe);
		
		//val값이 제대로 넘어오는지 확인을 해야 함.
		//System.out.println(bibe.getVal());
		
		//에러 SQL command not properly ended = SQL 구문 미완성 ex) 괄호가 추가됨
	}
	
	//2020-08-13 박상훈 : FReview 객체를 배열로 가진 List를 리턴자료형이며 HttpSession과 Freview를 인자로 가진 메서드를 선언
	@RequestMapping(value = "/ajax/reviewsList.feria", method = RequestMethod.GET)
	public List<FReview> getHostsReviewsList(HttpSession session, char likeType) {

		//HttpSession은 Object 객체이기 때문에 다운캐스팅 필요
		//로그인 유저를 얻어와서 User 객체에 담아줌
		User user = (User)session.getAttribute("loginUser");
		
		//userNo는 로그인한 유저번호
		int userNo = user.getNo();
		
		//확인
		//System.out.println(userNo);
		
		//FReview 객체를 배열로 가진 지역변수 선언
		List<FReview> fReviews = fReviewService.getHostsReviews(userNo);
		//자꾸 여기서 NullPointerException 발생
		//유저번호 확인했으나 잘 넘어옴
		//원인 : fReviewService 주입을 안 했음
		
		//for문을 사용하여 fReviews에 담긴 데이터를
		//FReview 객체에 하나씩 담는다
		for (FReview fReview : fReviews) {
			//하나씩 담길 때 마다
			//BReview객체에 서비스의 메서드로 세팅한다
			fReview.setbReviews(bReviewService.getHostsBreviews(fReview.getFrNo()));			
		}//for end
		
		//서비스의 getHostsReviews를 리턴하나, userNo를 대입하여 호출
		return fReviews;
	}
}
