--10�� ����, count
select count(*) from students_table;
select count(distinct no) from students_table; --distinct �ߺ�����
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
having sum(a.no)>10 --group by �� ����� ������� �ѹ��� ����
order by b.name, c.name;

--rollup �߰�����(������ ������ ����), cube ����� ǥ���� ������ ���� ������ ��� ���պ� ����
select b.name as major, c.name as city, sum(a.no)
from students_table a, major_table b, city_table c
where a.major=b.code and a.city=c.code
group by rollup(b.name,c.name);

--���տ����� : union, union all, intersect, minus
--union ������
select name from students_table where team=0
union
select name from students_table where team=2;
--union all �ߺ��� ���� ����
select name from students_table where team=1
union all
select name from students_table where gender='F';
--intersect ������
select name from students_table where team=4
intersect
select name from students_table where gender='F';
--minus ������
select name from students_table where gender='F'
minus
select name from students_table where team=5;

--11�� ����, �پ��� ���� ����
--��Ƽ����
select name from students_table where no not in (
  select no from students_table where team=0);
  
select name from student_table a where not exists (
  select 1 from students_table b where a.no=b.no and b.team=0);
  
select name from students_table where no not in (
  select no from students_table where city=0);
  
select name from students_table a where not exists (--1 �����ϱ�
select 1 from students_table b where a.no=b.no and b.city=0);

--��������(�ڱ��ڽ��� as�� ���� �ΰ� ��)
select b.no, a.name from students_table a, students_table b where a.city=b.city and a.no<b.no and a.city=0;

--�ܺ����� : �Ϲ������� Ȯ�� ����, �������ǿ� �����ϴ� ������ �� �ƴ� ��� ���� ���̺� ���� ���ǿ� ��õ� �÷��� ���� ���ų� �ش� �ο찡 ��� ������ ��� ����
select a.name, c.name as city from students_table a, city_table c
where a.city=c.code;
 
insert into city_table values(10,'����');
 
select a.name, c.name as city from students_table a, city_table c
where a.city(+)=c.code;

--īŸ�þ����� : where�� ���������� ����
select a.name, b.name from students_table a, major_table b;

--12�� ����, ����Ŭ����vsANSI���� and �������� : select, from, where�� ��� ���� ����
-- DB��