--10시 수업, count
select count(*) from students_table;
select count(distinct no) from students_table; --distinct 중복제거
select count(distinct city) from students_table;
select distinct b.name from students_table a, major_table b where a.major=b.code;
select sum(major), sum(distinct major) from students_table;
select avg(city), avg(distinct city) from students_table;
select min(no), max(no) from students_table;
select variance(no) from STUDENTS_TABLE;

--group by, having
select major, sum(no) from students_table
group by major order by major;

select b.name, count(a.no) from students_table a, major_table b
where a.major=b.code group by b.name order by b.name;

select b.name as major, c.name as city, sum(no)
from students_table a, major_table b, city_table c where a.major=b.code and a.city=c.code
group by b.name, c.name
order by b.name, c.name;

select b.name as major, c.name as city, sum(no)
from students_table a, major_table b, city_table c where a.major=b.code and a.city=c.code
group by b.name, c.name
having sum(a.no)>10 --group by 한 결과를 대상으로 한번더 필터
order by b.name, c.name;

--rollup 중간집계(레벨별 순차적 집계), cube 명시한 표현식 개수에 따라 가능한 모든 조합별 집계
select b.name as major, c.name as city, sum(a.no)
from students_table a, major_table b, city_table c
where a.major=b.code and a.city=c.code
group by rollup(b.name,c.name);

--집합연산자 : union, union all, intersect, minus
--union 합집합
select name from students_table where team=0
union
select name from students_table where team=2;
--union all 중복된 값도 나옴
select name from students_table where team=1
union all
select name from students_table where gender='F';
--intersect 교집합
select name from students_table where team=4
intersect
select name from students_table where gender='F';
--minus 차집합
select name from students_table where gender='F'
minus
select name from students_table where team=5;

--11시 수업, 다양한 조인 조건
--안티조인
select name from students_table where no not in (
  select no from students_table where team=0);
  
select name from student_table a where not exists (
  select 1 from students_table b where a.no=b.no and b.team=0);
  
select name from students_table where no not in (
  select no from students_table where city=0);
  
select name from students_table a where not exists (--1 이해하기
select 1 from students_table b where a.no=b.no and b.city=0);

--셀프조인(자기자신을 as를 각각 두고 비교)
select b.no, a.name from students_table a, students_table b where a.city=b.city and a.no<b.no and a.city=0;

--외부조인 : 일반조인의 확장 개념, 조인조건에 만족하는 데이터 뿐 아닌 어느 한쪽 테이블에 조인 조건에 명시된 컬럼에 값이 없거나 해당 로우가 없어도 데이터 모두 추출
select a.name, c.name as city from students_table a, city_table c
where a.city=c.code;
 
insert into city_table values(10,'제주');
 
select a.name, c.name as city from students_table a, city_table c
where a.city(+)=c.code;

--카타시안조인 : where에 조인조건이 없음
select a.name, b.name from students_table a, major_table b;

--12시 수업, 오라클문법vsANSI문법 and 서브쿼리 : select, from, where절 모두 들어갈수 있음
-- DB끝