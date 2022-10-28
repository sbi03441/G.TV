package com.gtv.vo;

import lombok.Data;

@Data
public class MovietotalVO {
	
	private int movienum;		//영화 번호									
	private int theaternum;		//지점 번호								    
	private int regionnum;		//지역 번호								    
	private int remainseat;		//남은 좌석								   
	private String strdate;		//시작 날짜								    
	private String strhour;		//시작 시간								    
	private String strmin;		//시작 분								    
	private	String endhour;		//종영 시간							    
	private String endmin;		//종영 분								   
		
}
