<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

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
</style>
<style>
@media (min-width: 541px) {
    .css-9tb0n6 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
        justify-content: space-between;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        padding-bottom: 25px;
        border-bottom: var(--ruler-scale-dimension-50) solid var(--ruler-semantic-color-border-divider-strong);
    }
}

.css-qt20p5 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    gap: 40px;
}

.css-1hvq8cr {
    white-space: nowrap;
    font-family: var(--ruler-semantic-typography-title-l-bold-font-family);
    font-size: var(--ruler-semantic-typography-title-l-bold-font-size);
    line-height: var(--ruler-semantic-typography-title-l-bold-line-height);
    font-weight: var(--ruler-semantic-typography-title-l-bold-font-weight);
    color: var(--ruler-semantic-color-text-primary);
}

.css-1j2q5hp {
    white-space: nowrap;
    font-family: var(--ruler-semantic-typography-title-l-bold-font-family);
    font-size: var(--ruler-semantic-typography-title-l-bold-font-size);
    line-height: var(--ruler-semantic-typography-title-l-bold-line-height);
    font-weight: var(--ruler-semantic-typography-title-l-bold-font-weight);
    color: var(--ruler-semantic-color-text-tertiary);
}

@media (min-width: 541px) {
    .css-1ty8xw8 {
        margin-bottom: 0;
    }
}

.css-1ty8xw8 {
    margin-bottom: 20px;
}

@media (min-width: 541px) {
    .css-1wemma4 {
        gap: 6px;
        padding: 0;
        margin: 0;
        background: none;
    }
}

.css-1wemma4 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    gap: 8px;
    padding: 14px 20px;
    margin: 0 -20px;
    background-color: var(--ruler-semantic-color-background-low);
}

@media (min-width: 541px) {
    .css-1lud9pk {
        width: 261px;
    }
}

.css-1lud9pk {
    display: block;
    height: 40px;
    padding: 0 14px;
    font-size: 15px;
    color: #1a1a1a;
    border: 1px solid #d4d4d4;
    outline: none;
    height: 36px;
    border: 1px solid var(--ruler-semantic-color-border-line);
    background-color: var(--ruler-semantic-color-background-default);
    font-family: var(--ruler-semantic-typography-text-s-font-family);
    font-size: var(--ruler-semantic-typography-text-s-font-size);
    font-weight: var(--ruler-semantic-typography-text-s-font-weight);
    line-height: var(--ruler-semantic-typography-text-s-line-height);
}

.css-12t6l1x {
    border: 1px solid;
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
    cursor: pointer;
    margin: 0;
    position: relative;
    min-width: 66px;
    height: 36px;
    min-height: 36px;
    -webkit-flex: initial;
    -ms-flex: initial;
    flex: initial;
    border-radius: 2px;
    padding: 0 var(--ruler-scale-dimension-150);
    background-color: var(--ruler-semantic-color-fill-silent);
    border-color: var(--ruler-semantic-color-border-line);
}

.css-12t6l1x .ruler-button-text {
    color: var(--ruler-semantic-color-text-primary);
}

.css-16vb8y3 {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-s-medium-font-family);
    font-weight: var(--ruler-semantic-typography-text-s-medium-font-weight);
    line-height: var(--ruler-semantic-typography-text-s-medium-line-height);
    font-size: var(--ruler-semantic-typography-text-s-medium-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

@media (min-width: 541px) {
    .css-1y6jl1w {
        margin-top: 30px;
    }
}

@media (min-width: 541px) {
    .css-1kgi4d2 {
        gap: 20px;
    }
}

.css-1kgi4d2 {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
}

@media (min-width: 541px) {
    .css-1aqf3zl {
        flex-basis: calc(50% - 10px);
        min-width: auto;
    }
}

.css-1aqf3zl {
    position: relative;
    height: 173px;
    padding: 16px;
    border: 1px solid var(--ruler-semantic-color-border-line);
}

.css-lar8og {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    padding-bottom: 16px;
    border-bottom: 1px solid var(--ruler-semantic-color-border-line);
}

.css-k9lvvt {
    font-family: var(--ruler-semantic-typography-title-s-bold-font-family);
    font-weight: var(--ruler-semantic-typography-title-s-bold-font-weight);
    line-height: var(--ruler-semantic-typography-title-s-bold-line-height);
    font-size: var(--ruler-semantic-typography-title-s-bold-font-size);
    color: var(--ruler-semantic-color-common-accent);
    display: flex;
    -webkit-box-align: center;
    align-items: center;
}

.css-mb709o {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-l-bold-font-size);
    margin-left: 6px;
    color: var(--ruler-semantic-color-common-accent);
}

