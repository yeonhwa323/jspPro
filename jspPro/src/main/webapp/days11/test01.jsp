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
      test01.jsp               
  </xmp>
  
  <form action="test01_ok.jsp">
   이름1 : <input type="text"  id="name1" name="name"  value="홍1"><br>
   나이1 : <input type="text"  id="age1"  name="age"   value="1"  ><br>
   
   이름2 : <input type="text"  id="name2" name="name" value="홍2"><br>
   나이2 : <input type="text"  id="age2"  name="age"   value="2"><br>
   
   이름3 : <input type="text"  id="name3" name="name" value="홍3"><br>
   나이3 : <input type="text"  id="age3"  name="age"   value="3"><br>
   <input type="submit">
</form>
    
</div>

<script>
</script>
</body>
</html>