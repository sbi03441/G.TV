package com.gtv.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gtv.vo.MovieComVO;

@Repository
public class MovieComDAOImpl implements MovieComDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertCom(MovieComVO mc) {
		sqlSession.insert("com_in", mc);
	}
}
