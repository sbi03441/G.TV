package com.gtv.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class ScreeningDAOImpl implements ScreeningDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
}
