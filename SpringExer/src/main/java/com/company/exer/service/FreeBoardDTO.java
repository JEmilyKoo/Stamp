package com.company.exer.service;
import java.sql.Timestamp;
import lombok.Data;

@Data
public class FreeBoardDTO {
	private int fbNo;
	private String nickName;
	private String fbTitle;
	private String fbCtt;
	private Timestamp fbDate;
	private int fbVisitCnt;
	private String fbCategory;
	private int fbLikeCnt;
	
}
