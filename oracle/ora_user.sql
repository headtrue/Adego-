-- ���̺� ���� --
create table major(
  code number primary key,      -- [�÷���] [���ڸ� ���] [�⺻Ű] --
  name nvarchar2(20) NOT null   -- [�÷���] [�������� ����(1~4000byte)] [�� ���� ������� ����] -- 
  );  
-- ������ ���� --
    create SEQUENCE seq_1   -- �������� --
    increment by 1          -- �������� --
    start with 0            -- ���ۼ��� --
    minvalue 0              -- �ּҰ� --
    maxvalue 100            -- �ִ밪 --
    nocycle                 -- �ּ�, �ִ밪�� �����ϸ� �������� --
    nocache;                -- ������ ���� �̸� �Ҵ����� ���� --
        insert into major values(seq_1.currval,'');             -- insert into [���̺��] values (��1, ��2, ...) --
        insert into major values(seq_1.nextval,'��������');
        insert into major values(seq_1.nextval,'��ǻ�Ͱ���');
        insert into major values(seq_1.nextval,'������');
        insert into major values(seq_1.nextval,'�������');
        insert into major values(seq_1.nextval,'������������');
        insert into major values(seq_1.nextval,'��������');
        insert into major values(seq_1.nextval,'�߾��߹���');
        insert into major values(seq_1.nextval,'����');
        insert into major values(seq_1.nextval,'������');
        insert into major values(seq_1.nextval,'���������');
        insert into major values(seq_1.nextval,'�������');
        insert into major values(seq_1.nextval,'�濵������');
select * from major;    -- major table ���� --
drop sequence seq_1;    -- major ���� ���� --    
delete from major;      -- seq_1 ������ ���� -- 
drop table major;       -- major table ���� --

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
        insert into city values(seq_2.nextval,'����');
        insert into city values(seq_2.nextval,'��õ');
        insert into city values(seq_2.nextval,'â��');
        insert into city values(seq_2.nextval,'�λ�');
        insert into city values(seq_2.nextval,'��õ');
        insert into city values(seq_2.nextval,'����');
        insert into city values(seq_2.nextval,'�뱸');
        insert into city values(seq_2.nextval,'����');
        insert into city values(seq_2.nextval,'����');
        insert into city values(seq_2.nextval,'����');
select * from city;         
delete from city;       
drop sequence seq_2;                   
drop table city;        

create table students(
  no number primary key,                          -- [�÷���] [���ڸ� ���] [�⺻Ű] --
  name nvarchar2(20) NOT NULL,                    -- [�÷���] [�������� ����(1~4000byte)] [�� ���� ������� ����] --
  gender char(1) NOT NULL,                        -- [�÷���] [�������� ����(1~2000byte)] [�� ���� ������� ����] --
  constraints check1 check(gender in('m','f')),   -- constraints [üũ��] check [üũ����] --
  major number NOT NULL,                          -- [�÷���] [���ڸ� ���] [�� ���� ������� ����] --
  constraints major1 foreign key(major)           -- constraints [�ܷ�Ű��] foreign key (�÷���, �÷���, ...) --
  references major(code),                         -- references [�������̺�] (�������̺� �÷���,... ) --
  city number NOT NULL,                           -- [�÷���] [���ڸ� ���] [�� ���� ������� ����] --
  constraints city1 foreign key(city)             -- constraints [�ܷ�Ű��] foreign key (�÷���, �÷���, ...) --
  references city(code),                          -- references [�������̺�] (�������̺� �÷���,... ) --
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
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',9,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','f',1,5);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'���ȣ','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�赿��','m',5,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�輭��','m',1,1);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'��ƿ�','f',5,7);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'��켺','m',7,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','f',4,9);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�����','f',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�ε���','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�ڹ�ȣ','m',3,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','f',0,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'���߱�','m',8,8);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',10,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'��âȯ','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'���ʷ�','f',1,5);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',3,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�氡��','f',2,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�缺��','m',5,4);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�����','m',4,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�����','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�̸�','m',5,4);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�̸��','m',2,9);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�̼���','f',6,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'��â��','m',4,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'��ȣ��','m',11,3);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�ӿ���','f',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'����ȯ','m',1,0);
        insert into students(no,name,gender,major,city) values(seq_3.nextval,'�ֹ���','f',4,1);
select * from students; /* students table ���� */  
delete from students;   /* students ���� ���� * /
drop sequence seq_3;    /* seq_3 ������ ���� */            
drop table students;    /* students table ���� */ 

select a.no, a.name, a.gender, b.name as major, c.name as city
from students a, major b, city c
where a.major = b.code and a.city = c.code
order by a.no asc;

-- ���� ���￡ ��� �ִ� �������� �̸��� ��� --
select a.name from students a, city b
where a.city = b.code and b.name = '����'
order by a.name desc;

-- ���� ������������ ������ �ο� ��� --
select count(a.name) from students a, major b
where a.major = b.code and b.name = '������������';

create table team(
  code number primary key,
  name nvarchar2(20) NOT null,
  leader number,
  constraints leader1 foreign key (leader)
  references students (no)
  );  
        insert into team values(0, '�ڹ�Ÿ��', 17);
        insert into team values(1, '�����帮��', 25);
        insert into team values(2, '������', 12);
        insert into team values(3, '�غ����', 20);
        insert into team values(4, '���ϸ���', 29);
        insert into team values(5, '�����', 6);
