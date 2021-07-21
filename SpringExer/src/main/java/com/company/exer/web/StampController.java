package com.company.exer.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.exer.service.ProfileService;
import com.company.exer.service.ReviewDTO;
import com.company.exer.service.StampDTO;
import com.company.exer.service.StampService;
import com.company.exer.service.impl.StampServiceImpl;
import com.company.exer.utils.ListPagingData;

@Controller
@RequestMapping("/Stamp/")
public class StampController {

	@Resource(name = "stampService")
	private StampService stampService;
	
	private static final Logger logger = LoggerFactory.getLogger(StampController.class);

	//경험치를 얻기 위함
	@Resource(name="profileService")
	private ProfileService profileService;
	
	@RequestMapping("MapSearch.do")
	public String stampCreate(Model model) {

		// stampService.stampUp();
		List<StampDTO> list = stampService.stampList();
		model.addAttribute("list", list);
		
		return "MapSearch";
	}

	//스탬프 획득
	@RequestMapping("StampCheck.do")
	public @ResponseBody int stampCheck(@RequestParam HashMap<String, Object> map, HttpSession session) throws Exception {
		return stampService.procStampInsert(map, session);
	}

	// 관리자페이지용
	@RequestMapping("StampMNG.do")
	public String StampMNG(Model model, @RequestParam Map map, HttpServletRequest req, @RequestParam(required = false, defaultValue = "1") int nowPage) {
		// 뷰정보 반환]
		ListPagingData<StampDTO> dto = stampService.showStampList(map,req, nowPage);
		model.addAttribute("dto", dto);

		return "/admin/StampMNG";
	}/////////////////// Test()
	

	@RequestMapping("renewStampMNG.do")
	public @ResponseBody String renewStampMNG(@RequestParam Map map, HttpServletRequest req) {
		// 뷰정보 반환]
		String [] selectedArr = req.getParameterValues("selectedArr");
		for (String stNo : selectedArr) {

			map.put("stNo", stNo);
			System.out.println(stNo);
			stampService.renewStampMNG(map);
		}

		return "forward:/Stamp/StampMNG.do";
	}/////////////////// Test()

	@RequestMapping("expireStampMNG.do")
	public @ResponseBody String expireStampMNG(@RequestParam Map map, HttpServletRequest req) {
		// 뷰정보 반환]
		String [] selectedArr = req.getParameterValues("selectedArr");
		for (String stNo : selectedArr) {

			map.put("stNo", stNo);
			System.out.println(stNo);
			stampService.expireStampMNG(map);
		}

		return "forward:/Stamp/StampMNG.do";
	}/////////////////// Test()

	@RequestMapping("deleteStampMNG.do")
	public @ResponseBody String deleteStampMNG(@RequestParam Map map, HttpServletRequest req) {
		// 뷰정보 반환]
		String [] selectedArr = req.getParameterValues("selectedArr");
		for (String stNo : selectedArr) {

			map.put("stNo", stNo);
			System.out.println(stNo);
			stampService.deleteStampMNG(map);
		}
		return "forward:/Stamp/StampMNG.do";
	}/////////////////// Test()

}