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
	<a href="/jspPro/product/list.ss">상품 목록보기</a>
	<br>

  <xmp class="code">
   days09.ex05 과제...
      
   과제....
 1. 상품테이블 / 상품이미지테이블 생성 , 시퀀스 생성
--상품테이블
create table pd_tbl (
    pdCode number(30)  primary key, -- 상품코드
    pdName varchar2(50)    not null,    -- 상품명
    pdDocu varchar2(100)    not null    -- 상품설명
 );
-- 상품이미지테이블
create table pd_img (
    pdNum  number   primary key,        -- 순번
    pdCode number(30) ,
    origin_imgname varchar2(100) not null,     -- 원래이미지명
    file_imgname  varchar2(100)  not null,       -- 파일이미지명
    filelength	number,							-- 파일크기
    constraint pdCode foreign key(pdCode) references pd_tbl(pdCode) -- 상품코드
 );
--상품 + 상품이미지 테이블
 create table tbl_product (
    pdCode number(30)  primary key,     -- 상품코드
    pdNum  number   primary key,        -- 순번
    file_imgname  varchar2(100)  not null,       -- 파일이미지명 
    origin_imgname varchar2(100) not null,     -- 원래이미지명
    filelength 
        
 );
 -- 시퀀스
 create sequence seq_imgnum ; --순번
 create sequence seq_codenum; --상품코드   
 
 mvc 비슷하게 개념...
   
   실습)
   product 패키지
      ㄴ ProductDTO.java
      ㄴ productDAO.java
      ㄴ productServlet.java
      ㄴ UploadServlet_02.java
      
   product 폴더
      ㄴ ex01_list.jsp			list.ss
      ㄴ ex01_write.jsp			write.ss
      ㄴ ex01_update.jsp		update.ss
    
     [각 팀의 과제]
    상품코드
    상품명
    상품설명
    
    상품이미지
    상품이미지
    상품이미지
	    :
	[상품등록]    
	
		상품테이블
	상품코드(PK)
	상품명
	상품설명
	
		상품이미지테이블
	순번(PK)
	상품코드(FK)
	원래이미지명  a.gif
	파일이미지명  a(1).gif             
  </xmp>  
</div>

<script>
</script>
</body>
</html>