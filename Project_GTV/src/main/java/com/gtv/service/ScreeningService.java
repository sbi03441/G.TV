package com.gtv.service;

import java.util.List;

import com.gtv.vo.MovieVO;
import com.gtv.vo.MovietotalVO;
import com.gtv.vo.RegiondetailVO;

public interface ScreeningService {


	List<MovieVO> getList(MovieVO mv);

	List<RegiondetailVO> getBranch(RegiondetailVO rv);

	List<RegiondetailVO> getRegion(RegiondetailVO rv);

	List<MovietotalVO> getMovie(MovietotalVO mvo);

}
