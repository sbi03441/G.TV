package com.gtv.controller;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gtv.service.MemberService;
import com.gtv.vo.MemberVO;

import pwdconv.PwdChange;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	//
	@RequestMapping("/customlogin")
	public ModelAndView login() {
		
		ModelAndView m = new ModelAndView();
		m.setViewName("/user/customlogin");
		return m;
	}
	
	//
	@RequestMapping("sign_up")
	public String sign_up(Model m) {

		return "/user/sign_up";
    }
	
	@RequestMapping("cus_info")
	public String cus_info() {
		
		return "/user/cus_info";
	}
		
		
	
	
	//
	@RequestMapping(value = "sign_up_ok", method = RequestMethod.POST)
	public String sign_up_ok(MemberVO m) throws Exception{
		
		String pwd = pwdEncoder.encode(m.getUser_pw());				
		m.setUser_pw(pwd);
		this.memberService.insertMember(m);
		return "redirect:/customlogin";
	}
	
	//
	@RequestMapping(value = "login_ok", method = RequestMethod.POST)
	public String login_ok(String user_id, String user_pw, HttpSession session, HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		MemberVO dm = this.memberService.loginCheck(user_id); //DB에서 아이디값을 가져옴
		
		if(dm == null) {
			out.println("<script>");
			out.println("alert('아이디가 틀립니다');");
			out.println("history.back();");
			out.println("</script>");
		}else {
			if(!pwdEncoder.matches(dm.getUser_pw(), user_pw)) {
				out.println("<script>");
				out.println("alert('비밀번호가 틀렸습니다.');");
				out.println("history.back();");
				out.println("</script>");
			}else {
				session.setAttribute("id", user_id); //
				return "redirect:/user/cus_info"; //
			}
		}
		return null;
	}
		
//	@RequestMapping(value = "my_info")
//	@ResponseBody
//	public String info_edit() {
//		
//		this.memberService.sel_info();
//		return null;
//		
//	}
		
	@RequestMapping("SerPwd_in")
	public ModelAndView SerPwd_in() {
		
		ModelAndView m = new ModelAndView();
		m.setViewName("/user/SerPwd_in");
		return m;
	}
	
	@RequestMapping("SerId_in")
	public ModelAndView SerId_in() {
		ModelAndView m = new ModelAndView();
		m.setViewName("/user/SerId_in");
		return m;
	}
	
	@ResponseBody
	@RequestMapping(value = "/SerId_in_ok", method = {RequestMethod.POST,RequestMethod.GET})
	public String SerId_in_ok(HttpServletResponse response,MemberVO m) throws Exception{
		System.out.println(m.getUser_name());
		System.out.println(m.getUser_birth1());
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		MemberVO pm = this.memberService.find_id(m);
		
		if(pm == null) {
			out.println("<script>");
			out.println("alert('占쎌돳占쎌뜚占쎌젟癰귣�占쏙옙 筌≪뼚�뱽 占쎈땾 占쎈씨占쎈뮸占쎈빍占쎈뼄!\\n 占쎌궞獄쏅뗀�뀲 占쎈툡占쎌뵠占쎈탵占쏙옙 占쎌뵠�뵳袁⑹뱽 占쎌뿯占쎌젾占쎈릭占쎄쉭占쎌뒄!);");
			out.println("history.back();");
			out.println("</script>");
		}else {
			return null;
		}
		
		
		return null;
	}
	
}
