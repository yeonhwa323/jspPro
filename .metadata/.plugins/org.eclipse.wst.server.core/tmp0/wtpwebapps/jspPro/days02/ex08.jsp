<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
       [JSP 기본 내장 객체(9가지) - response ]   
       	  ㄴ 웹 브라우저에 보내는 응답 정보를 담는 객체
       	  ㄴ 헤드 정보 
       	  ****
       	   ㄴ 리다이렉트(redirect)와 포워딩(forward) 차이점
       	  	ㄴ 리다이렉트 : 방향을 바꾸다
       	  	
       	  	ex09.jsp
       	  	  아이디
       	  	  비밀번호
       	  	  [로그인] - 인증처리 페이지
       	  	  
       	  	ex09_ok.jsp
       	  	  인증 성공 -> ex09_main.jsp
       	  	  인증 실패 -> ex09.jsp?error     
       	  	  
       							name값
       	ex09.jsp				null
       	ex09.jsp?name			""
       	ex09.jsp?name=admin     "admin"
       	
       	String name = request.getParameter("name");  
  </xmp>  
</div>

<script>
</script>
</body>
</html>