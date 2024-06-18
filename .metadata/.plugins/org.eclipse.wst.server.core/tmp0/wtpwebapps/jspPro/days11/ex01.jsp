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
     1. 지도를 출력할 컨테이너 div 태그 선언
          id="googleMap"
     2. new google.maps.Map() 객체 생성
          
  </xmp>  
  
  <a href="ex01_02.jsp?lat=37.5001609&lng=127.0331836">(주)쌍용교육센터</a>
  <br>
  
  <div id="googleMap" style="width: 100%;height:400px"></div>
  
</div>

<script>
  function myMap() {
     var mapOptions = {
           center:new google.maps.LatLng(51.508742, -0.120850) // 영국 위도,경도값
             , zoom: 5
     };
     var map = new google.maps.Map( 
           document.getElementById("googleMap") 
           , mapOptions);
  }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMZa_JnX7cpbVL8ouN-ZugjqgPkW_FuxU&callback=myMap"></script>

<!-- Maps JavaScript API 검색
구글 지도 API 키 발급 받는 방법 (Maps JavaScript API)
https://blog.cosmosfarm.com/archives/389/%EA%B5%AC%EA%B8%80-%EC%A7%80%EB%8F%84-api-%ED%82%A4-%EB%B0%9C%EA%B8%89-%EB%B0%9B%EB%8A%94-%EB%B0%A9%EB%B2%95-maps-javascript-api/
 내 API : <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMZa_JnX7cpbVL8ouN-ZugjqgPkW_FuxU&callback=myMap"></script>
 -->
</body>
</html>