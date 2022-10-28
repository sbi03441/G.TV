package com.gtv.controller;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gtv.service.ScreeningService;
import com.gtv.vo.DateVO;
import com.gtv.vo.MovieVO;
import com.gtv.vo.MovietotalVO;
import com.gtv.vo.RegiondetailVO;

@Controller
public class ScreeningController {

	@Autowired
	private ScreeningService screeningService;

	@RequestMapping("/screening")
	public ModelAndView screening(Model li, MovieVO mv, RegiondetailVO rv, MovietotalVO mvo) throws Exception {
		ModelAndView m = new ModelAndView();
		List<MovieVO> mlist = screeningService.getList(mv);
		List<RegiondetailVO> rlist = screeningService.getBranch(rv);
		List<RegiondetailVO> region = screeningService.getRegion(rv);
		
		
		String date = LocalDate.now().toString();
		String[] nowdate = date.split("-");
		int year = Integer.parseInt(nowdate[0]);
		int month = Integer.parseInt(nowdate[1]);
		int day = Integer.parseInt(nowdate[2]);
		
		Calendar cal = Calendar.getInstance();
		cal.set(year, month, day);
		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		
		List<DateVO> dayWeekList = new ArrayList<DateVO>();
		String strMonth = "";
		
		int cnt = 0;
		for (int i = 0; i < 15; i++) {

			DateVO dvo = new DateVO();

			if ((day + i - 2) >= lastDay) {
				cnt++;
				int nextMonthDay = 0;

				if(month == 12) {
					year++;
					month = 0;
				}
				
				dvo.setYear(Integer.toString(year));
				
				if((month + 1)<10) {
					strMonth = "0" + Integer.toString(month + 1);
				}else {
					strMonth = Integer.toString(month+1);
				}
				
				dvo.setMonth(strMonth);
				dvo.setDay(Integer.toString(nextMonthDay + cnt));
				
				
				LocalDate date2 = LocalDate.of(year, month + 1, nextMonthDay + cnt);
				DayOfWeek dayOfWeek = date2.getDayOfWeek();
				dvo.setDayOfweek(dayOfWeek.getDisplayName(TextStyle.FULL, Locale.KOREAN).substring(0, 1));			
				
				dayWeekList.add(dvo);
				
				continue;
			}

			dvo.setYear(Integer.toString(year));
			
			if((month)<10) {
				strMonth = "0" + Integer.toString(month);
			}else {
				strMonth = Integer.toString(month);
			}
			
			dvo.setMonth(strMonth);
			dvo.setDay(Integer.toString(day + i));

			LocalDate date2 = LocalDate.of(year, month, day + i);
			DayOfWeek dayOfWeek = date2.getDayOfWeek();
			dvo.setDayOfweek(dayOfWeek.getDisplayName(TextStyle.FULL, Locale.KOREAN).substring(0, 1));			
			
			dayWeekList.add(dvo);
		}
		

		m.addObject("dayWeekList", dayWeekList);
		m.addObject("mlist", mlist);
		m.addObject("rlist", rlist);
		m.addObject("region", region);
		m.setViewName("reserve/screening");
		return m;
	}
	

	@ResponseBody
	@RequestMapping(value = "/movieData")
	public String regionDetailList(HttpServletRequest request) throws Exception {

		int movienum = Integer.parseInt(request.getParameter("movienum"));

		ModelAndView mav = new ModelAndView();
		MovieVO movieData = screeningService.getMovieData(movienum);

		mav.addObject("movieData", movieData);
		

		return "screening";
	}
	
	@ResponseBody
	@RequestMapping(value = "/regionDetailList")
	public String movieData(HttpServletRequest request) throws Exception {

		int theaternum = Integer.parseInt(request.getParameter("theaternum"));
		ModelAndView mav = new ModelAndView();
		RegiondetailVO regvo = screeningService.getRegiondetail(theaternum);

		mav.addObject("regvo", regvo);
		

		return "screening";
	}
	
	@ResponseBody
	@RequestMapping(value = "/movieTotalData",method= {RequestMethod.POST,RequestMethod.GET} ,consumes="application/json")
	public String dayData(@RequestParam(value="movienum",required=false) String movienum,@RequestParam(value="theaternum",required=false) String theaternum,HttpServletRequest request) throws Exception {

		movienum = request.getParameter("movienum");
		theaternum = request.getParameter("theaternum");
		
	
		System.out.println(movienum+theaternum);
		
		return "screening";
		
		
	}
	
	
	
	
	
	
	
}
