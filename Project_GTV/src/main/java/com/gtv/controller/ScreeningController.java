package com.gtv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gtv.service.ScreeningService;
import com.gtv.vo.ScreeningVO;

@Controller
public class ScreeningController {
	
	@Autowired
	private ScreeningService screeningService;
	
	@GetMapping("/screening")
	public ModelAndView screening(Model li,ScreeningVO vo) {
		ModelAndView m = new ModelAndView();
		List<ScreeningVO> mlist = screeningService.getList(vo);
		
		List<ScreeningVO> mbranch = screeningService.getbranch(vo);
		
		li.addAttribute("mlist", mlist);
		li.addAttribute("mbranch", mbranch);
		m.setViewName("reserve/screening");
		return m;
	};
	


	
	
	
	
	
	
	
}
