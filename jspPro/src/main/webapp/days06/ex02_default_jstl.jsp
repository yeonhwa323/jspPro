<%@ page import="com.util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>
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
     [ ex02_default_jstl.jsp ]              
  </xmp>
  
  <c:choose>
  	<!-- EL 연산자 == eq -->
  	<%-- <c:when test="${ logonID eq null }"> --%>
  	<c:when test="${ empty logonID }">
		<div id="logon">
    	<form action="ex02_logon.jsp">
       아이디 : <input type="text" name="id" value="admin" /><br>
       비밀번호 : <input type="password" name="passwd" value="1234" /><br>
       <input type="submit" value="로그인" />
       <input type="button" value="회원가입" />
       <span style="color:red;display: none">로그인 실패했습니다.</span> 
   </form>
  </div>
  	</c:when>
  	<c:otherwise>
  		<div id="logout">
    	[ <%= logonID %> ]님 환영합니다<br>
    	<a href="ex02_logout.jsp">로그아웃</a>
  		</div>  
  	</c:otherwise>
  </c:choose>
  
  <br>
  <!-- 로그인X -->
  <a href="/jspPro/cstvsboard/list.htm">게시판</a><br>
  
  <!-- 로그인O -->
  EL 연산자 != ne ! not
  <%-- <c:if test="${ logonId != null }"> --%>
  <%-- <c:if test="${ logonId nq }"> --%>
  <c:if test="${ not empty logonId }">
  	<a href="#">자료실</a><br>
  	<a href="#">일정관리</a><br>
  </c:if>  
  
  <!-- 로그인 O + admin 관리자로 로그인 -->
  <!-- EL : and 연산자 --> 
  <c:if test='${ not empty logonId and logonID eq "admin" }'>
  	<a href="#">급여관리</a><br>
  	<a href="#">인사관리</a><br>
  </c:if>
     
</div>

<script>
  // 로그인 실패하고 다시 ex07_default.jsp?logon=fail  이동
  if( ${ param.logon eq "fail"} ){
     $("#logon span")
        .fadeIn()
        .fadeOut(3000);
  }        
</script>
</body>
</html>