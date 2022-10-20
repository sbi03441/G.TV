package com.gtv.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gtv.service.ScreeningService;
import com.gtv.vo.ScreeningVO;

@Controller
public class ScreeningController {
	
	@Autowired
	private ScreeningService screeningService;
	
	@GetMapping("/screening")
	public ModelAndView screening() {
		ModelAndView m = new ModelAndView();
		m.setViewName("reserve/screening");
		return m;
	};
	
	@PostMapping("/screening_ok")
	public ModelAndView screening_ok(HttpServletRequest request, HttpServletResponse response, ScreeningVO sv) {
		return null;
	}
	

	
	
	
	
	
	
	
}
