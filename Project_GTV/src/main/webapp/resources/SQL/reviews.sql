create table movie_com(
    user_no number(38)not null,
    user_id varchar2(50) primary key,
    mov_no number(38)not null,
    mov_name varchar2(100)not null,
    cont_com varchar2(500) not null,
    upload_com date,
    edit_com date
);

select * from movie_com order by user_id desc;