@media (min-width: 541px) {
    .css-qoci15 {
        margin-top: 16px;
    }
}

.css-qoci15 {
    overflow: hidden;
    display: flex;
    flex-direction: column;
    min-height: 80px;
    margin-top: 20px;
}

.css-1m4x45l {
    font-family: var(--ruler-semantic-typography-text-l-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-l-bold-font-size);
    color: var(--ruler-semantic-color-text-secondary);
    display: -webkit-box;
    overflow: hidden;
    text-overflow: ellipsis;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    word-break: break-all;
}

.css-48fcvq {
    display: flex;
    flex-direction: column;
    gap: 3px;
    margin-top: auto;
}

.css-15ozian {
    font-family: var(--ruler-semantic-typography-text-m-font-family);
    font-weight: var(--ruler-semantic-typography-text-m-font-weight);
    line-height: var(--ruler-semantic-typography-text-m-line-height);
    font-size: var(--ruler-semantic-typography-text-m-font-size);
    color: var(--ruler-semantic-color-text-secondary);
    display: flex;
    gap: 6px;
    -webkit-box-align: center;
    align-items: center;
}

.css-7jxqz {
    position: absolute;
    right: 16px;
    bottom: 16px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 20px;
    height: 20px;
    margin: 2px;
    border: 1px solid var(--ruler-semantic-color-text-tertiary);
    border-radius: 100%;
}

.css-1mhli05 {
    width: 10px;
    height: 10px;
    min-width: 10px;
    min-height: 10px;
}

svg[Attributes Style] {
    width: 10;
    height: 10;
    fill: none;
}

svg:not(:root) {
    overflow-clip-margin: content-box;
    overflow: hidden;
}

.css-1mhli05 * {
    fill: var(--ruler-semantic-color-text-tertiary);
}

path[Attributes Style] {
    fill-rule: evenodd;
    clip-rule: evenodd;
    d: path("M 4.29289 4.29289 C 4.68342 3.90237 5.31658 3.90237 5.70711 4.29289 L 12 10.5858 L 18.2929 4.29289 C 18.6834 3.90237 19.3166 3.90237 19.7071 4.29289 C 20.0976 4.68342 20.0976 5.31658 19.7071 5.70711 L 13.4142 12 L 19.7071 18.2929 C 20.0976 18.6834 20.0976 19.3166 19.7071 19.7071 C 19.3166 20.0976 18.6834 20.0976 18.2929 19.7071 L 12 13.4142 L 5.70711 19.7071 C 5.31658 20.0976 4.68342 20.0976 4.29289 19.7071 C 3.90237 19.3166 3.90237 18.6834 4.29289 18.2929 L 10.5858 12 L 4.29289 5.70711 C 3.90237 5.31658 3.90237 4.68342 4.29289 4.29289 Z");
    fill: black;
}

:not(svg) {
    transform-origin: 0px 0px;
}

.css-k9lvvt {
    font-family: var(--ruler-semantic-typography-title-s-bold-font-family);
    font-weight: var(--ruler-semantic-typography-title-s-bold-font-weight);
    line-height: var(--ruler-semantic-typography-title-s-bold-line-height);
    font-size: var(--ruler-semantic-typography-title-s-bold-font-size);
    color: var(--ruler-semantic-color-common-accent);
    display: flex;
    -webkit-box-align: center;
    align-items: center;
}

