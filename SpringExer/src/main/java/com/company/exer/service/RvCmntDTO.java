package com.company.exer.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class RvCmntDTO {

	private String rvcNo;
	private String rvNo;
	private String nickName;
	private String rvCmnt;
	private Date rvcDate;
}
