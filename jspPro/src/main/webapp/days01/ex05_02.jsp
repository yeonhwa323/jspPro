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
  
  정수  : <input type="text" id="num" name="num"><br> 
  <p id="demo">
  <%
    // [암기]
    // ex05_02.jsp			 null
    // ex05_02.jsp?num		  ""(빈문자열)
    // ex05_02.jsp?num=3	  "3"
    String num = request.getParameter("num") ;
    int n, sum = 0;
    if( num != null && !num.equals("")){
    	n = Integer.parseInt(num);
    	for(int i=1; i<=n; i++){
  %><%= i %>+<% 
		  sum += i;
    	}// for
  %>=<%= sum %><%
    } // if
  %>
  </p>
</div>

<script>
	// js[jq] [1]
	$(function (){
	     $(":text[name=num]")
	       .css("text-align","center")
	       .val('${ param.num }')         // [2]
	       .keyup(function(event) {
	          
	          if(event.which == 13){
	             let num = $(this).val();
	        	 location.href = `ex05_02.jsp?num=\${num}`;
	             
	          } // if 
	          
	       })
	       .select();    //[2]
	  });	
	
</script>
</body>
</html>