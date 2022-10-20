package com.gtv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gtv.service.MemberService;

@Controller
public class MemberComtroller {
	
	@Autowired
	private MemberService memberService;
	
	
}
