package com.company.exer.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.exer.service.RvCmntService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
/*
@SessionAttributes({"nickName"})
@RestController
public class RvCmntController {

	@Resource(name="rvCmntService")
	private RvCmntService rvCmntService;
	
	@Autowired
	private ObjectMapper mapper;
	
	@GetMapping(value="/review/ForumPost.do",produces = "text/plain;charset=UTF-8")	
	public String list(
			@ModelAttribute("nickName") String nickName, 
			@RequestParam Map map) throws JsonProcessingException {
		//서비스 호출]
		List<Map> list=rvCmntService.selectList(map);
		//System.out.println("데이타베이스에서 조회:"+list.get(0).get("LPOSTDATE"));
		
		//JACKSON이 List<Map>을 JSON형태 문자열로 변경시
		//날짜데이타를 2021-05-25 17:52:32.0에서 1621932752000로 변경해버린다
		for(Map comment:list) {
			comment.put("rvcDate",comment.get("rvcDate").toString().substring(0, 10) );
		}
		
		String comments=mapper.writeValueAsString(list);
		//System.out.println("글번호에 따른 댓글들:"+comments);
		//[
		//{"NO":2,"LPOSTDATE":1621932752000,"LINECOMMENT":"COMMENT2","ID":"LEE","LNO":2,"NAME":"이길동"},
		//{"NO":2,"LPOSTDATE":1621932741000,"LINECOMMENT":"COMMENT1","ID":"PARK","LNO":1,"NAME":"박길동"}
		//]
		//위를 아래처럼 변경
		//[{"NO":2,"LPOSTDATE":"2021-05-25","LINECOMMENT":"COMMENT2","ID":"LEE","LNO":2,"NAME":"이길동"},{"NO":2,"LPOSTDATE":"2021-05-25","LINECOMMENT":"COMMENT1","ID":"PARK","LNO":1,"NAME":"박길동"}]
		return comments;
	}
	//코멘트 입력처리]
	@PostMapping(value="/review/ForumPost.do",produces = "text/plain;charset=UTF-8")
	public String write(
			@ModelAttribute("nickName") String nickName,
			@RequestParam Map map) {
		map.put("nickName", nickName);//(씨큐리티 미 사용시)한줄 댓글 작성자의 아이디를 맵에 설정
		String name=rvCmntService.insert(map);		
		
		return name;//댓글 작성자 이름 반환
	}////////////////////
	//코멘트 수정처리]
	@PostMapping(value="/review/ForumPost/Edit.do",produces = "text/plain;charset=UTF-8")
	public String update(
			@ModelAttribute("nickName") String nickName,
			@RequestParam Map map) {
		System.out.println("댓글의 키값:"+map.get("lno"));
		System.out.println("CommentController:"+map.get("lno"));
		rvCmntService.update(map);
		//수정한 글의 키값 반환
		return map.get("rvcNo").toString();
	}
	
	@PostMapping(value="/review/ForumPost/Delete.do",produces = "text/plain;charset=UTF-8")
	public String delete(
			@ModelAttribute("nickName") String nickName,
			@RequestParam  Map map) {		
		System.out.println("삭제할 키:"+map.get("rvcNo"));
		rvCmntService.delete(map);	
		return "삭제 성공";
	}

}*/
