package com.gtv.service;

import java.util.List;

import com.gtv.vo.ScreeningVO;

public interface ScreeningService {

	List<ScreeningVO> getList(ScreeningVO vo);

	List<ScreeningVO> getbranch(ScreeningVO vo);

}
