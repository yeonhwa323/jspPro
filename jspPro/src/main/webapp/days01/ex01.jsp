<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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
      1. JSP/Servlet ? Java 웹 기술
       ㄱ. Servlet - 먼저나옴.
       ㄴ. JSP - Servlet 다음 나옴.
      2. JSP = Java Server Page
            자바 언어 + 서버에서 실행되는 페이지
      3. 처리 과정
      클(브라우저) -> ??.jsp 요청 -> 웹서버(아파치) -> WAS(웹 어플리케이션 서버)
      												   [톰캣],웹로직,제티,JBoss 등등
      												   [웹 컨테이너]박스안에서 자바 객체 생성
      												   [웹 컨테이너 = 자바 객체 생성]
      					응답						<-
      
      4. 톰캣 9.0.XX -> 톰캣에 따라 나머지 버전들도 달라진다.
      	JSP 2.3
      	Servlet 4.0
      	EL 3.0
      	WebSocket 1.1
     
     [ 2주 JSP 수업 내용 ]
     1. JSP 페이지의 구성요소 
     2. JSP 3가지 지시자 - 
     	1) page
     	2) include
     	3) taglib
     3. JSP 스크립트 - 
     	1) 스크립트릿
     	2) 표현식
     	3) 선언문
     4. JSP 처리 과정 
     5. 웹 어플리케이션 배포
     6. 페이지 모듈화
     7. 자바빈(java bean)과 액션태그
     8. JSP 쿠키, 세션 - 상태관리
     9. EL 3.0 (표현언어)
        Expression Language
     10. JSTL( 표준 태그 라이브러리)
     11. 커넥션풀( Connection Pool )
     12. 서블릿(Servlet)
     13. MVC 패턴  ***
     14. 필터(Filter)
     15. ServletContextListener 구현
     
     16. 실습 예제
        방명록
        게시판
        답변형 게시판
        파일 첨부 게시판(자료실)
        회원가입 + 인증처리
        등등
        
        차트
        Ajax
        구글맵
        OPEN API - 누구나 사용할수있음 (ex: 다음 카카오 우편번호 검색 API)
        등등  
        
         
      	5. 정적 페이지   ex02.html
           동적 페이지	 ex02.jsp
  </xmp>  
</div>

<script>
</script>
</body>
</html>