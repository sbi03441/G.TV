package com.gtv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtv.dao.ReserveDAO;
import com.gtv.vo.MovietotalVO;

@Service
public class ReserveServiceImpl implements ReserveService {
	@Autowired
	private ReserveDAO reserveDao;

	@Override
	public MovietotalVO getMovie(MovietotalVO mtvo) {
		return reserveDao.getMovie(mtvo);
	}
}
