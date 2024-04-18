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
  
  </xmp>  
  
  <p id="demo">
  <%
  // JSP 11 기본 내장 객체 : request, out	
  // 스트립트릿
  	int sum = 0;
    for(int i=1; i<=10; i++){
    	sum += i;
    	//System.out.printf("%d+", i);
    	out.print( i + (i==10 ?"":"+"));
    }
   // System.out.printf("=%d", sum);
   out.print("=" + sum);
  
  %>
  </p>
  
</div>

<script>
/*
	// js 1+2+3+4+5+6+7+8+9+10=55
	const arr = [];
    for (var i = 1; i <= 10; i++) arr.push(i); 
    let result = arr.reduce((total, value)=> total+value);
    $("#demo").html( `\${arr.join("+")}=\${result}` );
*/
 // $ 앞 \(역슬래시) 사용안하면 el 문법으로 인식됨.
 
 
</script>

</body>
</html>