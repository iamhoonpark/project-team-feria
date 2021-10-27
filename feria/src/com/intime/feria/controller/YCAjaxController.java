package com.intime.feria.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.intime.feria.service.BlackListService;
import com.intime.feria.service.FeriaService;
import com.intime.feria.service.FriendService;
import com.intime.feria.service.LikeService;
import com.intime.feria.service.UserService;
import com.intime.feria.vo.FDate;
import com.intime.feria.vo.Friend;
import com.intime.feria.vo.Like;
import com.intime.feria.vo.Request;
import com.intime.feria.vo.User;

/* 2020-08-07 장유정(기본세팅) */
@RestController
public class AjaxController {
	
	private BlackListService blackListService;//0812 정예찬
	private FeriaService feriaService;//0811 정예찬
	private FriendService friendService;//0809 정예찬
	private UserService userService;//0809 정예찬
	private LikeService likeService;
	
	public void setBlackListService(BlackListService blackListService) {//0812 정예찬
		this.blackListService = blackListService;
	}
	
	public void setFeriaService(FeriaService feriaService) {//0811 정예찬
		this.feriaService = feriaService;
	}
	
	public void setFriendService(FriendService friendService) {//0809 정예찬
		this.friendService = friendService;
	}
	
	public void setUserService(UserService userService) {//0809 정예찬
		this.userService = userService;
	}
	
	public void setLikeService(LikeService likeService) {
		this.likeService = likeService;
	}
	
	//0812 정예찬 블랙리스트 삭제
	@RequestMapping(value="/ajax/deleteBlack.feria",method=RequestMethod.GET)
	public void deleteBlack(int userNo2, HttpSession session) {
		
		// loginMember(로그인 한 본인)의 no를 얻어옴
		User loginMember = (User)session.getAttribute("loginMember");
		int userNo = loginMember.getNo();
		
		blackListService.deleteBlack(userNo, userNo2);
	}
	
	//0812 정예찬 블랙리스트 목록
	@RequestMapping(value="/ajax/getBlackList.feria",method=RequestMethod.GET)
	//페이지 클릭시 받아온 페이지 번호 page
	public Map<String, Object> getBlackList(@RequestParam(defaultValue = "1") int pageNo,
			HttpSession session) {
		
		// loginMember(로그인 한 본인)의 no를 얻어옴
		User loginMember = (User)session.getAttribute("loginMember");
		int no = loginMember.getNo();
		
		return blackListService.getBlackList(pageNo,no); 
	}
	
	//0811 정예찬 좋아요 이벤트
	@RequestMapping(value="/ajax/checkLikes.feria",method=RequestMethod.GET)
	//하트 클릭시 얻어온 게시물 번호 no
	public void checkLikes(int no, char likesType,
			HttpSession session, HttpServletResponse response) {
		
		// PrintWriter 객체 out 생성/초기화/예외처리
		//json.객체명으로 쓰기 위함
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// loginMember(로그인 한 본인)의 no를 userNo에 저장
		User loginMember = (User)session.getAttribute("loginMember");
		int userNo = loginMember.getNo();
		
		//insert, delete.xml에 사용할 parameterType을 like객체에 저장
		Like like = new Like(likesType,no,userNo);
		
		int searchLike = likeService.selectUserLike(like);
		
		//System.out.println(typeNo);
		//System.out.println(likesType);
		//System.out.println(userNo);
		//System.out.println(searchLike);
		
		if(searchLike==0) {
			likeService.insert(like);
		} else {
			likeService.delete(like);
		}
		
		//likes테이블에서 게시물타입과,게시물번호,유저번호로 라이크 갯수 카운트
		Like count = new Like(likesType,no,userNo);
		//라이크 갯수
		int likeCount = likeService.selectLikeCount(count);
		
		//{"count":1}
		out.print("{\"count\":"+likeCount+"}");
	}
	
	//0811 정예찬 페리아 리스트
	@RequestMapping(value="/ajax/getFeriaList.feria")
	//스크롤 내렸을 때 받아온 페이지 번호 pageNo
	public List<FDate> getFeriaList(int pageNo, char likesType,
			HttpSession session) {
		
		// loginMember(로그인 한 본인)의 no를 userNo에 저장
		User loginMember = (User)session.getAttribute("loginMember");
		int userNo = loginMember.getNo();
		
		return feriaService.getFeriaList(pageNo,likesType,userNo);
	}
	
