package com.gtv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtv.dao.ScreeningDAO;

@Service
public class ScreeningServiceImpl implements ScreeningService {
	@Autowired
	private ScreeningDAO screeningDao;
}