.css-mb709o {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-l-bold-font-size);
    margin-left: 6px;
    color: var(--ruler-semantic-color-common-accent);
}

.css-axm2wv {
    padding: 0px 50px;
    position: relative;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    margin-top: 50px;
}

.css-16vmvyd {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    line-height: 1;
}

.css-12l5i6f {
    padding: 0px 8px;
    min-width: 10px;
    font-size: 16px;
    font-weight: 300;
    color: rgb(0, 0, 0);
}

.css-1xzw0uc {
    font-size: 16px;
    color: rgb(0, 0, 0);
    font-weight: 700;
    border-bottom: 1px solid rgb(0, 0, 0);
}

@media (min-width: 541px) {
    .css-lvucu {
        margin-top: 40px;
    }
}

@media (min-width: 541px) {
    .css-lvucu {
        margin: 0;
    }
}

.css-lvucu {
    padding: 30px 20px;
    margin: 0 -20px;
    background: var(--ruler-semantic-color-background-low);
    margin-top: 60px;
}

.css-1afcasy:first-of-type {
    margin-top: 0;
}

.css-1afcasy {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xs-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-xs-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-xs-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-xs-bold-font-size);
    color: var(--ruler-semantic-color-text-secondary);
    margin-top: 30px;
}

.css-1hw29i9 {
    margin-top: 12px;
}

.css-1gil9g6 {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xs-font-family);
    font-weight: var(--ruler-semantic-typography-text-xs-font-weight);
    line-height: var(--ruler-semantic-typography-text-xs-line-height);
    font-size: var(--ruler-semantic-typography-text-xs-font-size);
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
    margin-top: 6px;
    padding-left: 10px;
    word-break: keep-all;
}

.css-1gil9g6::before {
    content: '';
    position: absolute;
    top: 5px;
    left: 0;
    display: inline-block;
    width: 3px;
    height: 3px;
    border-radius: 100%;
    background-color: var(--ruler-scale-color-gray-600);
}

@media (min-width: 541px) {
    .css-h8cdf7 {
        margin-top: 200px;
    }
}

.css-h8cdf7 {
    font-family: var(--ruler-semantic-typography-text-xxl-font-family);
    font-weight: var(--ruler-semantic-typography-text-xxl-font-weight);
    line-height: var(--ruler-semantic-typography-text-xxl-line-height);
    font-size: var(--ruler-semantic-typography-text-xxl-font-size);
    color: var(--ruler-semantic-color-text-secondary);
    display: flex;
    margin-top: 100px;
    margin-bottom: 230px;
    -webkit-box-pack: center;
    justify-content: center;
}

