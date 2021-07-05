package com.company.exer.web;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.exer.service.ReviewDTO;
import com.company.exer.service.ReviewService;

@SessionAttributes({"id","nickName"})
@Controller
@RequestMapping("/Review/")
public class AdminController {

	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	//전체게시물
		@RequestMapping("TripBoard.do")
		public String TripBoard(Model model) {
			
			List<ReviewDTO> list =reviewService.selectList();
			model.addAttribute("list",list);
			System.out.println("listsize:"+list.size());
			System.out.println("list:getNickName"+list.get(0).toString());
			//뷰정보 반환]
			return "/TripBoard";
		}///////////////////TripBoard()
		
		//상세보기
		@RequestMapping("ForumPost.do")
		public String ForumPost(@RequestParam Map map,Model model) {
			ReviewDTO dto = reviewService.selectOne(map);
			model.addAttribute("dto",dto);
			//뷰정보 반환]
			return "/ForumPost";
		}///////////////////ForumPost()
		
		@RequestMapping("Delete.do")
		public String delete(@RequestParam Map map) {
			reviewService.delete(map);
			return "forward:/Review/List.do";
		}
		
		@RequestMapping(value="Like.do",produces = "application/json;charset=UTF-8")
		public @ResponseBody String Like(@RequestParam Map map) throws IOException {
			int check = reviewService.likeCheck(map);
			if(check==0) {
				reviewService.like(map);
			}
			else {
				reviewService.unlike(map); 
			}
			reviewService.likeCount(map);
			ReviewDTO dto=reviewService.selectOne(map);
			if(dto.getRvLikeCnt()>=2) {
				reviewService.stampInsert(map);
			}
			return check+"";
		}
	
}
