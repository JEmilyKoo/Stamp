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
import com.company.exer.service.ProfileDTO;
import com.company.exer.service.ProfileService;

@Controller
@RequestMapping("/Member/")
public class MemberController {
	
	
	@Inject // 자동 주입
	MemberService service;
	@Inject // 자동 주입
	ProfileService profileservice;

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
	public String loginForm(HttpSession session) {
		logger.info("get login");

		session.removeAttribute("login");
		session.removeAttribute("id");
		session.removeAttribute("error");
		return "member/Login";
	}
	@RequestMapping(value = "Login.do", method = RequestMethod.POST) // 잘못 입력했을 때
	public String loginFormPPST(HttpSession session) {
		logger.info("post login");
		session.setAttribute("error", "다시 입력하세요");
		return "member/Login";
	}

	// POST 로그인
	@RequestMapping(value = "LoginCheck.do", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, MemberDTO memberDTO) throws Exception {
		
		
		
		System.out.println(memberDTO);
		String returnURL = "home";
		// 로그인 세션 존재할때
		if (session.getAttribute("login") != null) {
			// 기존 세션 제거
			session.removeAttribute("login");
		}
		
		//로그인 맞는지 확인은 해야지
		
		int flag = service.memberLoginCheck(memberDTO);
		//1이어야 로그인 성공
		if(flag==1) {
			MemberDTO dto = service.getMember(memberDTO); //throws Exception
			System.out.println("제대로 잘 굴러감 ");
			session.setAttribute("login", dto);
			session.setAttribute("id", dto.getId());
			
			
			/*세션의 프로필에 멤버에서 나온 걸로 프로필 박음*/
			ProfileDTO profiledto = new ProfileDTO();
			profiledto=profileservice.selectMemberProfile(dto);
			session.setAttribute("profile", profiledto);
			
			if(profiledto.getNickName()==null) {
				session.setAttribute("profile", profiledto);
				session.setAttribute("nickName", memberDTO.getName());
			}
			session.setAttribute("nickName", profiledto.getNickName());
			
			
			session.removeAttribute("error");
			System.out.println(profiledto);
			}
			else {	session.setAttribute("error", "다시 입력하세요");
			session.removeAttribute("login");
			
			returnURL = "forward:/Member/Login.do"; //이렇게 되면 post 형식으로 주는 꼴이 되어버린다 
			}

		session.removeAttribute("error");
		return returnURL;
		
		
		
		
	}

	// 로그아웃시 세션 초기화후 로그인 화면 리다이렉트
	@RequestMapping(value = "Logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}
	

}