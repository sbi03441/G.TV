create table movie(
    movienum number(20) primary key -- 영화번호 (pk)
    ,moviename varchar2(38) UNIQUE --영화제목 (uq)
);

insert into movie values(1,'공조2');
insert into movie values(2,'블랙 아담');
insert into movie values(3,'스마일');

select * from movie where movienum=1;


create table movietotal( -- 영화 정보
    movienum number(20) --영화 번호 (fk)
    ,theaternum number(20) -- 지점 번호 (fk)
    ,regionnum number(20) --지역번호 (uq)
    ,remainseat number(20) --남은좌석(nn)
    ,strdate varchar2(38) --영화 시작 날짜(nn)
    ,strhour varchar2(38) --영화 시작 시간(nn)
    ,strmin varchar2(38) -- 영화 시작 분(nn)
    ,endhour varchar2(38) --영화 종료 시간(nn)
    ,endmin varchar2(38) --영화 종료 분(nn)
    ,CONSTRAINT movietotal_movienum_fk FOREIGN key(movienum) REFERENCES movie(movienum)
    ,CONSTRAINT movietotal_regiondetail_fk FOREIGN key(theaternum) REFERENCES regiondetail(theaternum)
);


        
alter table movietotal add movietotalnum number(20) primary key; -- 영화 정보 번호
alter table movietotal add moviename varchar2(38); --영화 이름
alter table movietotal add branchname varchar2(38); --지점 이름
alter table movietotal add thname varchar2(38); --상영관 이름
alter table movietotal add totalseat number(20); --전체 좌석

    select * from movietotal;

insert into movietotal values(1,1,1,108,'2022.11.7','09','00','11','00',1,'공조2','강남','1관',108); --공조2,강남,서울
insert into movietotal values(1,1,1,108,'2022.11.7','12','00','14','00',2,'공조2','강남','2관',108); --공조2,강남,서울
insert into movietotal values(1,2,1,108,'2022.11.7','08','50','10','50',3,'공조2','잠실','1관',108);--공조2,잠실,서울
insert into movietotal values(1,2,1,108,'2022.11.7','11','40','13','40',4,'공조2','잠실','2관',108);--공조2,잠실,서울
insert into movietotal values(2,1,1,108,'2022.11.7','13','10','14','40',5,'블랙아담','강남','1관',108);--블랙아담,강남,서울
insert into movietotal values(2,1,1,108,'2022.11.7','16','00','17','30',6,'블랙아담','강남','2관',108);--블랙아담,강남,서울

delete movietotal;

select * from movietotal where movienum=1 and theaternum=1 and strdate='2022.11.7';
commit;

create table regiondetail(
    theaternum number(20) primary key--지점번호 (pk)
    ,branchname varchar2(38) -- 지점 이름 (nn)
    ,regionnum number(20)--서울,경기,인천지역 번호(nn)
    ,regionname varchar2(38) --지역이름(nn)
);


alter table regiondetail add regionname varchar2(38);
update regiondetail set regionname='서울' where regionnum=1;
update regiondetail set regionname='경기' where regionnum=2;

insert into regiondetail values('1','강남','1','서울'); 
insert into regiondetail values('2','잠실','1','서울');
insert into regiondetail values('11','판교','2','경기');
insert into regiondetail values('12','구리','2','경기');



create table theater(
    thnum number(20) --상영관 번호 
    ,thname varchar2(38) -- 상영관 이름
    ,theaternum number(20) --지점번호 강남,잠실(fk)
    , totalseat number(20) --전체 좌석 (nn)
    , constraint theater_theaternum_fk foreign key (theaternum) references
    regiondetail (theaternum)
);

insert into theater values(1,'1관',1,108);
insert into theater values(2,'2관',1,108);
insert into theater values(3,'1관',2,108);
insert into theater values(4,'2관',2,108);
insert into theater values(5,'1관',11,108);
insert into theater values(6,'2관',11,108);
insert into theater values(7,'1관',12,108);
insert into theater values(8,'2관',12,108);

create table com(
    com_num number(20) primary key
    ,movienum number(20) --영화번호(fk  pk)
    ,moviename varchar2(38) --영화제목(fk  uq)
    --,user_id varchar2(38) 
    ,cont_com varchar2(500) -- 내용 (nn)
    ,upload_com date --날짜 (nn)
     ,CONSTRAINT com_movienum_fk FOREIGN key(movienum) REFERENCES movie(movienum)
     ,CONSTRAINT com_moviename_fk FOREIGN key(moviename) REFERENCES movie(moviename)
);



insert into com(com_num,movienum,moviename)
select com_num_seq.nextval,movienum,moviename from movie;


insert into com(com_num,movienum,moviename) values(com_num_seq.nextval,1,'공조2');

select distinct mov_no,mov_name from screening;


--시퀀스 com_num 
create SEQUENCE com_num_seq
start with 1
INCREMENT by 1
NOCACHE;


create table tbl_boardEx(
    board_no number(38) primary key,
    board_title varchar2(20) not null,
    board_writer varchar2(20) not null,
    board_hit number(38) default 0,
    board_date date
);

insert into tbl_boardEx values(tbl_seq.nextval,'글제목1','글쓴이1',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목2','글쓴이2',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목3','글쓴이3',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목4','글쓴이4',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목5','글쓴이5',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목6','글쓴이6',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목7','글쓴이7',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목8','글쓴이8',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목9','글쓴이9',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목10','글쓴이10',0,sysdate);
insert into tbl_boardEx values(tbl_seq.nextval,'글제목11','글쓴이11',0,sysdate);





create sequence tbl_seq
start with 1
increment by 1
nocache;

select * from tbl_boardex;



commit;








