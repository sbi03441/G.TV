create table movie(
    movienum number(20) primary key-- 영화번호(pk)
    ,moviename varchar2(38) --영화제목(nn)
);

alter table movie modify (moviename varchar2(38) UNIQUE);
drop table movie;
select * from movie;

insert into movie values('1','공조2');
insert into movie values('2','블랙 아담');
insert into movie values('3','스마일');

--added movie

create table movietotal( -- 영화 정보
    movienum number(20) --영화 번호 (fk)
    ,theaternum number(20) -- 지점 번호(fk)
    ,regionnum number(20) --지역번호(nn)
    ,remainseat number(20) --남은좌석(nn)
    ,strdate varchar2(38) --영화 시작 날짜(nn)
    ,strhour varchar2(38) --영화 시작 시간(nn)
    ,strmin varchar2(38) -- 영화 시작 분(nn)
    ,endhour varchar2(38) --영화 종료 시간(nn)
    ,endmin varchar2(38) --영화 종료 분(nn)
    ,constraint movietotal_movienum_fk FOREIGN KEY(movienum) REFERENCES movie(movienum)
    ,constraint movietotal_regiondetail_fk FOREIGN KEY(theaternum) REFERENCES regiondetail(theaternum)
);

insert into movietotal values(1,1,1,108,'2022.10.25','09','00','11','00'); --공조2,강남,서울
insert into movietotal values(1,1,1,108,'2022.10.25','12','00','14','00'); --공조2,강남,서울
insert into movietotal values(1,2,1,108,'2022.10.25','08','50','10','50');--공조2,잠실,서울
insert into movietotal values(1,2,1,108,'2022.10.25','11','40','13','40');--공조2,잠실,서울
insert into movietotal values(2,1,1,108,'2022.10.25','13','10','14','40');--블랙아담,강남,서울
insert into movietotal values(2,1,1,108,'2022.10.25','16','00','17','30');--블랙아담,강남,서울

drop table movietotal;
select * from movietotal;

--added movietotal

create table regiondetail(
    theaternum number(20) primary key--지점번호 (pk)
    ,branchname varchar2(38) -- 지점 이름(nn)
    ,regionnum number(20) --서울,경기,인천지역 번호(nn)
);

drop table regiondetail;
select * from regiondetail;
insert into regiondetail values('1','강남','1'); --서울과 강남을 1로 잡음
insert into regiondetail values('2','잠실','1');
insert into regiondetail values('11','판교','2');
insert into regiondetail values('12','구리','2');
--added regiondetail

create table theater(
    thnum number(20)--상영관 번호 thnum
    ,thname varchar2(38) -- 상영관 이름 thname
    ,theaternum number(20) --지점번호 강남,잠실 theaternum(fk)
    ,totalseat number(20) --전체 좌석(nn)
    ,constraint theater_theaternum_fk FOREIGN key(theaternum) REFERENCES 
    regiondetail(theaternum)
);

drop table theater;

create table com(
    movienum number(20) --영화번호(fk-pk)
    ,moviename varchar2(38) --영화제목(fk-uq)
    --,user_id varchar2(38) 
    ,cont_com varchar2(500) -- 내용 (nn)
    ,upload_com date --날짜
    ,constraint com_movienum_fk FOREIGN key(movienum)REFERENCES movie(movienum)
    ,CONSTRAINT com_moviename_fk FOREIGN key(moviename) REFERENCES movie(moviename)
);

insert into com(com_num,movienum,moviename) values(com_num_seq.nextval,1,'공조2');
insert into com (com_num,movienum,moviename)
select com_num_seq.nextval,movienum,moviename from movie;




--com_num primary key 추가
alter table com add com_num number(20) primary key;

select * from com;

--com_num sequence 만들기
create SEQUENCE com_num_seq
start with 1
increment by 1
nocache;

drop table com;