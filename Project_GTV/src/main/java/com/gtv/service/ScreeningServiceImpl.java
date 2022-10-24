package com.gtv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtv.dao.ScreeningDAO;
import com.gtv.vo.ScreeningVO;

@Service
public class ScreeningServiceImpl implements ScreeningService {
	@Autowired
	private ScreeningDAO screeningDao;
	
	@Override
	public List<ScreeningVO> getlist(ScreeningVO vo) {
		return screeningDao.getlist(vo);
	}
	

	@Override
	public List<ScreeningVO> getbranch(ScreeningVO vo) {
		
		return screeningDao.getbranch(vo);
	}

	
}
