package com.company.exer.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.exer.service.ReviewDTO;
import com.company.exer.service.StampDTO;
import com.company.exer.service.StampService;

@Controller
@RequestMapping("/Stamp/")
public class StampController {

	@Resource(name="stampService")
	private StampService stampService;
	
	
	@RequestMapping("MapSearch.do")
	public String stampCreate(Model model) {
		
		//stampService.stampUp();
		List<StampDTO> list= stampService.stampList();
		model.addAttribute("list",list);
		return "MapSearch";
	}
	
	@RequestMapping("StampCheck.do")
	public @ResponseBody int stampCheck(@RequestParam Map map,HttpSession session) {
			
		if(session.getAttribute("nickName") != null) { //로그인 되어 있을 경우
			String nickName = session.getAttribute("nickName").toString();
			map.put("nickName",nickName);
			System.out.println("1111111111111");
			stampService.stampCheck(map); //실시간 위치를 가지고 3km이내 스탬프가 있으면 stampCheck 닉네임, 글 번호  5초마다 insert해줌
			int count = stampService.stampCheckCount(map); // 
			if(count >= 5) {// 30초 동안 스탬프 주변에 있을 경우 스탬프를 얻을 수 있따.
				stampService.stampCheckDelete(map); //stampCheck insert한 내용 삭제
				stampService.stampCreate(map); //멤버 스탬프에 등록
				stampService.stampCount(map);
			}
			return 0;
		}
		
		else {///로그인 안되어있다면 아무 일 없다.
			System.out.println("33333333333");
			return 0;
		}
	
		
	}


	
	
}
