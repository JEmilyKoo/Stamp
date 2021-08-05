package com.company.exer.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.company.exer.service.MemberService;
import com.company.exer.service.ProfileService;
import com.company.exer.service.ReviewDTO;
import com.company.exer.service.ReviewService;
import com.company.exer.service.StampDTO;
import com.company.exer.service.StampService;
import com.company.exer.service.MemberDTO;


@RestController
public class RestAPIController {

	@Autowired
	MemberService service;

	@Resource(name = "reviewService") 
	private ReviewService reviewService;

	@Resource(name = "stampService")
	private StampService stampService;
	
	@Inject // 자동 주입
	ProfileService profileService;

	
	//[안드로이드 앱에 데이타 제공용 추가]
		
		//로그인
		@CrossOrigin
		@GetMapping("/member/login")
		public MemberDTO login(@RequestParam Map map) {
			
			MemberDTO dto = service.Login(map);
			System.out.println("회원 여부:"+dto);
			if(dto ==null) {
				dto = new MemberDTO(null, null, null, 0,null ,null, null, null, null, null, null, null,null);
			}
			return dto;
		}
		
		// 회원가입 
		@CrossOrigin
		@PostMapping("/member/join")
		public int join(@RequestParam Map map) {
			map.put("id", map.get("id").toString().replaceAll("\"",""));
			map.put("pwd", map.get("id").toString().replaceAll("\"",""));
			map.put("name", map.get("id").toString().replaceAll("\"",""));
			if(service.joinCheck(map)==1) {
				return 0;
			}
			else{
				service.join(map);
				return 1;
			}
		}
		
		
		@CrossOrigin
		@GetMapping("/stamp/list")
		public List<StampDTO> stamplist() {
			List<StampDTO> stampList = stampService.stampList();
			return stampList;
		}


		
		//스탬프 획득
		@CrossOrigin
		@PostMapping("/stamp/check")
		public @ResponseBody int stampCheck(@RequestParam Map map, HttpSession session) throws Exception {
			String nickName = (String) session.getAttribute("nickName");
			if (nickName != null) { 						// 로그인 되어 있을 경우
				map.put("nickName", nickName);
				
					stampService.stampCheck(map); 						// 실시간 위치를 가지고 3km이내 스탬프가 있으면 stampCheck 닉네임, 글 번호 5초마다 insert해줌
					String rvNo = stampService.stampCheckRvNo(map);		//글 번호 얻어오기 경험치를 얻기 위함
					
					map.put("rvNo",rvNo);								//글 번호 Map에 넣기
					
					int Count = stampService.stampCheckCount(map); 		//StampCheck테이블에 값 넣기
					int CheckGet = stampService.stampCheckGet(map);		//MemberStamp테이블에 값이 있는지 확인
					
					if (CheckGet >= 1) {
						stampService.stampCheckDelete(map); 			// stampCheck insert한 내용 삭제
						return 3;
					}
					
					else if (Count >= 5) {								// 30초 동안 스탬프 주변에 있을 경우 스탬프를 얻을 수 있다.
						stampService.stampGet(map); 					// 멤버 스탬프에 등록
						profileService.stampAchEP(map); 				// 스탬프 경험치
						stampService.stampCheckDelete(map); 			// stampCheck insert한 내용 삭제
						return 1;
					}
					
				return 2;
				
			} else {/// 로그인 안되어있다면 아무 일 없다.
				return 0;
			}
			
		}
		@CrossOrigin
		@GetMapping("/review/tripBoard")
		public List<ReviewDTO> TripBoard() {
			System.out.println("들어는 갔다");
			List<ReviewDTO> list =reviewService.selectList();
			
			/*
			if((map.get("rvCategory1")!=null) || (map.get("rvCategory2")!=null)) {
				list =reviewService.selectCategoryList(map);
					model.addAttribute("rvCategory1",map.get("rvCategory1"));
					model.addAttribute("rvCategory2",map.get("rvCategory2"));
					
					
			}
			*/
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
			
			
			return list;
		}///////////////////TripBoard()
		/*
		
		@CrossOrigin
		@GetMapping("/review/post")
		public ReviewDTO, RVLike, List<RvCmntDTO> post(String rvNo) {
			
			ReviewDTO post = reviewService ..stampList();
			return stampList;
			
			
			
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
		}
*/
}


