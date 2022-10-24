package com.gtv.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.jdbc.Sql;

import com.gtv.vo.ScreeningVO;

@Repository
public class ScreeningDAOImpl implements ScreeningDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ScreeningVO> getlist(ScreeningVO vo) {
		return sqlSession.selectList("mov_list", vo);
	}
	
	@Override
	public List<ScreeningVO> getbranch(ScreeningVO vo) {
		return sqlSession.selectList("branch_list", vo);
	}

}
