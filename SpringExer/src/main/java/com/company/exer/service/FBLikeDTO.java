package com.company.exer.service;
import java.sql.Timestamp;

import lombok.Data;

@Data
public class FBLikeDTO {
//FBLIKE자유게시판댓글 좋아요
	private int fblNo;
	private String nickName;
	private int fbNo;
	private Timestamp fblDate;
}
