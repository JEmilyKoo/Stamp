package com.company.exer.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
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
import com.company.exer.service.impl.DMServiceImpl;

@SessionAttributes({"nickName" })
@Controller  //@Controller로 컨트롤러라는 걸 명시
@RequestMapping("/DM/")
public class DMController {

	@Resource(name="DMService")  // @Autowired로 서비스 주입
	private DMService DMService;


	// 1. getDMBox
	@RequestMapping("/DMBox.do")
	public String getDMBox(@RequestParam Map map, @ModelAttribute("nickName") String nickName, Model model,HttpServletRequest req) {
		map.put("nickName", req.getSession().getAttribute("nickName"));
		int cntNewDM;//새로운 메세지 개수 저장용
		List<DMDTO> DMLists = DMService.DMList(map); //인자 map 에는 "nickName"값이 저장돼있음
		List<String> nickNames =new ArrayList<String>();
		List<String> DMToNickNames =new ArrayList<String>();
		List<DMDTO> finalDMLists = new ArrayList<DMDTO>();
		List<Integer> cntNewDMs =new ArrayList<Integer>();
		
		if(DMLists.size()!=0) {	//DMLists 리스트에 값이 하나라도 들어있으면
			for(int i=0;i<DMLists.size();i++) {	//DMLists 리스트의 인덱스 0번부터 리스트 끝까지(DMLists.size()) 반복
				if(nickNames.contains(DMLists.get(i).getNickName())==false){	//nickNames 리스트에 DMLists의 i번째 데이터의 nickName값이 안들어있는 경우 
					nickNames.add(DMLists.get(i).getNickName());	//nickNames 리스트에 해당 nickName값 추가
				}
			}//<3-1>
			
			for(int i=0;i<DMLists.size();i++) {
				if(DMToNickNames.contains(DMLists.get(i).getDMToNickName())==false){	//DMToNickNames 리스트에 DMLists의 i번째 데이터의 DMToNickName값이 안들어있는 경우 
					DMToNickNames.add(DMLists.get(i).getDMToNickName()); 	//DMToNickNames 리스트에 해당 DMToNickName값 추가
				}
			}//<3-2>
			
			nickNames.removeAll(DMToNickNames); //두 리스트(nickNames, DMToNickNames)의 차집합
			for(int i=0;i<DMLists.size();i++) {	//DMLists 리스트를 반복하여
				if(nickName.equals(DMLists.get(i).getDMToNickName())==false) {	//로그인한 아이디와 DMLists 리스트의 i번째 수신자 아이디가 일치하지 않으면 
					map.put("DMToNickName", DMLists.get(i).getDMToNickName());	//DMLists 리스트의 i번째 수신자 아이디를 DMToNickName의 키값에 저장
					finalDMLists.add(DMService.getDMSendList(map));	//DMService.getDMSendList(map) 메소드로
				}
			}//<5>
			
//			
			if(nickNames.size()!=0) {	//nickNames안에 값이 하나라도 있으면
				for(int i=0;i<nickNames.size();i++) {	//nickNames를 반복해서
					map.put("nickName",nickNames.get(i));	//map의 nickName값에 nickNames의 i번째 값을 저장하고
					map.put("DMToNickName", nickName);	//map의 DMToNickName값에 현재 로그인한 사용자 nickName를 저장
					finalDMLists.add(DMService.getDMSendList(map));	//DMService.getDMSendList(map) 메소드로 가장 최근 발신리스트를 finalDMLists에 저장
				}
			}// <6>
			
			finalDMLists.removeAll(Arrays.asList("", null));

			Collections.sort(finalDMLists, new Comparator<DMDTO>() { 

				@Override
				public int compare(DMDTO o1, DMDTO o2) {
					
					return Integer.parseInt(o2.getDMNo())-Integer.parseInt(o1.getDMNo());
				}
				
			});//<8>
			for(int i =0;i<finalDMLists.size();i++) {
				if(finalDMLists.get(i).getDMToNickName().equals(nickName)) {
					Object OriginNickName = map.get("nickName");
					Object OriginDMToNickName = map.get("DMToNickName");
					map.put("nickName",finalDMLists.get(i).getNickName());
					map.put("DMToNickName",finalDMLists.get(i).getDMToNickName());
					cntNewDMs.add(DMService.cntNewDM(map));
					map.put("nickName", OriginNickName);
					map.put("DMToNickName", OriginDMToNickName);
				}
				else{
					map.put("DMToNickName",finalDMLists.get(i).getNickName());
					cntNewDMs.add(DMService.cntNewDM(map));
				}
				
			}
			model.addAttribute("finalDMLists",finalDMLists);
			model.addAttribute("cntNewDMs",cntNewDMs);
		}
		//return "/DM/DMBox\";
		return "/DM/DM";
		
		
		
	}//getDMBox
	
	
	//2. DMChatList
	@RequestMapping(value = "/DMChatBox.do")
	public String DMChatList(@RequestParam Map map, @ModelAttribute("nickName") String nickName, Model model,HttpServletRequest req) {
		List<DMDTO> checkDMChatLists =new ArrayList<DMDTO>();
		if(map.get("nickName")==req.getSession().getAttribute("nickName")) { //이전 페이지(DMBOX)에서 map으로 전달받은 nickName값이 현재 로그인한 nickName와 같으면
			map.put("nickName", req.getSession().getAttribute("nickName")); //map 의 "nickName"키값으로 현재 로그인한 nickName 저장 
		}
		if(nickName.equals(map.get("DMToNickName"))) {
			 checkDMChatLists = DMService.checkDMChatList(map); //DMService.checkDMChatList(map)의 결과를 checkDMChatLists 리스트에 저장
		}
		else {
			checkDMChatLists =DMService.DMChatList(map);
		}
		Collections.sort(checkDMChatLists, new Comparator<DMDTO>() { 

			@Override
			public int compare(DMDTO o1, DMDTO o2) {
				
				return Integer.parseInt(o1.getDMNo())-Integer.parseInt(o2.getDMNo());
			}
			
		});//checkDMChatLists리스트 model에 넣기 전 최종 정렬
		model.addAttribute("checkDMChatLists", checkDMChatLists);	//model에 "checkDMChatLists"라는 키값으로 정렬된 checkDMChatLists 리스트를 전달
		model.addAttribute("getDMToNickName",checkDMChatLists.get(0).getDMToNickName());	//model에 "getDMToNickName"라는 키값으로 checkDMChatLists.get(0).getDMToNickName()를 전달
		model.addAttribute("getNickName",checkDMChatLists.get(0).getNickName());	//model에 "getNickName"라는 키값으로 checkDMChatLists.get(0).getNickName()를 전달
		return "/DM/DMChatBox";
	}//DMChatList

	
	
	//3. goToDmPage
	@RequestMapping(value = "/DMPage")
	public String goToDmPage() {
		return "/DM/DMPage";
	}

	
	//4. sendDM
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