package com.company.exer.service;
import java.sql.Timestamp;
import lombok.Data;
@Data
public class FBCmntDTO {

	private int fbcNo;
	private int fbNo;
	private String fbCmnt;
	private Timestamp fbcDate;
	private String nickName;
	//FBCMNT(자유게시판댓글 Free board comments))

}
