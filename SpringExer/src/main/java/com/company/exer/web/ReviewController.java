package com.company.exer.web;

import java.io.BufferedReader;
import java.io.Console;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.company.exer.service.ProfileService;
import com.company.exer.service.ReviewDTO;
import com.company.exer.service.ReviewService;
import com.company.exer.service.RvCmntDTO;
import com.company.exer.service.RvCmntService;
import com.company.exer.service.impl.ReviewServiceImpl;
import com.company.exer.utils.UploadFileUtils;
import com.google.gson.JsonObject;

@SessionAttributes({"id","nickName"})
@Controller
@RequestMapping("/Review/")
public class ReviewController {

	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	//경험치를 얻기 위함
	@Resource(name="profileService")
	private ProfileService profileService;

	//댓글얻기위함
	@Resource(name="rvCmntService")
	private RvCmntService rvCmntService;
	
	
	/* 로그인 하지 않고 각 컨트롤러 메소드 실행시 오류:@ModelAttribute("id") String id사용시 */
	//씨큐리티 사용시에는 아래 예외처리 불필요
	@ExceptionHandler({HttpSessionRequiredException.class})
	public String notLogin(Model model) {
		model.addAttribute("NotMember", "로그인후 이용 바람....");
		//로그인이 안된경우 로그인 페이지로
		return "forward:/Review/TripBoard.do";
	}
	
	
	public void profileUpload(String email, MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 업로드할 폴더 경로
		String realFolder = request.getSession().getServletContext().getRealPath("profileUpload");
		UUID uuid = UUID.randomUUID();
	
		// 업로드할 파일 이름
		String org_filename = file.getOriginalFilename();
		String str_filename = uuid.toString() + org_filename;
	
		System.out.println("원본 파일명 : " + org_filename);
		System.out.println("저장할 파일명 : " + str_filename);
	
		String filepath = realFolder + "\\" + email + "\\" + str_filename;
		System.out.println("파일경로 : " + filepath);
	
		File f = new File(filepath);
		if (!f.exists()) {
		f.mkdirs();
		}
		file.transferTo(f);
		out.println("profileUpload/"+email+"/"+str_filename);
		out.close();
	}
	

	
	
	
	
	
	
	//전체게시물
	@RequestMapping("TripBoard.do")
	public String TripBoard(Model model) {
		
		List<ReviewDTO> list =reviewService.selectList();
		
		try {
		if(list==null) {
			model.addAttribute("NoBoard","게시글이 없어요");
			
		}
		else {
			model.addAttribute("list",list);
			System.out.println("listsize:"+list.size());
			System.out.println("list:getNickName"+list.get(0).toString());
			//뷰정보 반환]
			
		}
		}
		catch(IndexOutOfBoundsException e){
			e.getMessage();
		}
		
		return "/review/TripBoard";
	}///////////////////TripBoard()
	
	//상세보기
	@RequestMapping("ForumPost.do")
	public String ForumPost(@RequestParam Map<String, String> map,
			Model model,
			HttpServletRequest req) {
		
		if(req.getSession().getAttribute("nickName")!=null) {
			//닉네임은 정상으로 받아짐
			String nickName = req.getSession().getAttribute("nickName").toString();
			
			//System.out.println(nickName);
			//네임도 잘 받아짐
			
			map.put("nickName", nickName);
			//			{rvNo=6, nickName=mmmmm}
			System.out.println(map);
			int check = reviewService.likeCheck(map);
			//좋아요값갯수갖고오는 쿼리
			
			//댓글 하나만 달 수 있음
			System.out.println("댓글1");
			ReviewDTO dto = reviewService.selectOne(map);
			System.out.println("2");
			
			//이 쿼리는 댓글이 있어야 돌아가는 쿼리이다
			
			//if(rvcDto!=null) {
				//댓글이 하나라도 있을 경우
				
				//System.out.println("dto:"+rvcDto.toString());
				//System.out.println("check:"+check);
				//rvcDto.setRvLikeCheck(check);
				//rvcDto.setRvCtt(rvcDto.getRvCtt().replace("\r\n","<br/>"));				
				model.addAttribute("dto",dto);
				
				List<RvCmntDTO> rvcDto= rvCmntService.selectList(map);
				model.addAttribute("rvcDto",rvcDto);
				
			
				System.out.println("rvNo11:"+map.get("rvNo"));
			//}//if(dto!=null)
			//댓글이 하나도 없고 닉네임은 받아와지는 경우
			
			//댓글이 없을 경우를 대비한 셀렉트를 생성했음
			//ReviewDTO dto = reviewService.noCMNTselectOne(map);
			//model.addAttribute("dto",dto);
			
			}//if(req.getSession().getAttribute("nickName")!=null)
			else {
			//	//댓글도 없고 세션 닉네임도 없을 경우
				ReviewDTO dto = reviewService.noCMNTselectOne(map);
				//댓글도 없는데 댓글받으면 어떡함 너무해
				
				model.addAttribute("dto",dto);
				
				System.out.println("rvNo22:"+map.get("rvNo"));
				//댓글받는쿼리
				List<RvCmntDTO> rvcDto= rvCmntService.selectList(map);
				model.addAttribute("rvcDto",rvcDto);
			}//else(req.getSession().getAttribute("nickName")!=null)
		
			int num =rvCmntService.rvcCount(map);
			model.addAttribute("num",num);
			System.out.println(num);
		
		
		
		//뷰정보 반환]
		
	
		
		
		return "/review/ForumPost";
	}///////////////////ForumPost()
	
	
	//글 작성페이지
	@RequestMapping(value="Write.do",method = RequestMethod.GET)
	public String Write(Model model,@RequestParam Map map,@ModelAttribute("nickName") String nickName) throws IOException {
		
		return "review/Write";
	}
	
