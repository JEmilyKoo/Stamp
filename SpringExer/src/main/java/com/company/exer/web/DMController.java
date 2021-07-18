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

@SessionAttributes({"nickname" })
@Controller  //@Controller로 컨트롤러라는 걸 명시
@RequestMapping("/DM/")
public class DMController {

	@Resource(name="dMService")  // @Autowired로 서비스 주입
	private DMService dMService;


	// 1. getDMBox
	@RequestMapping("/DMBox.do")
	public String getDMBox(@RequestParam Map map, @ModelAttribute("nickname") String nickname, Model model,HttpServletRequest req) {
		map.put("nickName", req.getSession().getAttribute("nickname"));
		int cntNewDM;//새로운 메세지 개수 저장용
		List<DMDTO> DMLists = dMService.dMList(map); //인자 map 에는 "nickname"값이 저장돼있음
		List<String> nicknames =new ArrayList<String>();
		List<String> DMToNicknames =new ArrayList<String>();
		List<DMDTO> finalDMLists = new ArrayList<DMDTO>();
		List<Integer> cntNewDMs =new ArrayList<Integer>();
		
		if(DMLists.size()!=0) {	//DMLists 리스트에 값이 하나라도 들어있으면
			for(int i=0;i<DMLists.size();i++) {	//DMLists 리스트의 인덱스 0번부터 리스트 끝까지(DMLists.size()) 반복
				if(nicknames.contains(DMLists.get(i).getNickname())==false){	//nicknames 리스트에 DMLists의 i번째 데이터의 nickname값이 안들어있는 경우 
					nicknames.add(DMLists.get(i).getNickname());	//nicknames 리스트에 해당 nickName값 추가
				}
			}//<3-1>
			
			for(int i=0;i<DMLists.size();i++) {
				if(DMToNicknames.contains(DMLists.get(i).getDMToNickname())==false){	//DMToNicknames 리스트에 DMLists의 i번째 데이터의 DMToNickName값이 안들어있는 경우 
					DMToNicknames.add(DMLists.get(i).getDMToNickname()); 	//DMToNicknames 리스트에 해당 DMToNickname값 추가
				}
			}//<3-2>
			
			nicknames.removeAll(DMToNicknames); //두 리스트(nicknames, DMToNicknames)의 차집합
			for(int i=0;i<DMLists.size();i++) {	//DMLists 리스트를 반복하여
				if(nickname.equals(DMLists.get(i).getDMToNickname())==false) {	//로그인한 아이디와 DMLists 리스트의 i번째 수신자 아이디가 일치하지 않으면 
					map.put("dMToNickname", DMLists.get(i).getDMToNickname());	//DMLists 리스트의 i번째 수신자 아이디를 DMToNickname의 키값에 저장
					finalDMLists.add(dMService.getDMSendList(map));	//dMService.getDMSendList(map) 메소드로
				}
			}//<5>
			
//			
			if(nicknames.size()!=0) {	//nicknames안에 값이 하나라도 있으면
				for(int i=0;i<nicknames.size();i++) {	//nicknames를 반복해서
					map.put("nickname",nicknames.get(i));	//map의 nickname값에 nicknames의 i번째 값을 저장하고
					map.put("dMToNickname", nickname);	//map의 DMToNickname값에 현재 로그인한 사용자 nickname를 저장
					finalDMLists.add(dMService.getDMSendList(map));	//dMService.getDMSendList(map) 메소드로 가장 최근 발신리스트를 finalDMLists에 저장
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
				if(finalDMLists.get(i).getDMToNickname().equals(nickname)) {
					Object OriginNickname = map.get("nickname");
					Object OriginDMToNickname = map.get("dMToNickname");
					map.put("nickname",finalDMLists.get(i).getNickname());
					
					map.put("dMToNickname",finalDMLists.get(i).getDMToNickname());
					cntNewDMs.add(dMService.cntNewDM(map));
					map.put("nickname", OriginNickname);
					map.put("dMToNickname", OriginDMToNickname);
				}
				else{
					map.put("dMToNickname",finalDMLists.get(i).getNickname());
					cntNewDMs.add(dMService.cntNewDM(map));
				}
				
			}
			model.addAttribute("finalDMLists",finalDMLists);
			model.addAttribute("cntNewDMs",cntNewDMs);
		}
		return "/DM/DMBox";
		
		
		
	}//getDMBox
	
	
	//2. DMChatList
	@RequestMapping(value = "/DMChatBox.do")
	public String DMChatList(@RequestParam Map map, @ModelAttribute("nickname") String nickname, Model model,HttpServletRequest req) {
		List<DMDTO> checkDMChatLists =new ArrayList<DMDTO>();
		if(map.get("nickname")==req.getSession().getAttribute("nickname")) { //이전 페이지(DMBOX)에서 map으로 전달받은 nickname값이 현재 로그인한 nickName와 같으면
			map.put("nickname", req.getSession().getAttribute("nickname")); //map 의 "nickname"키값으로 현재 로그인한 nickname 저장 
		}
		if(nickname.equals(map.get("dMToNickname"))) {
			 checkDMChatLists = dMService.checkDMChatList(map); //dMService.checkDMChatList(map)의 결과를 checkDMChatLists 리스트에 저장
		}
		else {
			checkDMChatLists =dMService.dMChatList(map);
		}
		Collections.sort(checkDMChatLists, new Comparator<DMDTO>() { 

			@Override
			public int compare(DMDTO o1, DMDTO o2) {
				
				return Integer.parseInt(o1.getDMNo())-Integer.parseInt(o2.getDMNo());
			}
			
		});//checkDMChatLists리스트 model에 넣기 전 최종 정렬
		model.addAttribute("checkDMChatLists", checkDMChatLists);	//model에 "checkDMChatLists"라는 키값으로 정렬된 checkDMChatLists 리스트를 전달
		model.addAttribute("getDMToNickname",checkDMChatLists.get(0).getDMToNickname());	//model에 "getDMToNickname"라는 키값으로 checkDMChatLists.get(0).getDMToNickname()를 전달
		model.addAttribute("getNickname",checkDMChatLists.get(0).getNickname());	//model에 "getNickname"라는 키값으로 checkDMChatLists.get(0).getNickname()를 전달
		return "/DM/DMChatBox";
	}//DMChatList

	
	
	//3. goToDmPage
	@RequestMapping(value = "/DMPage")
	public String goToDmPage() {
		return "/DM/DMPage";
	}

	
	//4. sendDM
	@RequestMapping(value = "/sendDM")
	public @ResponseBody int sendDM(@RequestParam Map map, @ModelAttribute("nickname") String nickname, HttpServletRequest req) {
		map.put("nickname", req.getSession().getAttribute("nickname"));
		Object dMToNickname = map.get("dMToNickname");
		Object dmCtt = map.get("dmCtt");
		map.put("dMToNickname", dMToNickname);
		map.put("dmCtt", dmCtt);
		
		int data = dMService.sendDM(map);
		
		return data;
	}

	

}