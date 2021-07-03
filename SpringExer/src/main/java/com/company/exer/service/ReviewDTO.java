package com.company.exer.service;


import java.sql.Date;

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
	
	
	
	
}
