<%@page import="domain.Medium_CtgrVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.Large_CtgrVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/kids.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- <script src="/jspPro/resources/cdn-main/example.js"></script> -->
</head>

<body>
	<header>
		<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
	</header> 
	<div id="wrap">
		<div id="kids-left">
			<button></button>
			<div style="padding: 10px 20px;">
				<!-- <button></button>  화면이 작아졌을 때 #kids-left메뉴 나타나게 하는거 -->
				<h2 class="kids_title_left">
					<a class="large-ctgr"
						href="http://localhost/jspPro/sentiBoard/view/kidsBoardView.jsp">유아,아동</a>
				</h2>
				<!-- <ul class="left_bar_meue" > -->
				<ul class="left-menu">
					<li><a class="medium-ctgr"
						href="http://localhost/jspPro/sentiBoard/list/kids_all.jsp">ALL</a></li>
					<li><a class="medium-ctgr"
						href="http://localhost/jspPro/sentiBoard/list/kids_all.jsp">의류</a></li>
					<li><a class="medium-ctgr"
						href="http://localhost/jspPro/sentiBoard/list/kids_all.jsp">신발,가방</a></li>
					<li><a class="medium-ctgr"
						href="http://localhost/jspPro/sentiBoard/list/kids_all.jsp">아동,홈</a></li>
				</ul>
				<!-- </ul> -->
			</div>
		</div>
		<div class="img">
			<img alt=""
				src="https://img.29cm.co.kr/next-product/2024/02/13/ff89213143a648d89153a99a6feb87c6_20240213104043.jpg?width=2000">
		</div>
	</div>
	<div class="css-4e43p e8dmgjc1" style="height: 130px;">
		<div class="css-zl0y5r e16y5wrz0"></div>
	</div>
	<div class="css-iwxnhl euxw2yv1">
		<hr class="css-ln2n0u euxw2yv3">
		<hr class="css-1kak7cd euxw2yv3">
		<ul class="css-1kc1i5k euxw2yv2">
			<div role="grid" class="css-kdcvh2" tabindex="0"
				style="position: relative; width: 100%; max-width: 100%; height: 822px; max-height: 822px;">
				<div role="gridcell"
					style="top: 30px; left: 10px; width: 362px; writing-mode: horizontal-tb; position: absolute;">
					<div class="css-veh7ha elhzesg0">
						<a class="css-1jypvcz e1qv5i7p8" href="">
							<!-- 링크 작업 필요 -->
							<span class="css-1c39dt4 e1qv5i7p0"></span>
							<div class="css-u58y5m e1qv5i7p1">
								<img
									src="https://img.29cm.co.kr/cms/202404/11ef05f9bc97b865b9bb61763f2cb69c.jpeg?width=500"
									class="css-mqd1xo e1qv5i7p3">
							</div>
							<div class="css-10mzaug e1qv5i7p4">
								<h1 class="css-1se6r14 e1qv5i7p6">함께 입는 기쁨 마리떼 앙팡</h1>
								<p class="css-jg1sml e1qv5i7p7">5월 가정의 달을 맞이하여 마리떼 어덜트 라인과
									함께 패밀리 룩을 연출할 수 있는 마리떼 앙팡 라인의 단독 할인 소식을 만나보세요.</p>
							</div>
						</a>
						<div class="css-15xwjg0 e1b74qft0">
							<a class="css-mn2zdd e1b74qft1" href="">
								<!-- 링크 작업 필요 -->
								<img
								src="https://img.29cm.co.kr/next-product/2024/04/23/9613fe48e8fa4d2fa8f4110a3f67bda8_20240423144221.jpg?width=150"
								class="css-nt3lq3 e1b74qft2">
								<div class="css-161seae e1b74qft3">
									<span class="css-16b7yk2 e1b74qft4">마리떼 앙팡</span><span>ENFANT
										W RAGLAN REGULAR LOGO SEMI CROP TEE navy</span><span
										class="css-pu7sky e1b74qft5">15% 33,150<span
										class="css-0 e1b74qft6">won</span></span>
								</div>
							</a>
							<div class="css-16j3p2r e1b74qft7">
								<button class="css-1u7zeg9 e1b74qft8">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="14"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="0.7"></path></svg>
									<span class="css-1afbq5h e1b74qft9">34</span>
								</button>
							</div>
						</div>
						<div class="css-15xwjg0 e1b74qft0">
							<a class="css-mn2zdd e1b74qft1" href="">
								<!-- 링크 작업 필요 -->
								<img
								src="https://img.29cm.co.kr/next-product/2024/04/23/b86ba261c46b4bb5aafe9eb3542f8fda_20240423144309.jpg?width=150"
								class="css-nt3lq3 e1b74qft2">
								<div class="css-161seae e1b74qft3">
									<span class="css-16b7yk2 e1b74qft4">마리떼 앙팡</span><span>ENFANT
										W CLASSIC LOGO CROP TEE navy</span><span class="css-pu7sky e1b74qft5">10%
										35,100<span class="css-0 e1b74qft6">won</span>
									</span>
								</div>
							</a>
							<div class="css-16j3p2r e1b74qft7">
								<button class="css-1u7zeg9 e1b74qft8">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="14"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="0.7"></path></svg>
									<span class="css-1afbq5h e1b74qft9">12</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</ul>
	</div>
	<br>
	<br>
	<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>
<script>
</script>
</body>
</html>
