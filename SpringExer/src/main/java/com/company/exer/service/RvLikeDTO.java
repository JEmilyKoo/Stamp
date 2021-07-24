package com.company.exer.service;
import java.sql.Timestamp;
import lombok.Data;

@Data
public class RvLikeDTO {
//용도 : 좋아요 누른 걸 시간 순서로 정렬해야 할 필요가 있음
	private String rvlNo;
	private String rvNo;
	private String nickName;
	private Timestamp rvlDate;
	//SQL에는 rvdate라 되어있던데 수정이 필요해보임
}
