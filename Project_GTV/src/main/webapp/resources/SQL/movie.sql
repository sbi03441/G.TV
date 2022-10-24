create table movie(
    movienum number(20) -- 영화번호 (pk)
    ,moviename varchar2(38) --영화제목 (nn)
);

create table movietotal( -- 영화 정보
    movienum number(20) --영화 번호 (fk)
    ,theaternum number(20) -- 지점 번호 (fk)
    ,regionnum number(20) --지역번호 (fk)
    ,remainseat number(20) --남은좌석(nn)
    ,strdate varchar2(38) --영화 시작 날짜(nn)
    ,strhour varchar2(38) --영화 시작 시간(nn)
    ,strmin varchar2(38) -- 영화 시작 분(nn)
    ,endhour varchar2(38) --영화 종료 시간(nn)
    ,endmin varchar2(38) --영화 종료 분(nn)
);

create table regiondetail(
    theaternum number(20) --지점번호 (pk)
    ,branchname varchar2(38) -- 지점 이름 (nn)
    ,regionnum number(20) --서울,경기,인천지역 번호(unique)
);

create table theater(
    thnum number(20) --상영관 번호 
    ,thname varchar2(38) -- 상영관 이름
    ,theaternum number(20) --지점번호 강남,잠실(fk)
    ,totalseat number(20) --전체 좌석 (nn)
);


create table com(
    movienum number(20) --영화번호(join)
    ,moviename varchar2(38) --영화제목(join)
    --,user_id varchar2(38) 
    ,cont_com varchar2(500) -- 내용 (nn)
    ,upload_com date --날짜 (nn)
);