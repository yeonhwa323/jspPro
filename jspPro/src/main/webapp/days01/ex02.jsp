<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	// JSP 스크립트 종류 중 하나
	// 스크립트릿 -- 자바 코딩
	Date now = new Date();
	// 출력 형식 2024-04-18 9:48:23
	String pattern = "yyyy-MM-dd hh:mm:ss";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	String strNow = sdf.format(now);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
   <%-- [ jsp식 주석처리: Ctrl+Shift+ / ] -> html식으로 주석처리하면 오류남
    [JSP 스크립트 3가지 종류] -암기중요*****
      1) 스크립트릿 <% %>
      2) 표현식		<%= %>
      3) 선언문		<%! %> 
      
      [JSP 9가지 구성 요소]
      1. JSP 3 지시자
      	1) page 지시자		<%@ page %>
      	2) include 지시자	<%@ include %>
      	3) taglib 지시자	<%@ taglib %>
    --%>            
  </xmp>  
  
  <!-- 표현식 <% %> 사용하면 요청할때마다 페이지정보 계속 바뀜 == 동적자원/동적 페이지-->
  <h3>ex02.jsp(동적 자원) - <%= strNow %></h3>  
  <h3>ex02.jsp(동적 자원) - <span></span></h3>  
  
</div>

<script>
  let now = '<%= strNow%>'; 
  $("h3:last span").html(now);
  
</script>
</body>
</html>