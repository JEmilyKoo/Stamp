package com.company.exer.service;

import lombok.Data;

@Data
public class KakaoProfile {

public Integer id;
public String connected_at;
public Properties properties;
public KakaoAccount kakao_account;

	@Data
	public class KakaoAccount {
		public Boolean profile_nickname_needs_agreement;
		public Profile profile;

		@Data
		public class Profile {
			public String nickname;
		}
	}

	@Data
	public class Properties {
		public String nickname;
	}

}