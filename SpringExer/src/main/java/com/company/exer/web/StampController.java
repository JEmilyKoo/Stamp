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
			
		if(session.getAttribute("nickName") != null) {
			String nickName = session.getAttribute("nickName").toString();
			map.put("nickName",nickName);
			stampService.stampCheck(map);
			int count = stampService.stampCheckCount(map);
			System.out.println("count"+count);
			if(count >= 5) {
				int del = stampService.stampCheckDelete(map);
				stampService.stampCreate(map);
			}
			return 0;
		}
		else {
			return 0;
		}
	
		
	}


	
	
}
