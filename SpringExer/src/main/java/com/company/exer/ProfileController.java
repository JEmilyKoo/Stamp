package com.company.exer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

/*
[일반 자바클래스 형태 즉 POJO(Plain Old Java Object)]

컴파일러에게 "아래 클래스는 사용자 요청을 처리하는 클래스야" 라고
알려주는 역할]-컨트롤러 클래스
*/
@Controller
public class ProfileController {
	
	
	//컨트롤러 메소드]

	@RequestMapping("/Profile/StampList.do")
	public String ProfileStampList() {
		//뷰정보 반환]
		return "/Profile/ProfileStampList";
	}///////////////////ProfileStampList()
	
	
	@RequestMapping("/Profile/Main.do")
	public String ProfileMain() {
		//뷰정보 반환]
		return "/Profile/ProfileMain";
	}///////////////////ProfileMain()
	
	@RequestMapping("/Profile/Like.do")
	public String ProfileLike() {
		//뷰정보 반환]
		return "/Profile/ProfileLike";
	}///////////////////ProfileLike()
	
	@RequestMapping("/Profile/Comment.do")
	public String ProfileComment() {
		//뷰정보 반환]
		return "/Profile/ProfileComment";
	}///////////////////ProfileComment()
	
	@RequestMapping("/Profile/Post.do")
	public String ProfilePost() {
		//뷰정보 반환]
		return "/Profile/ProfilePost";
	}///////////////////ProfilePost()
	
	@RequestMapping("/Profile/Alarm.do")
	public String ProfileAlarm() {
		//뷰정보 반환]
		return "/Profile/ProfileAlarm";
	}///////////////////ProfileAlarm()
	
	@RequestMapping("/Profile/AlarmSetting.do")
	public String ProfileAlarmSetting() {
		//뷰정보 반환]
		return "/Profile/ProfileAlarmSetting";
	}///////////////////ProfileAlarmSetting()

}
