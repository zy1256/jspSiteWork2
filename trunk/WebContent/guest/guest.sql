

drop table GUEST;

create table GUEST(
    guest_no number(10) primary key,
		guest_name varchar2(40) not null,
		guest_date date not null,
		guest_email varchar2(50),
		guest_homepage varchar2(50),
		guest_title varchar2(100) not null,
		guest_content varchar2(4000) not null
    );
drop sequence guest_no_seq;

--1���� 1�� �����Ѵ�.
create sequence guest_no_seq  increment by 1 start with 1;

insert into GUEST values(guest_no_seq.nextval , '���ȣ1', sysdate, 'guard@naver.com', 'http://', '���� ����1', '����ó�� ����Ͻø� �˴ϴ�1');
insert into GUEST values(guest_no_seq.nextval , '���ȣ2', sysdate, 'guard@naver.com', 'http://', '���� ����2', '����ó�� ����Ͻø� �˴ϴ�2');
insert into GUEST values(guest_no_seq.nextval , '���ȣ3', sysdate, 'guard@naver.com', 'http://', '���� ����3', '����ó�� ����Ͻø� �˴ϴ�3');
insert into GUEST values(guest_no_seq.nextval , '���ȣ4', sysdate, 'guard@naver.com', 'http://', '���� ����4', '����ó�� ����Ͻø� �˴ϴ�4');
insert into GUEST values(guest_no_seq.nextval , '���ȣ5', sysdate, 'guard@naver.com', 'http://', '���� ����5', '����ó�� ����Ͻø� �˴ϴ�5');


commit;

select * from GUEST;
desc guest;