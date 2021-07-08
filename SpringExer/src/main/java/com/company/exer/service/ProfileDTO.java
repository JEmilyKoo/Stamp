package com.company.exer.service;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProfileDTO {
	
	private String nickName;
	private String id;
	private String mail;
	private String trvprpns;
	private String pr;
	private String prfImage;
	private String gender;
	private String birth;
	private String phone;
	private int lev;
	private int exp;
	private int openprf;
}
