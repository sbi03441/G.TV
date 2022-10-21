package com.gtv.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReserveVO {
	
	private int re_code; 
	private int sc_code; 
	private int user_no; 
	private Date re_date; 
	private int re_ck; 
	private String re_seat; 
	private int adult; 
	private int teen; 	
}