.active {
    color: black; /* 검은색으로 활성 상태 표시 */
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
			<div class="css-i8unei e1liyp001">
				<section class="css-9tb0n6 e1liyp002">
					<div class="css-qt20p5 e1vq9ybh0">
						<button type="button" class="css-1hvq8cr e1vq9ybh1">
							전체 쿠폰(
							<!-- -->
							2
							<!-- -->
							)
						</button>
						<button type="button" class="css-1j2q5hp e1vq9ybh1">
							장바구니 쿠폰(
							<!-- -->
							2
							<!-- -->
							)
						</button>
						<button type="button" class="css-1j2q5hp e1vq9ybh1">
							상품 쿠폰(
							<!-- -->
							2
							<!-- -->
							)
						</button>
					</div>
					<div class="e1liyp003 css-1ty8xw8 eul860e0">
						<form class="css-1wemma4 e1izss5n0">
							<input class="e1izss5n1 css-1lud9pk e1u1pays0"
								placeholder="쿠폰코드를 입력해주세요" autocapitalize="none">
							<button class="css-12t6l1x e8avfrl7">
								<span class="ruler-button-text css-16vb8y3 e8avfrl0"
									color="primary">쿠폰등록</span>
							</button>
						</form>
					</div>
				</section>
				<section class="e1liyp004 css-1y6jl1w e114lon00">
					<div class="css-1kgi4d2 e1pwc6ts0">
						<div class="css-1aqf3zl e15jhsr50">
							<div class="css-lar8og e15jhsr51">
								<span class="e15jhsr52 css-k9lvvt e8avfrl0" color="accent">10%<span
									class="e15jhsr53 css-mb709o e8avfrl0" color="secondary">장바구니
										쿠폰</span></span>
							</div>
							<div class="css-qoci15 e15jhsr55">
								<span class="css-1m4x45l e8avfrl0" color="secondary"><span
									id="coupon_name_32449">GREEN 회원 10% 할인 쿠폰</span></span>
								<div class="css-48fcvq e15jhsr56">
									<span class="e15jhsr57 css-15ozian e8avfrl0" color="secondary">최대
										35,000원 할인</span><span class="e15jhsr59 css-15ozian e8avfrl0"
										color="secondary">2024.05.31 23:59까지</span>
									<button class="css-7jxqz e15jhsr511">
										<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
											viewBox="0 0 24 24" fill="none" color="tertiary"
											class="css-1mhli05 e8avfrl6">
											<path fill-rule="evenodd" clip-rule="evenodd"
												d="M4.29289 4.29289C4.68342 3.90237 5.31658 3.90237 5.70711 4.29289L12 10.5858L18.2929 4.29289C18.6834 3.90237 19.3166 3.90237 19.7071 4.29289C20.0976 4.68342 20.0976 5.31658 19.7071 5.70711L13.4142 12L19.7071 18.2929C20.0976 18.6834 20.0976 19.3166 19.7071 19.7071C19.3166 20.0976 18.6834 20.0976 18.2929 19.7071L12 13.4142L5.70711 19.7071C5.31658 20.0976 4.68342 20.0976 4.29289 19.7071C3.90237 19.3166 3.90237 18.6834 4.29289 18.2929L10.5858 12L4.29289 5.70711C3.90237 5.31658 3.90237 4.68342 4.29289 4.29289Z"
												fill="black"></path></svg>
									</button>
								</div>
							</div>
							
						</div>
						<div class="css-1aqf3zl e15jhsr50">
							<div class="css-lar8og e15jhsr51">
								<span class="e15jhsr52 css-k9lvvt e8avfrl0" color="accent">15%<span
									class="e15jhsr53 css-mb709o e8avfrl0" color="secondary">장바구니
										쿠폰</span></span>
							</div>
							<div class="css-qoci15 e15jhsr55">
								<span class="css-1m4x45l e8avfrl0" color="secondary"><span
									id="coupon_name_30263">설렘 가득한 앱전용 15% 쿠폰</span></span>
								<div class="css-48fcvq e15jhsr56">
									<span class="e15jhsr57 css-15ozian e8avfrl0" color="secondary">최대
										35,000원 할인</span><span class="e15jhsr59 css-15ozian e8avfrl0"
										color="secondary">2024.06.08 14:55까지</span>
									<button class="css-7jxqz e15jhsr511">
										<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
											viewBox="0 0 24 24" fill="none" color="tertiary"
											class="css-1mhli05 e8avfrl6">
											<path fill-rule="evenodd" clip-rule="evenodd"
												d="M4.29289 4.29289C4.68342 3.90237 5.31658 3.90237 5.70711 4.29289L12 10.5858L18.2929 4.29289C18.6834 3.90237 19.3166 3.90237 19.7071 4.29289C20.0976 4.68342 20.0976 5.31658 19.7071 5.70711L13.4142 12L19.7071 18.2929C20.0976 18.6834 20.0976 19.3166 19.7071 19.7071C19.3166 20.0976 18.6834 20.0976 18.2929 19.7071L12 13.4142L5.70711 19.7071C5.31658 20.0976 4.68342 20.0976 4.29289 19.7071C3.90237 19.3166 3.90237 18.6834 4.29289 18.2929L10.5858 12L4.29289 5.70711C3.90237 5.31658 3.90237 4.68342 4.29289 4.29289Z"
												fill="black"></path></svg>
									</button>
								</div>
							</div>
							<span id="noCouponMessage" class="e114lon02 css-h8cdf7 e8avfrl0" style="display: none;">발급 받은 쿠폰이 없습니다.</span>
						</div>
					</div>
					<div class="e114lon03 css-axm2wv epug0ig0">
						<ul class="css-16vmvyd epug0ig1">
							<li aria-current="true" class="css-12l5i6f epug0ig2"><button
									type="button" class="css-1xzw0uc epug0ig4">1</button></li>
						</ul>
					</div>
				</section>
				<div class="e1liyp005 css-lvucu e1ncdaso0">
					<span class="e1ncdaso1 css-1afcasy e8avfrl0" color="secondary">상품
						쿠폰 / 장바구니 쿠폰</span>
					<ul class="css-1hw29i9 e1ncdaso2">
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">상품
							쿠폰은 적용 대상 상품의 판매가에 대해 할인이 적용됩니다. 상품 (옵션) 1개당 1개의 상품쿠폰을 사용할 수
							있습니다.</li>
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">장바구니
							쿠폰은 적용 대상 상품의 총 주문 금액에 대해 할인이 적용됩니다. 주문당 1개의 장바구니쿠폰을 사용할 수 있습니다.</li>
					</ul>
					<span class="e1ncdaso1 css-1afcasy e8avfrl0" color="secondary">쿠폰
						사용 안내</span>
					<ul class="css-1hw29i9 e1ncdaso2">
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">쿠폰은
							배송비를 제외한 주문 상품 금액 기준으로 적용됩니다.</li>
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">사용기간이
							지난 쿠폰은 자동으로 소멸되며, 재발행 되지 않습니다.</li>
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">할인
							쿠폰별 적용 대상 상품이 다를 수 있으며, 적용 대상 상품의 범위는 당사 사정에 따라 사전고지 없이 변동될 수
							있습니다.</li>
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">상품쿠폰과
							장바구니쿠폰은 중복으로 사용할 수 있습니다. (단, ‘중복 사용 불가’ 상품쿠폰 제외)</li>
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">할인쿠폰의
							할인금액이 상품의 판매가 또는 총 주문 금액을 초과할 경우 사용 불가능합니다.</li>
					</ul>
					<span class="e1ncdaso1 css-1afcasy e8avfrl0" color="secondary">쿠폰
						교환/반품/취소 안내</span>
					<ul class="css-1hw29i9 e1ncdaso2">
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">쿠폰
							사용기간 종료 후 고객 변심으로 인한 취소/반품 시 쿠폰은 재발급되지 않습니다.</li>
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">주문
							부분 취소 및 부분 반품 시 쿠폰 할인이 적용된 상품이 남아 있을 경우 쿠폰은 재발급되지 않습니다.</li>
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">할인
							쿠폰별 적용 대상 상품이 다를 수 있으며, 적용 대상 상품의 범위는 당사 사정에 따라 사전고지 없이 변동될 수
							있습니다.</li>
						<li class="e1ncdaso3 css-1gil9g6 e8avfrl0" color="secondary">주문
							부분 취소 및 부분 반품으로 인해 최소 주문 금액 조건 미달 시, 쿠폰 할인 금액을 제외한 실 결제 금액이
							환불처리됩니다.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>
</body>
<script>
$(document).ready(function() {
    // 모든 버튼에 대한 클릭 이벤트 핸들러 설정
    $("button").click(function() {
        // 첫 번째로, 모든 버튼에서 특정 클래스를 제거
        $("button").removeClass("css-1hvq8cr e1vq9ybh1").addClass("css-1j2q5hp e1vq9ybh1");

        // 클릭된 버튼에만 'css-1hvq8cr e1vq9ybh1' 클래스 추가
        $(this).removeClass("css-1j2q5hp e1vq9ybh1").addClass("css-1hvq8cr e1vq9ybh1");
    });
});
</script>
</html>