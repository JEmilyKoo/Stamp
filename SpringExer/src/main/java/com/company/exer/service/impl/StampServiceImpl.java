package com.company.exer.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.company.exer.service.ProfileService;
import com.company.exer.service.StampDTO;
import com.company.exer.service.StampService;
import com.company.exer.utils.ListPagingData;
import com.company.exer.utils.PagingUtil;

@Service("stampService")
public class StampServiceImpl implements StampService {

	@Resource(name = "stampDAO")
	private StampDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(StampServiceImpl.class);

	//경험치를 얻기 위함
	@Resource(name="profileService")
	private ProfileService profileService;
	
	@Override
	public List<StampDTO> stampList() {
		return dao.stampList();
	}

	@Override
	public int stampCheck(Map map) {
		return dao.stampCheck(map);
	}

	@Override
	public int stampCheckCount(Map map) {
		return dao.stampCheckCount(map);
	}

	@Override
	public int stampCheckDelete(Map map) {
		return dao.stampCheckDelete(map);
	}

	@Override
	public int stampGet(Map map) {
		return dao.stampGet(map);
	}

	@Override
	public int stampCheckGet(Map map) {
		return dao.stampCheckGet(map);
	}

	@Override
	public String stampCheckRvNo(Map map) {
		return dao.stampCheckRvNo(map);
	}

	public int procStampInsert(HashMap<String, Object> map, HttpSession session)throws Exception {
		logger.info("StampServiceImpl.procStampInsert START");
		logger.info("StampServiceImpl.procStampInsert map :" + map.toString());
		
		String nickName = (String) session.getAttribute("nickName");
		logger.info("StampServiceImpl.procStampInsert nickName :" + nickName);
		if (nickName != null) { 						// 로그인 되어 있을 경우
			map.put("nickName", nickName);
			
			try {
				this.stampCheck(map); 						// 실시간 위치를 가지고 3km이내 스탬프가 있으면 stampCheck 닉네임, 글 번호 5초마다 insert해줌
				String rvNo = this.stampCheckRvNo(map);		//글 번호 얻어오기 경험치를 얻기 위함
				
				map.put("rvNo",rvNo);						//글 번호 Map에 넣기
				
				int Count = this.stampCheckCount(map); 		//StampCheck테이블에 값 넣기
				int CheckGet = this.stampCheckGet(map);		//MemberStamp테이블에 값이 있는지 확인
				
				if (CheckGet >= 1) {
					this.stampCheckDelete(map); 			// stampCheck insert한 내용 삭제
					return 3;
				}
				
				else if (Count >= 5) {						// 30초 동안 스탬프 주변에 있을 경우 스탬프를 얻을 수 있다.
					this.stampGet(map); 					// 멤버 스탬프에 등록
					profileService.stampAchEP(map); 		// 스탬프 경험치
					this.stampCheckDelete(map); 			// stampCheck insert한 내용 삭제
					return 1;
				}
				
			} catch (Exception e) {
				StackTraceElement[] ste = e.getStackTrace();
				logger.error(e.getMessage());
				logger.error("className :: " + ste[0].getClassName());
				logger.error("methodName :: " + ste[0].getMethodName());
				logger.error("lineNumber :: " + ste[0].getLineNumber());
				logger.error("fileName :: " + ste[0].getFileName());
			}
			logger.info("StampServiceImpl.procStampInsert END");
			return 2;
			
		} else {/// 로그인 안되어있다면 아무 일 없다.
			logger.info("로그인 안되어있음");
			logger.info("StampServiceImpl.procStampInsert END");
			return 0;
		}
	}

	// 리소스파일(onememo.properties)에서 읽어오기
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;

	// 관리자페이지용
	@Override
	public ListPagingData<StampDTO> showStampList(Map map, HttpServletRequest req, int nowPage) {

		// 페이징을 위한 로직 시작]
		// 전체 레코드수
		int getStampCnt = dao.getStampCnt(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) getStampCnt / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);
		// 글 전체 목록 얻기
		List lists = dao.showStampList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(getStampCnt, pageSize, blockPage, nowPage, req.getContextPath() + "/Stamp/StampMNG.do?pageName=StampMNG&");

		ListPagingData<StampDTO> listPagingData = ListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize).pagingString(pagingString).getStampCnt(getStampCnt).build();

		return listPagingData;
	}

	@Override
	public int getStampCnt(Map map) {
		return dao.getStampCnt(map);
	}

	@Override
	public int renewStampMNG(Map map) {
		return dao.renewStampMNG(map);
	}

	@Override
	public int expireStampMNG(Map map) {
		return dao.expireStampMNG(map);
	}

	@Override
	public int deleteStampMNG(Map map) {
		return dao.deleteStampMNG(map);
	}




	


}