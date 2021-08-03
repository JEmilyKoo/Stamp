package com.company.exer.web;

import java.io.BufferedReader;
import java.io.Console;
import java.io.File;
import java.io.FileInputStream;
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

import org.apache.commons.io.FileUtils;import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
import com.company.exer.utils.MediaUtils;
import com.company.exer.utils.UploadFileUtils;
import com.google.gson.JsonObject;

@SessionAttributes({"id","nickName"})
@Controller
public class ReviewController {

	
/*11
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@Resource(name="uploadPath")
	String uploadPath;
	
	@RequestMapping(value="/upload/uploadForm", method=RequestMethod.GET)
	public String uploadForm() {
		
		return "/";
		//업로드페이지로 포워딩?
		
	}
	@RequestMapping(value="/upload/uploadForm",method=RequestMethod.POST)
	public ModelAndView uploadForm(MultipartFile file, ModelAndView mav) throws Exception{
		//파일의 원본이름 저장
		String savedName = file.getOriginalFilename();
		
		logger.info("파일이름 :"+file.getOriginalFilename());
		logger.info("파일크기 :"+file.getSize());
		logger.info("컨텐트 타입 :"+file.getContentType());
		
		//랜덤생성+파일이름 저장
		//파일명 랜덤생성 메서드 호출
		savedName = uploadFile(savedName, file.getBytes());
		
		
		//File target = new File(uploadPath, savedName);
		//FileCopyUtils.copy(file.getBytes(), target);
		
		mav.setViewName("upload/uploadResult");
		mav.addObject("savedName", savedName);
		
		
		return mav;
	}
	
	private String uploadFile(String originalName, byte[] fileData) throws Exception{
		//uuid 생성
		UUID uuid = UUID.randomUUID();
		
		//랜덤생성+파일이름 저장
		String savedName = uuid.toString()+"_"+originalName;
		File target = new File(uploadPath, savedName);
		//임시디렉토리에 저장된 업로드된 파일을 지정된 디렉토리로 복사
		FileCopyUtils.copy(fileData, target);
		
		return savedName;

	}
*/
	


	//2
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@Resource(name="uploadPath")
	String uploadPath;
	
	//ajax업로드 페이지 매핑
	@RequestMapping(value="/upload/uploadAjax", method=RequestMethod.GET)
	public String uploadAjax() {
		
		return "/review/Write";
		//업로드페이지로 포워딩? uploadAjax.jsp로 포워딩
		
	}
	
