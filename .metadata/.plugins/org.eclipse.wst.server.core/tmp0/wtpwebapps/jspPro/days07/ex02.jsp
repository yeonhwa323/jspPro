<%-- <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
      [EL 연산자]
      
      [삼항 연산자]	 ?  :
      
      [ empty 연산자 정리 ]
      값 null		true
      ${ empty list }
      값 ""			true
      값 0			true
      Collection	true
      Map 			true
      
      ArrayList<BoardDTO> list = null;
      ArrayList<BoardDTO> list = new ArrayList<>();
      <!-- 
      생성은 했으나, 요소가 하나도 안들어있을 경우도 null 값으로
      true 값 출력 
      -->
      
      외의 모든 경우는 false 이다.
  </xmp>
  <!-- EL 3.0 도입 - EL n 변수를 생성하고 10 값을 할당 -->
  ${ n = 10 } <br>
  <!-- EL 3.0 도입 - 두 개의 수식을 ; 으로 연결할 수 있고 뒤에 값을 출력한다. -->
  <!-- a b 의 값을 연산하고 b 의값을 출력한다 -->
  ${ 1+1; 10+10; 3+3 } <br>
  
  <hr>
  <%
  	String title = "JSP-EL 수업 중~~";
  	request.setAttribute("title", title);
  %>
  제목 : <%= title %><br>
  <%= "제목 : " +title %><br>
  제목 : ${ requestScope.title } <br>
  제목 : ${ title }<br>  <!-- 오류 X 출력도 X : request저장소에 값을 담아둬야 출력가능 -->
  ${ "제목 : " += title } <br> <!-- += : EL 문자열연결연산자 -->
  
  <hr>
  <!-- EL 논리연산자 : && and , || or , ! not -->
  <hr>
  ${ 100 == 10 } <br>			<!-- false -->
  ${ 100 eq 10 } <br>			<!-- false -->
  ${ 100 != 10 } <br>			<!-- true -->
  ${ 100 ne 10 } <br>	
    
  <hr>
  
  ${ 100 > 10 } <br>			<!-- true -->
  ${ 100 gt 10 } <br>			<!-- true -->
  ${ 100 < 10 } <br>			<!-- false -->
  ${ 100 lt 10 } <br> 			<!-- false -->
    
  <hr>
  
  ${ 100 >= 10 } <br>			<!-- true -->
  ${ 100 ge 10 } <br>			<!-- true -->
  ${ 100 <= 10 } <br>			<!-- false -->
  ${ 100 le 10 } <br>			<!-- false -->
    
  <hr>
  
  ${ 10 + 3 }<br> <!-- 13 -->
  ${ 10 - 3 }<br> <!-- 7 -->
  ${ 10 * 3 }<br> <!-- 30 -->
  ${ 10 / 3 }<br> <!-- div(/) 3.3333333333333335 -->
  ${ 10 % 3 }<br> <!-- mod(%) 1 -->
  <hr>
  ${ "10" + 3 } <br> <!-- 13 -->
  ${ null + 3 } <br> <!-- null일 경우 0으로 처리된다. 결과 : 3 --> 
  <!-- java + 덧셈연산자, 문자열 연결 연산자 -->
  ${ "한글" + 3 } <br> <!-- NumberFormatException: For input string: "한글" --> 
  
  <hr>
</div>

<script>

</script>
</body>
</html>








 --%>