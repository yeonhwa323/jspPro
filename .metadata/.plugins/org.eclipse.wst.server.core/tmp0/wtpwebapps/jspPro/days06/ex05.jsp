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
     [ex05.jsp]
     
     1. 모델2구조의 MVC패턴
     
     	1) 모델1구조
     	  [list.jsp] -> 요청 ->  list.jsp
     	  			 <- 응답 <-
     	  			 
     	2) 모델2구조
     	  [list.htm] -> 요청 -> [서버]
     	  						로직처리 담당자(서블릿)
     	  						request.setAttribute("list", list);
     	  						   ↓
     	  						출력담당자(jsp)
     	  						list.jsp
     	  						request.getAttribute("list", list)
     	  			 <- 응답 <-
           여러 형태의 디자인패턴 MVP, [MVC패턴], MVVC 등등
      
      2. MVC 패턴에 대한 이해
      	Model 	   - 각각의 요청마다 로직을 처리 (비즈니스 영역)        --> 클래스
      	View 	   - 사용자가 보게될 화면 출력 담당 (프레젠테이션 영역) --> 클래스
      	
      	Controller - [요청->응답] 흐름 제어 담당  						--> 서블릿
      				 [모든 요청 받아 응답의 전체과정 처리 흐름 제어 담당]
      	
      	사용자 list.htm -> 요청 -> 
      	
      3. 실습	   [게시판 구현 -> MVC 패턴으로 수정]
      	1) days04 > board 폴더 복사해서 days06 폴더 붙이기
      		M[]V]C
      		
      	2) days04.board 패키지 - 서블릿 List.java
      	   days04.board.domain 패키지 - VO, DTO
      	   days04.board.persistence 패키지 - DAO
      	   
      	   days06.mvc.domain 패키지
      	   days06.mvc.persistence 패키지
      	   days06.mvc.command 패키지 - [M]VC
      	   days06.mvc.service 패키지
      	   days06.mvc.controller 패키지 - MV[C]
      	   
       3) 모든 요청 -> 흐름 제어 MV[C] 컨트롤러
       	  ㄱ. 서블릿
              url-pattern : 4가지
              				 /			[*.do](*.확장자) 
          ㄴ. /board/list.do,write.do,edit.do,delete.do  약속
              파일생성  
              WEB-INF 폴더 안 - commandHandler.properties
              /board/list.do=모델
              /board/write.do=모델
          ㄷ. 컨트롤러(controller) 역할 - DispatcherServlet
          모든 요청 -> list.do, write.do 등등
          			   1) 요청 url 파악
          			   2) commandHandler.properties 찾아서
          			   	  list.do=[모델 객체]
          			   	  요청 처리할 모델 객체를 얻어와서
          			   	      implement 할 CommandHandler.java 인터페이스 process()
          			   	   CommandHandler command = ListHandler.java
          			   	   							  process() r.s()
          			   	   list.jsp +포워딩/리다이렉트 = command.process();
       4) web_days05.xml
          web.xml
       5) [M]VC
          ㄱ. CommandHandler 인터페이스
          		String    list.jsp, write.jsp   M[V]C 뷰
          		process()		r.s(결과물 저장)
          		
          ㄴ. 글목록 [M]VC  ListHandler.java == List.java
       
       
        
  </xmp>
  
  <a href="/jspPro/board/list.do">/board/list.do</a>
  <!-- URL값 // http://localhost/jspPro/board/list.do -->  
 
 
<!--     수업 정리
[ 모델 2구조의 MVC 디자인 패턴 ]
1. DS.java
	chMap<url, H>
	init(){
	}
	destroy(){} -->
</div>

<script>

</script>
</body>
</html>







