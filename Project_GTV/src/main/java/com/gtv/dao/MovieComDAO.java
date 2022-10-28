package com.gtv.dao;

import java.util.List;

import com.gtv.vo.ComVO;

public interface MovieComDAO {

	void insertCom(ComVO c);

	int getRowCount();

	List<ComVO> getComList(ComVO c);

}
