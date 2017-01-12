-- 사용자정보 테이블
create table user_info (
  no number primary key,
  user_id varchar2(20),
  constraint check5 foreign key (user_id)
  references map_info (user_id),
  user_age number not null,
  user_sex char(1),
  constraint check6 check (user_sex in ('m', 'f'))
);

-- 지도정보 테이블
create table map_info (
  search_date date default sysdate,
  departure nvarchar2(100),
  arrival nvarchar2(100),
  user_id varchar(20) primary key
);

drop table map_info;
drop table user_info;
select * from map_info;