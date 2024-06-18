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

-- 테이블 생성
select * from replyboard;
CREATE TABLE "SCOTT"."REPLYBOARD" 
   (   
    "NUM" NUMBER NOT NULL ENABLE,     -- 글번호
   "WRITER" VARCHAR2(12 BYTE) NOT NULL ENABLE,  --작성자 
   "EMAIL" VARCHAR2(30 BYTE) NOT NULL ENABLE,   --이메일
   "SUBJECT" VARCHAR2(50 BYTE) NOT NULL ENABLE,  --제목
   "PASS" VARCHAR2(10 BYTE) NOT NULL ENABLE,  --비밀번호
   "READCOUNT" NUMBER(5,0) DEFAULT 0 NOT NULL ENABLE,  --조회수 
   "REGDATE" DATE DEFAULT sysdate NOT NULL ENABLE,   --작성일
   "CONTENT" CLOB NOT NULL ENABLE,  --글내용
   "IP" VARCHAR2(20 BYTE) NOT NULL ENABLE, --IP주소 
   
   "REF" NUMBER(5,0) DEFAULT 0 NOT NULL ENABLE,  --그룹 
   "STEP" NUMBER(3,0) DEFAULT 1 NOT NULL ENABLE,  --순번
   "DEPTH" NUMBER(3,0) DEFAULT 0 NOT NULL ENABLE,  --깊이
   
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
 
 과제....
 1. 상품테이블 / 상품이미지테이블 생성 , 시퀀스 생성
 --상품테이블
 create table pd_tbl (
    pdCode   number(50)  primary key, -- 상품코드
    pdName varchar2(50)    not null,    -- 상품명
    pdDocu varchar2(100)    not null    -- 상품설명
 );
 -- 상품이미지테이블
create table pd_img (
    pdNum  number   primary key,        -- 순번
    pdCode number(30) ,
    originImgname varchar2(100) not null,     -- 원래이미지명
    fileImgname  varchar2(100)  not null,       -- 파일이미지명
    filelength	number,							-- 파일크기
    constraint pdCode foreign key(pdCode) references pd_tbl(pdCode) -- 상품코드
 );
 -- 시퀀스
 create sequence seq_pd_img_num ; --순번
 create sequence seq_pd_code_num; --상품코드
 
 -------------------------------------
 select * from filetest;
 
 1. 테이블 , 시퀀스 생성
    create table filetest(          
     num number not null primary key  
     , subject varchar2(50) not null        
     , filesystemname varchar2(100) -- 실제 저장되는 파일명       a1.txt
     , originalfilename varchar2(100) -- 저장할 때 파일명             a.txt
     , filelength number  -- 파일크기
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
