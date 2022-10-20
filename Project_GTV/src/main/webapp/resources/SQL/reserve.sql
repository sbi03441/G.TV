create table screening ( -- 상영정보
  sc_code number(20) -- pk 상영정보 코드
  ,mov_no number(38)  -- fk 영화코드
 ,sc_branch varchar2(38) --상영 지점
 ,sc_date varchar2(38) --상영 날짜
 ,sc_time varchar2(38) --상영 시간
  ,theater varchar2(38) --상영관
  ,all_seat number(20) --전체 좌석
  ,left_seat number(20) --남은 좌석
);


create table Reservation  ( --예매정보
    re_code number(20) -- pk예매정보 코드
    ,sc_code number(20) --fk 상영정보 코드
    --유저 코드               -- fk 유저 코드
    ,re_date date -- 예매 날짜
    ,re_ck number(20) -- 예매 취소 여부
    ,re_seat varchar2(38) -- 예매 좌석
    ,adult number(20) --어른
    ,teen number(20) --청소년
);



