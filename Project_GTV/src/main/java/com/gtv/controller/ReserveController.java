package com.gtv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gtv.service.ReserveService;

@Controller
public class ReserveController {
	
	@Autowired
	private ReserveService reserveService;
}
