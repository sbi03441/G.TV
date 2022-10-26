package com.gtv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtv.dao.MovieComDAO;
import com.gtv.vo.ComVO;

@Service
public class MovieComServiceImpl implements MovieComService {

	@Autowired
	private MovieComDAO moviecomDao;

	@Override
	public void insertCom(ComVO c) {
		moviecomDao.insertCom(c);
	}
	
}
