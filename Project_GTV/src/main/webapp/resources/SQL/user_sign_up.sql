create table movie_user(
    user_no number(38) primary key -- 유저번호
    ,user_id varchar2(50) not null -- 아이디
    ,user_pw varchar2(200) not null -- 비밀번호(암호화)
    ,user_name varchar2(50) not null -- 이름
    ,user_gender int not null -- 성별 (1.남 2.여)
    ,user_phone1 varchar2(10) not null -- 연락처1
    ,user_phone2 varchar2(10) not null -- 연락처2
    ,user_phone3 varchar2(10) not null -- 연락처3
    ,user_birth1 varchar2(5) not null -- 년
    ,user_birth2 varchar2(5) not null -- 월
    ,user_birth3 varchar2(5) not null -- 일
    ,user_date date -- 가입날짜
    ,user_state int default 1 -- 가입상태 1이면 가입, 0이면 탈퇴
    ,del_cont varchar2(200) -- 탈퇴 사유
    ,del_date date -- 탈퇴 날짜
);

-- user_no_seq 생성
create sequence user_no_seq
start with 1 -- 1부터 시작
increment by 1 -- 1씩 증가
nocache; -- 임시메모리 사용안함

insert into movie_user ( user_no, user_id, user_pw, user_name, user_gender, user_phone1, user_phone2, user_phone3, user_birth1, user_birth2, user_birth3, user_date)
    values(user_no_seq.nextval, 'admin', 'admin00', '홍길동', 1, '010', '1234', '5678', '1996', '07', '19', sysdate);
    
select * from movie_user;

insert into gtv_authorities values(1, 'ADMIN');

select * from gtv_authorities;

delete from gtv_authorities where user_no = 1;

-- 회원 아이디와 권한 부여 테이블
create table gtv_authorities(
    user_no number(38) primary key -- 유저번호
    ,authority varchar2(50) not null -- 아이디 권한
    ,constraint authorities_user_id_fk foreign key(user_no) references movie_user(user_no) -- 외래키(주종관계에서 종속테이블)
);

commit;

select mem.user_no, user_id, user_pw, user_name, user_state, user_date, authority
			from movie_user mem LEFT OUTER JOIN gtv_authorities auth on mem.user_no = auth.user_no
			where mem.user_id = 'admin';
            
alter table movie_user drop column email;
select * from movie_user;
alter table movie_user add email varchar2(30) not null;
alter table movie_user add email_domain varchar2(30) not null;