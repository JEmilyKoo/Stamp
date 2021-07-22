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
	@ExceptionHandler({HttpSessionRequiredException.class})
	public String notLogin(Model model) {
		model.addAttribute("NotMember", "로그인후 이용 바람....");
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
			}
		}
		catch(IndexOutOfBoundsException e){
			e.getMessage();
		}
		
		//뷰정보 반환]
		return "/review/TripBoard";
	}///////////////////TripBoard()
	
	//상세보기
	@RequestMapping("ForumPost.do")
	public String ForumPost(@RequestParam Map<String, String> map,
			Model model,
			HttpServletRequest req) {
		//닉네임 있을 때
		if(req.getSession().getAttribute("nickName")!=null) {
			String nickName = req.getSession().getAttribute("nickName").toString();
			map.put("nickName", nickName);

			//좋아요값 갯수 갖고 오는 쿼리
			int check = reviewService.likeCheck(map);

			//게시물 하나 갖고 오는 쿼리
			ReviewDTO dto = reviewService.selectOne(map);
			model.addAttribute("dto",dto);
				
			//게시물 댓글 갖고 오는 쿼리
			List<RvCmntDTO> rvcDto= rvCmntService.selectList(map);
			model.addAttribute("rvcDto",rvcDto);
			}//if(req.getSession().getAttribute("nickName")!=null)
			
		else {//댓글도 없고 세션 닉네임도 없을 경우
			//게시물 갖고 오는 쿼리
			ReviewDTO dto = reviewService.noCMNTselectOne(map);
			model.addAttribute("dto",dto);
			
			//댓글 받는 쿼리
			List<RvCmntDTO> rvcDto= rvCmntService.selectList(map);
			model.addAttribute("rvcDto",rvcDto);
		}//else(req.getSession().getAttribute("nickName")!=null)
		
		//댓글 갯수 가져오는 쿼리
		int num =rvCmntService.rvcCount(map);
		model.addAttribute("num",num);

		//뷰정보 반환]
		return "/review/ForumPost";
	}///////////////////ForumPost()
	
	
	//글 작성페이지
	@RequestMapping(value="Write.do",method = RequestMethod.GET)
	public String Write(Model model,@ModelAttribute("nickName") String nickName) throws IOException {
		return "review/Write";
	}
	
	//글 작성
	@RequestMapping(value="Write.do",method = RequestMethod.POST)
	public String WriteOk(@RequestParam Map map,
			@ModelAttribute("nickName") String nickName,HttpServletResponse response) throws IOException {

		map.put("nickName", nickName);
		reviewService.insert(map);
		
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
		//접속유저의 좋아요 여부 체크
		int check = reviewService.likeCheck(map);

		if(check==0) {
			//좋아요 갯수가 0이면 하나 추가한다
			int like = reviewService.like(map);
			//좋아요 받은 게시글의 작성자에게 경험치 부여
			profileService.likeEP(map);
			
		}
		else if(check==1){
			//좋아요가 1이면 없앤다
			reviewService.unlike(map); 
		}
		//좋아요 갯수 체크
		reviewService.likeCount(map);
	
		//게시글 불러오기
		ReviewDTO dto=reviewService.noCMNTselectOne(map);

		//좋아요가 두개 이상이면
		if(dto.getRvLikeCnt()>=2) {
			//스탬프 생성 쿼리
			reviewService.stampCreate(map);
			//스탬프생성 경험치 
			profileService.stampEP(map);
		}
		 
		return check;
	}
	
	@RequestMapping(value="Edit.do", method = RequestMethod.GET)
	public String Edit(@RequestParam Map map,Model model ) {
		ReviewDTO dto = reviewService.selectOne(map);
		model.addAttribute("dto",dto);
		dto.setRvCtt(dto.getRvCtt().replace("<p>","\n"));	
		dto.setRvCtt(dto.getRvCtt().replace("</p>",""));	

		return "review/Edit";
	}
	
	//글 수정
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
	
	
	
	
	
	

	
}

