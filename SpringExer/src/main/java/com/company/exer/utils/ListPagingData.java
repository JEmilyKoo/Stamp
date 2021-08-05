package com.company.exer.utils;

import java.sql.Date;
import java.util.List;

import com.company.exer.service.StampDTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ListPagingData<T> {
	private List<T> lists;
	private int getStampCnt;
	private int pageSize;
	private int blockPage;
	private int nowPage;
	private String pagingString;
	
	//추가
	private int TotalRecordCount;

		
}