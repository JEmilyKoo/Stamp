package com.company.exer.service;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MemberDTO {

		private String id;
		private String pwd;
		private String name;
		private int followCheck;
		private String nickName;
		private String pr;
		private String mail;
		private String trvprpns;
		private String gender;
		private String birth;
		private String phone;
		private String prfImage;
		private String openprf;

}
