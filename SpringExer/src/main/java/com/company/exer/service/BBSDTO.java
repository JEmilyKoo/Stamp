package com.company.exer.service;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BBSDTO {
	//private String no;
	
	//private String title;
	//private String content;
	//private String name;
	private int likecount;
	private int likecheck;
	//private String lat;
	//private String lng;
	
	//리뷰페이지 컬럼
	private String rvno;
	private String id;
	private String rvtitle;
	private String rvctt;
	private String rvlikecnt;
	private String rvlat;
	private String rvlng;
}
