<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	// 스크립트릿(자바코딩)
	// http://localhost/jspPro/days01/ex03_ok.jsp
	//?
	//title=입력값 			파라미터
	//&
	//author=입력값 		파라미터
	
	// [JSP 페이지에 기본 내장 객체(11개)] - request 객체(이미생성되어있어 새로운 객체 생성할 필요X,가져다쓰면됨)
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	
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
    EL 3.0 [문법중하나]
    표현 언어 - param 객체
    != 표현식 
    (표현언어[출력하기위한언어]와 표현식[출력하기위한식]은 같지않음)                 
  </xmp>  

</div>

EL 책 제목 : ${ param.title }<br> 
EL 저자 : ${ param.author }<br> 

<script>
</script>
</body>
</html>