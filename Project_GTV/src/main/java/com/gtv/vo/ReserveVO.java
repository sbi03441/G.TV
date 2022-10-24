package com.gtv.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReserveVO {
	
	private int re_code; //예매 정보 코드
	private int sc_code; //상영 정보 코드
	private int user_no; //유저 코드
	private Date re_date; //예매 날짜
	private int re_ck; //예매 취소 여부
	private String re_seat; //예매 좌석
	private int adult; //어른
	private int teen; //청소년
}
