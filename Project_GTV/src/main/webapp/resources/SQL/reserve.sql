create table movie_com(
    mov_no number(38) primary key, --영화 번호
    mov_name varchar2(100) not null, --영화 제목
    user_id varchar2(50), --나중에 외래키로 가져와야함
    cont_com varchar2(500),
    upload_com date,
    edit_com date
);

insert into movie_com (mov_no,mov_name) values(1 , '블랙 아담');
insert into movie_com (mov_no,mov_name) values(2 , '인생은 아름다워');
insert into movie_com (mov_no,mov_name) values(3 , '공조2: 인터내셔날');
insert into movie_com (mov_no,mov_name) values(4 , '자백');


commit;

select * from movie_com;

create sequence mov_no_seq
start with 1
increment by 1
nocache;

---------------------------------------------------------

create table screening ( -- 상영정보
  sc_code number(20) primary key -- pk 상영정보 코드
  ,mov_no number(38)
  , FOREIGN KEY (mov_no) REFERENCES movie_com(mov_no) -- fk 영화코드
  ,mov_name varchar2(100) not null
 ,sc_branch varchar2(38) --상영 지점
 ,sc_date varchar2(38) --상영 날짜
 ,sc_time varchar2(38) --상영 시간
  ,theater varchar2(38) --상영관
  ,all_seat number(20) --전체 좌석
  ,left_seat number(20) --남은 좌석
);

insert into screening values(1,1,'블랙 아담','강남','20221111','09:00~11:30','3관',108,108);
insert into screening values(2,2,'인생은 아름다워','잠실','20221111','13:00~15:30','5관',108,108);

select mov_no,mov_name from screening where mov_no=2;

select mov_no,mov_name from screening ;

select * from screening;

create table reservation  ( --예매정보
    re_code number(20) primary key -- pk예매정보 코드
    ,sc_code number(20)
    ,FOREIGN KEY (sc_code) REFERENCES screening(sc_code)--fk 상영정보 코드
    ,user_no number(38) -- fk 유저 코드
    ,re_date date -- 예매 날짜
    ,re_ck number(20) -- 예매 취소 여부
    ,re_seat varchar2(38) -- 예매 좌석
    ,adult number(20) --어른
    ,teen number(20) --청소년
);

select * from reservation;

