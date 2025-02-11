<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<!-- jquery CDM방식 주석<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->
<link rel="stylesheet" href="/jspPro/resources/cdn-main/example.css">
<script src="/jspPro/resources/cdn-main/example.js"></script>
<style>
span.material-symbols-outlined {
	vertical-align: text-bottom;
}
</style>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#accordion" ).accordion();
    $( "#tabs" ).tabs();
  } );
  </script>
</head>
<body>
	<header>
		<h1 class="main">
			<a href="#" style="position: absolute; top: 30px;">yeon HOme</a>
		</h1>
		<ul>
			<li><a href="#">로그인</a></li>
			<li><a href="#">회원가입</a></li>
		</ul>
	</header>
	<h3>
		<span class="material-symbols-outlined">view_list</span> jsp days00
	</h3>
	<div>
		<xmp class="code"> [Ex03_02.java 출력함수 dispSalgrade.jsp 복붙] </xmp>

		<div id="accordion">
			<!-- <h3>Section 1</h3>
 	 <div>
	    <p>
	    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
	    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
	    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
	    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
	    </p>
	  </div> 
	  -->
			<!--    키           값
	 Entry<SalgradeVO, ArrayList<DeptEmpSalgradeVO>> entry 
	 -->
			<c:forEach items="${ map }" var="entry">
				<h3>${ entry.key }</h3>
				<!-- 1등급   (     700~1200 ) - 2명   -->
				<%-- <h3>${ entry.key.grade }등급 (${ entry.key.losal } ~ ${ entry.key.hisal }) - ${ entry.key.cnt }</h3> --%>
				<div>
					<p>
						<!-- entry.value == ArrayList<DeptEmpSalgradeVO> -->
						<c:forEach items="${ entry.value }" var="vo">
							<li>${ vo }</li>
						</c:forEach>
					</p>
				</div>
			</c:forEach>
		</div>

		<hr>
		<div id="tabs">
			<ul>
				<!-- 
       <li><a href="#tabs-1">Nunc tincidunt</a></li>
       <li><a href="#tabs-2">Proin dolor</a></li>
       <li><a href="#tabs-3">Aenean lacinia</a></li> 
       -->
				<c:forEach items="${ map }" var="entry">
					<li><a href="#tabs-${ entry.key.grade }">${ entry.key.grade }등급</a></li>
				</c:forEach>
			</ul>

			<c:forEach items="${ map }" var="entry">
				<div id="tabs-${ entry.key.grade }">
					<p>
						<c:forEach items="${ entry.value }" var="vo">
							<li>${ vo }</li>
						</c:forEach>
					</p>
				</div>
			</c:forEach>
			<!-- 
     <div id="tabs-1">
       <p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>
     </div>
     <div id="tabs-2">
       <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
     </div>
     <div id="tabs-3">
       <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>
       <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
     </div>
      -->
		</div>

	</div>

	<script>
</script>
</body>
</html>