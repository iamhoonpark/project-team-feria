package com.intime.feria.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.intime.feria.service.BibeService;
import com.intime.feria.service.BlackListService;
import com.intime.feria.service.FReviewService;
import com.intime.feria.service.FeriaService;
import com.intime.feria.service.FriendService;
import com.intime.feria.service.UserService;
import com.intime.feria.vo.Feria;
import com.intime.feria.vo.PageVO;
import com.intime.feria.vo.User;

@Controller
public class MyPageController {
	
	private BlackListService blackListService;
	private FriendService friendsService;
	
	//2020-08-11 박상훈 BibeService 멤버필드
	private BibeService bibeService;

	public void setBlackListService(BlackListService blackListService) {
		this.blackListService = blackListService;
	}
	public void setFriendsService(FriendService friendsService) {
		this.friendsService = friendsService;
	}	
	
	//2020-08-07 박상훈 userService 멤버필드
	private UserService userService;
	
	//2020-08-07 박상훈 userService 세터
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	//2020-08-11 박상훈 BibeService 세터
	public void setBibeService(BibeService bibeService) {
		this.bibeService = bibeService;
	}
	
	//2020-08-12 박상훈 feriaService 멤버필드
	private FeriaService feriaService;
	
	//2020-08-12 박상훈 feriaService 세터
	public void setFeriaService(FeriaService feriaService) {
		this.feriaService = feriaService;
	}
	
	//2020-08-13 박상훈 fReviewService 멤버필드
	private FReviewService fReviewService;
	
	//2020-08-13 박상훈 fReviewService 세터
	public void setfReviewService(FReviewService fReviewService) {
		this.fReviewService = fReviewService;
	}
	
	//2020-08-09 박상훈 ReservedFeira 메서드
	@RequestMapping(value = "/ReservedFeira.feria", method = RequestMethod.GET)
	public String ReservedFeira(Model model, @RequestParam(defaultValue = "1") int page, HttpSession session) {
		System.out.println("페이지번호 : "+page);
		
		//F) HttpSession을 인자로 선언
		//User 객체를 loginMember라는 변수로 선언
		//메서드 호출 후 User로 형변환
		User loginMember = (User)session.getAttribute("loginUser");
		
		//attribute등록
		//F-2) 로그인멤버 인자 추가 선언
		model.addAllAttributes(userService.getMyFeriaPaginate(page,loginMember.getNo()));
		
		//리턴
		return "myPageReservedFeria";
	}
	//오답! @RequestMapping(value = "/myPageGuest.feria", method = RequestMethod.GET)
	//public void myPageGuest(Model model, PageVO pageVO) {
	//	model.addAllAttributes(userService.getMyFeriaList(pageVO));
	//}
	
	//2020-08-12 박상훈 : 호스트의 지난 페리아 페이지
	@RequestMapping(value = "/hostsPastFeria.feria", method = RequestMethod.GET)
	public String HostsPastFeria(Model model, @RequestParam(defaultValue = "1") int page, HttpSession session) {

		//로그인 유저 받아옴
		User loginUser = (User)session.getAttribute("loginUser");
		
		//지난페리아 얻어오는 메서드
		model.addAllAttributes(feriaService.getHostsFeriaList(page, loginUser.getNo()));

		//페리아 리뷰 개수 얻어오는 메서드
		int numReview = fReviewService.getHostsReviewTotal(loginUser.getNo());
		
		//속성 추가
		model.addAttribute("numReview",numReview);
		
		
		return "host_lastFeria";
	}
	
}
