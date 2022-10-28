package com.gtv.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gtv.service.MovieComService;
import com.gtv.vo.ComVO;
import com.gtv.vo.MovieVO;


@Controller
@RequestMapping("/*")
public class MovieComController {
	
	@Autowired
	private MovieComService moviecomService;
	
//	//영화등록
//		@GetMapping("/register")
//		public void register() {
//			
//		}
//	
	//영화리스트
	@GetMapping("/movie")
	public ModelAndView movie(HttpServletRequest request) {
		
		ModelAndView m = new ModelAndView();
		m.setViewName("movie/movie");
		return m;
	}
	
	//영화 관람객 코멘트 쓰기
	@GetMapping("/com_write")
	public ModelAndView com_write(HttpServletRequest request, MovieVO movieVo) {
		int page=1;
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		ModelAndView mv = new ModelAndView();
		movieVo.setMovienum(1);
		movieVo.setMoviename("공조2");
		mv.setViewName("movie/com_write");//뷰리졸브 경로 설정. 즉 뷰페이지 경로는 
		// /WEB-INF/views/movie/com_write.jsp
		mv.addObject("page", page);
		return mv;
	}//com_write()
	
	//코멘트 저장
	@PostMapping("/com_write_ok")
	public String com_write_ok(ComVO c,RedirectAttributes rttr, HttpServletRequest request) throws Exception{
		
		String movienum=request.getParameter("movienum");
		String moviename=request.getParameter("moviename");
		System.out.println("영화 번호: "+movienum + "영화 이름: "+moviename);
		moviecomService.insertCom(c);
		rttr.addFlashAttribute("msg", "SUCCESS");
		//rttr.addFlashAttribute로 전달한 값은 url뒤에 붙지 않는다. 일회성이라 리프레시할 경우 데이터가 소멸한다.
		//또한 2개이상 쓸 경우, 데이터는 소멸한다. 따라서 맵을 이용하여 한번에 값전달해야한다.
		return "redirect:/com_list";
		
	}
	

}
