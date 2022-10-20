package com.gtv.vo;

import lombok.Data;

@Data
public class ScreeningVO {
	
	private int sc_code; // pk 상영정보 코드
	private int mov_no; // fk 영화코드
	private String sc_branch; //상영 지점
	private String sc_date; //상영 날짜
	private String sc_time; //상영 시간
	private String theater; //상영관
	private int all_seat; //전체 좌석
	private int left_seat; //남은 좌석
}
