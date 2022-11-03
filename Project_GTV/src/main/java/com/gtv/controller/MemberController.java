package com.gtv.controller;

import java.io.PrintWriter;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gtv.service.MemberService;
import com.gtv.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	public JavaMailSender mailSender;
	
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
	
	// 회원가입
	@RequestMapping(value = "sign_up_ok", method = RequestMethod.POST)
	public String sign_up_ok(MemberVO m) throws Exception{
		
		String pwd = pwdEncoder.encode(m.getUser_pw());				
		m.setUser_pw(pwd);
		this.memberService.insertMember(m);
		return "redirect:/customlogin";
	}
	
	// 로그인확인
	/*@RequestMapping(value = "login_ok", method = RequestMethod.POST)
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
	} */
	
	/*@RequestMapping(value = "info_edit")
	public MemberVO info_edit() {
		MemberVO vo = this.memberService.view_info();
		
		return null;
	}*/
		
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
	@RequestMapping(value = "/SerId_in_ok", method = {RequestMethod.POST,RequestMethod.GET}, consumes = "application/json" )
	public String SerId_in_ok(HttpServletResponse response ,@RequestBody MemberVO m) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		
	
		MemberVO param = this.memberService.find_id(m);
		
	    String id = param.getUser_id();
		
		return id;
	}
	
	@ResponseBody
	@RequestMapping(value = "/SerPwd_in_ok",method = RequestMethod.POST, consumes = "application/json")
	public ModelAndView SerPwd_in_ok(HttpServletRequest request, HttpServletResponse response, @RequestBody MemberVO m) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		
		MemberVO pm = this.memberService.find_pwd(m);
		
		if(pm == null) {
			out.println("<script>");
			out.println("alert('�쉶�썝�젙蹂대�� 李얠쓣 �닔 �뾾�뒿�땲�떎!\\n �삱諛붾Ⅸ �븘�씠�뵒�� �씠由꾩쓣 �엯�젰�븯�꽭�슂!);");
			out.println("history.back();");
			out.println("</script>");
		}else {
			Random r = new Random();
			int pwd_random = r.nextInt(10000);
			String ran_pwd = Integer.toString(pwd_random);
			sendEmail(pm,ran_pwd);
			
			//�씠硫붿씪濡� �븫�샇�솕 �븞�맂 �븫�샇瑜� 癒쇱� �씠硫붿씪濡� 蹂대궡怨�, 洹� �썑 �븫�샇�솕瑜� �븯怨� vo媛믪뿉 �떞�븘 db���옣.
			m.setUser_pw(ran_pwd);
			
			this.memberService.updatePwd(m); //鍮꾨쾲�닔�젙
			
			ModelAndView view = new ModelAndView();
			view.setViewName("/");
			return view;
		}
		
		
		
		return null;
	}
	
	public void sendEmail(MemberVO pm, String ran_pw) throws Exception {
		
		String subject = "test 硫붿씪";
		String content = "怨좉컼�떂�쓽 �엫�떆鍮꾨�踰덊샇�뒗" + ran_pw +"�엯�땲�떎.";
		String from = "tmd020419@gmail.com";
		String to = pm.getEmail()+"@"+pm.getEmail_domain(); //�뿬湲곗꽌 �뿰�깭�삎�븳�뀒 �뙆�씪蹂대깉�쓬
		try {
			MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
            
            mailHelper.setFrom(from);
            mailHelper.setTo(to);
            mailHelper.setSubject(subject);
            mailHelper.setText(content,true);
            
            mailSender.send(mail);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
