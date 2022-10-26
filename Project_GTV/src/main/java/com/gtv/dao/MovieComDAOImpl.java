package com.gtv.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gtv.vo.ComVO;

@Repository
public class MovieComDAOImpl implements MovieComDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertCom(ComVO c) {
		sqlSession.insert("com_in", c);
	}

}
