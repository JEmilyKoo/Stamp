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
import org.springframework.web.bind.annotation.RequestMethod;
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
			stampService.stampCheck(map); //실시간 위치를 가지고 3km이내 스탬프가 있으면 stampCheck 닉네임, 글 번호  5초마다 insert해줌
			int Count = stampService.stampCheckCount(map); // 
			int CheckGet = stampService.stampCheckGet(map);
			if(CheckGet>=1) {
				return 3;
			}
			if(Count >= 5) {// 30초 동안 스탬프 주변에 있을 경우 스탬프를 얻을 수 있따.
				stampService.stampGet(map); //멤버 스탬프에 등록
				stampService.stampCheckDelete(map); //stampCheck insert한 내용 삭제
				return 1;
			}
			return 2;
		}
		
		else {///로그인 안되어있다면 아무 일 없다.
			System.out.println("로그인 안되어있음");
			return 0;
		}
	
		
	}

	
	//관리자페이지용
	@RequestMapping("AdminStamp.do")
	public String AdminStamp(Model model,HttpServletRequest req) {
		//뷰정보 반환]
		List<StampDTO> dto = stampService.showStampList();
		model.addAttribute("dto", dto);
		System.out.println(req.getParameter("pageName"));
		
		return "/admin/AdminStamp";
	}///////////////////Test()
	@RequestMapping("updateAdminStamp.do")
	public String updateAdminStamp(@RequestParam Map map) {
		//뷰정보 반환]
		stampService.updateAdminStamp(map);
		
		return "forward:/Stamp/AdminStamp.do";
	}///////////////////Test()
	@RequestMapping("deleteAdminStamp.do")
	public String deleteAdminStamp(@RequestParam Map map) {
		//뷰정보 반환]
		stampService.deleteAdminStamp(map);
		
		return "forward:/Stamp/AdminStamp.do";
	}///////////////////Test()
}
