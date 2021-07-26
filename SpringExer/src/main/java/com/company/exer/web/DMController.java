package com.company.exer.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	private static final Logger logger = LoggerFactory.getLogger(DMController.class);

	// 1. getDMBox
	@RequestMapping("/DMBox.do")
	public String getDMBox(@RequestParam Map map, @ModelAttribute("nickName") String nickName, Model model,
			HttpServletRequest req) {

		List<DMDTO> finalDMLists = DMService.finalDMList(map, req);
		model.addAttribute("finalDMLists", finalDMLists);

		return "/DM/DM";

	}// getDMBox

	// 2. DMChatList
	@RequestMapping(value = "/DMChatBox2.do")
	public String DMChatList(@RequestParam Map map, @ModelAttribute("nickName") String nickName, Model model,
			HttpServletRequest req, HttpSession session) {
		System.out.println("Ddddddd");
		System.out.println(map);
		System.out.println(map.get("DMToNickName"));
		session.setAttribute("DMToNickName", map.get("DMToNickName"));
		model.addAttribute("DMToNickName", map.get("DMToNickName"));
		System.out.println("모델" + model);
		System.out.println("세션이다" + session.getAttribute("DMToNickName"));
		try {
			List<DMDTO> checkDMChatLists = DMService.finalChatList(map, req);

			model.addAttribute("checkDMChatLists", checkDMChatLists);

			List<DMDTO> finalDMLists = DMService.finalDMList(map, req);
			model.addAttribute("finalDMLists", finalDMLists);

			System.out.println(map);

			// model에 "checkDMChatLists"라는 키값으로 정렬된 checkDMChatLists 리스트를 전달
			model.addAttribute("getDMToNickName", map.get("DMToNickName"));
			model.addAttribute("DMToNickName", map.get("DMToNickName"));// model에 "getDMToNickName"라는 키값으로
																		// checkDMChatLists.get(0).getDMToNickName()를 전달
			model.addAttribute("getNickName", checkDMChatLists.get(0).getNickName()); // model에 "getNickName"라는 키값으로
																						// checkDMChatLists.get(0).getNickName()를
																						// 전달

		} catch (Exception e) {
			StackTraceElement[] ste = e.getStackTrace();
			logger.error(e.getMessage());
			logger.error("className :: " + ste[0].getClassName());
			logger.error("methodName :: " + ste[0].getMethodName());
			logger.error("lineNumber :: " + ste[0].getLineNumber());
			logger.error("fileName :: " + ste[0].getFileName());
		}
		return "/DM/DMChatBox";
	}// DMChatList

	@RequestMapping(value = "/DMChatBox.do")
	public String DMChatList2(@RequestParam Map map, @ModelAttribute("DMToNickName") String DMToNickName,
			@ModelAttribute("nickName") String nickName, Model model, HttpServletRequest req) {

		try {
			List<DMDTO> checkDMChatLists = DMService.finalChatList(map, req);
			model.addAttribute("checkDMChatLists", checkDMChatLists);

			List<DMDTO> finalDMLists = DMService.finalDMList(map, req);
			model.addAttribute("finalDMLists", finalDMLists);
			System.out.println("Dddd");
			System.out.println(map);

			// model에 "checkDMChatLists"라는 키값으로 정렬된 checkDMChatLists 리스트를 전달
			model.addAttribute("getDMToNickName", checkDMChatLists.get(0).getDMToNickName()); // model에
																								// "getDMToNickName"라는
																								// 키값으로
																								// checkDMChatLists.get(0).getDMToNickName()를
																								// 전달
			model.addAttribute("getNickName", checkDMChatLists.get(0).getNickName()); // model에 "getNickName"라는 키값으로
																						// checkDMChatLists.get(0).getNickName()를
																						// 전달

		} catch (Exception e) {
			StackTraceElement[] ste = e.getStackTrace();
			logger.error(e.getMessage());
			logger.error("className :: " + ste[0].getClassName());
			logger.error("methodName :: " + ste[0].getMethodName());
			logger.error("lineNumber :: " + ste[0].getLineNumber());
			logger.error("fileName :: " + ste[0].getFileName());
		}
		return "/DM/DMChatBox";
	}// DMChatList
		// 3. goToDmPage

	@RequestMapping(value = "/DMPage")
	public String goToDmPage() {
		return "/DM/DMPage";
	}

	// 4. sendDM
	@RequestMapping(value = "/sendDM")
	public @ResponseBody int sendDM(Model model, @RequestParam Map map, @ModelAttribute("nickName") String nickName,
			HttpServletRequest req, HttpSession session) {
		System.out.println("센드디엠" + map);
		System.out.println(model);
		System.out.println("ㅅ세센" + session.getAttribute("DMToNickName"));

		map.put("nickName", req.getSession().getAttribute("nickName"));
		System.out.println(map.get("DMToNickName"));
		Object DMToNickName = map.get("DMToNickName");
		map.put("DMToNickName", DMToNickName);
		
		if (session.getAttribute("DMToNickName") != null) {
			map.put("DMToNickName",session.getAttribute("DMToNickName"));
			System.out.println("DMToNickName"+session.getAttribute("DMToNickName"));
		}
		System.out.println("DMToNickName"+DMToNickName);
		Object DMCtt = map.get("DMCtt");
		map.put("DMCtt", DMCtt);
		System.out.println("좋은말로할때"+map);
		int data = DMService.sendDM(map);
		
		return data;
	}

}