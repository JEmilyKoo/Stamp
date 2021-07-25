package com.company.exer.service;


import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ReviewDTO {
	private String rvNo;
	private String nickName;
	private String rvTitle;
	private String rvCtt;
	private int rvLikeCnt;
	private Date rvDate;
	private String rvCategory1;
	private String rvCategory2;
	private String rvLat;
	private String rvLng;
	private String rvVisitCnt;
	private String rvFile;
	private int rvLikeCheck;
	
	//rvLike 추가
	private Date rvlDate;
	
	
	//rvCmnt 추가
	private String rvcNo;
	//+rvNo
	private String rvCmnt;
	//+nickName
	private Date rvcDate;
	
	//file객체들
	private String fullName;
	private String rvfdate;
	
	
	
}
