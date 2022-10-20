package com.gtv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtv.dao.ReserveDAO;

@Service
public class ReserveServiceImpl implements ReserveService {
	@Autowired
	private ReserveDAO reserveDao;
}
