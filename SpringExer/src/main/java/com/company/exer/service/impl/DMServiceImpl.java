package com.company.exer.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.company.exer.service.DMDTO;
import com.company.exer.service.DMService;

@Service("DMService")
public class DMServiceImpl implements DMService {

	@Resource(name = "DMDAO")
	private DMDAO dao;

	private static final Logger logger = LoggerFactory.getLogger(DMServiceImpl.class);
	
//	1. DM 테이블 INSERT
	@Override
	public int sendDM(Map map) {
		return dao.sendDM(map);
	}

//	2. DM 전체 메세지함 쿼리문
	@Override
	public List<DMDTO> DMList(Map map) {
		return dao.DMList(map);
	}

	@Override
	public List<DMDTO> finalDMList(Map map, HttpServletRequest req) {
		String nickName = req.getSession().getAttribute("nickName").toString();
		map.put("nickName", nickName);
		int cntNewDM;																			// 새로운 메세지 개수 저장용
		List<DMDTO> DMLists = this.DMList(map); 												// 인자 map 에는 "nickName"값이 저장돼있음
		List<String> nickNames = new ArrayList<String>();
		List<String> DMToNickNames = new ArrayList<String>();
		List<DMDTO> finalDMLists = new ArrayList<DMDTO>();
		try {
			
		
			if (DMLists.size() != 0) { 																// DMLists 리스트에 값이 하나라도 들어있으면
				for (int i = 0; i < DMLists.size(); i++) { 											// DMLists 리스트의 인덱스 0번부터 리스트 끝까지(DMLists.size()) 반복
					if (nickNames.contains(DMLists.get(i).getNickName()) == false) { 				// nickNames 리스트에 DMLists의 i번째 데이터의 nickName값이 안들어있는 경우
						nickNames.add(DMLists.get(i).getNickName());								// nickNames 리스트에 해당 nickName값 추가
					}
				} // <3-1>
	
				for (int i = 0; i < DMLists.size(); i++) {
					if (DMToNickNames.contains(DMLists.get(i).getDMToNickName()) == false) { 		// DMToNickNames 리스트에 DMLists의 i번째 데이터의 DMToNickName값이 안들어있는 경우
						DMToNickNames.add(DMLists.get(i).getDMToNickName()); 						// DMToNickNames 리스트에 해당 DMToNickName값 추가
					}
				} // <3-2>
	
				nickNames.removeAll(DMToNickNames); 												// 두 리스트(nickNames, DMToNickNames)의 차집합
				for (int i = 0; i < DMLists.size(); i++) { 											// DMLists 리스트를 반복하여
					if (nickName.equals(DMLists.get(i).getDMToNickName()) == false) { 				// 로그인한 아이디와 DMLists 리스트의 i번째 수신자 아이디가 일치하지 않으면
						map.put("DMToNickName", DMLists.get(i).getDMToNickName()); 					// DMLists 리스트의 i번째 수신자 아이디를 DMToNickName의 키값에 저장
						finalDMLists.add(this.getDMSendList(map));									// DMService.getDMSendList(map) 메소드로
					}
				} // <5>
	
	//		
				if (nickNames.size() != 0) { 														// nickNames안에 값이 하나라도 있으면
					for (int i = 0; i < nickNames.size(); i++) { 									// nickNames를 반복해서
						map.put("nickName", nickNames.get(i)); 										// map의 nickName값에 nickNames의 i번째 값을 저장하고
						map.put("DMToNickName", nickName); 											// map의 DMToNickName값에 현재 로그인한 사용자 nickName를 저장
						finalDMLists.add(this.getDMSendList(map)); 									// DMService.getDMSendList(map) 메소드로 가장 최근 발신리스트를 finalDMLists에 저장
					}
				} // <6>
	
				finalDMLists.removeAll(Arrays.asList("", null));									// finalDMLists 속 빈 문자열 제거
	
				Collections.sort(finalDMLists, new Comparator<DMDTO>() {							// finalDMLists DMNo 순으로 정렬
	
					@Override
					public int compare(DMDTO o1, DMDTO o2) {
	
						return Integer.parseInt(o2.getDMNo()) - Integer.parseInt(o1.getDMNo());
					}
	
				});// <8>
				for (int i = 0; i < finalDMLists.size(); i++) {										//
					if (!finalDMLists.get(i).getDMToNickName().equals(nickName)) {
						Object OriginNickName = map.get("nickName");
						Object OriginDMToNickName = map.get("DMToNickName");
						map.put("nickName", finalDMLists.get(i).getNickName());
						map.put("DMToNickName", finalDMLists.get(i).getDMToNickName());
						cntNewDM = this.cntNewDM(map);
						finalDMLists.get(i).setCntNewDM(cntNewDM);
						map.put("nickName", OriginNickName);
						map.put("DMToNickName", OriginDMToNickName);
					} else {
						map.put("DMToNickName", finalDMLists.get(i).getNickName());
						cntNewDM = this.cntNewDM(map);
						finalDMLists.get(i).setCntNewDM(cntNewDM);
					}
				}
			}
			
		}
		catch (Exception e) {
			StackTraceElement[] ste = e.getStackTrace();
			logger.error(e.getMessage());
			logger.error("className :: " + ste[0].getClassName());
			logger.error("methodName :: " + ste[0].getMethodName());
			logger.error("lineNumber :: " + ste[0].getLineNumber());
			logger.error("fileName :: " + ste[0].getFileName());
		}
		return finalDMLists;
	}

	// 3. 최신 발신내역 가져오는 쿼리문
	@Override
	public DMDTO getDMSendList(Map map) {

		return dao.getDMSendList(map);
	}

//	4. DM 1:1대화목록 쿼리문
	@Override
	public List<DMDTO> DMChatList(Map map) {

		return dao.DMChatList(map);
	}

//	5. 읽음 처리 쿼리문
	@Override
	public int checkDM(Map map) {
		return dao.checkDM(map);
	}

//	6. 4+5 쿼리문(읽음 처리 후, 1:1대화 리스트 뽑기)
	@Override
	public List<DMDTO> checkDMChatList(Map map) {
		dao.checkDM(map);
		return dao.DMChatList(map);
	}

	@Override
	public List<DMDTO> finalChatList(Map map, HttpServletRequest req) {
		String nickName = req.getSession().getAttribute("nickName").toString();
		List<DMDTO> checkDMChatLists = new ArrayList<DMDTO>();

		if (map.get("nickName") == nickName) { // 이전 페이지(DMBOX)에서 map으로 전달받은 nickName값이 현재 로그인한 nickName와 같으면
			map.put("nickName", nickName); // map 의 "nickName"키값으로 현재 로그인한 nickName 저장
		}
		if (nickName.equals(map.get("DMToNickName"))) {
			checkDMChatLists = this.checkDMChatList(map); // DMService.checkDMChatList(map)의 결과를 checkDMChatLists 리스트에 저장
		} else {
			checkDMChatLists = this.DMChatList(map);
		}
		Collections.sort(checkDMChatLists, new Comparator<DMDTO>() {

			@Override
			public int compare(DMDTO o1, DMDTO o2) {

				return Integer.parseInt(o1.getDMNo()) - Integer.parseInt(o2.getDMNo());
			}

		});// checkDMChatLists리스트 model에 넣기 전 최종 정렬

		return checkDMChatLists;
	}

	// 7. 새로온 안읽은 메세지 카운트
	@Override
	public int cntNewDM(Map map) {
		return dao.cntNewDM(map);
	}

}