package com.gtv.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.gtv.dao.ReserveDAO;

public class ReserveServiceImpl implements ReserveService {
	@Autowired
	private ReserveDAO reserveDao;
}
