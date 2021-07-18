package com.company.exer.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.company.exer.utils.ListPagingData;

@Controller
@RequestMapping("/Stamp/")
public class StampController {

	@Resource(name = "stampService")
	private StampService stampService;

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

	@RequestMapping("StampCheck.do")
	public @ResponseBody int stampCheck(@RequestParam Map map, HttpSession session) {
		if (session.getAttribute("nickName") != null) { // 로그인 되어 있을 경우
			String nickName = session.getAttribute("nickName").toString();
			map.put("nickName", nickName);
			int abc=stampService.stampCheck(map); // 실시간 위치를 가지고 3km이내 스탬프가 있으면 stampCheck 닉네임, 글 번호 5초마다 insert해줌
			String rvNo = stampService.stampCheckRvNo(map);//글 번호 얻어오기 경험치를 얻기 위함
			map.put("rvNo",rvNo);//글 번호 Map에 넣기
			int Count = stampService.stampCheckCount(map); //
			int CheckGet = stampService.stampCheckGet(map);
			if (CheckGet >= 1) {
				return 3;
			}
			if (Count >= 5) {// 30초 동안 스탬프 주변에 있을 경우 스탬프를 얻을 수 있따.
				stampService.stampGet(map); // 멤버 스탬프에 등록
				profileService.stampAchEP(map); //스탬프 경험치
				stampService.stampCheckDelete(map); // stampCheck insert한 내용 삭제
				return 1;
			}
			return 2;
		}
		else {/// 로그인 안되어있다면 아무 일 없다.
			System.out.println("로그인 안되어있음");
			return 0;
		}
	}

	// 관리자페이지용
	@RequestMapping("AdminStamp.do")
	public String AdminStamp(Model model, @RequestParam Map map, HttpServletRequest req, @RequestParam(required = false, defaultValue = "1") int nowPage) {
		// 뷰정보 반환]
		ListPagingData<StampDTO> dto = stampService.showStampList(map,req, nowPage);
		model.addAttribute("dto", dto);

		return "/admin/AdminStamp";
	}/////////////////// Test()
	

	@RequestMapping("renewAdminStamp.do")
	public @ResponseBody String extendAdminStamp(@RequestParam Map map, HttpServletRequest req) {
		// 뷰정보 반환]
		String [] selectedArr = req.getParameterValues("selectedArr");
		for (String stNo : selectedArr) {

			map.put("stNo", stNo);
			System.out.println(stNo);
			stampService.renewAdminStamp(map);
		}

		return "forward:/Stamp/AdminStamp.do";
	}/////////////////// Test()

	@RequestMapping("expireAdminStamp.do")
	public @ResponseBody String expireAdminStamp(@RequestParam Map map, HttpServletRequest req) {
		// 뷰정보 반환]
		String [] selectedArr = req.getParameterValues("selectedArr");
		for (String stNo : selectedArr) {

			map.put("stNo", stNo);
			System.out.println(stNo);
			stampService.expireAdminStamp(map);
		}

		return "forward:/Stamp/AdminStamp.do";
	}/////////////////// Test()

	@RequestMapping("deleteAdminStamp.do")
	public @ResponseBody String deleteAdminStamp(@RequestParam Map map, HttpServletRequest req) {
		// 뷰정보 반환]
		String [] selectedArr = req.getParameterValues("selectedArr");
		for (String stNo : selectedArr) {

			map.put("stNo", stNo);
			System.out.println(stNo);
			stampService.deleteAdminStamp(map);
		}
		return "forward:/Stamp/AdminStamp.do";
	}/////////////////// Test()

}
