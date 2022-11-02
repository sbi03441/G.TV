package com.gtv.dao;

import java.util.List;

import com.gtv.vo.MovietotalVO;
import com.gtv.vo.SeatNumberVO;

public interface ReserveDAO {

	MovietotalVO getMovie(MovietotalVO mtvo);

	List<SeatNumberVO> seatview(MovietotalVO mtvo);

	

}
