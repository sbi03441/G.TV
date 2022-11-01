package com.gtv.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gtv.service.ReserveService;
import com.gtv.vo.MovietotalVO;

@Controller
public class ReserveController {
	
	@Autowired
	private ReserveService reserveService;
	
	@RequestMapping("/reserve")
	public ModelAndView reserve(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		int movieTotalSel = Integer.parseInt(request.getParameter("movieTotalSel"));
		
		MovietotalVO mtvo = new MovietotalVO();
		mtvo.setMovietotalnum(movieTotalSel);
		
		MovietotalVO movietotal = reserveService.getMovie(mtvo);
		
		
		mav.addObject("movietotal", movietotal);
		mav.setViewName("reserve/reserve");
		return mav;
	}
	
}
