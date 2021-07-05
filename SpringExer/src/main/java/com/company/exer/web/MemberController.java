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
@RequestMapping("/Member/")
public class MemberController {
	
	
	@Inject // 자동 주입
	MemberService service;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
		
	// GET 회원가입
	@RequestMapping(value = "Join.do", method = RequestMethod.GET)
	public String getRegister() throws Exception {
		logger.info("get Join");
		
		return "member/Join";
	}
	// 여기까진 괜찮음
	
	// POST 회원가입
	@RequestMapping(value = "Join.do", method = RequestMethod.POST)
	public String postRegister(HttpSession session, MemberDTO memberDTO) throws Exception {
		logger.info("post Join");
		System.out.println(memberDTO);// 여기로 id pwd name을 받아옴
		//하기 전에 체크를 해야지
		//멤버 체크하는 함수가 잘 돌아가면
		int flag = service.memberJoinCheck(memberDTO);
		
		if(flag==0) {
		service.memberJoin(memberDTO);
		System.out.println("중복된아이디가 아닙니다");
		//아니 여기까지 되었으면 멤버 조인이 돌아가야 할 거 아냐
		
		//되었고
		
		}
		else {	session.setAttribute("error", "다시 입력하세요");
			
			return "member/Join";
		}
		
		session.removeAttribute("error");
		return "member/Login";
	}
	// 서비스에 멤버 조인이 있으??
	
	// GET 로그인
	@RequestMapping(value = "Login.do", method = RequestMethod.GET)
	public String loginForm() {
		logger.info("get login");
		
		return "member/Login";
	}

	// POST 로그인
	@RequestMapping(value = "LoginCheck.do", method = RequestMethod.POST)
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
	@RequestMapping(value = "Logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}
	

}