package com.gtv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gtv.service.ScreeningService;

@Controller
public class ScreeningController {
	
	@Autowired
	private ScreeningService screeningService;
	
	@GetMapping("/screening")
	public ModelAndView screening() {
		ModelAndView m = new ModelAndView();
		m.setViewName("reserve/screening");
		return m;
	}
	
	
	
	
	
	
	
	
}
