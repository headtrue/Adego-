-- 테이블 생성 --
create table major(
  code number primary key,      -- [컬럼명] [숫자만 허용] [기본키] --
  name nvarchar2(20) NOT null   -- [컬럼명] [가변길이 문자(1~4000byte)] [빈 내용 허용하지 않음] -- 
  );  
-- 시퀀스 생성 --
    create SEQUENCE seq_1   -- 시퀀스명 --
    increment by 1          -- 증가숫자 --
    start with 0            -- 시작숫자 --
    minvalue 0              -- 최소값 --
    maxvalue 100            -- 최대값 --
    nocycle                 -- 최소, 최대값에 도달하면 생성중지 --
    nocache;                -- 시퀀스 값을 미리 할당하지 않음 --
        insert into major values(seq_1.currval,'');             -- insert into [테이블명] values (값1, 값2, ...) --
        insert into major values(seq_1.nextval,'정보보안');
        insert into major values(seq_1.nextval,'컴퓨터공학');
        insert into major values(seq_1.nextval,'기계공학');
        insert into major values(seq_1.nextval,'전기공학');
        insert into major values(seq_1.nextval,'전자정보공학');
        insert into major values(seq_1.nextval,'정보공학');
        insert into major values(seq_1.nextval,'중어중문학');
        insert into major values(seq_1.nextval,'수학');
        insert into major values(seq_1.nextval,'행정학');
        insert into major values(seq_1.nextval,'기계정보학');
        insert into major values(seq_1.nextval,'산업공학');
        insert into major values(seq_1.nextval,'경영정보학');
select * from major;    -- major table 실행 --
drop sequence seq_1;    -- major 내용 삭제 --    
delete from major;      -- seq_1 시퀀스 삭제 -- 
drop table major;       -- major table 삭제 --

create table city(
  code number primary key,
  name nvarchar2(20) NOT NULL
  );
    create sequence seq_2 
    start with 0
    increment by 1
    minvalue 0
    maxvalue 100
    nocycle
    nocache;
        insert into city values(seq_2.currval,'');
        insert into city values(seq_2.nextval,'서울');
        insert into city values(seq_2.nextval,'부천');
        insert into city values(seq_2.nextval,'창원');
        insert into city values(seq_2.nextval,'부산');
        insert into city values(seq_2.nextval,'인천');
        insert into city values(seq_2.nextval,'수원');
        insert into city values(seq_2.nextval,'대구');
        insert into city values(seq_2.nextval,'충주');
        insert into city values(seq_2.nextval,'구미');
        insert into city values(seq_2.nextval,'광명');
select * from city;         
delete from city;       
drop sequence seq_2;                   
drop table city;        

create table students(
  no number primary key,                          -- [컬럼명] [숫자만 허용] [기본키] --
  name nvarchar2(20) NOT NULL,                    -- [컬럼명] [가변길이 문자(1~4000byte)] [빈 내용 허용하지 않음] --
  gender char(1) NOT NULL,                        -- [컬럼명] [고정길이 문자(1~2000byte)] [빈 내용 허용하지 않음] --
  constraints check1 check(gender in('m','f')),   -- constraints [체크명] check [체크조건] --
  major number NOT NULL,                          -- [컬럼명] [숫자만 허용] [빈 내용 허용하지 않음] --
  constraints major1 foreign key(major)           -- constraints [외래키명] foreign key (컬럼명, 컬럼명, ...) --
  references major(code),                         -- references [참조테이블] (참조테이블 컬러명,... ) --
  city number NOT NULL,                           -- [컬럼명] [숫자만 허용] [빈 내용 허용하지 않음] --
  constraints city1 foreign key(city)             -- constraints [외래키명] foreign key (컬럼명, 컬럼명, ...) --
  references city(code),                          -- references [참조테이블] (참조테이블 컬러명,... ) --
  created_at date default sysdate                 --
  );
    create sequence seq_3
    increment by 1
    start with 0
    minvalue 0
    maxvalue 100
    nocycle
    nocache;
        insert into students(no,name,gender,major,city) values(seq_3.currval,'','m',0,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'강동훈','m',9,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'곽다인','f',1,5);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'김기호','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'김동근','m',5,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'김서준','m',1,1);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'김아연','f',5,7);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'김우성','m',7,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'김지혜','f',4,9);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'라건주','f',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'민동연','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'박민호','m',3,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'박정은','f',0,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'박중균','m',8,8);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'박지용','m',10,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'박찬준','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'박창환','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'박초롱','f',1,5);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'박태준','m',3,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'방가은','f',2,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'양성준','m',5,4);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'유희상','m',4,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'윤장원','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'이명구','m',5,4);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'이명우','m',2,9);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'이수진','f',6,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'이창주','m',4,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'이호성','m',11,3);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'임연주','f',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'정종찬','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'조인환','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'최민진','f',4,1);
