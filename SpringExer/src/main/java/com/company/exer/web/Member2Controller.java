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
	

	@Inject // μλ μ£Όμ
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
			model.addAttribute("NotMember","μλ€μ λΉλ²μ΄ νλ €μ");
		}
		return "forward:/Review/List.do";
	}
	*/
	
	@RequestMapping(value="KakaoLogin.do",produces="application/json;charset=UTF-8")
	public String KakaoLogin(String code,HttpSession session) throws Exception {
		///POSTλ°©μμΌλ‘ key=value λ°μ΄ν°λ₯Ό μμ²­ (μΉ΄μΉ΄μ€μͺ½μΌλ‘)
		//aνκ·ΈλΌ λ¬΄μ‘°κ±΄ getλ°©μμΈλ° μλ λΌμ΄λΈλ¬λ¦¬ μ¬μ©νλ©΄ postκ°λ₯
		RestTemplate rt = new RestTemplate();
		//λλ??
		//HttpHeader μ€λΈμ νΈ μμ±
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");
		
		//Bodyλ°μ΄ν°λ₯Ό λ΄μ λ§΅
		//HttpBody μ€λΈμ νΈ μμ±
		MultiValueMap<String,String> params = new LinkedMultiValueMap<String, String>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "0e3ca3b3a449e6e1a12a17795f6d775b");
		params.add("redirect_uri", "http://localhost:9090/exer/Member/KakaoLogin.do");
		params.add("code", code);
		
		//HttpHeaderμ HttpBodyλ₯Ό νλμ μ€λΈμ νΈμ λ΄κΈ°
		HttpEntity<MultiValueMap<String,String>> kakaoTokenRequest = 
				new HttpEntity<>(params,headers);
		
		//Http μμ²­νκΈ° - Postλ°©μμΌλ‘ - κ·Έλ¦¬κ³  responseλ³μμ μλ΅ λ°μ
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
		
		System.out.println("μΉ΄μΉ΄μ€ μμΈμ€ ν ν° : "+oauthToken.getAccess_token());
		
		RestTemplate rt2 = new RestTemplate();
		
		//HttpHeader μ€λΈμ νΈ μμ±
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization","Bearer "+oauthToken.getAccess_token());
		headers2.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpHeaderμ HttpBodyλ₯Ό νλμ μ€λΈμ νΈμ λ΄κΈ°
		HttpEntity<MultiValueMap<String,String>> kakaoProfileRequest2 = 
				new HttpEntity<>(headers2);
		
		//Http μμ²­νκΈ° - Postλ°©μμΌλ‘ - κ·Έλ¦¬κ³  responseλ³μμ μλ΅ λ°μ
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
		System.out.println("μ΄λ¦!!"+map.get("name"));
		map.put("pwd","1234");
		
		MemberDTO memberDTO = new MemberDTO();
		
		memberDTO.setId(kakaoProfile.getId().toString());
		memberDTO.setName(kakaoProfile.properties.getNickname());
		memberDTO.setPwd("1234");
		System.out.println( "setId" +kakaoProfile.getId().toString());
		System.out.println("setName"+memberDTO.getName());
		System.out.println("setPwd"+memberDTO.getPwd());
		//κ°μμ νΉμ λΉκ°μμ μ²΄ν¬ ν΄μ μ²λ¦¬
		//λΉκ°μμλ©΄ νμκ°μ μ²λ¦¬ 
		int flag = memberService.memberJoinCheck(memberDTO);
		
		//μ΄λ―Έ κ°μ μλ£
		if(flag == 1) {
			//session.removeAttribute("login");
			//session.removeAttribute("id");
			
			memberService.getMember(memberDTO);
			}

		//λΉ κ°μμ
		else {
			memberService.memberJoin(memberDTO);
			session.setAttribute("id",memberDTO.getId());
			return "Profile/ProfileInsert";
		}
		
		
		session.setAttribute("login", memberDTO);
		session.setAttribute("id",memberDTO.getId());
		/*μΈμμ νλ‘νμ λ©€λ²μμ λμ¨ κ±Έλ‘ νλ‘ν λ°μ*/
		ProfileDTO profiledto = new ProfileDTO();
		
		profiledto=profileservice.selectProfileFromMember(memberDTO);
		//νλ‘νDTOλ νλ‘ν DTOλ‘ λ°μ
		
		session.setAttribute("profile", profiledto);
		
		if(profiledto==null) {
			return "Profile/ProfileInsert";
		}
		else{
		}
		
		session.setAttribute("nickName", profiledto.getNickName());
		
		session.setAttribute("profile", profiledto);
		return "redirect:/";
		
		
		
	}
	
	//////////λ€μ΄λ² λ‘κ·ΈμΈ
	@RequestMapping(value="NaverLogin.do",produces="application/json;charset=UTF-8")
	public String NaverLogin(String code,HttpSession session) throws Exception {
				
				///POSTλ°©μμΌλ‘ key=value λ°μ΄ν°λ₯Ό μμ²­ (μΉ΄μΉ΄μ€μͺ½μΌλ‘)
				//aνκ·ΈλΌ λ¬΄μ‘°κ±΄ getλ°©μμΈλ° μλ λΌμ΄λΈλ¬λ¦¬ μ¬μ©νλ©΄ postκ°λ₯
				RestTemplate rt = new RestTemplate();
				
				//HttpHeader μ€λΈμ νΈ μμ±
				HttpHeaders headers = new HttpHeaders();
				headers.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");
				
				//Bodyλ°μ΄ν°λ₯Ό λ΄μ λ§΅
				//HttpBody μ€λΈμ νΈ μμ±
				MultiValueMap<String,String> params = new LinkedMultiValueMap<String, String>();
				params.add("grant_type", "authorization_code");
				params.add("client_id", "OKVhsE6FDsMVPSDUedj7");
				params.add("client_secret", "M7pGLbvRrE");
				params.add("code", code);

				//HttpHeaderμ HttpBodyλ₯Ό νλμ μ€λΈμ νΈμ λ΄κΈ°
				HttpEntity<MultiValueMap<String,String>> naverTokenRequest = 
						new HttpEntity<>(params,headers);
				
				//Http μμ²­νκΈ° - Postλ°©μμΌλ‘ - κ·Έλ¦¬κ³  responseλ³μμ μλ΅ λ°μ
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
				
				System.out.println("λ€μ΄λ² μμΈμ€ ν ν° : "+oauthToken.getAccess_token());
				
				RestTemplate rt2 = new RestTemplate();
				
				//HttpHeader μ€λΈμ νΈ μμ±
				HttpHeaders headers2 = new HttpHeaders();
				headers2.add("Authorization","Bearer "+oauthToken.getAccess_token());
				headers2.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");
				
				//HttpHeaderμ HttpBodyλ₯Ό νλμ μ€λΈμ νΈμ λ΄κΈ°
				HttpEntity<MultiValueMap<String,String>> naverfileRequest2 = 
						new HttpEntity<>(headers2);
				
				//Http μμ²­νκΈ° - Postλ°©μμΌλ‘ - κ·Έλ¦¬κ³  responseλ³μμ μλ΅ λ°μ
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
				
				//κ°μμ νΉμ λΉκ°μμ μ²΄ν¬ ν΄μ μ²λ¦¬
				//λΉκ°μμλ©΄ νμκ°μ μ²λ¦¬ 
				int flag = memberService.memberJoinCheck(memberDTO);
				
				//μ΄λ―Έ κ°μ μλ£
				if(flag == 1) {
					memberService.getMember(memberDTO);
					}
				//λΉ κ°μμ
				else {	
					memberService.memberJoin(memberDTO);
				}
				
				session.setAttribute("login", memberDTO);
				session.setAttribute("id",memberDTO.getId());	
				
				ProfileDTO profiledto = new ProfileDTO();
				profiledto=profileservice.selectProfileFromMember(memberDTO);
				
				if(profiledto==null) {
					System.out.println("profiledtoλ null");
					session.setAttribute("nickName", memberDTO.getName());
				}
				else {
					session.setAttribute("nickName", profiledto.getNickName());		
				}
				
				return "redirect:/";
				
				
				
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