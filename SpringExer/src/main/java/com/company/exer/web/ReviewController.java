package com.company.exer.web;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.company.exer.service.ReviewDTO;
import com.company.exer.service.ReviewService;
import com.company.exer.service.impl.ReviewServiceImpl;

@SessionAttributes({"id","nickName"})
@Controller
@RequestMapping("/Review/")
public class ReviewController {

	@Resource(name="reviewService")
	private ReviewService reviewService;
/*
	@RequestMapping("List.do")
	public String List(Model model) {
		List<ReviewDTO> list = reviewService.selectList();
		model.addAttribute("list",list);
		return "review/List";
	}
	*/
	
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
	
	
	//글 작성페이지
	@RequestMapping(value="Write.do",method = RequestMethod.GET)
	public String Write(Model model,@RequestParam Map map,@ModelAttribute("nickName") String nickName) {
	
		return "review/Write";
	}
	
	//글 작성
	@RequestMapping(value="Write.do",method = RequestMethod.POST)
	public String WriteOk(@RequestParam Map map,@ModelAttribute("nickName") String nickName) {
		map.put("nickName", nickName);
		reviewService.insert(map);
		return "forward:/Review/TripBoard.do";
	}
	

	@RequestMapping(value="Like.do",produces = "application/json;charset=UTF-8")
	public String Like(@RequestParam Map map,
			@ModelAttribute("nickName") String nickName,Model model) throws IOException {
		map.put("nickName", nickName);
		int check = reviewService.likeCheck(map);
		System.out.println("check:"+check);
		model.addAttribute("check",check);
		if(check==0) {
			System.out.println("11");
			reviewService.like(map);
		}
		else if(check==1){
			System.out.println("22");
			reviewService.unlike(map); 
		}
		//reviewService.likeCount(map);
		//ReviewDTO dto=reviewService.selectOne(map);
		//if(dto.getRvLikeCnt()>=2) {
		//	reviewService.stampCreate(map);
		//}
		return "forward:/Review/ForumPost.do";
	}
	
	@RequestMapping(value="Edit.do", method = RequestMethod.GET)
	public String Edit(@RequestParam Map map,Model model ) {
		ReviewDTO dto = reviewService.selectOne(map);
		model.addAttribute("dto",dto);
		return "review/Edit";
	}
	
	/*
	@RequestMapping("View.do")
	public String View(Model model,
			HttpServletRequest req,
			@RequestParam Map map
			) {
		
		if(req.getSession().getAttribute("id")!=null) {
		String id = req.getSession().getAttribute("id").toString();
		map.put("id", id);
		int check = reviewService.likeCheck(map);
		ReviewDTO dto = reviewService.selectOne(map);
		dto.setRvLikeCheck(check);
		model.addAttribute("dto",dto);
		}
		else {
			ReviewDTO dto = reviewService.selectOne(map);
			model.addAttribute("dto",dto);
		}
		return "review/View";
	}
	
	
	@RequestMapping(value="Edit.do",method = RequestMethod.POST)
	public String EditOk(@RequestParam Map map,Model model) {
		ReviewDTO dto = reviewService.selectOne(map);
		model.addAttribute("dto",dto);
		reviewService.update(map);
		return "forward:/Review/List.do";
	}
	
	@RequestMapping("Delete.do")
	public String delete(@RequestParam Map map) {
		reviewService.delete(map);
		return "forward:/Review/List.do";
	}
	
	
	*/
	
	
}
