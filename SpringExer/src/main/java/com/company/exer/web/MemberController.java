package com.company.exer.web;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.company.exer.service.MemberDTO;
import com.company.exer.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	
	@Inject // 자동 주입
	MemberService service;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
		
	// GET 회원가입
	@RequestMapping(value = "join.do", method = RequestMethod.GET)
	public String getRegister() throws Exception {
		logger.info("get Join");
		
		return "member/Join";
	}
	
	// POST 회원가입
	@RequestMapping(value = "Join.do", method = RequestMethod.POST)
	public String postRegister(MemberDTO memberDTO) throws Exception {
		logger.info("post Join");
		
		service.memberJoin(memberDTO);
		
		return null;
	}
	
	// GET 로그인
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String loginForm() {
		logger.info("get login");
		
		return "member/Login";
	}

	// POST 로그인
	@RequestMapping(value = "loginCheck.do", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, MemberDTO memberDTO) throws Exception {
		System.out.println(17);
		System.out.println(memberDTO);
		String returnURL = "";
		// 로그인 세션 존재할때
		if (session.getAttribute("login") != null) {
			// 기존 세션 제거
			session.removeAttribute("login");
		}
		
		System.out.println(47);
		
		// 로그인 성공시 MemberDTO 객체 반환
		MemberDTO dto = service.getMember(memberDTO); //throws Exception
		System.out.println(dto);
		// 로그인 성공시 세션에 MemberDTO 객체 저장후 메인 리다이렉트
		if (dto != null) {
			session.setAttribute("login", dto);
			returnURL = "redirect:/";
			System.out.println(1);
		}
		
		// 로그인 실패시 다시 로그인 화면 리다이렉트
		else {
			returnURL = "redirect:/member/login.do";
			System.out.println(3);
		}
		System.out.println(4);
		return returnURL;
	}

	// 로그아웃시 세션 초기화후 로그인 화면 리다이렉트
	@RequestMapping(value = "logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login.do";
	}
	

}