package com.company.exer.service;
import java.sql.Timestamp;

import lombok.Data;

@Data
public class BadgeListDTO {

	private String bgId;
	private String nickName;
	private String bgTitle;
	private String bgContent;
	private Timestamp bgDate;
}
