<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/inc/include.jspf" %>
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
   [jsp 예외처리 방법] - 클라이언트한테 예외를 알려줄 수 있는 방법들...
   1. try-catch-finally  문 사용    
   2. 예외 발생하면 -> 예외 페이지를 지정
        WEB-INF
           ㄴ error 폴더 생성
              ㄴ viewErrorMessage.jsp            
  </xmp>  
  
  <%
     String name = null;
   // ex01.jsp?name=hong
   try{
     name = request.getParameter("name"); // null
     name = name.toUpperCase(); // 대문자로 변환
   // NullPointerException   
   }catch(Exception e){
      
   }
  %>
  
  name = <%= name %><br>
  
  <br>
  <a href="ex1000.jsp">ex1000.jsp</a>
  
  
</div>

<script>
</script>
</body>
</html>