	//0811 정예찬 친구삭제
	@RequestMapping(value="/ajax/fDelete.feria",method=RequestMethod.GET)
	// 삭제할 사람의 no를 얻어옴
	public void fDelete(int no,
			HttpServletRequest request, HttpServletResponse response) {
		
		// PrintWriter 객체 out 생성/초기화/예외처리
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)request.getSession().getAttribute(User.LOGIN);
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		int memberNo =loginMember.getNo();
		
		// no, memberNo를 가진 Friend 객체 생성
		Friend friend = new Friend(no, memberNo);
		
		// 친구 삭제 실행 후 result1에 return 값 저장
		int result1 = friendService.deleteFriend(friend);
		
		// print
		System.out.println((result1));
		out.print("{\"result\":"+(result1==1)+"}");
	}
	
	//0811 정예찬 친구요청 거절
	@RequestMapping(value="/ajax/fReject.feria",method=RequestMethod.GET)
	// 거절할 사람의 no를 얻어옴
	public void fReject(int no,
			HttpServletRequest request, HttpServletResponse response) {
		
		// PrintWriter 객체 out 생성/초기화/예외처리
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)request.getSession().getAttribute(User.LOGIN);
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		int memberNo =loginMember.getNo();
		
		//System.out.println(no);

		// no, memberNo를 가진 Request 객체 생성
		Request requester = new Request(no, memberNo);
		
		// 친구 거절 실행 후 result1에 return 값 저장
		int result1 = friendService.updateReject(requester);
		
		// print
		System.out.println(result1);
		out.print("{\"result\":"+(result1==1)+"}");
	}
	
	//0811 정예찬 친구요청 수락
	@RequestMapping(value="/ajax/fAccept.feria",method=RequestMethod.GET)
	// 삭제할 사람의 no를 얻어옴
	public void fAccept(int no, 
			HttpServletRequest request, HttpServletResponse response) {
		
		// PrintWriter 객체 out 생성/초기화/예외처리
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)request.getSession().getAttribute(User.LOGIN);
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		int memberNo =loginMember.getNo();
		
		// print
		//System.out.println("신청대상: " + no);
		//System.out.println("신청자: " + memberNo);
		
		// no, memberNo를 가진 Friend,Request 객체 생성
		Friend friend = new Friend(no, memberNo);
		Request requester = new Request(no, memberNo);
		
		// 요청 상태(req_state)를 'Y'로 변경 후 friends 테이블에 추가
		// 각각 변수에 return 값 저장
		int result1 = friendService.updateAccept(requester);
		int result2 = friendService.insertFriend(friend);
		
		// print
		System.out.println(result1);
		System.out.println(result2);
		out.print("{\"result\":"+(result1==1)+"}");
	}
	
	//0809 정예찬 친구요청 목록
	@RequestMapping(value="/ajax/getRequestList.feria",method=RequestMethod.GET)
	// Paging 처리를 위해 requests 목록의 페이지 번호를 얻음
	public Map<String, Object> getRequestList(@RequestParam(defaultValue = "1") String reqPage, 
			HttpServletRequest request) {
		
		// 현재 페이지를 Int형으로 형변환
		int pageNo = Integer.valueOf(reqPage);
		
		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)request.getSession().getAttribute(User.LOGIN);
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		int memberNo =loginMember.getNo();
		
		return friendService.getRequestList(pageNo, memberNo);
	}
	
	//0809 정예찬 친구목록
	@RequestMapping(value="/ajax/getFriendList.feria",method=RequestMethod.GET)
	// Paging 처리를 위해 requests 목록의 페이지 번호를 얻음
	public Map<String, Object> getFriendList(@RequestParam(defaultValue = "1") String regPage, 
			HttpServletRequest request) {
		
		// 현재 페이지를 Int형으로 형변환
		int pageNo = Integer.valueOf(regPage);
		
		// User.LOGIN(loginMember) session을 요청받아 저장
		User loginMember = (User)request.getSession().getAttribute(User.LOGIN);
		
		// loginMember(로그인 한 본인)의 no를 memberNo에 저장
		int memberNo =loginMember.getNo();
		
		return friendService.getFriendList(pageNo, memberNo);
	}
	
	//0809 정예찬 유저검색
	@RequestMapping(value="/ajax/searchUsers.feria",method=RequestMethod.GET)
	public List<User> searchUsers() {
		
		return userService.searchUsers();
	}
	
}