select * from students; /* students table 실행 */  
delete from students;   /* students 내용 삭제 * /
drop sequence seq_3;    /* seq_3 시퀀스 삭제 */            
drop table students;    /* students table 삭제 */ 

select a.no, a.name, a.gender, b.name as major, c.name as city
from students a, major b, city c
where a.major = b.code and a.city = c.code
order by a.no asc;

-- 현재 서울에 살고 있는 수강생의 이름만 출력 --
select a.name from students a, city b
where a.city = b.code and b.name = '서울'
order by a.name desc;

-- 현재 전자정보공학 수강생 인원 출력 --
select count(a.name) from students a, major b
where a.major = b.code and b.name = '전자정보공학';

create table team(
  code number primary key,
  name nvarchar2(20) NOT null,
  leader number,
  constraints leader1 foreign key (leader)
  references students (no)
  );  
        insert into team values(0, '자바타조', 17);
        insert into team values(1, '보여드리조', 25);
        insert into team values(2, '동반자', 12);
        insert into team values(3, '준비됬죠', 20);
        insert into team values(4, '마일리지', 29);
        insert into team values(5, '어벤져스', 6);
select * from team; -- team table 실행 --

-- [문제] 어벤져스의 팀장 이름 --
select a.name from students a, team b
where a.no = b.leader and b.name = '어벤져스';

-- students 테이블에 team 컬럼 추가 (외래키) --
alter table students add team number;
alter table students add constraints team1 foreign key (team)
references team(code);
        update students set team=5 where no=0;
        update students set team=0 where no=1;
        update students set team=1 where no=2;
        update students set team=2 where no=3;
        update students set team=4 where no=4;
        update students set team=5 where no=5;
        update students set team=5 where no=6;
        update students set team=2 where no=7;
        update students set team=4 where no=8;
        update students set team=0 where no=9;
        update students set team=1 where no=10;
        update students set team=5 where no=11;
        update students set team=2 where no=12;
        update students set team=3 where no=13;
        update students set team=4 where no=14;
        update students set team=5 where no=15;
        update students set team=0 where no=16;
        update students set team=0 where no=17;
        update students set team=1 where no=18;
        update students set team=2 where no=19;
        update students set team=3 where no=20;
        update students set team=4 where no=21;
        update students set team=5 where no=22;
        update students set team=0 where no=23;
        update students set team=2 where no=24;
        update students set team=1 where no=25;
        update students set team=1 where no=26;
        update students set team=3 where no=27;
        update students set team=3 where no=28;
        update students set team=4 where no=29;
        update students set team=4 where no=30;
        
-- [문제] 5조 마일리지팀의 인원 --
select count(a.name) from students a, team b
where a.team = b.code and b.name = '마일리지';

-- [문제] 자바타조팀의 여성팀원숫자--
select count(a.no) from students a, team b
where a.team = b.code and b.name = '자바타조' and a.gender = 'f';

