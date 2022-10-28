package com.gtv.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	//코멘트 리스트
	@GetMapping("com_list")
	public String com_list(Model m,HttpServletRequest request,ComVO c) {
		int page=1;
		int limit=5; //한페이지에 보여지는 목록개수
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		c.setStartrow((page-1)*5+1);
		c.setEndrow(c.getStartrow()+limit-1);
		
		int totalCount=this.moviecomService.getRowCount();//총 코멘트 개수
		List<ComVO> clist=this.moviecomService.getComList(c); //코멘트 목록
		
		/*페이징 관련 연산*/
		int maxpage=(int)((double)totalCount/limit+0.95);//총 페이지 수
		int startpage=(((int)((double)page/10+0.9))-1)*10+1;//시작페이지
		int endpage=maxpage;//현재페이지에 보여질 마지막 페이지
		
		if(endpage > startpage+10-1) endpage=startpage+10-1;
		
		m.addAttribute("list", clist);//list 키 이름에 목록 저장
		m.addAttribute("totalCount", totalCount);
		m.addAttribute("startpage", startpage);
		m.addAttribute("endpage", endpage);
		m.addAttribute("maxpage", maxpage);
		m.addAttribute("page", page);
		
		return "movie/com_list";
			
	}
	

}
