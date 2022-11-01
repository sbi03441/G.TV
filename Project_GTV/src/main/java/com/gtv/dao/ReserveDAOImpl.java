package com.gtv.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gtv.vo.MovietotalVO;

@Repository
public class ReserveDAOImpl implements ReserveDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MovietotalVO getMovie(MovietotalVO mtvo) {
		return sqlSession.selectOne("getmovie", mtvo);
	}
	
}
