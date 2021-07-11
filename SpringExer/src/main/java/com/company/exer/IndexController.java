package com.company.exer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

/*
[일반 자바클래스 형태 즉 POJO(Plain Old Java Object)]

컴파일러에게 "아래 클래스는 사용자 요청을 처리하는 클래스야" 라고
알려주는 역할]-컨트롤러 클래스
*/
@Controller
public class IndexController {
	
	
	//컨트롤러 메소드]
	
	
	@RequestMapping("/Stamp/Badge.do")
	public String Badge() {
		//뷰정보 반환]
		return "/Badge";
	}///////////////////Badge()
	
	@RequestMapping("/Stamp/CategoryEdit.do")
	public String CategoryEdit() {
		//뷰정보 반환]
		return "/CategoryEdit";
	}///////////////////CategoryEdit()
	
	@RequestMapping("/Stamp/Category.do")
	public String Category() {
		//뷰정보 반환]
		return "/Category";
	}///////////////////handlerMapping()
	
	@RequestMapping("/Stamp/CategoryCreate.do")
	public String CategoryCreate() {
		//뷰정보 반환]
		return "/CategoryCreate";
	}///////////////////handlerMapping()
	/*
	@RequestMapping("/Stamp/ForumPost.do")
	public String ForumPost() {
		//뷰정보 반환]
		return "/ForumPost";
	}///////////////////ForumPost()
	*/
	@RequestMapping("/Stamp/ForumPostCreate.do")
	public String ForumPostCreate() {
		//뷰정보 반환]
		return "/ForumPostCreate";
	}///////////////////ForumPostCreate()
	
	@RequestMapping("/Stamp/guide.do")
	public String guide() {
		//뷰정보 반환]
		return "/guide";
	}///////////////////guide()

	@RequestMapping("/Stamp/NewPost.do")
	public String NewPost() {
		//뷰정보 반환]
		return "/NewPost";
	}///////////////////NewPost()
	@RequestMapping("/Stamp/Stamp.do")
	public String Stamp() {
		//뷰정보 반환]
		return "/Stamp";
	}///////////////////Stamp()
	/*
	@RequestMapping("/Stamp/TripBoard.do")
	public String TripBoard() {
		//뷰정보 반환]
		return "/TripBoard";
	}///////////////////TripBoard()
	*/
	@RequestMapping("/Stamp/TripBoardEdit.do")
	public String TripBoardEdit() {
		//뷰정보 반환]
		return "/TripBoardEdit";
	}///////////////////TripBoardEdit()
	@RequestMapping("/Stamp/TripBoardReport.do")
	public String TripBoardReport() {
		//뷰정보 반환]
		return "/TripBoardReport";
	}///////////////////TripBoardReport()
	
	@RequestMapping("/Stamp/Test.do")
	public String Test(HttpSession session) {
		//뷰정보 반환]

		session.removeAttribute("login");
		session.removeAttribute("id");
		session.removeAttribute("error");
		return "/Test";
	}///////////////////Test()
	
	@RequestMapping("/Admin/Admin.do")
	public String Admin(HttpServletRequest req) {
		System.out.println(req.getParameter("pageName"));
		//뷰정보 반환]
		return "/admin/Admin";

	}///////////////////Test()
	
	
	
	
	@RequestMapping("/Admin/TagMNG.do")
	public String TagMNG(HttpServletRequest req) {
		System.out.println(req.getParameter("pageName"));
		//뷰정보 반환]
		return "/admin/TagMNG";
	}///////////////////Test()
	
	@RequestMapping("/Admin/ReviewMNG.do")
	public String ReviewMNG(HttpServletRequest req) {
		System.out.println(req.getParameter("pageName"));
		//뷰정보 반환]
		return "/admin/ReviewMNG";
	}///////////////////Test()
	
	@RequestMapping("/Admin/errorMNG.do")
	public String errorMNG(HttpServletRequest req) {
		System.out.println(req.getParameter("pageName"));
		//뷰정보 반환]
		return "/admin/errorMNG";


	}///////////////////Test()
	
	
	
	
	/*
	[스프링 타일즈 적용시]- 컨트럴러 메소드에서 문자열로 리턴시
	.do로 포워딩 혹은 리다이렉트 : 앞에 "forward:" 혹은  "redirect:"를 붙인다
	.jsp(UI가 필요한 jsp)로 포워딩 : .tiles를 붙인다
	.jsp(UI가 필요없는 jsp)로 포워딩: "forward:" 혹은  "redirect:"를 붙일때
	                           /WEB-INF/~로시작하는 전체 경로 그리고 .jsp를 붙인다 
	 
	 */
	@RequestMapping("/tiles.do")
	public String tiles() {
		//뷰정보 반환]
		//tiles17/Tiles.tiles이 다음 설정(/WEB-INF/views/{1}/{2}.jsp)을 적용받아
		//{1}부분이 tiles17으로 {2} Tiles로 tiles는 jsp로 매핑된다
		//즉 WEB-INF/views/tiles17/Tiles.jsp 뷰가 서비스된단
		return "tiles17/Tiles.tiles";
	}///////////////////handlerMapping()


}
