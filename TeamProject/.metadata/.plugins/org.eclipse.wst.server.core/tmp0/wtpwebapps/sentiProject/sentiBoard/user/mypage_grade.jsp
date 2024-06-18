<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table,
	caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, menu, nav, output,
	ruby, section, summary, time, mark, audio, video, input, textarea,
	button, select {
	margin: 0;
	padding: 0;
}

*, *::before, *::after {
	box-sizing: border-box;
}

div {
	display: block;
	unicode-bidi: isolate;
}

ol, ul, li {
	list-style: none;
}

article, aside, details, figcaption, figure, footer, header, main, menu,
	nav, section, summary {
	display: block;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
	unicode-bidi: isolate;
}

@media (min-width: 541px) {
    .css-1t4xf4n {
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        padding-top: 190px;
    }
}

@media ( min-width : 541px) {
	.mid-div {
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-pack: justify;
		-webkit-justify-content: space-between;
		justify-content: space-between;
		min-width: 1000px;
		max-width: 1600px;
		margin: 40px auto 0;
		padding: 0 50px 100px;
	}
}

.mid-div {
	position: relative;
}

@media ( min-width : 541px) {
	.mid-left {
		flex: 0 0 auto;
		width: 180px;
		margin-right: 50px;
	}
}

.name {
	font-size: 40px;
	font-weight: 700;
	line-height: 1;
	color: rgb(0, 0, 0);
	word-break: break-all;
}

.like {
	margin: 27px 0px 30px;
	font-size: 14px;
}

.like-li {
	padding: 4px 0px 5px;
}

.like-a {
	font-size: 15px;
	font-weight: 600;
	color: rgb(48, 48, 51);
}

a {
	-webkit-text-decoration: none;
	text-decoration: none;
	outline: none;
}

@media ( min-width : 541px) {
	.mid-top {
		position: absolute;
		top: 0px;
		right: 50px;
		left: 280px;
		height: 150px;
		padding: 25px 0px;
	}
}

@media ( min-width : 541px) {
	.mid-top {
		height: 150px;
		padding: 25px 0px;
	}
}

.mid-top {
	display: flex;
	line-height: 1;
	background-color: rgb(48, 48, 51);
}

.user-grade {
	position: relative;
	padding: 0px 20px;
	width: 50%;
	border-left: none;
}

@media ( min-width : 541px) {
	.grade1 {
		display: flex;
		flex-direction: column;
		-webkit-box-pack: justify;
		justify-content: space-between;
		height: 100%;
	}
}

.grade1 {
	/* display: block; */
	color: rgb(255, 255, 255);
}

.sale {
	position: absolute;
	right: 20px;
	bottom: 0px;
	height: 32px;
	padding: 0px 20px;
	font-size: 14px;
	font-weight: 300;
	line-height: 30px;
	color: rgb(255, 255, 255);
	border: 1px solid rgb(228, 228, 228);
	border-radius: 16px;
}

.grade2 {
	position: relative;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 14px;
	font-weight: 600;
	color: rgb(160, 160, 160);
}

.grade2::after {
	content: "";
	transform: rotate(45deg);
	display: inline-block;
	width: 5px;
	height: 5px;
	margin-left: 3px;
	border-top: 1px solid rgb(160, 160, 160);
	border-right: 1px solid rgb(160, 160, 160);
}

@media ( max-width : 1440px) {
	.grade-color {
		font-size: 30px;
	}
}

.grade-color {
	display: block;
	font-size: 50px;
	font-weight: 400;
	transition: font-size 0.25s ease-in-out 0s;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
	unicode-bidi: isolate;
}

.user-coupon, .user-mileage {
	position: relative;
	width: 25%;
	padding: 0px 20px;
	border-left: 1px solid rgb(93, 93, 93);
}

.shop-info {
	margin-bottom: 8px;
	font-size: 17px;
	line-height: 26px;
	font-weight: 800;
	color: rgb(48, 48, 51);
}

h4 {
	display: block;
	margin-block-start: 1.33em;
	margin-block-end: 1.33em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
	unicode-bidi: isolate;
}

@media ( min-width : 541px) {
	.mid-mid {
		-webkit-flex: 1;
		-ms-flex: 1;
		flex: 1;
		padding-top: 190px;
	}
}

