<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/jspPro/resources/cdn-main/example.css">
<script src="/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>
</head>
<body>
<header>
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">yeon HOme</a></h1>
  <ul>
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
  </ul>
</header>
<h3>
  <span class="material-symbols-outlined">view_list</span> jsp days00
</h3>
<div>
  <a href="/jspPro/days10/replyboard/list.do">목록보기</a>	

  <xmp class="code">
    1. 계층형(답변형) 게시판 - MVC 패턴 작업
     2. days10
           ㄴ replyboard 폴더 추가
                ㄴ emoticon
                ㄴ images      
     *** 3. 로직 이해...*** 
     [DB]
     글번호 제목           작성자 ... 
     1      첫번째게시글   홍길동(새글)
     2      두번째게시글   서영학(새글)
     3      세번째게시글   정창기(새글)
     4      2-1 답글       정창기(답글)
     5      2-1-1 답글     홍길동(답글)
     6      네번째게시글   정창기(새글)
     7      6-1 답글       홍길동(답글)
     8      2-2 답글       정창기(답글)
     
     
     [화면출력] order by 글번호 desc  
     글번호 제목           작성자 ... 
     6      네번째게시글   정창기(새글)
     7        ㄴ6-1 답글       홍길동(답글)
     3      세번째게시글   정창기(새글)
     2      두번째게시글   서영학(새글)
     8        ㄴ 2-2 답글       정창기(답글)
     4        ㄴ 2-1 답글  정창기(답글) 
     5          ㄴ2-1-1 답글     홍길동(답글) 
     1      첫번째게시글   홍길동(새글)   
     
     
     *** 첫 번째 방법) 컬럼 3개 추가   *** 풀이
     글번호(PK) 제목 작성자  + 글그룹(REF) + 그룹 순서(STEP) + 깊이(DEPTH)
      3:05 수업시작~
     
     규칙1) 새글이 작성되면 항상 글그룹(==글번호) STEP 1 DEPTH 0
     규칙2) 답글을 작성할 때
			항상 부모글(예:[2]) 이 존재해야 한다. 
			부모글 [2]   답글글그룹==부모글그룹
									2
									  부모글의 순서 +1
									  		2
									  			부모글의 깊이 +1
									  				1 
	 규칙3) 같은 그룹내의 부모순서보다 큰 순서는 1증가 (업데이트 실시)
	 
	 
     [DB]
     글번호 제목           작성자 ...     REF		STEP	DEPTH
     1		첫번째게시글   홍길동(새글)	글번호1		1		0
     2		두번째게시글   서영학(새글)		2		1		0
     3		세번째게시글   정창기(새글)		3		1		0      
     4		2-1 답글	   정창기(답글)		2		3		1      
     5		4-1 답글	   홍길동(답글)		2		4		2      
     6		2-2 답글	   박명수(답글)		2		2		1      
     
     
     [화면출력]
     order by REF desc, STEP asc  
     글번호 제목           작성자 ...
     3		세번째게시글   정창기(새글)		3		1		0 
     2		두번째게시글   서영학(새글)		2		1		0
     6		  ㄴ2-2 답글   박명수(답글)		2		2		1
     4		  ㄴ2-1 답글   정창기(새글)		2		3		1
     5		     ㄴ4-1 답글	홍길동(답글)	2		4		2
     1		첫번째게시글   홍길동(새글)	글번호1		1		0       
     
    -------------------------------------------------------------- 
     두 번째 방법) 컬럼 2개 추가     
     [DB]
     글번호 제목           작성자 ...     REFSTEP	DEPTH
     1		첫번째게시글   홍길동(새글)	   1000 	  0
     2		두번째게시글   서영학(새글)	   2000 	  0
     3		세번째게시글   정창기(새글)	   3000 	  0
     4		2-1			   정창기(새글)	   1998 	  1
     5		4-1			   서영학(새글)	   1997 	  2
     6		2-2			   정창기(새글)	   1999 	  1
     
     
     [화면출력]
     order by REFSTEP desc  
     글번호 제목           작성자 ...     REFSTEP	DEPTH
     3		세번째게시글   정창기(새글)	   3000		  0
     2		두번째게시글   서영학(새글)	   2000 	  0
     6		  ㄴ2-2		   정창기(새글)	   1999 	  1
     4		  ㄴ2-1		   정창기(새글)	   1998 	  1
     5		    ㄴ4-1	   서영학(새글)	   1997 	  2
     1		첫번째게시글   홍길동(새글)	   1000 	  0
     
 -- 테이블 생성
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
   
   commandHandler.properties 생성 후 패키지 생성
   web.xml
   DispatcherServlet.java
   commandHandler.java
   list.jsp 생성
   
   days10.replyboard.command  패키지  
   days10.replyboard.controller  패키지  
   days10.replyboard.domain  패키지  
   days10.replyboard.persistence  패키지  
   	ㄴ IReplyBoard.java   인터페이스
   	    ㄴ ReplyBoardDAO.java 클래스
   days10.replyboard.service  패키지  
     
  </xmp>  
</div>

<script>
</script>
</body>
</html>