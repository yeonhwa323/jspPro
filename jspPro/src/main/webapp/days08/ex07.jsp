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
<script src="httpRequest.js"></script>
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
  	js ajax     ex07_dept.json     
  	json -> js Object 변환
  	출력을 원하는 태그로 만들어서 출력 ol/li, table, select 등           
  </xmp> 
  
  <button type="button">ex07_dept.json -> ajax -> 태그 출력</button>
  
  <br>
  <br>
  
  <d id="demo"></d> 
  
</div>

<script>
	$("button").on("click", function(){
		sendRequest("ex07_dept.json", null, callback, "GET");
	
	function callback(){
		if(httpRequest.readyState == 4 ){ // 서버 요청 완료
			if(httpRequest.status == 200) { // 응답성공
				
				let deptJson = httpRequest.responseText;
						
				//$("#demo").html(deptJson);
				
				// json -> js Object 변환
				let deptObj = JSON.parse(deptJson);
				//$("#demo").html(deptObj.departments.length);
				
				const deptArray = [];
				for (let dept of deptObj.departments) {
					//console.log(dept.deptno + "/" + dept.dname +"/" + dept.loc );
					$("#demo").append(`<li>\${dept.dname}</li>`);
					deptArray.push(dept);
				}
				// deptArray 사용해서 처리..
				
			} else {
				alert("에이작스 실패 : " + httpRequest.status );
			}
		} 
	}
});

</script>
</body>
</html>