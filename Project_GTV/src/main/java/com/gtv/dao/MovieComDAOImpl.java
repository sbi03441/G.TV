package com.gtv.dao;

import java.util.List;

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

	@Override
	public int getRowCount() {
		return sqlSession.selectOne("c_count");
	}

	@Override
	public List<ComVO> getComList(ComVO c) {
		return sqlSession.selectList("c_list", c);
	}

	@Override
	public ComVO getCont(int com_num) {
		return sqlSession.selectOne("c_cont", com_num);
	}

}
