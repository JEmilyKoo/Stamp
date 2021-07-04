package com.company.exer.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.exer.service.impl.DmServiceImpl;
import com.company.exer.service.DmDTO;

@SessionAttributes({ "id" })
@Controller  //@Controller로 컨트롤러라는 걸 명시
public class DmController {

	@Autowired  // @Autowired로 서비스 주입
	private DmServiceImpl service;

	
	// 1. getDMBox
	@RequestMapping("/DMBox")
	public String getDMBox(@RequestParam Map map, @ModelAttribute("id") String id, Model model,HttpServletRequest req) {
		map.put("id", req.getSession().getAttribute("id"));
		int cntNewDM;//새로운 메세지 개수 저장용
		List<DmDTO> DMLists = service.DMList(map); //인자 map 에는 "id"값이 저장돼있음
		List<String> ids =new ArrayList<String>();
		List<String> DMToIds =new ArrayList<String>();
		List<DmDTO> finalDMLists = new ArrayList<DmDTO>();
		List<Integer> cntNewDMs =new ArrayList<Integer>();
		
		if(DMLists.size()!=0) {	//DMLists 리스트에 값이 하나라도 들어있으면
			for(int i=0;i<DMLists.size();i++) {	//DMLists 리스트의 인덱스 0번부터 리스트 끝까지(DMLists.size()) 반복
				if(ids.contains(DMLists.get(i).getId())==false){	//ids 리스트에 DMLists의 i번째 데이터의 id값이 안들어있는 경우 
					ids.add(DMLists.get(i).getId());	//ids 리스트에 해당 id값 추가
				}
			}//<3-1>
			
			for(int i=0;i<DMLists.size();i++) {
				if(DMToIds.contains(DMLists.get(i).getDmToId())==false){	//DMToIds 리스트에 DMLists의 i번째 데이터의 DMToId값이 안들어있는 경우 
					DMToIds.add(DMLists.get(i).getDmToId()); 	//DMToIds 리스트에 해당 DMToId값 추가
				}
			}//<3-2>
			
			ids.removeAll(DMToIds); //두 리스트(ids, DMToIds)의 차집합
			for(int i=0;i<DMLists.size();i++) {	//DMLists 리스트를 반복하여
				if(id.equals(DMLists.get(i).getDmToId())==false) {	//로그인한 아이디와 DMLists 리스트의 i번째 수신자 아이디가 일치하지 않으면 
					map.put("dmToId", DMLists.get(i).getDmToId());	//DMLists 리스트의 i번째 수신자 아이디를 DMToId의 키값에 저장
					finalDMLists.add(service.getDMSendList(map));	//service.getDMSendList(map) 메소드로
				}
			}//<5>
			
//			
			if(ids.size()!=0) {	//ids안에 값이 하나라도 있으면
				for(int i=0;i<ids.size();i++) {	//ids를 반복해서
					map.put("id",ids.get(i));	//map의 id값에 ids의 i번째 값을 저장하고
					map.put("dmToId", id);	//map의 DMToId값에 현재 로그인한 사용자 id를 저장
					finalDMLists.add(service.getDMSendList(map));	//service.getDMSendList(map) 메소드로 가장 최근 발신리스트를 finalDMLists에 저장
				}
			}// <6>
			
			finalDMLists.removeAll(Arrays.asList("", null));

			Collections.sort(finalDMLists, new Comparator<DmDTO>() { 

				@Override
				public int compare(DmDTO o1, DmDTO o2) {
					
					return Integer.parseInt(o2.getDmNo())-Integer.parseInt(o1.getDmNo());
				}
				
			});//<8>
			for(int i =0;i<finalDMLists.size();i++) {
				if(finalDMLists.get(i).getDmToId().equals(id)) {
					Object OriginId = map.get("id");
					Object OriginDmToId = map.get("dmToId");
					map.put("id",finalDMLists.get(i).getId());
					
					map.put("dmToId",finalDMLists.get(i).getDmToId());
					cntNewDMs.add(service.cntNewDM(map));
					map.put("id", OriginId);
					map.put("dmToId", OriginDmToId);
				}
				else{
					map.put("dmToId",finalDMLists.get(i).getId());
					cntNewDMs.add(service.cntNewDM(map));
				}
				
			}
			model.addAttribute("finalDMLists",finalDMLists);
			model.addAttribute("cntNewDMs",cntNewDMs);
		}
		return "DMBox";
		
		
		
	}//getDMBox
	
	
	//2. DMChatList
	@RequestMapping(value = "/DMChatBox")
	public String DMChatList(@RequestParam Map map, @ModelAttribute("id") String id, Model model,HttpServletRequest req) {
		List<DmDTO> checkDMChatLists =new ArrayList<DmDTO>();
		if(map.get("id")==req.getSession().getAttribute("id")) { //이전 페이지(DMBOX)에서 map으로 전달받은 id값이 현재 로그인한 id와 같으면
			map.put("id", req.getSession().getAttribute("id")); //map 의 "id"키값으로 현재 로그인한 id 저장 
		}
		if(id.equals(map.get("dmToId"))) {
			 checkDMChatLists = service.checkDMChatList(map); //service.checkDMChatList(map)의 결과를 checkDMChatLists 리스트에 저장
		}
		else {
			checkDMChatLists =service.DMChatList(map);
		}
		Collections.sort(checkDMChatLists, new Comparator<DmDTO>() { 

			@Override
			public int compare(DmDTO o1, DmDTO o2) {
				
				return Integer.parseInt(o1.getDmNo())-Integer.parseInt(o2.getDmNo());
			}
			
		});//checkDMChatLists리스트 model에 넣기 전 최종 정렬
		model.addAttribute("checkDMChatLists", checkDMChatLists);	//model에 "checkDMChatLists"라는 키값으로 정렬된 checkDMChatLists 리스트를 전달
		model.addAttribute("getDMToId",checkDMChatLists.get(0).getDmToId());	//model에 "getDMToId"라는 키값으로 checkDMChatLists.get(0).getDmToId()를 전달
		model.addAttribute("getId",checkDMChatLists.get(0).getId());	//model에 "getId"라는 키값으로 checkDMChatLists.get(0).getId()를 전달
		return "DMChatBox";
	}//DMChatList

	
	
	//3. goToDmPage
	@RequestMapping(value = "/DMPage")
	public String goToDmPage() {
		return "/DMPage";
	}

	
	//4. sendDM
	@RequestMapping(value = "/sendDM")
	public @ResponseBody int sendDM(@RequestParam Map map, @ModelAttribute("id") String id, HttpServletRequest req) {
		map.put("id", req.getSession().getAttribute("id"));
		Object dmToId = map.get("dmToId");
		Object dmCtt = map.get("dmCtt");
		map.put("dmToId", dmToId);
		map.put("dmCtt", dmCtt);
		
		int data = service.sendDM(map);
		
		return data;
	}

	

}