.delivery-view {
	display: inline-block;
	padding: 10px 0px;
	font-size: 15px;
	color: rgb(48, 48, 51);
	font-weight: 600;
}

.shop-info-a {
	display: inline-block;
	padding: 10px 0px;
	font-size: 15px;
	color: rgb(93, 93, 93);
	font-weight: 200;
}

.id {
	margin-top: 30px;
}

.id-info {
	margin-bottom: 8px;
	font-size: 17px;
	line-height: 26px;
	font-weight: 800;
	color: rgb(48, 48, 51);
}

.id-a {
	display: inline-block;
	padding: 10px 0px;
	font-size: 15px;
	color: rgb(93, 93, 93);
	font-weight: 200;
}

.service-center {
	margin-top: 30px;
}

.service-info {
	margin-bottom: 8px;
	font-size: 17px;
	line-height: 26px;
	font-weight: 800;
	color: rgb(48, 48, 51);
}

.service-a {
	display: inline-block;
	padding: 10px 0px;
	font-size: 15px;
	color: rgb(93, 93, 93);
	font-weight: 200;
}

.information {
	position: relative;
	margin-top: 30px;
}

.service-center-guide {
	position: absolute;
	top: 0px;
	left: 0px;
	overflow: hidden;
	width: 1px;
	height: 1px;
	margin: 0px;
	padding: 0px;
	white-space: nowrap;
}

.service-email {
	font-size: 12px;
	line-height: 1;
	color: rgb(160, 160, 160);
}

.go-go {
	margin-top: 20px;
}

.go-go-go {
	display: block;
	box-sizing: border-box;
	width: 150px;
	height: 40px;
	padding-left: 12px;
	font-size: 12px;
	line-height: 38px;
	color: rgb(48, 48, 51);
	border: 1px solid rgb(228, 228, 228);
	border-radius: 2px;
}

@media ( min-width : 541px) {
	.mid-mid {
		-webkit-flex: 1;
		-ms-flex: 1;
		flex: 1;
		padding-top: 190px;
	}
}

body, input, select, textarea, button, a {
	-webkit-text-size-adjust: none;
	font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic,
		'나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}
</style>
<style>
.css-tmdn83 {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-title-m-medium-font-family);
	font-weight: var(--ruler-semantic-typography-title-m-medium-font-weight);
	line-height: var(--ruler-semantic-typography-title-m-medium-line-height);
	font-size: var(--ruler-semantic-typography-title-m-medium-font-size);
	color: var(--ruler-semantic-color-text-primary);
}

.css-1heuese {
	display: flex;
	border-bottom: 4px solid rgb(0, 0, 0);
	margin-top: 40px;
}

.css-19yreqa {
	cursor: pointer;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	height: 49px;
	font-size: 14px;
	color: rgb(255, 255, 255);
	background-color: rgb(0, 0, 0);
	width: auto;
	padding: 0px 30px;
	border: none;
}

.css-140aynn {
	cursor: pointer;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	height: 49px;
	font-size: 14px;
	color: rgb(160, 160, 160);
	background-color: rgb(255, 255, 255);
	width: auto;
	padding: 0px 30px;
	border: none;
}

.css-tr1wkt {
	width: 100%;
}

.css-1lads1q {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 100%;
}

.css-1ofqig9 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	width: 100%;
}

.css-f9qh2y {
	display: flex;
	flex-direction: row;
	min-height: 50px;
	border-bottom: 1px solid rgb(212, 212, 212);
}

.css-f9qh2y:first-of-type {
	border-bottom: 1px solid var(--ruler-scale-color-gray-950);
}

.css-r9nzd6 {
	display: flex;
	flex: 1 1 0px;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	min-height: 50px;
}

.css-17x39sj {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-l-font-family);
	font-weight: var(--ruler-semantic-typography-text-l-font-weight);
	line-height: var(--ruler-semantic-typography-text-l-line-height);
	font-size: var(--ruler-semantic-typography-text-l-font-size);
	color: var(--ruler-semantic-color-text-secondary);
}

.css-1o3oomb {
	margin-top: 60px;
}



.css-19djemi {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	width: 100%;
	margin-top: 30px;
	border-top: 4px solid var(--ruler-scale-color-gray-950);
}