select * from team; -- team table ���� --

-- [����] ������� ���� �̸� --
select a.name from students a, team b
where a.no = b.leader and b.name = '�����';

-- students ���̺� team �÷� �߰� (�ܷ�Ű) --
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
        
-- [����] 5�� ���ϸ������� �ο� --
select count(a.name) from students a, team b
where a.team = b.code and b.name = '���ϸ���';

-- [����] �ڹ�Ÿ������ ������������--
select count(a.no) from students a, team b
where a.team = b.code and b.name = '�ڹ�Ÿ��' and a.gender = 'f';

create table team_1(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_1(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 0;
select * from team_1;     /* team_1 table ���� */    
delete from team_1;       /* team_1 ���� ���� */

create table team_2(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_2(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 1;
select * from team_2;     /* team_2 table ���� */    
delete from team_2;       /* team_2 ���� ���� */

create table team_3(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_3(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 2;
select * from team_3;     /* team_3 table ���� */    
delete from team_3;       /* team_3 ���� ���� */

create table team_4(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_4(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 3;   
select * from team_4;     /* team_4 table ���� */    
delete from team_4;       /* team_4 ���� ���� */

create table team_5(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_5(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 4;
select * from team_5;     /* team_5 table ���� */    
delete from team_5;       /* team_5 ���� ���� */

create table team_6(
  name nvarchar2(20),
  major nvarchar2(20),
  city nvarchar2(20) 
  );
        insert into team_6(name,major,city)
        select a.name, b.name, c.name from students a, major b, city c
        where a.major = b.code and a.city = c.code and a.team = 5; 
select * from team_6;     /* team_6 table ���� */    
delete from team_6;       /* team_6 ���� ���� */

-- MERGE�� --
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
select * from merge_1;     /* merge_1 table ���� */    
delete from merge_1;       /* merge_1 ���� ���� */

-- �ǻ��÷� ROWNUM --
select rownum, name, rowid from merge_1 where rownum < 5;

-- ������ --
select rownum, name||'�ٺ�', rowid from merge_1;

-- ǥ���� --
select a.name, b.name as city,
  case when b.code = 0 then '����'
    else '�ð�'
  end as city_grade
from students a, city b
where a.city = b.code;

-- ���ǽ� --
select name from students where name like '��%';
select name from students where name like '%ȣ';
select name from students where name like '%��%';

-- �������ڿ� �ð� --
select sysdate, systimestamp
  from dual;

-- interger ��ŭ�� ���� ���� ��¥ --
select add_months(sysdate, 1)
  from dual;

-- �� ��¥ ������ ���� �� --
select months_between(sysdate, '20121225') mon1
  from dual;
select months_between('20170301', SYSDATE) mon1
  from dual;


-- �ش� �� ������ ���� --
select last_day('20170201')
  from dual;

-- ROUND: �� ���� �ݿø� --
-- TRUNC: �� ���� ���� --
select sysdate, ROUND(TO_DATE('20170228'), 'month')
  from dual;

-- ���� ������ �ش� ���� ��¥ --
select next_day(sysdate, '�ݿ���')
  from dual;

-- COUNT ���� --
select count(*) from students;
select count(distinct no) from students;
select count(distinct city) from students;
select count(distinct major) from students;

-- DISTINCT (�ߺ�����) --
select distinct major from students;
select distinct b.name from students a, major b where a.major = b.code;

-- SUM �հ� --
select sum(no) from students;
select sum(major), sum(distinct major) from students;   

-- AVG ��հ� --
select avg(city), avg(distinct city) from students;   

-- MIN �ּҰ�, MAX �ִ밪 --
select min(no), max(no) from students; 

-- VARIANCE �л�, STDDEV ǥ������ --
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

-- ROLLUP ������ ����, CUBE --
select b.name as major, c.name as city, sum(a.no)
  from students a, major b, city c
  where a.major = b.code and a.city = c.code
  group by rollup(b.name, c.name);

-- UNION ������(�ߺ�X) -- 
select name from students where team=1
union
select name from students where team=5;

-- UNION ALL ������(�ߺ�O) -- 
select name from students where team=5
union all                                     -- �ߺ� ��� --                                     
select name from students where gender='f';

-- INTERSECT ������ --
select name from students where team=5
intersect
select name from students where gender='f';

-- MINUS ������ --
select name from students where gender='f'
minus
select name from students where team=5;

-- ��Ƽ���� --
select name
  from students
  where no not in (select no from students where team=0);
  
select name
  from students a
  where not exists (select 1 from students b where a.no = b.no and b.team=0);   -- select [�÷���] �̱⶧���� ������ ��� 1�� ��ġ�� --
  
select name
  from students
  where no not in (select no from students where city=0);

select name 
  from students a
  where not exists (select 0 from students b where a.no = b.no and b.city=0);

-- �������� (2���� ���� ����) --  
select b.code, b.name, count(a.no) from students a, city b
  where a.city = b.code
  group by b.code, b.name
select b.no, a.name from students a, students b
  where a.city = b.city and a.no < b.no and a.city = 4;
  
-- �ܺ����� --
select a.name, c.name as city
  from students a, city c
  where c.code = a.city(+);       -- (+) �ܺ� ���� --
  
select a.name, c.name as city
  from students a, city c
  where c.code = a.city;
