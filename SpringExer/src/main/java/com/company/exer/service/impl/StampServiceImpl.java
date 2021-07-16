package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.company.exer.service.StampDTO;
import com.company.exer.service.StampService;
import com.company.exer.utils.ListPagingData;
import com.company.exer.utils.PagingUtil;

@Service("stampService")
public class StampServiceImpl implements StampService {

	@Resource(name = "stampDAO")
	private StampDAO dao;

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
		String pagingString = PagingUtil.pagingBootStrapStyle(getStampCnt, pageSize, blockPage, nowPage, req.getContextPath() + "/Stamp/AdminStamp.do?pageName=AdminStamp&");

		ListPagingData<StampDTO> listPagingData = ListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize).pagingString(pagingString).getStampCnt(getStampCnt).build();

		return listPagingData;
	}

	@Override
	public int getStampCnt(Map map) {
		return dao.getStampCnt(map);
	}

	@Override
	public int renewAdminStamp(Map map) {
		return dao.renewAdminStamp(map);
	}

	@Override
	public int expireAdminStamp(Map map) {
		return dao.expireAdminStamp(map);
	}

	@Override
	public int deleteAdminStamp(Map map) {
		return dao.deleteAdminStamp(map);
	}




	


}
