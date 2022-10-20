package com.gtv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gtv.service.MemberService;

@Controller
@RequestMapping("/gtv.com")
public class MemberComtroller {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/all")
	public void doall() {
	}
	
}
