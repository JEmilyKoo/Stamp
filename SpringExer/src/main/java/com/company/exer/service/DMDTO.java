package com.company.exer.service;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class DMDTO {

	private String dMNo;
	private String nickname;
	private String dMToNickname;
	private String dMCtt;
	private Timestamp dMDate;
	private String dMChecked;
}