	//ajax업로드 처리 매핑
	@ResponseBody
	@RequestMapping(value="/upload/uploadAjax",method=RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception{
		logger.info("originalName :"+file.getOriginalFilename());
		logger.info("size :"+file.getSize());
		logger.info("contentType :"+file.getContentType());
		//랜덤생성+파일이름 저장
		//파일명 랜덤생성 메서드 호출
		//savedName = uploadFile(savedName, file.getBytes());
		
		
		//File target = new File(uploadPath, savedName);
		//FileCopyUtils.copy(file.getBytes(), target);
		
		//mav.setViewName("upload/uploadResult");
		//mav.addObject("savedName", savedName);
		
		
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(),file.getBytes()),HttpStatus.OK);
	}
	

	//이미지 표시 매핑
	@ResponseBody
	@RequestMapping("/upload/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception{
		//서버의 파일을 다운로드하기 위한 스트림
		InputStream in = null; //java.io
		ResponseEntity<byte[]> entity = null;
		try {
			// 확장자를 추출하여 formatName에 저장
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
			//추출한 확장자를 MediaUtils클래스에서 이미지파일여부를 검사하고 리턴받아 mType에 저장
			MediaType mType = MediaUtils.getMediaType(formatName);
			//헤더 구성 객체(외부에서 데이터를 주고받을 때에는 header와 body를 구성해야하기 떄문에)
			HttpHeaders headers = new HttpHeaders();
			//InputStream 생성
			in = new FileInputStream(uploadPath + fileName);
			//이미지 파일이면
			if (mType != null) {
				headers.setContentType(mType);
				
			}
			//이미지가 아니면
			else {
				fileName =fileName.substring(fileName.indexOf("_")+1);
				//다운로드용 컨텐트 타입
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);;
				//바이트 배열을 스트링으로
				//파일의 한글 깨짐 방지
				headers.add("Content-Disposition", "attachment; filename=\""+new String(fileName.getBytes("utf-8"), "iso-8859-1")+"\"");
			}
			//바이트배열, 헤더, HTTP상태코드
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),headers,HttpStatus.OK);
			
		}
		catch (Exception e) {
			e.printStackTrace();
			//HTTP상태 코드()
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
			
		}
		finally {
			in.close();//스트림 닫기
		}
		return entity;
	}
	
	//파일 삭제 매핑
	@ResponseBody// view가 아닌 데이터 리턴
	@RequestMapping(value="upload/deleteFile",method=RequestMethod.POST)
	public ResponseEntity<String> deleteFile(String fileName){
		//파일의 확장자 추출
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		//이미지 파일 여부 검사
		MediaType mType = MediaUtils.getMediaType(formatName);
		//이미지의 경우(썸네일 + 원본파일 삭제), 이미지가 아니면 원본파일만 삭제
		//이미지 파일이면
		if (mType != null) {
			//썸네일 이미지 파일 추출
			String front = fileName.substring(0,12);
			String end = fileName.substring(14);
			//썸네일 이미지 삭제
			new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
			
		}
		//원본 파일 삭제
		new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
		
		//데이터와 http 상태 코드 전송
		return new ResponseEntity<String>("deleted",HttpStatus.OK);
	}
	
	
	
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
	@RequestMapping("/Review/TripBoard.do")
	public String TripBoard(Model model,  @RequestParam Map map) {
		List<ReviewDTO> list =reviewService.selectList();
		
		System.out.println("모델"+model);
		System.out.println("맵"+map);
		
		if((map.get("rvCategory1")!=null) || (map.get("rvCategory2")!=null)) {
			list =reviewService.selectCategoryList(map);
				System.out.println("서울로들어옴");
				model.addAttribute("rvCategory1",map.get("rvCategory1"));
				model.addAttribute("rvCategory2",map.get("rvCategory2"));
				
				
		}
		int size = list.size();
		
		String var = null;
		for (int i = 0 ; i < size ; i++) {
			
			 StringBuffer sb = new StringBuffer();
			 sb.append(list.get(i).getRvCtt());
				
			 if(sb.indexOf("img") !=-1) {

				String st = sb.substring((sb.indexOf("src")+5),sb.indexOf("data-filename"));
				list.get(i).setImage(st);
					
			}
		}
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
	@RequestMapping("/Review/ForumPost.do")
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
	@RequestMapping(value="/Review/Write.do",method = RequestMethod.GET)
	public String Write(Model model,@ModelAttribute("nickName") String nickName) throws IOException {
		return "review/Write";
	}
	
	//글 작성
	@RequestMapping(value="/Review/Write.do",method = RequestMethod.POST)
	public String WriteOk(@RequestParam Map map,
			@ModelAttribute("nickName") String nickName,HttpServletResponse response,Model model) throws IOException {
		
		map.put("nickName", nickName);
		try {
			int check =reviewService.insert(map);
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("e:"+e.getMessage());
			model.addAttribute("noText","글을 입력해주세요.");
			return "review/Write";
		}
		//글쓰기 경험치 얻기
		System.out.println("이게 맵이다"+map);
		System.out.println("맵의"+map.get("rvCtt"));
		profileService.writeEP(map);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

	      out.println("<script language='javascript'>");
	      out.println("alert('축하드립니다.\r\n 경험치 10 획득했습니다. ');");
	      out.println("</script>");
	      out.flush();
	      
	      
	      //int ch=reviewService.rvFileAdd(map);
	      //System.out.println("ch:"+ch);
	     // return "Profile/ProfileMain";
		///	return "forward:/Review/TripBoardWrite.do";
		
		
	      return "forward:/Review/TripBoard.do";
	}
	
	
	//전체게시물
		@RequestMapping("/Review/TripBoardWrite.do")
		public String TripBoardWrite(Model model) {
			return "/review/TripBoard";
		}///////////////////TripBoard()
		

	@RequestMapping(value="/Review/Like.do",produces = "application/json;charset=UTF-8")
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
	
	
	
	//스크랩 체크
	@RequestMapping(value="/Review/Scrap.do",produces = "application/json;charset=UTF-8")
	public @ResponseBody int scrap(@RequestParam Map map) throws IOException {
		//접속유저의 스크랩 여부 체크
		int check = reviewService.rvScrapCheck(map);
		if(check==0) {
			//스크랩 갯수가 0이면 하나 추가한다
			int scrapAdd = reviewService.rvScrapAdd(map);

		}
		else if(check==1){
			//스크랩이 1이면 없앤다
			reviewService.unScrap(map); 
		}

		//게시글 불러오기
		ReviewDTO dto=reviewService.noCMNTselectOne(map);

		return check;
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value="/Review/Edit.do", method = RequestMethod.GET)
	public String Edit(@RequestParam Map map,Model model ) {
		ReviewDTO dto = reviewService.selectOne(map);
		model.addAttribute("dto",dto);
		dto.setRvCtt(dto.getRvCtt().replace("<p>","\n"));	
		dto.setRvCtt(dto.getRvCtt().replace("</p>",""));	

		return "review/Edit";
	}
	
	//글 수정
	@RequestMapping(value="/Review/Edit.do",method = RequestMethod.POST)
	public String EditOk(@RequestParam Map map,Model model) {
		ReviewDTO dto = reviewService.selectOne(map);
		model.addAttribute("dto",dto);
		
		reviewService.update(map);
		
		return "forward:/Review/ForumPost.do";
	}
	
	@RequestMapping("/Review/Delete.do")
	public String delete(@RequestParam Map map) {
		reviewService.delete(map);
		return "forward:/Review/TripBoard.do";
	}
	
	
	
	
/////////////관리자페이지
@RequestMapping("/Review/ReviewMNG.do")
public String riviewMNG(Model model) {

List<ReviewDTO> list =reviewService.reviewMNG();

if(list==null) {
	model.addAttribute("NoBoard","게시글이 없어요");	
}
else {
	model.addAttribute("list",list);
}
//뷰정보 반환]
return "/admin/ReviewMNG";
}
	
	
@RequestMapping("/Review/DeleteMNG.do")
public String deleteMNG(@RequestParam Map map) {
	reviewService.delete(map);
	return "forward:/Review/ReviewMNG.do";
}
	
	
	
	
	
	

	
}