.css-1vqrq36 {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-xxl-bold-font-family);
	font-weight: var(--ruler-semantic-typography-text-xxl-bold-font-weight);
	line-height: var(--ruler-semantic-typography-text-xxl-bold-line-height);
	font-size: var(--ruler-semantic-typography-text-xxl-bold-font-size);
	color: var(--ruler-semantic-color-text-primary);
}

.css-zp7ii8 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	min-height: 50px;
	border-bottom: 1px solid #d4d4d4;
}

.css-n0ir3y:first-of-type {
    -webkit-flex: 0 0 100px;
    -ms-flex: 0 0 100px;
    flex: 0 0 100px;
}

.css-n0ir3y {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex: 1 1 0;
    -ms-flex: 1 1 0;
    flex: 1 1 0;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    min-height: 50px;
    -webkit-flex: 1 1 0;
    -ms-flex: 1 1 0;
    flex: 1 1 0;
    padding: 15px 1%;
}

.css-ery12n {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xxl-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-xxl-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-xxl-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-xxl-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
    text-align: center;
    white-space: pre;
}

.css-8xai2a {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-line-height);
    font-size: var(--ruler-semantic-typography-text-l-font-size);
    color: var(--ruler-semantic-color-text-secondary);
    text-align: center;
    white-space: nowrap;
    padding-top: 7px;
    padding-bottom: 6px;
}

.css-izpnhq {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-l-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-19ft22s {
	margin-top: 60px;
}

.css-192or3:first-of-type {
	margin-top: 0;
}

.css-192or3 {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-xxl-bold-font-family);
	font-weight: var(--ruler-semantic-typography-text-xxl-bold-font-weight);
	line-height: var(--ruler-semantic-typography-text-xxl-bold-line-height);
	font-size: var(--ruler-semantic-typography-text-xxl-bold-font-size);
	color: var(--ruler-semantic-color-text-primary);
	margin-top: 60px;
}

.css-1hw29i9 {
	margin-top: 12px;
}

.css-vuajq3 {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-xxl-bold-font-family);
	font-weight: var(--ruler-semantic-typography-text-xxl-bold-font-weight);
	line-height: var(--ruler-semantic-typography-text-xxl-bold-line-height);
	font-size: var(--ruler-semantic-typography-text-xxl-bold-font-size);
	color: var(--ruler-semantic-color-text-secondary);
	margin-top: 60px;
}

.css-130oa9n {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-l-font-family);
	font-weight: var(--ruler-semantic-typography-text-l-font-weight);
	line-height: var(--ruler-semantic-typography-text-l-line-height);
	font-size: var(--ruler-semantic-typography-text-l-font-size);
	color: var(--ruler-semantic-color-text-secondary);
	position: relative;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	padding-left: 10px;
	line-height: 32px;
	word-break: keep-all;
}

