JSPClass>
// 2024-5-8

create table member
(
  memberid varchar2(50) primary key
  , name varchar2(50) not null
  , password varchar2(10) not null
  , regdate date not null 
);

create table article
(
  article_no number primary key
  , writer_id varchar2(50) not null
  , writer_name varchar2(50) not null
  , title varchar2(255) not null
  , regdate date not null
  , moddate date not null
  , read_cnt number
);
create sequence seq_article;

create table article_content
(
  article_no number primary key
  , content clob
  , constraint fk_article_content_article_no foreign key(article_no) references article(article_no)
);


// 2024-05-02
select rownum rnum, num,writer,email,subject,pass, regdate,readcount,ref,step,depth,content,ip 
        , case       
        when ( sysdate - regdate ) < 0.041667  then  'true' 
        else 'false'   
        end  new 
        from replyboard 
        order by ref desc, step asc

-- ���̺� ����
select * from replyboard;
CREATE TABLE "SCOTT"."REPLYBOARD" 
   (   
    "NUM" NUMBER NOT NULL ENABLE,     -- �۹�ȣ
   "WRITER" VARCHAR2(12 BYTE) NOT NULL ENABLE,  --�ۼ��� 
   "EMAIL" VARCHAR2(30 BYTE) NOT NULL ENABLE,   --�̸���
   "SUBJECT" VARCHAR2(50 BYTE) NOT NULL ENABLE,  --����
   "PASS" VARCHAR2(10 BYTE) NOT NULL ENABLE,  --��й�ȣ
   "READCOUNT" NUMBER(5,0) DEFAULT 0 NOT NULL ENABLE,  --��ȸ�� 
   "REGDATE" DATE DEFAULT sysdate NOT NULL ENABLE,   --�ۼ���
   "CONTENT" CLOB NOT NULL ENABLE,  --�۳���
   "IP" VARCHAR2(20 BYTE) NOT NULL ENABLE, --IP�ּ� 
   
   "REF" NUMBER(5,0) DEFAULT 0 NOT NULL ENABLE,  --�׷� 
   "STEP" NUMBER(3,0) DEFAULT 1 NOT NULL ENABLE,  --����
   "DEPTH" NUMBER(3,0) DEFAULT 0 NOT NULL ENABLE,  --����
   
    PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
       
CREATE SEQUENCE SEQ_REPLYBOARD;

 ----------------
 // 2024-04-30
 
 ����....
 1. ��ǰ���̺� / ��ǰ�̹������̺� ���� , ������ ����
 --��ǰ���̺�
 create table pd_tbl (
    pdCode   number(50)  primary key, -- ��ǰ�ڵ�
    pdName varchar2(50)    not null,    -- ��ǰ��
    pdDocu varchar2(100)    not null    -- ��ǰ����
 );
 -- ��ǰ�̹������̺�
create table pd_img (
    pdNum  number   primary key,        -- ����
    pdCode number(30) ,
    originImgname varchar2(100) not null,     -- �����̹�����
    fileImgname  varchar2(100)  not null,       -- �����̹�����
    filelength	number,							-- ����ũ��
    constraint pdCode foreign key(pdCode) references pd_tbl(pdCode) -- ��ǰ�ڵ�
 );
 -- ������
 create sequence seq_pd_img_num ; --����
 create sequence seq_pd_code_num; --��ǰ�ڵ�
 
 -------------------------------------
 select * from filetest;
 
 1. ���̺� , ������ ����
    create table filetest(          
     num number not null primary key  
     , subject varchar2(50) not null        
     , filesystemname varchar2(100) -- ���� ����Ǵ� ���ϸ�       a1.txt
     , originalfilename varchar2(100) -- ������ �� ���ϸ�             a.txt
     , filelength number  -- ����ũ��
    );
    
   create sequence seq_filetest; 
 
-----------------------------------------------------------------

create table guestbook_message
			   (
			       message_id number not null primary key
			      , guest_name varchar2(50) not null
			      , password varchar2(10) not null
			      , message clob not  null
			   ) ;    

create sequence seq_guestbook_message;   

// 2024-04-29

with temp as (
    select empno, ename, sal,
        rank() over(order by sal desc) r
        from emp
)
 select * from temp
 where r <= 5;
 --
 UPDATE emp SET sal = 1000 where empno = 7839; commit;

 UPDATE emp SET sal = 2500 where empno = 7839; commit;
  
 UPDATE emp SET sal = 5000 where empno = 7839; commit;
