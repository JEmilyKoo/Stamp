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
		logger.info("DMServiceImpl.finalDMList START ");
		// 1. 멤버변수 선언
		String nickName = req.getSession().getAttribute("nickName").toString();											// 세션에 저장된 nickName(로그인중인 nickName) 선언
		map.put("nickName", nickName);																					// map에 "nickName" 으로 저장
		int cntNewDM; 																									// 새로운 메세지 개수 저장용
		List<DMDTO> DMLists = this.DMList(map); 																		// nickName의 DM 목록 모두 불러와서 DMLists으로 선언
		List<String> nickNames = new ArrayList<String>();																// 보낸 사람 저장용 리스트
		List<String> DMToNickNames = new ArrayList<String>();															// 받는 사람 저장용 리스트
		List<DMDTO> finalDMLists = new ArrayList<DMDTO>();																// view에 뿌려줄 최종리스트
		
		// 2. finalDMLists 도출과정
		try {
			if(DMLists.size() != 0) { 																					// DMLists 리스트에 값이 하나라도 들어있으면
				for(int i = 0; i<DMLists.size();i++) {																	// DMLists.size()만큼 반복해서
					if(!nickNames.contains(DMLists.get(i).getNickName())) {												// DMLists.get(i).getNickName()값이 nickNames에 들어있지 않은 경우에만
						nickNames.add(DMLists.get(i).getNickName());													// nickNames에 저장
					}
					if(!DMToNickNames.contains(DMLists.get(i).getDMToNickName())) {										// DMLists.get(i).getDMToNickName()값이 DMToNickNames에 들어있지 않은 경우에만
						DMToNickNames.add(DMLists.get(i).getDMToNickName());											// DMToNickNames에 저장
					}
				}
				
				nickNames.removeAll(DMToNickNames); 																	// nickNames - DMToNickNames
				nickNames.addAll(DMToNickNames); 																		// nickNames 와 DMToNickNames의 합집합, 중복제거
				
				for(int i = 0; i<nickNames.size();i++) {																// nickNames.size()만큼 반복해서
					if(!nickName.equals(nickNames.get(i))) {															// nickName과 nickNames속 i번째 요소가 다르면
						map.put("DMToNickName", nickNames.get(i));														// "DMToNickName"로 map에 저장
						finalDMLists.add(this.getDMSendList(map));														// 로그인된 nickName과 DMToNickName으로 getDMSendList(map) 가져와서
					}																									// finalDMLists에 추가
				}						
				
				finalDMLists.removeAll(Arrays.asList("", null));														// finalDMLists 속 빈 문자열 제거
				Collections.sort(finalDMLists, new Comparator<DMDTO>() { 												// finalDMLists DMNo 순으로 정렬
					@Override
					public int compare(DMDTO o1, DMDTO o2) {
						return Integer.parseInt(o2.getDMNo()) - Integer.parseInt(o1.getDMNo());
					}
				});
				
				logger.info("DMServiceImpl.finalDMList()의 finalDMLists : " + finalDMLists + " 최종 대화상대 목록 ");
				
				
		// 3. cntNewDM 도출과정
				for (int i = 0; i < finalDMLists.size(); i++) { 														// finalDMLists.size()만큼 반복해서
					if (finalDMLists.get(i).getDMToNickName().equals(nickName)) {										// 받는사람이 NickName인 경우
						map.put("nickName", finalDMLists.get(i).getNickName());											// "nickName"에 보낸사람을 저장
						map.put("DMToNickName", finalDMLists.get(i).getDMToNickName());									// "DMToNickName"에 받는사람을 저장
						cntNewDM = this.cntNewDM(map);																	// cntNewDM 구해서
						logger.info("DMServiceImpl.finalDMList cntNewDM : " + cntNewDM + " 새 메세지 개수");
						finalDMLists.get(i).setCntNewDM(cntNewDM);														// finalDMLists의 i번째 cntNewDM으로 저장
					}
				}
			}

		} catch (Exception e) {
			StackTraceElement[] ste = e.getStackTrace();
			logger.error(e.getMessage());
			logger.error("className :: " + ste[0].getClassName());
			logger.error("methodName :: " + ste[0].getMethodName());
			logger.error("lineNumber :: " + ste[0].getLineNumber());
			logger.error("fileName :: " + ste[0].getFileName());
		}
		logger.info("DMServiceImpl.finalDMList END ");
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
		logger.info("DMServiceImpl.checkDM  dao.checkDM(map): "+dao.checkDM(map));
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
		logger.info("DMServiceImpl.finalChatList START ");
		// 1. 멤버변수 선언
		String nickName = req.getSession().getAttribute("nickName").toString();
		List<DMDTO> checkDMChatLists = new ArrayList<DMDTO>();
		
		logger.info("DMServiceImpl.finalChatList map : " + map.toString() + " map 확인");
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
		logger.info("DMServiceImpl.finalChatList END ");
		return checkDMChatLists;
	}

	// 7. 새로온 안읽은 메세지 카운트
	@Override
	public int cntNewDM(Map map) {
		return dao.cntNewDM(map);
	}

}