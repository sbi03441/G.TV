package com.gtv.dao;

import java.util.List;

import com.gtv.vo.ScreeningVO;

public interface ScreeningDAO {

	List<ScreeningVO> getList(ScreeningVO vo);

	List<ScreeningVO> getbranch(ScreeningVO vo);

}
