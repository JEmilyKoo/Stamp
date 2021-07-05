package com.company.exer;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	//컨트롤러 메소드]

	@RequestMapping("StampList.do")
	public String ProfileStampList() {
		//뷰정보 반환]
		return "Profile/ProfileStampList";
	}///////////////////ProfileStampList()
	
	
	@RequestMapping(value = "Main.do", method = RequestMethod.GET)
	public String ProfileMain() {
		//뷰정보 반환]
		return "Profile/ProfileMain";
	}///////////////////ProfileMain()
	@RequestMapping(value = "Main.do", method = RequestMethod.POST) // 잘못 입력했을 때
	public String loginFormPPST(HttpSession session) {
		return "Profile/ProfileMain";
	}

	@RequestMapping("Like.do")
	public String ProfileLike() {
		//뷰정보 반환]
		return "Profile/ProfileLike";
	}///////////////////ProfileLike()
	
	@RequestMapping("Comment.do")
	public String ProfileComment() {
		//뷰정보 반환]
		return "Profile/ProfileComment";
	}///////////////////ProfileComment()
	
	@RequestMapping("Post.do")
	public String ProfilePost() {
		//뷰정보 반환]
		return "Profile/ProfilePost";
	}///////////////////ProfilePost()
	
	@RequestMapping("Alarm.do")
	public String ProfileAlarm() {
		//뷰정보 반환]
		return "Profile/ProfileAlarm";
	}///////////////////ProfileAlarm()
	
	@RequestMapping("AlarmSetting.do")
	public String ProfileAlarmSetting() {
		//뷰정보 반환]
		return "Profile/ProfileAlarmSetting";
	}///////////////////ProfileAlarmSetting()
	
	@RequestMapping(value="NewProfile.do",produces="application/json;charset=UTF-8")
	public String ProfileNewProfile(HttpSession session) throws Exception {
		ProfileDTO profileDTO = new ProfileDTO();
		
		if(		session.getAttribute("id") ==null) { 
		//없으면 암거나 넣고
		profileDTO.setId("csb");
		}
		else {
		//있으면 추가한다	
		
		profileDTO.setId(session.getAttribute("id").toString());
		}
		profileDTO.setNickName(session.getAttribute("id").toString());
		profileDTO.setMail("name@mail.com");
		profileDTO.setTrvprpns("서울");
		profileDTO.setPr("집보내주세요");
		profileDTO.setGender("여자");
		profileDTO.setBirth("2021-07-05");
		profileDTO.setPhone("010-2228-3239");
		profileDTO.setLev("0");
		profileDTO.setExp("0");
		profileDTO.setOpenprf("1");
		System.out.println(profileDTO);
		session.setAttribute("profile", profileDTO);
		return "Profile/ProfileMain";
	}///////////////////NewProfile()
	
	@RequestMapping(value="NewInsertProfile.do",produces="application/json;charset=UTF-8")
	public String ProfileNewInsertProfile(HttpSession session) throws Exception {
		ProfileDTO profileDTO = new ProfileDTO();
		
		profileDTO= (ProfileDTO) session.getAttribute("profile");

		System.out.println(profileDTO);
		session.setAttribute("profile", profileDTO);
		service.newProfile(profileDTO);
		return "Profile/ProfileMain";
	}///////////////////NewProfile()
	
	// 이 아래는 버튼을 만들지 않았음
	
	
	@RequestMapping("SelectProfile.do")
	public String ProfileSelectProfile(HttpSession session) throws Exception{
		
		ProfileDTO dto = new ProfileDTO();
		dto=(ProfileDTO) session.getAttribute("profile");
		
		dto=service.selectProfile(dto);
		session.setAttribute("profile", dto);
		return "Profile/ProfileMain";
}///////////////////ProfileSelectProfile()
	
	@RequestMapping("SelectMemberProfile.do")
	public String ProfileSelectMemberProfile(HttpSession session) throws Exception{
		
		MemberDTO mdto = new MemberDTO();
		mdto=(MemberDTO) session.getAttribute("login");
		
		ProfileDTO dto = new ProfileDTO();
		dto=service.selectMemberProfile(mdto);
		
		session.setAttribute("profile", dto);
		return "Profile/ProfileMain";
	}///////////////////ProfileSelectMemberProfile()

	@RequestMapping("UpdateProfile.do")
	public String ProfileUpdateProfile(ProfileDTO profileDTO) throws Exception{
		
		service.updateProfile(profileDTO);
		return "Profile/ProfileMain";
	}///////////////////ProfileUpdateProfile()

	@RequestMapping("UpdateNicknameProfile.do")
	public String ProfileUpdateNicknameProfile(ProfileDTO profileDTO) throws Exception{
		service.updateNicknameProfile(profileDTO);
		return "Profile/ProfileMain";
		
	}///////////////////ProfileUpdateNicknameProfile()
	
	@RequestMapping("DeleteProfile.do")
	public String ProfileDeleteProfile(ProfileDTO profileDTO) throws Exception{
		service.deleteProfile(profileDTO);
		return "Profile/ProfileMain";
		
	}///////////////////ProfileDeleteProfile()
}
