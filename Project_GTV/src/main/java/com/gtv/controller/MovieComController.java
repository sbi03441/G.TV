package com.gtv.controller;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gtv.service.MovieComService;
import com.gtv.vo.MovieComVO;

@Controller
@RequestMapping("/*")
public class MovieComController {
	
	@Autowired
	private MovieComService moviecomService;
	
	//영화 관람객 코멘트 쓰기
	@GetMapping("/com_write")
	public ModelAndView com_write(HttpServletRequest request) {
		int page=1;
		if(request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("movie/com_write");//뷰리졸브 경로 설정. 즉 뷰페이지 경로는 
		// /WEB-INF/views/movie/com_write.jsp
		mv.addObject("page", page);
		return mv;
	}//com_write()
	
	//코멘트 저장
	@PostMapping("/com_write_ok")
	public String com_write_ok(MovieComVO mc,RedirectAttributes rttr) throws Exception{
		
		moviecomService.insertCom(mc);
		rttr.addFlashAttribute("msg", "SUCCESS");
		//rttr.addFlashAttribute로 전달한 값은 url뒤에 붙지 않는다. 일회성이라 리프레시할 경우 데이터가 소멸한다.
		//또한 2개이상 쓸 경우, 데이터는 소멸한다. 따라서 맵을 이용하여 한번에 값전달해야한다.
		return "redirect:/com_list";
		
	}
	

}
