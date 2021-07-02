package com.company.exer.service;

import lombok.Data;

@Data
public class KakaoProfile {

public Integer id;
public String connected_at;
public Properties properties;

	@Data
	public class Properties {
		public String nickname;
		public String profile_image;
		public String thumbnail_image;
		}
	
}