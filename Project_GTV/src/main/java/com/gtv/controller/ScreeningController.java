package com.gtv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gtv.service.ScreeningService;
import com.gtv.vo.MovieVO;
import com.gtv.vo.RegiondetailVO;

@Controller
public class ScreeningController {
	
	@Autowired
	private ScreeningService screeningService;
	
	@GetMapping("/screening")
	public ModelAndView screening(Model li,MovieVO mv,RegiondetailVO rv) {
		ModelAndView m = new ModelAndView();
		List<MovieVO> mlist = screeningService.getList(mv);
		List<RegiondetailVO> rlist = screeningService.getBranch(rv);
		
		li.addAttribute("mlist", mlist);
		
		m.setViewName("reserve/screening");
		return m;
	};
	
}
