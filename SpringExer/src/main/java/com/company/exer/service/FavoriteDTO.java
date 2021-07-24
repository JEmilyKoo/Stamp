package com.company.exer.service;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class FavoriteDTO {

	private int favoriteNo;
	private String rvNo;
	//리뷰 넘버가 스트링으로 구현되어있어서 일단 여기도 맞춰봄
	private Timestamp favoriteRegiDate;
}
