package com.gtv.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.gtv.dao.ScreeningDAO;

public class ScreeningServiceImpl implements ScreeningService {
	@Autowired
	private ScreeningDAO screeningDao;
}
