package com.gtv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtv.dao.ReserveDAO;
import com.gtv.vo.MovietotalVO;
import com.gtv.vo.SeatNumberVO;

@Service
public class ReserveServiceImpl implements ReserveService {
	@Autowired
	private ReserveDAO reserveDao;

	@Override
	public MovietotalVO getMovie(MovietotalVO mtvo) {
		return reserveDao.getMovie(mtvo);
	}

	@Override
	public List<SeatNumberVO> seatview(MovietotalVO mtvo) {
		return reserveDao.seatview(mtvo);
	}


}
