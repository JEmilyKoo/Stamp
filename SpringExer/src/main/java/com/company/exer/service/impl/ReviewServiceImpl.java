package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.company.exer.service.ReviewDTO;
import com.company.exer.service.ReviewService;
import com.company.exer.utils.ListPagingData;
import com.company.exer.utils.RvPagingUtil;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{

	@Resource(name="reviewDAO")
	private ReviewDAO dao;
	
	@Override
	public List<ReviewDTO> selectList() {
		return dao.selectList();
	}

	//리소스파일(review.properties)에서 읽어오기
	//@Value("${PAGE_SIZE}")
	//private int pageSize;
	//@Value("${BLOCK_PAGE}")
	//private int blockPage;
	
	//PAGE_SIZE = 10
	//BLOCK_PAGE = 2
	
	
	@Override
	public ListPagingData selectListPage(Map map, HttpServletRequest req, int nowPage) {
		System.out.println("안들어와?");
		int pageSize=6;
		int blockPage=2;
		
		//페이징을 위한 로직 시작]
		//전체 레코드수	
		int totalRecordCount=dao.getTotalRecord(map);		
		//전체 페이지수
		int totalPage =(int)Math.ceil((double)totalRecordCount/pageSize);		
		//시작 및 끝 ROWNUM구하기
		int start = (nowPage -1)*pageSize+1;
		int end = nowPage * pageSize;	
		//페이징을 위한 로직 끝]
		System.out.println("start:"+start);
		map.put("start", start);
		map.put("end", end);
		System.out.println("map start : "+map.get("start"));
		
		//글 전체 목록 얻기
		List lists=dao.selectListPage(map);		
		String pagingString=RvPagingUtil.pagingBootStrapStyle(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/Review/TripBoard.do?");
		
		ListPagingData<ReviewDTO> listPagingData = 
				ListPagingData.builder()
					.lists(lists)
					.nowPage(nowPage)
					.pageSize(pageSize)
					.pagingString(pagingString)
					.TotalRecordCount(totalRecordCount)
					.build();
		
		return listPagingData;
	}

	@Override
	public List<ReviewDTO> selectCategoryList(Map map) {
		return dao.selectCategoryList(map);
	}
	
	@Override
	public ReviewDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public ReviewDTO noCMNTselectOne(Map map) {
		return dao.noCMNTselectOne(map);
	}
	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	@Override
	public int like(Map map) {
		return dao.like(map);
	}

	@Override
	public int likeCheck(Map map) {
		return dao.likeCheck(map);
	}

	@Override
	public int likeCount(Map map) {
		return dao.likeCount(map);
	}

	@Override
	public int unlike(Map map) {
		return dao.unlike(map);
	}

	@Override
	public int stampCreate(Map map) {
		return dao.stampCreate(map);
	}


	@Override
	public List<ReviewDTO> reviewMNG() {
		return dao.reviewMNG();
	}

	@Override
	public int rvFileAdd(Map map) {
		return dao.rvFileAdd(map);
	}


	@Override
	public int rvScrapCheck(Map map) {
		return dao.rvScrapCheck(map);
	}


	@Override
	public int rvScrapAdd(Map map) {
		return dao.rvScrapAdd(map);
	}


	@Override
	public int unScrap(Map map) {
		return dao.unScrap(map);
	}


	@Override
	public int rvScrapCount(Map map) {
		return dao.rvScrapCount(map);
	}


	@Override
	public List<ReviewDTO> rvScrapBring(Map map) {
		return dao.rvScrapBring(map);
	}

	@Override
	public int updatereviewcnt(Map map) throws Exception {
		return dao.updatereviewcnt(map);
	}




	

	

}
