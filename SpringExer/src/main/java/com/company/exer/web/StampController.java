package com.company.exer.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
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
	
	@RequestMapping("StampUpdate.do")
	public @ResponseBody int stampCheck(@RequestParam Map map,HttpSession session) {
		String nickName = session.getAttribute("nickName").toString();
		map.put("nickName", nickName);
		//로그인이 안되어있으면 스탬프를 얻을 수 없다.
		if(nickName == null) {
			return 0;
		}
		//n초마다 stampCheck 테이블에 현재 위치 insert
		else {
			int data = stampService.stampUpdate(map);
			return data;
		}
	}
	
	@RequestMapping("StampInsert.do")
	public @ResponseBody int stampInsert(@RequestParam Map map,HttpSession session) {
		String nickName = session.getAttribute("nickName").toString();
		map.put("nickName", nickName);
		StampDTO dto = stampService.stampInsert();
		stampService.stampUpdateDelete(map);
		return 0;
	}

	
	
}
