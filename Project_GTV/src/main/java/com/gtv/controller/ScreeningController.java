package com.gtv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gtv.service.ScreeningService;

@Controller
public class ScreeningController {
	
	@Autowired
	private ScreeningService screeningService;
}
