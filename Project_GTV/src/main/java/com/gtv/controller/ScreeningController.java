package com.gtv.controller;

import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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

	@GetMapping("/screening")
	public ModelAndView screening(Model li, MovieVO mv, RegiondetailVO rv, MovietotalVO mvo) throws Exception {
		ModelAndView m = new ModelAndView();
		List<MovieVO> mlist = screeningService.getList(mv);
		List<RegiondetailVO> rlist = screeningService.getBranch(rv);
		List<RegiondetailVO> region = screeningService.getRegion(rv);
		//List<MovietotalVO> mtotal = screeningService.getMovie(mvo);

		SimpleDateFormat moviedate = new SimpleDateFormat("yyyy-MM-dd");
		String[] nowTime = moviedate.format(new Date()).split("-");
		int year = Integer.parseInt(nowTime[0]);
		int month = Integer.parseInt(nowTime[1]);
		int preDay = Integer.parseInt(nowTime[2]) - 1;

		Calendar cal = Calendar.getInstance();
		cal.set(year, month, preDay);
		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

		List<DateVO> dayWeekList = new ArrayList<DateVO>();
		String strMonth = "";
		int cnt = 0;
		for (int i = 0; i < 15; i++) {

			DateVO dto = new DateVO();

			if ((preDay + i - 2) >= lastDay) {
				cnt++;
				int nextMonthDay = 0;

				if (month == 12) {
					year++;
					month = 0;
				}

				dto.setYear(Integer.toString(year));

				if ((month + 1) < 10) {
					strMonth = "0" + Integer.toString(month + 1);
				}

				dto.setMonth(strMonth);
				dto.setDay(Integer.toString(nextMonthDay + cnt));

				LocalDate date = LocalDate.of(year, month + 1, nextMonthDay + cnt);
				DayOfWeek dayOfWeek = date.getDayOfWeek();
				dto.setDayOfweek(dayOfWeek.getDisplayName(TextStyle.SHORT, Locale.KOREAN));

				dayWeekList.add(dto);

				continue;
			}
			dto.setYear(Integer.toString(year));

			if ((month) < 10) {
				strMonth = "0" + Integer.toString(month);
			}

			dto.setMonth(strMonth);
			dto.setDay(Integer.toString(preDay + i));

			LocalDate date = LocalDate.of(year, month, preDay + i);
			DayOfWeek dayOfWeek = date.getDayOfWeek();
			dto.setDayOfweek(dayOfWeek.getDisplayName(TextStyle.SHORT, Locale.KOREAN));

			dayWeekList.add(dto);
		}
		
		

		List<String> timeList = new ArrayList<String>();
		String strI = "";
		for(int i=0;i<10;i++) {
			strI = Integer.toString(i);
			if(i<10) {
				strI = "0" + strI;
			}
			timeList.add(strI);
		}
		
		System.out.println(dayWeekList);
		
		m.addObject("mlist", mlist);
		m.addObject("rlist", rlist);
		m.addObject("region", region);
		m.addObject("dayWeekList", dayWeekList);
		m.addObject("timeList", timeList);
		m.setViewName("reserve/screening");
		return m;
	}
}