.css-130oa9n::before {
	content: '';
	position: absolute;
	top: 14px;
	left: 0;
	display: inline-block;
	width: 4px;
	height: 4px;
	background-color: var(--ruler-scale-color-gray-950);
	border-radius: 100%;
}
</style>
</head>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<body>

	<div class="mid-div">
		<div class="mid-left">
			<div class="mid-left-top">
				<h3 class="name">유*</h3>
				<ul class="like">
					<li class="like-li"><a class="like-a" href="#">좋아요 0</a></li>
				</ul>
			</div>
			<ul class="mid-top">
				<li class="user-grade"><a class="grade1" href="#"> <strong
						class="grade2">회원등급</strong> <span class="grade-color">GREEN</span>
				</a> <a class="sale" target="blank" href="#">할인혜택 보기</a></li>
				<li class="user-coupon"><a class="grade1" href="#"> <strong
						class="grade2">사용가능쿠폰</strong> <span class="grade-color">2</span>
				</a></li>
				<li class="user-mileage"><a class="grade1" href="#"> <strong
						class="grade2">마일리지</strong> <span class="grade-color">0</span>
				</a></li>
			</ul>
			<ul class="mid-left-list-top">
				<li class="">
					<h4 class="shop-info">나의 쇼핑정보</h4>
					<ul class="shop-info-list">
						<li class="shop-info-li"><a class="delivery-view" href="#">주문배송조회</a>
						</li>
						<li><a class="shop-info-a" href="#">숙박예약조회</a></li>
						<li><a class="shop-info-a" href="#">취소/교환/반품 내역</a></li>
						<li><a class="shop-info-a"
							href="/SentiProject/sentiBoard/list/mypage_item_review.jsp">상품
								리뷰</a></li>
						<li><a class="shop-info-a" href="#">증빙서류 발급</a></li>
					</ul>
				</li>
				<li class="id">
					<h4 class="id-info">나의 계정설정</h4>
					<ul class="">
						<li class="id-li"><a class="id-a" href="#">회원정보수정</a></li>
						<li class="id-li"><a class="id-a" href="#">회원등급</a></li>
						<li class="id-li"><a class="id-a" href="#">쿠폰</a></li>
						<li class="id-li"><a class="id-a" href="#">마일리지</a></li>
					</ul>
				</li>
				<li class="service-center">
					<h4 class="service-info">고객센터</h4>
					<ul class="">
						<li class="service-li"><a class="service-a" href="#">1:1
								문의내역</a></li>
						<li class="service-li"><a class="service-a" href="#">상품
								Q&A내역</a></li>
						<li class="service-li"><a class="service-a" href="#">공지사항</a>
						</li>
						<li class="service-li"><a class="service-a" href="#">FAQ</a>
						</li>
						<li class="service-li"><a class="service-a" href="#">고객의
								소리</a></li>
					</ul>
				</li>
			</ul>
			<section class="information">
				<h4 class="service-center-guide">고객센터 안내</h4>
				<p class="service-email">customer@29cm.co.kr</p>
				<ul class="go-go">
					<li><a class="go-go-go" href="#">1:1 문의하러가기</a></li>
				</ul>
			</section>
		</div>
		<div class="mid-mid">
			<!-- 여기서부터 작업하시면 됩니다 -->
			<div class="grade-list">
				<div class="css-j9qocs e1b5gypw0">
					<span class="e1b5gypw1 css-tmdn83 e8avfrl0" color="primary">멤버십
						혜택 보기</span>
				</div>
				<ul class="ebm53gh0 css-1heuese efqgqi90">
					<li class="ebm53gh1 css-19yreqa e1ctmjji0">현재 등급</li>
					<li class="ebm53gh1 css-140aynn e1ctmjji0">예상 등급</li>
				</ul>
				<div class="ebm53gh2 css-tr1wkt e1ome8550">
					<div class="css-1lads1q ec5g9yi0">
						<ul class="css-1ofqig9 eji7g6o0">
							<li class="e1b0ooww0 css-f9qh2y ec3s1na0"><div
									class="css-r9nzd6 elwfi5c0">
									<span class="css-156q5cq e8avfrl0" color="secondary">멤버십
										등급</span>
								</div>
								<div class="css-r9nzd6 elwfi5c0">
									<span class="css-156q5cq e8avfrl0" color="secondary">구매금액</span>
								</div>
								<div class="css-r9nzd6 elwfi5c0">
									<span class="css-156q5cq e8avfrl0" color="secondary">날짜</span>
								</div></li>
							<li class="e1b0ooww0 css-f9qh2y ec3s1na0"><div
									class="css-r9nzd6 elwfi5c0">
									<span class="css-17x39sj e8avfrl0" color="secondary">GREEN</span>
								</div>
								<div class="css-r9nzd6 elwfi5c0">
									<span class="css-17x39sj e8avfrl0" color="secondary">0원</span>
								</div>
								<div class="css-r9nzd6 elwfi5c0">
									<span class="css-17x39sj e8avfrl0" color="secondary">2023.11.01
										~ 2024.04.30</span>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="css-1o3oomb eb40n7w0">
					<span class="css-1vqrq36 e8avfrl0" color="primary">멤버십 혜택</span>
					<div class="eb40n7w1 css-19djemi ec5g9yi0">
						<ul class="css-1ofqig9 eji7g6o0">
							<li class="css-zp7ii8 ec3s1na0"><div
									class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="css-1vqrq36 e8avfrl0" color="primary">멤버십
										등급</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="css-izpnhq e8avfrl0" color="primary">최근
										6개월간 구매금액</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="css-izpnhq e8avfrl0" color="primary">등급 할인
										혜택</span>
								</div></li>
							<li class="css-zp7ii8 ec3s1na0"><div
									class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-ery12n e8avfrl0" color="primary">VIP</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-8xai2a e8avfrl0" color="secondary">50만원
										이상</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-8xai2a e8avfrl0" color="secondary">월
										15% 할인쿠폰 2장 지급</span>
								</div></li>
							<li class="css-zp7ii8 ec3s1na0"><div
									class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-ery12n e8avfrl0" color="primary">Red</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-8xai2a e8avfrl0" color="secondary">30만원
										이상, 50만원 미만</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-8xai2a e8avfrl0" color="secondary">월
										15% 할인쿠폰 1장, 10% 할인쿠폰 1장 지급</span>
								</div></li>
							<li class="css-zp7ii8 ec3s1na0"><div
									class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-ery12n e8avfrl0" color="primary">Orange</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-8xai2a e8avfrl0" color="secondary">10만원
										이상, 30만원 미만</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-8xai2a e8avfrl0" color="secondary">월
										10% 할인쿠폰 2장 지급</span>
								</div></li>
							<li class="css-zp7ii8 ec3s1na0"><div
									class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-ery12n e8avfrl0" color="primary">Green</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0" style="padding-left: 35px;">
									<span class="eb40n7w3 css-8xai2a e8avfrl0" color="secondary">10만원
										미만</span>
								</div>
								<div class="eb40n7w2 css-n0ir3y elwfi5c0">
									<span class="eb40n7w3 css-8xai2a e8avfrl0" color="secondary">월
										10% 할인쿠폰 1장, 신규 가입 시 앱 전용 15% 할인쿠폰 1장 지급 (가입 후 30일 간 유효)</span>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="css-19ft22s e1u8pzqb0">
					<span class="e1u8pzqb1 css-192or3 e8avfrl0" color="primary">멤버십
						안내</span>
					<ul class="css-1hw29i9 e1u8pzqb2">
						<li class="e1u8pzqb3 css-130oa9n e8avfrl0" color="secondary">매월
							1일 멤버십 등급이 결정됩니다.</li>
						<li class="e1u8pzqb3 css-130oa9n e8avfrl0" color="secondary">멤버십
							등급은 최근 6개월 간의 ‘구매 금액’을 반영하여 결정됩니다.</li>
						<li class="e1u8pzqb3 css-130oa9n e8avfrl0" color="secondary">구매
							금액’은 ‘구매 확정’된 상품 판매가의 합으로 계산됩니다. (배송비 금액 제외)</li>
						<li class="e1u8pzqb3 css-130oa9n e8avfrl0" color="secondary">향후
							멤버십 등급 별 혜택 및 선정 기준은 사전 통지 후 변경될 수 있습니다.</li>
					</ul>
					<span class="e1u8pzqb1 css-vuajq3 e8avfrl0" color="secondary">쿠폰
						안내</span>
					<ul class="css-1hw29i9 e1u8pzqb2">
						<li class="e1u8pzqb3 css-130oa9n e8avfrl0" color="secondary">'등급
							할인 혜택' 중 '월 할인쿠폰'은 매월 1일에 지급되고 '마이페이지 &gt; 쿠폰' 메뉴에서 확인하실 수 있습니다.</li>
						<li class="e1u8pzqb3 css-130oa9n e8avfrl0" color="secondary">Green
							등급에 지급되는 앱 전용 15% 할인쿠폰 1장은 신규 회원 가입 시 1회에 한정하여 지급되는 할인쿠폰으로 신규 회원
							가입 후 30일 이내에 29CM 앱에서만 사용할 수 있습니다.</li>
						<li class="e1u8pzqb3 css-130oa9n e8avfrl0" color="secondary">멤버십
							등급 변경 및 쿠폰 지급은 매월 1일 자정부터 순차적으로 진행됩니다. 쿠폰이 확인되지 않는 경우 약 1시간 후 다시
							확인해 주세요.</li>
						<li class="e1u8pzqb3 css-130oa9n e8avfrl0" color="secondary">브랜드
							정책에 따라 일부 상품은 쿠폰이 적용되지 않을 수 있습니다.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<br>
	<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>
</body>
<script>
$(document).ready(function() {
    $('.css-140aynn').click(function() {
        // 버튼들의 순서를 찾기
        var $currentBtn = $(this);
        var $otherBtn = $('.css-19yreqa');

        // jQuery의 'insertBefore' 메소드를 사용하여 순서 바꾸기
        if($currentBtn.index() > $otherBtn.index()) {
            $currentBtn.insertBefore($otherBtn);
        } else {
            $otherBtn.insertBefore($currentBtn);
        }
    });
});
</script>
</html>