create table team_1(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_1(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 0;
select * from team_1;     /* team_1 table 실행 */    
delete from team_1;       /* team_1 내용 삭제 */

create table team_2(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_2(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 1;
select * from team_2;     /* team_2 table 실행 */    
delete from team_2;       /* team_2 내용 삭제 */

create table team_3(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_3(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 2;
select * from team_3;     /* team_3 table 실행 */    
delete from team_3;       /* team_3 내용 삭제 */

create table team_4(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_4(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 3;   
select * from team_4;     /* team_4 table 실행 */    
delete from team_4;       /* team_4 내용 삭제 */

create table team_5(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_5(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 4;
select * from team_5;     /* team_5 table 실행 */    
delete from team_5;       /* team_5 내용 삭제 */

create table team_6(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_6(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 5; 
select * from team_6;     /* team_6 table 실행 */    
delete from team_6;       /* team_6 내용 삭제 */

-- MERGE문 --
create table merge_1(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20)
  );
        insert into merge_1(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 5; 
merge into merge_1 m 
  using(select a.name, a.name as major, a.name as city
        from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.gender = 'f') s
  on (m.name = s.name) 
when not matched then
  insert (m.name, m.major, m.city)
    values(s.name, s.major, s.city);
select * from merge_1;     /* merge_1 table 실행 */    
delete from merge_1;       /* merge_1 내용 삭제 */

-- 의사컬럼 ROWNUM --
select rownum, name, rowid from merge_1 where rownum < 5;

-- 연산자 --
select rownum, name||'바보', rowid from merge_1;

-- 표현식 --
select a.name, b.name as city,
  case when b.code = 0 then '도시'
    else '시골'
  end as city_grade
from students a, city b
where a.city = b.code;

-- 조건식 --
select name from students where name like '김%';
select name from students where name like '%호';
select name from students where name like '%명%';

-- 현재일자와 시간 --
select sysdate, systimestamp
  from dual;

-- interger 만큼의 월을 더한 날짜 --
select add_months(sysdate, 1)
  from dual;

-- 두 날짜 사이의 개월 수 --
select months_between(sysdate, '20121225') mon1
  from dual;
select months_between('20170301', SYSDATE) mon1
  from dual;


-- 해당 월 마지막 일자 --
select last_day('20170201')
  from dual;

-- ROUND: 주 단위 반올림 --
-- TRUNC: 주 단위 버림 --
select sysdate, ROUND(TO_DATE('20170228'), 'month')
  from dual;

-- 오늘 이후의 해당 요일 날짜 --
select next_day(sysdate, '금요일')
  from dual;

-- COUNT 집계 --
select count(*) from students;
select count(distinct no) from students;
select count(distinct city) from students;
select count(distinct major) from students;

-- DISTINCT (중복제거) --
select distinct major from students;
select distinct b.name from students a, major b where a.major = b.code;

-- SUM 합계 --
select sum(no) from students;
select sum(major), sum(distinct major) from students;   

-- AVG 평균값 --
select avg(city), avg(distinct city) from students;   

-- MIN 최소값, MAX 최대값 --
select min(no), max(no) from students; 

-- VARIANCE 분산, STDDEV 표준편차 --
select variance(no), stddev(no) from students;

select major, sum(no) from students
  group by major
  order by major;

select b.name, sum(a.no) from students a, major b
  where a.major = b.code
  group by b.name
  order by b.name;

-- GROUP BY, HAVING --
select b.name as major, c.name as city, sum(a.no)
  from students a, major b, city c
  where a.major = b.code and a.city = c.code
  group by b.name, c.name
  having sum(a.no) > 10
  order by b.name, c.name;

-- ROLLUP 순차적 집계, CUBE --
select b.name as major, c.name as city, sum(a.no)
  from students a, major b, city c
  where a.major = b.code and a.city = c.code
  group by rollup(b.name, c.name);

-- UNION 합집합(중복X) -- 
select name from students where team=1
union
select name from students where team=5;

-- UNION ALL 합집합(중복O) -- 
select name from students where team=5
union all                                     -- 중복 허용 --                                     
select name from students where gender='f';

-- INTERSECT 교집합 --
select name from students where team=5
intersect
select name from students where gender='f';

-- MINUS 차집합 --
select name from students where gender='f'
minus
select name from students where team=5;

-- 안티조인 --
select name
  from students
  where no not in (select no from students where team=0);
  
select name
  from students a
  where not exists (select 1 from students b where a.no = b.no and b.team=0);   -- select [컬럼명] 이기때문에 넣을게 없어서 1로 대치함 --
  
select name
  from students
  where no not in (select no from students where city=0);

select name 
  from students a
  where not exists (select 0 from students b where a.no = b.no and b.city=0);

-- 셀프조인 (2명일 때만 가능) --  
select b.code, b.name, count(a.no) from students a, city b
  where a.city = b.code
  group by b.code, b.name
select b.no, a.name from students a, students b
  where a.city = b.city and a.no < b.no and a.city = 4;
  
-- 외부조인 --
select a.name, c.name as city
  from students a, city c
  where c.code = a.city(+);       -- (+) 외부 조인 --
  
select a.name, c.name as city
  from students a, city c
  where c.code = a.city;
