package com.company.exer.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.company.exer.service.KakaoProfile;
import com.company.exer.service.MemberDTO;
import com.company.exer.service.MemberService;
import com.company.exer.service.NaverOAuthToken;
import com.company.exer.service.NaverProfile;
import com.company.exer.service.ProfileDTO;
import com.company.exer.service.ProfileService;
import com.company.exer.service.KakaoOAuthToken;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/Member/")
public class Member2Controller {
	
	@Resource(name="memberService")
	private MemberService memberService;
	

	@Inject // 자동 주입
	ProfileService profileservice;

	/*
	@RequestMapping(value="1Join.do",method = RequestMethod.GET)
	public String Join() {
		return "member/Join";
	}
	
	@RequestMapping(value="1Join.do",method = RequestMethod.POST)
	public String JoinOk(@RequestParam Map map, HttpSession session) {
		
		int affected = memberService.join(map);
		if(affected==1) {
			session.setAttribute("id",map.get("id"));
			session.setAttribute("nickname", map.get("nickname"));
			System.out.println("map.get('nickname'):"+map.get("nickname"));
			return "forward:/Review/List.do";
		}
		else
			return "member/Join";
	}
	
	@RequestMapping(value="1Login.do",method = RequestMethod.GET)
	public String Login() {
		return "member/Login";
	}
	
	@RequestMapping(value="1Login.do",method = RequestMethod.POST)
	public String LoginOk(@RequestParam Map map, Model model, HttpSession session) {
		boolean flag = memberService.login(map);
		if(flag) {
			session.setAttribute("id",map.get("id"));
		}
		else {
			model.addAttribute("NotMember","아뒤와 비번이 틀려요");
		}
		return "forward:/Review/List.do";
	}
	*/
	
	@RequestMapping(value="KakaoLogin.do",produces="application/json;charset=UTF-8")
	public String KakaoLogin(String code,HttpSession session) throws Exception {
		///POST방식으로 key=value 데이터를 요청 (카카오쪽으로)
		//a태그라 무조건 get방식인데 아래 라이브러리 사용하면 post가능
		RestTemplate rt = new RestTemplate();
		//되나??
		//HttpHeader 오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");
		
		//Body데이터를 담은 맵
		//HttpBody 오브젝트 생성
		MultiValueMap<String,String> params = new LinkedMultiValueMap<String, String>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "0e3ca3b3a449e6e1a12a17795f6d775b");
		params.add("redirect_uri", "http://localhost:9090/exer/Member/KakaoLogin.do");
		params.add("code", code);
		
		//HttpHeader와 HttpBody를 하나의 오브젝트에 담기
		HttpEntity<MultiValueMap<String,String>> kakaoTokenRequest = 
				new HttpEntity<>(params,headers);
		
		//Http 요청하기 - Post방식으로 - 그리고 response변수의 응답 받음
		ResponseEntity<String> response = rt.exchange(
				"https://kauth.kakao.com/oauth/token",
				HttpMethod.POST,
				kakaoTokenRequest,
				String.class
			);

