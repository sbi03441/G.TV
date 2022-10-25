package com.gtv.dao;

import java.util.List;

import com.gtv.vo.MovieVO;
import com.gtv.vo.RegiondetailVO;

public interface ScreeningDAO {

	List<MovieVO> getList(MovieVO mv);

	List<RegiondetailVO> getBranch(RegiondetailVO rv);


}
