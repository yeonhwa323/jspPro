<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   String contextPath = request.getContextPath();
%>
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
       p 598~9 JSP의 JSTL
       (JSP Standard Tag Library)   
             표준	태그 라이브러리
             반복, 조건, 포매팅 작업, XML 문서
             , 국제화 태그 및 SQL 태그 조작
       WEB-ILF
         ㄴ lib 폴더
         	   ㄴ jstl.jar 
         	   ㄴ standard.jar 압축풀어 넣기
         	   
       - days02.ex12_dept -> days03.ex12_dept_jstl 복사붙여넣기         
  </xmp> 
  <xmp>
    사원 검색
  </xmp> 
  
   <a href="<%= contextPath %>/days03/empsearch.htm">사원검색</a> 

</div>

<script>
</script>
</body>
</html>