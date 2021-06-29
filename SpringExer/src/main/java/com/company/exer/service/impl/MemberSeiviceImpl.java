package com.company.exer.service.impl;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.company.exer.service.MemberDTO;
import com.company.exer.service.MemberService;

@Service("memberService")
public class MemberSeiviceImpl implements MemberService {
	
	@Resource(name="memberDAO")
	private MemberDAO dao;
	
	@Override
	public int join(Map map) {
		 return dao.join(map);
	}

	@Override
	public boolean login(Map map) {
		return dao.login(map);
	}

	@Override
	public boolean joinCheck(Map map) {
		return dao.joinCheck(map);
	}

	@Override
	public MemberDTO mypage(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int followCheck(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int followCnt(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int followerCnt(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

}
