package com.gtv.vo;

import lombok.Data;

@Data
public class ScreeningVO {
	
	private int sc_code; 
	private int mov_no;
	private String mov_name; 
	private String sc_branch; 
	private String sc_date; 
	private String sc_time; 
	private String theater; 
	private int all_seat; 
	private int left_seat; 
}
