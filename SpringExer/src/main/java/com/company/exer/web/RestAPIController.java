package com.company.exer.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.company.exer.service.MemberService;
import com.company.exer.service.MemberDTO;


@RestController
public class RestAPIController {

	@Autowired
	MemberService service;
	
	
	
	//[안드로이드 앱에 데이타 제공용 추가]
		@CrossOrigin
		@GetMapping("/member/login")
		public MemberDTO login(@RequestParam Map map) {
			
			MemberDTO dto = service.Login(map);
			System.out.println("회원 여부:"+dto);
			if(dto ==null) {
				dto = new MemberDTO(null, null, null, 0, null, null, null, null, null, null, null);
			}
			return dto;
		}
		
		@CrossOrigin
		@PostMapping("/member/join")
		public int join(@RequestParam Map map) {
			map.put("id", map.get("id").toString().replaceAll("\"",""));
			map.put("pwd", map.get("id").toString().replaceAll("\"",""));
			map.put("name", map.get("id").toString().replaceAll("\"",""));
			if(service.joinCheck(map)==1) {
				return 0;
			}
			else{
				service.join(map);
				return 1;
			}
		}
		

}
