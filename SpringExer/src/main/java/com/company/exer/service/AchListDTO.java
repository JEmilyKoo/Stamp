package com.company.exer.service;
import java.sql.Timestamp;
import lombok.Data;

@Data
public class AchListDTO {

	private String achId;
	private String nickName;
	private Timestamp achDate;
}
