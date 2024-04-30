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
  <xmp class="code">
   days09.ex05 과제...
      
   과제....
 1. 상품테이블 / 상품이미지테이블 생성 , 시퀀스 생성
 --상품테이블
 create table pd_tbl (
    pd_code   number(50)  primary key, -- 상품코드
    pd_name varchar2(50)    not null,    -- 상품명
    pd_docu varchar2(100)    not null    -- 상품설명
 );
 -- 상품이미지테이블
 create table pd_img (
    pd_img_num  number   primary key,        -- 순번
    pd_code number(50) ,
    origin_img_name varchar2(100) not null,     -- 원래이미지명
    file_img_name  varchar2(100)  not null,       -- 파일이미지명
    constraint pd_code foreign key(pd_code) references pd_tbl(pd_code) -- 상품코드
 );
 -- 시퀀스
 create sequence seq_pd_img_num ; --순번
 create sequence seq_pd_code_num; --상품코드   
 
 mvc 비슷하게 개념...
   
   실습)
   product 패키지
      ㄴ ProductDTO.java
      ㄴ productDAO.java
      ㄴ productServlet.java
      
   product 폴더
      ㄴ ex04_list.jsp			list.ss
      ㄴ ex04_write.jsp			write.ss
      ㄴ ex04_update.jsp		update.ss
      
     
     
     
     
     
     
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