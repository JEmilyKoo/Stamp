package com.company.exer.service;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class DmDTO {

	private String dmNo;
	private String id;
	private String dmCtt;
	private String dmToId;
	private Timestamp dmDate;
	private String dmLike;
	private String dmChecked;
}
