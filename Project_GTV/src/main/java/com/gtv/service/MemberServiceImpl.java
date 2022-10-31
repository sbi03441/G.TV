package com.gtv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gtv.dao.MemberDAO;
import com.gtv.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO MemberDao;

	@Transactional
	@Override
	public void insertMember(MemberVO m) {
		this.MemberDao.insertMember(m);
		this.MemberDao.insertAuth(m.getUser_id());
	}

	@Override
	public MemberVO loginCheck(String input_id) {
	    return this.MemberDao.loginCheck(input_id);
	}

	@Override
	public MemberVO find_id(MemberVO m) {
		return this.MemberDao.find_id(m);
	}
}