		ObjectMapper objectMapper = new ObjectMapper();
		KakaoOAuthToken oauthToken = null;
		try {
			oauthToken = objectMapper.readValue(response.getBody(),KakaoOAuthToken.class);
		}
		catch (JsonParseException e) {
			e.printStackTrace();
		} 
		catch (JsonMappingException e) {
			e.printStackTrace();
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("카카오 엑세스 토큰 : "+oauthToken.getAccess_token());
		
		RestTemplate rt2 = new RestTemplate();
		
		//HttpHeader 오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization","Bearer "+oauthToken.getAccess_token());
		headers2.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpHeader와 HttpBody를 하나의 오브젝트에 담기
		HttpEntity<MultiValueMap<String,String>> kakaoProfileRequest2 = 
				new HttpEntity<>(headers2);
		
		//Http 요청하기 - Post방식으로 - 그리고 response변수의 응답 받음
		ResponseEntity<String> response2 = rt2.exchange(
				"https://kapi.kakao.com/v2/user/me",
				HttpMethod.POST,
				kakaoProfileRequest2,
				String.class
			);
		
		ObjectMapper objectMapper2 = new ObjectMapper();
		KakaoProfile kakaoProfile = null;
		try {
			kakaoProfile = objectMapper2.readValue(response2.getBody(),KakaoProfile.class);
		}
		catch (JsonParseException e) {
			e.printStackTrace();
		} 
		catch (JsonMappingException e) {
			e.printStackTrace();
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
		
		Map map = new HashMap();
		map.put("id", kakaoProfile.getId().toString());
		map.put("name", kakaoProfile.properties.getNickname());
		System.out.println("이름!!"+map.get("name"));
		map.put("pwd","1234");
		
		MemberDTO memberDTO = new MemberDTO();
		
		memberDTO.setId(kakaoProfile.getId().toString());
		memberDTO.setName(kakaoProfile.properties.getNickname());
		memberDTO.setPwd("1234");
		System.out.println( "setId" +kakaoProfile.getId().toString());
		System.out.println("setName"+memberDTO.getName());
		System.out.println("setPwd"+memberDTO.getPwd());
		//가입자 혹은 비가입자 체크 해서 처리
		//비가입자면 회원가입 처리 
		int flag = memberService.memberJoinCheck(memberDTO);
		
		//이미 가입 완료
		if(flag == 1) {
			//session.removeAttribute("login");
			//session.removeAttribute("id");
			
			memberService.getMember(memberDTO);
			}

		//비 가입자
		else {
			memberService.memberJoin(memberDTO);
			session.setAttribute("login", memberDTO);
			session.setAttribute("id",memberDTO.getId());
			return "/";
		}
		
		
		session.setAttribute("login", memberDTO);
		session.setAttribute("id",memberDTO.getId());
		/*세션의 프로필에 멤버에서 나온 걸로 프로필 박음*/
		ProfileDTO profiledto = new ProfileDTO();
		
		profiledto=profileservice.selectMemberProfile(memberDTO);
		//프로필DTO는 프로필 DTO로 받음
		
		session.setAttribute("profile", profiledto);
		
		if(profiledto==null) {
			
			session.setAttribute("nickName", memberDTO.getName());
		}
		else{
			session.setAttribute("nickName", profiledto.getNickName());
		}
		
		
		session.setAttribute("profile", profiledto);
		return "redirect:/";
		
		
		
	}
	
	//////////네이버 로그인
	@RequestMapping(value="NaverLogin.do",produces="application/json;charset=UTF-8")
	public String NaverLogin(String code,HttpSession session) throws Exception {
				
				///POST방식으로 key=value 데이터를 요청 (카카오쪽으로)
				//a태그라 무조건 get방식인데 아래 라이브러리 사용하면 post가능
				RestTemplate rt = new RestTemplate();
				
				//HttpHeader 오브젝트 생성
				HttpHeaders headers = new HttpHeaders();
				headers.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");
				
				//Body데이터를 담은 맵
				//HttpBody 오브젝트 생성
				MultiValueMap<String,String> params = new LinkedMultiValueMap<String, String>();
				params.add("grant_type", "authorization_code");
				params.add("client_id", "OKVhsE6FDsMVPSDUedj7");
				params.add("client_secret", "M7pGLbvRrE");
				params.add("code", code);

				//HttpHeader와 HttpBody를 하나의 오브젝트에 담기
				HttpEntity<MultiValueMap<String,String>> naverTokenRequest = 
						new HttpEntity<>(params,headers);
				
				//Http 요청하기 - Post방식으로 - 그리고 response변수의 응답 받음
				ResponseEntity<String> response = rt.exchange(
						"https://nid.naver.com/oauth2.0/token",
						HttpMethod.POST,
						naverTokenRequest,
						String.class
					);
				
				ObjectMapper objectMapper = new ObjectMapper();
				NaverOAuthToken oauthToken = null;
				try {
					oauthToken = objectMapper.readValue(response.getBody(),NaverOAuthToken.class);
				}
				catch (JsonParseException e) {
					e.printStackTrace();
				} 
				catch (JsonMappingException e) {
					e.printStackTrace();
				} 
				catch (IOException e) {
					e.printStackTrace();
				}
				
				System.out.println("네이버 엑세스 토큰 : "+oauthToken.getAccess_token());
				
				RestTemplate rt2 = new RestTemplate();
				
				//HttpHeader 오브젝트 생성
				HttpHeaders headers2 = new HttpHeaders();
				headers2.add("Authorization","Bearer "+oauthToken.getAccess_token());
				headers2.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");
				
				//HttpHeader와 HttpBody를 하나의 오브젝트에 담기
				HttpEntity<MultiValueMap<String,String>> naverfileRequest2 = 
						new HttpEntity<>(headers2);
				
				//Http 요청하기 - Post방식으로 - 그리고 response변수의 응답 받음
				ResponseEntity<String> response2 = rt2.exchange(
						"https://openapi.naver.com/v1/nid/me",
						HttpMethod.POST,
						naverfileRequest2,
						String.class
					);

				ObjectMapper objectMapper2 = new ObjectMapper();
				NaverProfile naverProfile = null;
				try {
					naverProfile = objectMapper2.readValue(response2.getBody(),NaverProfile.class);
				}
				catch (JsonParseException e) {
					e.printStackTrace();
				} 
				catch (JsonMappingException e) {
					e.printStackTrace();
				} 
				catch (IOException e) {
					e.printStackTrace();
				}

				//UserObject username,password
				
//				MemberDTO dto = MemberDTO.builder()
//						.id(kakaoProfile.getId().toString())
//						.pwd(garbagePassword.toString())
//						.name(kakaoProfile.properties.getNickname())
//						.build();
				
				
				
				
		
				MemberDTO memberDTO = new MemberDTO();
				
				memberDTO.setId(naverProfile.getResponse().id);
				memberDTO.setName(naverProfile.getResponse().name);
				memberDTO.setPwd("1234");
				
				//가입자 혹은 비가입자 체크 해서 처리
				//비가입자면 회원가입 처리 
				int flag = memberService.memberJoinCheck(memberDTO);
				
				//이미 가입 완료
				if(flag == 1) {
					//session.removeAttribute("login");
					//session.removeAttribute("id");
					
					memberService.getMember(memberDTO);
					session.setAttribute("login", memberDTO);
					session.setAttribute("id",memberDTO.getId());

					
					return "redirect:/";
					}

				//비 가입자
				else {
					memberService.memberJoin(memberDTO);
					session.setAttribute("id",memberDTO.getId());
					return "redirect:/";
				}
				
	}

	/*
	@RequestMapping("1Logout.do")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "/";
	}
	
	
	@RequestMapping("GoHome.do")
	public String GoHome(String string) {
		return "home";
	}
	@RequestMapping("1Mypage.do")
	public String Mypage(@RequestParam Map map, Model model,HttpSession session){
		if(session.getAttribute("id")!=null) {
			String followerId = session.getAttribute("id").toString();
			MemberDTO dto = memberService.mypage(map);
			map.put("followerId", followerId);
			map.put("followId", map.get("id"));
			System.out.println("asfdjsafjsald"+map.get("followId"));
			int followCheck = memberService.followCheck(map);
			int followCnt=memberService.followCnt(map);
			int followerCnt=memberService.followerCnt(map);
			
			model.addAttribute("followCheck",followCheck);
			model.addAttribute("followCnt",followCnt);
			model.addAttribute("followerCnt",followerCnt);
			model.addAttribute("dto", dto);
		}
		else {
			MemberDTO dto = memberService.mypage(map);
			map.put("followId", map.get("id"));
			int followCnt=memberService.followCnt(map);
			int followerCnt=memberService.followerCnt(map);
			model.addAttribute("dto", dto);
			model.addAttribute("followCnt",followCnt);
			model.addAttribute("followerCnt",followerCnt);
		}
		
		return "/member/Mypage";
	}
	*/
	
}