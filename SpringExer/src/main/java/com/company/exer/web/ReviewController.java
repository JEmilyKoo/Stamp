package com.company.exer.web;

import java.io.BufferedReader;
import java.io.Console;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
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

import com.company.exer.service.ReviewDTO;
import com.company.exer.service.ReviewService;
import com.company.exer.service.impl.ReviewServiceImpl;

@SessionAttributes({"id","nickName"})
@Controller
@RequestMapping("/Review/")
public class ReviewController {

	@Resource(name="reviewService")
	private ReviewService reviewService;

	
	/* 로그인 하지 않고 각 컨트롤러 메소드 실행시 오류:@ModelAttribute("id") String id사용시 */
	//씨큐리티 사용시에는 아래 예외처리 불필요
	@ExceptionHandler({HttpSessionRequiredException.class})
	public String notLogin(Model model) {
		model.addAttribute("NotMember", "로그인후 이용 바람....");
		//로그인이 안된경우 로그인 페이지로
		return "forward:/Review/TripBoard.do";
	}
	


	
	//파일구현시켜줘
	/*
	@RequestMapping(value="/test", method=RequestMethod.POST)
	public @ResponseBody int test(MultipartHttpServletRequest request) {
		System.out.println("들어오시나요?");
		
		MultipartFile file = request.getFile("file1");
		String name = request.getParameter("name");
		System.out.println(name);
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getContentType());
		
		String realPath = request.getSession().getServletContext().getRealPath("/resources/upload/");
		System.out.println(realPath);
		File dir = new File(realPath);
		if(!dir.exists()) dir.mkdirs();
		try {
			String line;
			BufferedReader br = new BufferedReader(new InputStreamReader(file.getInputStream(), "UTF-8"));
			while((line=br.readLine()) != null) {
				System.out.println(line);
			}
			br.close();
			
			file.transferTo(new File(realPath, file.getOriginalFilename()));
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return 1;
	}
	
	
	@Controller public class FileController { @RequestMapping("/file/upload.do") 
	public String uploadFile(MultipartFile[] upload, HttpServletRequest request) { 
		
		//파일이 업로드 될 경로 설정 
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/file"); 
		
		//위에서 설정한 경로의 폴더가 없을 경우 생성 
		File dir = new File(saveDir); if(!dir.exists()) { dir.mkdirs(); }
		
		// 파일 업로드 
		for(MultipartFile f : upload) { if(!f.isEmpty()) { 
			
			// 기존 파일 이름을 받고 확장자 저장
			String orifileName = f.getOriginalFilename(); 
			String ext = orifileName.substring(orifileName.lastIndexOf(".")); 
			
			// 이름 값 변경을 위한 설정
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd-HHmmssSSS"); 
			int rand = (int)(Math.random()*1000);
			
			// 파일 이름 변경
			String reName = sdf.format(System.currentTimeMillis()) + "_" + rand + ext;
			
			// 파일 저장 
			try { 
				f.transferTo(new File(saveDir + "/" + reName)); 
			}
			catch (IllegalStateException | IOException e) { e.printStackTrace(); } 
			} 
		} 
		return "uploadEnd"; 
		} 
	}
		

	*/
	
	
	
	
	
	
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
			
			System.out.println(nickName);
			//네임도 잘 받아짐
			
			map.put("nickName", nickName);
			//			{rvNo=6, nickName=mmmmm}
			System.out.println(map);
			int check = reviewService.likeCheck(map);
			//좋아요값갯수갖고오는 쿼리
			
			//댓글 하나만 달 수 있음
			ReviewDTO dto = reviewService.selectOne(map);
			//이 쿼리는 댓글이 있어야 돌아가는 쿼리이다
			
			if(dto!=null) {
				//댓글이 하나라도 있을 경우
				
				System.out.println("dto:"+dto.toString());
				System.out.println("check:"+check);
				dto.setRvLikeCheck(check);
				dto.setRvCtt(dto.getRvCtt().replace("\r\n","<br/>"));				
				model.addAttribute("dto",dto);
	
				
			}//if(dto!=null)
			//댓글이 하나도 없고 닉네임은 받아와지는 경우
			
			//댓글이 없을 경우를 대비한 셀렉트를 생성했음
			dto = reviewService.noCMNTselectOne(map);
			model.addAttribute("dto",dto);
			
			}//if(req.getSession().getAttribute("nickName")!=null)
			else {
				//댓글도 없고 세션 닉네임도 없을 경우
				ReviewDTO dto = reviewService.noCMNTselectOne(map);
				//댓글도 없는데 댓글받으면 어떡함
				model.addAttribute("dto",dto);
			}//else(req.getSession().getAttribute("nickName")!=null)
		//뷰정보 반환]
		return "/review/ForumPost";
	}///////////////////ForumPost()
	
	
	//글 작성페이지
	@RequestMapping(value="Write.do",method = RequestMethod.GET)
	public String Write(Model model,@RequestParam Map map,@ModelAttribute("nickName") String nickName) {
		
		
		return "review/Write";
	}
	
	//글 작성
	@RequestMapping(value="Write.do",method = RequestMethod.POST)
	public String WriteOk(@RequestParam Map map,
			@ModelAttribute("nickName") String nickName) {

		map.put("nickName", nickName);
		reviewService.insert(map);
		
	
		return "forward:/Review/TripBoard.do";
	}
	

	@RequestMapping(value="Like.do",produces = "application/json;charset=UTF-8")
	public @ResponseBody int Like(@RequestParam Map map) throws IOException {
		int check = reviewService.likeCheck(map);
		//현재까지 좋아요 횟수를 가져온다
		
		if(check==0) {
			int like = reviewService.like(map);
			// 좋아요 갯수가 0이면 하나 추가한다
			
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
		}
		 
		return check;
	}
	
	@RequestMapping(value="Edit.do", method = RequestMethod.GET)
	public String Edit(@RequestParam Map map,Model model ) {
		ReviewDTO dto = reviewService.selectOne(map);
		model.addAttribute("dto",dto);
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

List<ReviewDTO> list =reviewService.selectList();


if(list==null) {
	model.addAttribute("NoBoard","게시글이 없어요");	
}

else {
	model.addAttribute("list",list);
	System.out.println("listsize:"+list.size());
	System.out.println("list:getNickName"+list.get(0).toString());
	//뷰정보 반환]
	
}

return "/admin/ReviewMNG";
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
