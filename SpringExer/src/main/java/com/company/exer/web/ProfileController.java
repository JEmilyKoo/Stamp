package com.company.exer.web;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.exer.service.MemberDTO;
import com.company.exer.service.ProfileDTO;
import com.company.exer.service.ProfileService;

/*
[일반 자바클래스 형태 즉 POJO(Plain Old Java Object)]

컴파일러에게 "아래 클래스는 사용자 요청을 처리하는 클래스야" 라고
알려주는 역할]-컨트롤러 클래스
*/
@Controller
@RequestMapping("/Profile/")
public class ProfileController {
	

	@Inject // 자동 주입
	ProfileService service;

//ProfileMain에서 쓰이는 컨트롤러
// 뷰 선택 체크
	
	@RequestMapping(value = "Main.do", method = RequestMethod.GET)
	public String ProfileMain(HttpSession session) throws Exception {
		session.removeAttribute("userError");
		//뷰정보 반환]
		ProfileDTO dto = new ProfileDTO();
		//세션으로 처리하지 말고 기존에 같은 데이터가 있는지를 확인해야겠다.
		//
		MemberDTO mdto= new MemberDTO();
		
		String id;
		id=session.getAttribute("id").toString();

		mdto.setId(id);
		dto=service.selectProfileFromMember(mdto);
		//세션에 프로필이 있는지 확인하고 없으면 새로 삽입
		if(dto==null){
			return "Profile/ProfileInsert"; 
		}
		session.setAttribute("profile", dto);
		session.setAttribute("otherProfile", dto);
		//뿌려주기용 세션: 메인에 뿌려주는 건 이 otherProfile로 굴러간다
		return "Profile/ProfileMain";
	}///////////////////ProfileMain() 
	
	@RequestMapping(value = "Main.do", method = RequestMethod.POST) // 잘못 입력했을 때
	public String ProfileMainPOST(HttpSession session) {
		return "Profile/ProfileMain";
	}///////////////////ProfileMainPOST()
	
	@RequestMapping(value = "Main/NickName.do", method = RequestMethod.GET)
	public String ProfileMainId(@RequestParam String nickName, HttpSession session) throws Exception {
		ProfileDTO dto = new ProfileDTO();
		dto.setNickName(nickName);
		//dto에 아이디를 넘긴다
		
		//해당 닉네임 있는지 체크한다
		int flag = service.NickNameCheck(dto);
		if(flag==1) {
			dto=service.selectProfile(dto);
			session.setAttribute("otherProfile", dto);	
		}
		else {
			//해당 KOO를 만들라고 시킨다
			session.setAttribute("userError", "해당하는 닉네임의 사용자가 없습니다");
		}
		//프로필을 다 가져온다
		//받아온 걸 세션의 남의 프로필칸에 넣는다
		return "Profile/ProfileMain";
	}///////////////////ProfileMain()
	@RequestMapping(value = "Main/NickName.do", method = RequestMethod.POST) // 잘못 입력했을 때
	public String ProfileMainIdPost(HttpSession session) {
		return "Profile/ProfileMain";
	}
	
//ProfileInsert에서 쓰이는 컨트롤러
// 뷰 생성
	
	@RequestMapping(value = "Insert.do", method = RequestMethod.GET)
	public String insertProfile()  throws Exception {
		//뷰정보 반환]
		return "Profile/ProfileInsert";
	}///////////////////insertProfile()
	
	@RequestMapping(value = "Insert.do", method = RequestMethod.POST)
	public String insertProfilePOST(HttpSession session, ProfileDTO profileDTO) throws Exception  {
		//뷰정보 반환]
		
		System.out.println(profileDTO);
		// 여기로 id pwd name을 받아옴
		//하기 전에 체크를 해야지
		//멤버 체크하는 함수가 잘 돌아가면
		
		//id값도 로그인 된 걸로 넣어줌
		
		profileDTO.setId(session.getAttribute("id").toString());
		//profileDTO.setOpenprf(Integer.parseInt(profileDTO.getOpenprf()));
		System.out.println(profileDTO);
		int flag = service.NickNameCheck(profileDTO);
		//닉네임 체크하는 함수
		if(flag==0) {
		service.insertProfile(profileDTO);
		System.out.println("중복된 별명이 아닙니다");

		session.setAttribute("profile", profileDTO);

		session.setAttribute("nickName", profileDTO.getNickName());
		}
		else {	session.setAttribute("error", "이미 존재하는 별명입니다");
			
			return "Profile/ProfileInsert";
		}
		
		session.removeAttribute("error");

		session.setAttribute("otherProfile", profileDTO);
		
		return "Profile/ProfileMain";
	}///////////////////insertProfilePOST()
	
//ProfileSetting에서 쓰이는 컨트롤러
// 뷰 수정 삭제
	@RequestMapping("Setting.do")
	public String ProfileSetting() {
		//뷰정보 반환]
		return "Profile/ProfileSetting";
	}///////////////////ProfileSetting()
	
	@RequestMapping("UpdateProfile.do")
	public String ProfileUpdateProfile(ProfileDTO profileDTO) throws Exception{
		service.updateProfile(profileDTO);
		return "Profile/ProfileMain";
	}///////////////////ProfileUpdateProfile()
	
	@RequestMapping("DeleteProfile.do")
	public String ProfileDeleteProfile(ProfileDTO profileDTO) throws Exception{
		service.deleteProfile(profileDTO);
		return "Profile/ProfileMain";
	}///////////////////ProfileDeleteProfile()
	
//ProfileStampList에서 쓰이는 컨트롤러
// 뷰 선택 체크 -> 스탬프 컨트롤러 필요

	@RequestMapping("StampList.do")
	public String ProfileStampList() {
		//뷰정보 반환]
		return "Profile/ProfileStampList";
	}///////////////////ProfileStampList()
	
//Badge에서 쓰이는 컨트롤러
// 뷰 선택 체크 -> 뱃지 컨트롤러 필요

//ProfileRiew에서 쓰이는 컨트롤러
// 뷰 선택 -> 리뷰 컨트롤러 필요
	
	@RequestMapping("Review.do")
	public String ProfileRiview() {
		//뷰정보 반환]
		return "Profile/ProfileReview";
	}///////////////////ProfilePost()
	
//ProfileComment에서 쓰이는 컨트롤러
// 뷰 선택 -> 리뷰 컨트롤러 필요
	
	@RequestMapping("Comment.do")
	public String ProfileComment() {
		//뷰정보 반환]
		return "Profile/ProfileComment";
	}///////////////////ProfileComment()
	
//ProfileLike에서 쓰이는 컨트롤러
// 뷰 선택 -> 리뷰 컨트롤러 필요
	
	@RequestMapping("Like.do")
	public String ProfileLike() {
		//뷰정보 반환]
		return "Profile/ProfileLike";
	}///////////////////ProfileLike()
	
//ProfileAlarm에서 쓰이는 컨트롤러
// 뷰 선택 -> 미구현
	@RequestMapping("Alarm.do")
	public String ProfileAlarm() {
		//뷰정보 반환]
		return "Profile/ProfileAlarm";
	}///////////////////ProfileAlarm()
	
	
//ProfileAlarmSetting에서 쓰이는 컨트롤러
// 뷰 수정 삭제 -> 미구현
	@RequestMapping("AlarmSetting.do")
	public String ProfileAlarmSetting() {
		//뷰정보 반환]
		return "Profile/ProfileAlarmSetting";
	}///////////////////ProfileAlarmSetting()	
	
}