	//글 작성
	@RequestMapping(value="Write.do",method = RequestMethod.POST)
	public String WriteOk(@RequestParam Map map,
			@ModelAttribute("nickName") String nickName,Model model,HttpServletResponse response) throws IOException {

		System.out.println(map.get("rvCategory1"));
		System.out.println(map.get("rvCategory2"));
		map.put("nickName", nickName);
		reviewService.insert(map);
		System.out.println("dddd");
		//글쓰기 경험치 얻기
		profileService.writeEP(map);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

	      out.println("<script language='javascript'>");
	      out.println("alert('축하드립니다.\r\n 경험치 10 획득했습니다. ');");
	      out.println("</script>");
	      out.flush();
	     // return "Profile/ProfileMain";
		///	return "forward:/Review/TripBoardWrite.do";
	      return "forward:/Review/TripBoard.do";
	}
	
	
	//전체게시물
		@RequestMapping("TripBoardWrite.do")
		public String TripBoardWrite(Model model) {
			return "/review/TripBoard";
		}///////////////////TripBoard()
		

	@RequestMapping(value="Like.do",produces = "application/json;charset=UTF-8")
	public @ResponseBody int Like(@RequestParam Map map) throws IOException {
		int check = reviewService.likeCheck(map);
		//현재까지 좋아요 횟수를 가져온다
		
		if(check==0) {
			int like = reviewService.like(map);
			// 좋아요 갯수가 0이면 하나 추가한다
			profileService.likeEP(map);
			
		}
		else if(check==1){
			reviewService.unlike(map); 
		}
		reviewService.likeCount(map);
		//ReviewDTO dto=reviewService.selectOne(map);
		// 위의 코드는 반드시 여기에 댓글이 있다는 전제 하에 가는 거잖아
		//좋아요에 댓글이 필수가 아니다
		
		ReviewDTO dto=reviewService.noCMNTselectOne(map);
		//그래서 댓글 없어도 돌아가는 셀렉트 구문 하나 만들음
		if(dto.getRvLikeCnt()>=2) {
			reviewService.stampCreate(map);
			profileService.stampEP(map);
		}
		 
		return check;
	}
	
	@RequestMapping(value="Edit.do", method = RequestMethod.GET)
	public String Edit(@RequestParam Map map,Model model ) {
		ReviewDTO dto = reviewService.selectOne(map);
		model.addAttribute("dto",dto);
		System.out.println("Edit - dto.toString():"+dto.toString());
		dto.setRvCtt(dto.getRvCtt().replace("<p>","\n"));	
		dto.setRvCtt(dto.getRvCtt().replace("</p>",""));	

		return "review/Edit";
	}
	
	@RequestMapping(value="Edit.do",method = RequestMethod.POST)
	public String EditOk(@RequestParam Map map,Model model) {
		ReviewDTO dto = reviewService.selectOne(map);
		model.addAttribute("dto",dto);
		
		reviewService.update(map);
		
		return "forward:/Review/ForumPost.do";
	}
	
	@RequestMapping("Delete.do")
	public String delete(@RequestParam Map map) {
		reviewService.delete(map);
		return "forward:/Review/TripBoard.do";
	}
	
	
	
	
/////////////관리자페이지
@RequestMapping("ReviewMNG.do")
public String riviewMNG(Model model) {

List<ReviewDTO> list =reviewService.reviewMNG();

if(list==null) {
	model.addAttribute("NoBoard","게시글이 없어요");	
}
else {
	model.addAttribute("list",list);
	System.out.println("listsize:"+list.size());
	System.out.println("list:getNickName"+list.get(0).toString());
}
//뷰정보 반환]
return "/admin/ReviewMNG";
}
	
	
@RequestMapping("DeleteMNG.do")
public String deleteMNG(@RequestParam Map map) {
	reviewService.delete(map);
	return "forward:/Review/ReviewMNG.do";
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
	
	
	

	
	*/
	
	
}

