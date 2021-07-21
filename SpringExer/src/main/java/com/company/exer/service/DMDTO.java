package com.company.exer.service;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class DMDTO {

	private String DMNo;
	private String nickName;
	private String DMToNickName;
	private String DMCtt;
	private Timestamp DMDate;
	private String DMChecked;
	private int cntNewDM;
}
