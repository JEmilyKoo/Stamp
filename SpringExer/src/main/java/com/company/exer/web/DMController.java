package com.company.exer.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.exer.service.DMDTO;
import com.company.exer.service.DMService;

@SessionAttributes({ "nickName" })
@Controller // @Controller로 컨트롤러라는 걸 명시
@RequestMapping("/DM/")
public class DMController {

	@Resource(name = "DMService") // @Autowired로 서비스 주입
	private DMService DMService;

	// 1. getDMBox
	@RequestMapping("/DMBox.do")
	public String getDMBox(@RequestParam Map map, @ModelAttribute("nickName") String nickName, Model model,HttpServletRequest req) {
	
		List<DMDTO> finalDMLists = DMService.finalDMList(map, req);
		model.addAttribute("finalDMLists",finalDMLists);
		
		return "/DM/DM";
		
		
		
	}// getDMBox

	// 2. DMChatList
	@RequestMapping(value = "/DMChatBox.do")
	public String DMChatList(@RequestParam Map map, @ModelAttribute("nickName") String nickName, Model model, HttpServletRequest req) {

		List<DMDTO> finalDMLists = DMService.finalDMList(map, req);
		model.addAttribute("finalDMLists", finalDMLists);

		List<DMDTO> checkDMChatLists = DMService.finalChatList(map, req);
		model.addAttribute("checkDMChatLists", checkDMChatLists);

		// model에 "checkDMChatLists"라는 키값으로 정렬된 checkDMChatLists 리스트를 전달
//		model.addAttribute("getDMToNickName",checkDMChatLists.get(0).getDMToNickName());	//model에 "getDMToNickName"라는 키값으로 checkDMChatLists.get(0).getDMToNickName()를 전달
//		model.addAttribute("getNickName",checkDMChatLists.get(0).getNickName());	//model에 "getNickName"라는 키값으로 checkDMChatLists.get(0).getNickName()를 전달
		return "/DM/DMChatBox";
	}// DMChatList

	// 3. goToDmPage
	@RequestMapping(value = "/DMPage")
	public String goToDmPage() {
		return "/DM/DMPage";
	}

	// 4. sendDM
	@RequestMapping(value = "/sendDM")
	public @ResponseBody int sendDM(@RequestParam Map map, @ModelAttribute("nickName") String nickName, HttpServletRequest req) {
		map.put("nickName", req.getSession().getAttribute("nickName"));
		Object DMToNickName = map.get("DMToNickName");
		Object DMCtt = map.get("DMCtt");
		map.put("DMToNickName", DMToNickName);
		map.put("DMCtt", DMCtt);
		int data = DMService.sendDM(map);

		return data;
	}

}