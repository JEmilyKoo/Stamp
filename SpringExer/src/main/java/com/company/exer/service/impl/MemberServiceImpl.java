package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.exer.service.MemberDTO;
import com.company.exer.service.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
    @Inject
    private MemberDAO memberDAO;
     
    @Resource(name="memberDAO")
	private MemberDAO dao;
    
    public MemberDTO getMember(MemberDTO memberDTO) throws Exception {
    	
    	return memberDAO.get(memberDTO);
    }

	@Override
	public void memberJoin(MemberDTO memberDTO) throws Exception {
			dao.memberJoin(memberDTO);
	}
	@Override
	public int memberJoinCheck(MemberDTO memberDTO) throws Exception {
		return dao.memberJoinCheck(memberDTO);
	}
	@Override
	public int memberLoginCheck(MemberDTO memberDTO) throws Exception {
		return dao.memberLoginCheck(memberDTO);
	}
	@Override
	public int followCheck(MemberDTO memberDTO) {
		return dao.followCheck(memberDTO);
	}

	@Override
	public int followCnt(MemberDTO memberDTO) {
		return dao.followCnt(memberDTO);
	}

	@Override
	public int followerCnt(MemberDTO memberDTO) {
		return dao.followerCnt(memberDTO);
	}
	

	@Override
	public List<MemberDTO> adminMemberList() {
		return dao.adminMemberList();
	}

	@Override
	public int deleteAdminMember(Map map) {
		return dao.deleteAdminMember(map);
	}

	//안드로이드 로그인
	@Override
	public MemberDTO Login(Map map) {
		return dao.Login(map);
	}

	//안드로이드 회원가입
	@Override
	public int join(Map map) {
		// TODO Auto-generated method stub
		return dao.join(map);
	}
	
	@Override
	public int joinCheck(Map map) {
		// TODO Auto-generated method stub
		return dao.joinCheck(map);
	}
	
}
