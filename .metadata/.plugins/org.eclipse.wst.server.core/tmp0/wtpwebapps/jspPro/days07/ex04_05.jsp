<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="days05.MemberInfo"%>
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
    JSTL c(코어)
    1) 제어문 : c:if, c:choose, c:forEach, c:forTokens
    2) 변수 지원 : c:set, c:remove 
    3) URL 처리 : c:import, c:redirect, c:url   X
    4) 기타 : c:catch, [c:out(JspWriter 출력)]->출력담당임을 알아두기                   
  </xmp>  
  <%
  	Map<String, String> map = new HashMap<>();
  	map.put("id", "admin");
  	map.put("passwd", "1234");
  %>
  <c:set var="map" value="<%= map %>"></c:set>
  
  id = ${ map.id }<br>
  passwd = ${ map.passwd }<br>
  
  <hr>
  <%
  	MemberInfo member = new MemberInfo();
  	member.setId("admin");
  	member.setName("관리자");
  	// member.setEmail("admin@naver.com");
  %>
  <!-- vo = valueObject -->
  <c:set var="vo" value="<%= member %>"></c:set>
  member.id = ${ vo.id }<br>
  member.name = ${ vo.name }<br>
  
  <c:set target="<%= member %>" property="email" value="admin@naver.com"></c:set>
  <c:set target="${ vo }" property="email" value="admin@naver.com"></c:set>
  
  member.email = ${ vo.email }<br>
  
  <%
  	String name = "홍길동";
  	request.setAttribute("name", name);
  %>
  
  <hr>
  <!-- 4가지 형태 알기 -->
  name(표현식) = <%= name %><br>
  <c:set var="name1" value="${ name }" /> <!-- EL -->
  <c:set var="name2" value="홍길동" /> <!-- String -->
  <c:set var="name3" value="<%= name %>" /> <!-- 표현식 -->
  <c:set var="name4" scope="page"> <!-- 설정안하면 scope기본값: page -->
  	${ name }
  </c:set>
  
</div>

<script>
</script>
</body>
</html>