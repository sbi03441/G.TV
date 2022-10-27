package com.gtv.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
public class MemberComtroller {
	
	@Autowired
	private MemberService memberService;
	
	//濡쒓렇�씤
	@RequestMapping("/customlogin")
	public ModelAndView login() {
		
		ModelAndView m = new ModelAndView();
		m.setViewName("/user/customlogin");
		return m;
	}
	
	//�쉶�썝媛��엯 �럹�씠吏�
	@RequestMapping("sign_up")
	public String sign_up(Model m) {

		return "/user/sign_up";
    }
	
	@RequestMapping("cus_info")
	public String cus_info() {
		
		return "/user/cus_info";
	}
		
		
	
	
	//�쉶�썝媛��엯 �쑀�� ���옣
	@RequestMapping("sign_up_ok")
	public String sign_up_ok(MemberVO m) {
		
		m.setUser_pw(PwdChange.getPassWordToXEMD5String(m.getUser_pw()));
		this.memberService.insertMember(m);
		return "redirect:/user/sign_up";
	}
	
	//濡쒓렇�씤 �씤利�
	@RequestMapping("login_ok")
	public String login_ok(String user_id, String user_pw, HttpSession session, HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		MemberVO dm = this.memberService.loginCheck(user_id); //媛��엯�쉶�썝 1�씠怨�, �븘�씠�뵒媛� 留욎쑝硫� 濡쒓렇�씤 �씤利�. �깉�눜 �쉶�썝 2�뒗 濡쒓렇�씤 �씤利� 紐삵븿
		
		if(dm == null) {
			out.println("<script>");
			out.println("alert('媛��엯 �븞�맂 �쉶�썝�엯�땲�떎!');");
			out.println("history.go(-1);");
			out.println("</script>");
		}else {
			if(!dm.getUser_pw().contentEquals(PwdChange.getPassWordToXEMD5String(user_pw))) {
				out.println("<script>");
				out.println("alert('鍮꾨쾲�씠 �떎由낅땲�떎!');");
				out.println("history.back();");
				out.println("</script>");
			}else {
				session.setAttribute("id", user_id); //�꽭�뀡 �븘�씠�뵒�뿉 �븘�씠�뵒 ���옣
				return "redirect:/user/cus_info"; //硫붿씤�쑝濡� �씠�룞
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
			out.println("alert('�쉶�썝�젙蹂대�� 李얠쓣 �닔 �뾾�뒿�땲�떎!\\n �삱諛붾Ⅸ �븘�씠�뵒�� �씠由꾩쓣 �엯�젰�븯�꽭�슂!);");
			out.println("history.back();");
			out.println("</script>");
		}else {
			return null;
		}
		
		
		return null;
	}
	
}
