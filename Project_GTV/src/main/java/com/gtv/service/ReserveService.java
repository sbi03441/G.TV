package com.gtv.service;

import java.util.List;

import com.gtv.vo.MovietotalVO;
import com.gtv.vo.SeatNumberVO;

public interface ReserveService {

	MovietotalVO getMovie(MovietotalVO mtvo);

	List<SeatNumberVO> seatview(MovietotalVO mtvo);

	

}
