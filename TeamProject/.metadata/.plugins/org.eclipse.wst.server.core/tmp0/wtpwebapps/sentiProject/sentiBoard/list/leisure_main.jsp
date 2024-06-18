<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>leisure_main</title>
<link rel="shortcut icon" href="#">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<style>
/* main 기본스타일 */
span.material-symbols-outlined {
	vertical-align: text-bottom;
}

*, *::before, *::after {
	box-sizing: border-box;
}

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

div {
	display: block;
	unicode-bidi: isolate;
}

ol, ul, li {
	list-style: none;
}

body, input, select, textarea, button, a {
	-webkit-text-size-adjust: none;
	font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic,
		'나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}

body {
	width: 100%;
}

ul {
	list-style-type: disc;
}

img {
	border: 0;
	vertical-align: top;
}

path[Attributes Style] {
	d: path("M 1 0 l 40 40.083 L 1.166 80");
	fill: none;
	fill-rule: evenodd;
	stroke: rgb(0, 0, 0);
	stroke-width: 5;
}

user agent stylesheet
:not(svg) {
	transform-origin: 0px 0px;
}
</style>
<style>
.css-ud09pe {
	position: fixed;
	bottom: calc(var(- -ruler-scale-dimension-225)+ constant(safe-area-inset-bottom));
	bottom: calc(var(- -ruler-scale-dimension-225)+ env(safe-area-inset-bottom));
	left: var(- -ruler-scale-dimension-225);
	right: var(- -ruler-scale-dimension-225);
	z-index: 2147483647;
}

@
supports (position:sticky) or (position:-webkit-sticky) { .css-1opn7tv {
	position:-webkit-sticky;
	position: sticky;
	z-index: 10;
	top: 0px;
	padding-top: 0;
}

}
.css-1opn7tv {
	min-width: 540;
	margin: 0 auto;
	padding-top: 260px;
}

@
supports (position:sticky) or (position:-webkit-sticky) { .css-599st9 {
	padding-bottom:120px;
	
}

}
.css-1gqrtg9 {
	position: relative;
	margin-top: 59px;
}

.css-79elbk {
	position: relative;
}

.css-ccftqy {
	height: 680px;
	width: 100%;
	position: relative;
}

.css-10klw3m {
	height: 100%;
}

.swiper-container-pointer-events {
	touch-action: pan-y;
}

.swiper-container {
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1;
}

.css-ccftqy .swiper-pagination {
	bottom: 30px;
	position: absolute;
	text-align: center;
	transition: all 0.3s ease 0s;
	transform: translateZ(0px);
	z-index: 10;
	height: 10px;
	left: 0px;
	right: 0px;
}

@media ( min-width : 541px) {
	.css-ccftqy .swiper-pagination-bullet {
		margin: 0px 5px;
		border-radius: 50%;
	}
}

.css-ccftqy .swiper-pagination-bullet {
	width: 16px;
	height: 16px;
	background: rgba(255, 255, 255, 0.3);
	vertical-align: top;
	display: inline-block;
}

.swiper-container-android .swiper-slide, .swiper-wrapper {
	transform: translateZ(0);
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	transition-property: transform;
	box-sizing: content-box;
}

.swiper-slide {
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	transition-property: transform;
}

.css-12ngsuq {
	position: relative;
	background-color: rgb(244, 244, 244);
	width: 100%;
	height: 100%;
}

.css-1rdq2xw {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	object-fit: cover;
	object-position: 50% center;
}

@media ( min-width : 541px) {
	.css-ftsck8 {
		height: 680px;
		margin: 0px 100px 0px 380px;
	}
}

.css-ftsck8 {
	overflow: hidden;
	text-align: left;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	position: absolute;
	top: 0px;
}

@media ( min-width : 541px) {
	.css-1a9mgan {
		width: 440px;
		margin-left: 60px;
	}
}

.css-1a9mgan {
	color: rgb(0, 0, 0);
}

.css-rrjwli {
	white-space: pre-wrap;
	font-size: 48px;
	font-weight: 500;
	line-height: 58px;
}

.css-1pnjbcd {
	margin-top: 19px;
	font-size: 28px;
	line-height: 35px;
	white-space: pre-wrap;
}

.css-145q29u {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	padding: 30px;
	z-index: 10;
	cursor: pointer;
	left: 275px;
	right: auto;
}

.css-8k8h7u {
	width: 30px;
	height: 60px;
	transform: rotate(180deg);
}

.css-8k8h7u path {
	stroke: rgb(48, 48, 51);
	stroke-width: 3;
}

.css-a9wn2v {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	padding: 30px;
	z-index: 10;
	cursor: pointer;
	right: 0px;
	left: auto;
}

.css-1s3uxh2 {
	width: 30px;
	height: 60px;
}

.css-1s3uxh2 path {
	stroke: rgb(48, 48, 51);
	stroke-width: 3;
}

@media ( min-width : 541px) {
	.css-1onoukq {
		position: absolute;
		z-index: 2;
		top: 0px;
		left: 25px;
	}
}

.css-1onoukq {
	width: 250px;
	margin: 25px 0px 0px;
	padding: 25px 25px 15px;
	background: rgb(255, 255, 255);
	box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 30px 0px;
}

.css-8t2d70 {
	padding: 3px 0px;
}

.css-kkqm0g {
	position: relative;
	display: block;
	box-sizing: border-box;
	width: 100%;
	margin: -6px 0px 8px;
	padding: 0px 30px 12px 0px;
	font-size: 23px;
	font-weight: 800;
	line-height: 1.25;
	color: rgb(0, 0, 0);
	text-align: left;
	text-transform: uppercase;
	border-bottom: 4px solid rgb(0, 0, 0);
	outline: none;
}

.css-eannyr {
	list-style: none;
}

.css-1iv23n0 {
	position: relative;
	display: block;
	box-sizing: border-box;
	width: 100%;
	padding: 3px 30px 3px 0px;
	font-size: 16px;
	font-weight: 200;
	line-height: 28px;
	color: rgb(93, 93, 93);
	text-align: left;
	border: 0px;
	outline: none;
}

@media ( min-width : 541px) {
	.css-4e43p {
		max-width: 1920px;
		margin: 0px auto;
		padding: 0px 50px 0px 300px;
	}
}

@media ( min-width : 541px) {
	.css-zl0y5r {
		padding: 58px 0px 80px;
	}
}

@media ( min-width : 541px) {
	.css-19p5dbs {
		padding-bottom: 100px;
	}
}

@media ( min-width : 541px) and (max-width: 1400px) {
	.css-3dx3su {
		
	}
}

@media ( min-width : 541px) {
	.css-3dx3su {
		display: flex;
		flex-wrap: wrap;
		margin-left: -40px;
	}
}

@media ( min-width : 541px) and (max-width: 1400px) {
	.css-1dmc8sd {
		padding-left: 30px;
	}
}

@media ( min-width : 541px) {
	.css-1dmc8sd {
		flex: 0 0 auto;
		width: 50%;
		padding: 0px 0px 30px 40px;
		box-sizing: border-box;
	}
}

.css-y6diwn {
	display: block;
	position: relative;
	text-decoration: none;
}

.css-1324aqc {
	width: 100%;
}

.css-9zetyy {
	display: flex;
	flex-direction: column;
	-webkit-box-pack: center;
	justify-content: center;
	color: rgb(0, 0, 0);
}

@media ( min-width : 541px) {
	.css-dtuif0 {
		margin-top: 12px;
		font-size: 23px;
		line-height: 30px;
		font-weight: 600;
	}
}

.css-1w6vxok {
	margin-top: 6px;
	font-size: 15px;
	line-height: 24px;
}

.css-1rw4rkj {
	position: relative;
	overflow: hidden;
}

.css-11egtcj {
	display: flex;
}

.css-13tv9x8 {
	flex: 1 1 0%;
	display: block;
	min-height: 70px;
	height: 100%;
	border-top: 1px solid rgb(48, 48, 51);
	background: rgb(48, 48, 51);
	font-size: 18px;
	line-height: 70px;
	color: rgb(255, 255, 255);
	text-align: center;
	position: relative;
	margin: 0px -1px;
}

.css-ydj7ef {
	flex: 1 1 0%;
	display: block;
	min-height: 70px;
	height: 100%;
	border-top: 1px solid rgb(212, 212, 212);
	background: rgb(255, 255, 255);
	font-size: 18px;
	line-height: 70px;
	color: rgb(160, 160, 160);
	text-align: center;
}

@media ( min-width : 541px) {
	.css-9qgiem {
		padding: 50px 100px 40px;
		text-align: center;
		background: rgb(48, 48, 51);
	}
}

@media ( min-width : 541px) {
	.css-fnx4f5 {
		display: none;
	}
}

@media ( min-width : 541px) {
	.css-f1nnni {
		display: none;
	}
}

.css-1ymgzmv {
	position: relative;
}

.css-6vy6m4 {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	z-index: 10;
	cursor: pointer;
	padding: 20px 30px;
	background: none;
	left: -100px;
	right: auto;
}

.css-1dv0xyg {
	width: 22px;
	height: 44px;
	opacity: 0.35;
	transform: rotate(180deg);
}

.css-1dv0xyg path {
	stroke: rgb(255, 255, 255);
	stroke-width: 2;
}

.css-vhkf1b {
	position: absolute;
	top: 50%;
	margin-top: -60px;
	z-index: 10;
	cursor: pointer;
	padding: 20px 30px;
	background: none;
	right: -100px;
	left: auto;
}

.css-1tulk9i {
	width: 22px;
	height: 44px;
}

.css-1tulk9i path {
	stroke: rgb(255, 255, 255);
	stroke-width: 2;
}

@media ( min-width : 541px) {
	.css-13alrll {
		padding-bottom: 54px;
	}
}

@media ( min-width : 541px) {
	.css-1ymgzmv .swiper-pagination {
		height: 16px;
	}
}

.css-1ymgzmv .swiper-pagination {
	position: absolute;
	text-align: center;
	transition: all 0.3s ease 0s;
	transform: translateZ(0px);
	left: 0px;
	right: 0px;
	z-index: 10;
	bottom: 0px;
}

.css-1ymgzmv .swiper-pagination-bullet-active {
	opacity: 1;
}

@media ( min-width : 541px) {
	.css-1ymgzmv .swiper-pagination-bullet {
		border-radius: 50%;
		width: 16px;
		height: 16px;
		background: rgb(255, 255, 255);
		opacity: 0.3;
		margin: 0px 5px;
	}
}

.css-1ymgzmv .swiper-pagination-bullet {
	display: inline-block;
}

.css-s06ru1 {
	display: flex;
	flex-wrap: wrap;
	flex-shrink: 0;
	position: relative;
	width: 100%;
	height: 100%;
}

@media ( max-width : 1400px) {
	.css-1htel8m {
		padding: 0px 10px;
	}
}

.css-1htel8m {
	position: relative;
	box-sizing: border-box;
	width: 20%;
	padding: 0px 20px;
	color: rgb(255, 255, 255);
	text-align: center;
}

.css-13o7eu2 {
	display: block;
}

.css-15ri281 {
	position: relative;
	overflow: hidden;
	width: 100%;
	padding-top: 100%;
	background: rgb(244, 244, 244);
}

.css-1efnu1n {
	position: absolute;
	inset: 0px;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
}

.css-uwwqev {
	width: 100%;
	height: 100%;
}

.css-1pejrgr {
	margin-top: 15px;
}

@media ( min-width : 541px) {
	.css-us5d4h {
		margin-bottom: 7px;
		font-size: 13px;
		text-decoration: underline;
	}
}

.css-us5d4h {
	display: block;
	font-weight: 700;
	line-height: 1.2;
	color: rgb(255, 255, 255);
}

@media ( min-width : 541px) {
	.css-5bfev {
		padding: 0px 1%;
		color: rgb(255, 255, 255);
	}
}

.css-5bfev {
	margin-bottom: 14px;
	font-size: 12px;
	line-height: 16px;
	color: rgb(93, 93, 93);
	word-break: break-all;
}

.css-mojyhg {
	font-size: 14px;
	font-weight: 600;
	line-height: 16px;
	color: rgb(255, 255, 255);
}

.css-1cs9oh7 {
	position: absolute;
	top: 15px;
	right: 0px;
	left: 0px;
	margin-top: calc(100% - 40px);
	font-size: 13px;
	font-weight: 700;
	line-height: 1.2;
	color: transparent;
}
</style>
<style>
@media ( max-width : 1340px) {
	.css-xxabrc {
		padding: 0px 50px;
	}
}

.css-xxabrc {
	position: relative;
	box-sizing: border-box;
	min-width: 1000px;
	max-width: 1920px;
	margin: 100px auto 10px;
	padding: 0px 220px;
	box-sizing: border-box;
}

.css-iwxnhl {
	position: relative;
	display: flex;
	padding: 30px 0px 100px;
	border-bottom: 1px solid rgb(212, 212, 212);
}

.css-ln2n0u {
	position: absolute;
	top: 30px;
	bottom: 0px;
	left: 33%;
	width: 1px;
	margin: 0px;
	background: rgb(212, 212, 212);
	border: 0px;
}

.css-1kak7cd {
	position: absolute;
	top: 30px;
	bottom: 0px;
	left: 66%;
	width: 1px;
	margin: 0px;
	background: rgb(212, 212, 212);
	border: 0px;
}

.css-1kc1i5k {
	box-sizing: border-box;
	width: 100%;
	margin-top: -120px;
}

.css-kdcvh2>div {
	box-sizing: content-box;
	transition: opacity 0.2s ease-in-out 0s;
}

.css-veh7ha {
	padding: 0px 20%;
}

.css-1jypvcz {
	position: relative;
	display: block;
	margin-top: 120px;
	text-align: left;
}

@media screen and (width <= 1000px) {
	.css-1c39dt4 {
		width: 70%;
		max-width: 200px;
	}
}

.css-1c39dt4 {
	position: absolute;
	top: -30px;
	left: -5%;
	width: 200px;
	height: 4px;
	background: rgb(0, 0, 0);
}

.css-u58y5m {
	position: relative;
	display: block;
	width: 100%;
	padding-bottom: 100%;
	background-color: rgb(212, 212, 212);
}

.css-mqd1xo {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center center;
}

.css-10mzaug {
	padding-right: 30px;
	color: rgb(0, 0, 0);
	word-break: keep-all;
}

.css-1se6r14 {
	margin-top: 14px;
	font-size: 22px;
	font-weight: 600;
	line-height: 30px;
}

.css-jg1sml {
	margin-top: 10px;
	font-size: 15px;
	line-height: 24px;
}

.css-15xwjg0 {
	display: flex;
	margin-top: 20px;
	border-top: 1px solid rgb(212, 212, 212);
	box-sizing: border-box;
}

@media ( min-width : 541px) and (max-width: 1200px) {
	.css-mn2zdd {
		flex-direction: column-reverse;
	}
}

.css-mn2zdd {
	display: flex;
	flex: 1 1 0%;
	padding: 15px 0px 10px;
}

.css-nt3lq3 {
	width: 52px;
	height: 52px;
}

.css-16b7yk2 {
	display: block;
	font-weight: 800;
}

.css-pu7sky {
	display: block;
	margin-top: 6px;
	font-size: 11px;
	line-height: 16px;
	text-align: left;
	color: rgb(255, 72, 0);
}

.css-16j3p2r {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	flex-wrap: nowrap;
	width: 65px;
	border-left: 1px solid rgb(212, 212, 212);
}

.css-1u7zeg9 {
	display: flex;
	flex-direction: column;
	padding-top: 6px;
	-webkit-box-align: center;
	align-items: center;
}

.css-1afbq5h {
	display: block;
	margin: 5px 0px 0px;
	text-align: center;
	font-size: 11px;
	font-family: campton;
	color: rgb(93, 93, 93);
}

@media ( min-width : 541px) and (max-width: 1200px) {
	.css-161seae {
		margin-left: 0px;
		margin-bottom: 10px;
	}
}

.css-161seae {
	margin-left: 18px;
	font-size: 11px;
	line-height: 16px;
	color: rgb(0, 0, 0);
	text-align: left;
	padding-right: 10px;
}

svg[Attributes Style] {
	width: 16;
	height: 14;
}

user agent stylesheet
svg:not(:root) {
	overflow-clip-margin: content-box;
	overflow: hidden;
}

.css-gwmxrk {
	position: relative;
	padding: 0px 8%;
}

.css-14o6xpt {
	color: rgb(0, 0, 0);
	word-break: keep-all;
}

.css-1w4ylzh {
	margin-top: 30px;
	padding-bottom: 30px;
}

.css-1f9ss6h {
	position: relative;
	overflow: hidden;
	width: 55%;
	margin: 0px auto;
	padding-top: 55%;
	background: rgb(245, 247, 246);
}

.css-1sxsjv7 {
	position: absolute;
	top: 0px;
	right: 0px;
	left: 0px;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	height: 100%;
}

.css-ducv57 {
	width: 100%;
	height: auto;
}

.css-u00t1k {
	margin-top: 15px;
	padding: 17px 80px 0px 2px;
	border-top: 1px solid rgb(160, 160, 160);
}

.css-dmr9ea {
	margin-bottom: 7px;
	font-size: 13px;
	font-weight: 700;
	line-height: 1.2;
	color: rgb(0, 0, 0);
	text-decoration: underline;
}

.css-1kqdjtb {
	margin-bottom: 14px;
	padding-right: 10%;
	font-size: 12px;
	line-height: 16px;
	color: rgb(93, 93, 93);
	word-break: break-all;
}

.css-1ml2lf9 {
	display: block;
	font-size: 13px;
	font-weight: 600;
	line-height: 16px;
	color: rgb(255, 72, 0);
}

.css-1qxtz39 {
	font-size: 12px;
}

.css-1bwkv0 {
	position: absolute;
	top: 30%;
	margin-top: -40px;
	z-index: 10;
	cursor: pointer;
	padding: 20px 20px 20px 0px;
	left: 0px;
}

.css-939qlc {
	width: 12px;
	height: 20px;
	transform: rotate(180deg);
}

.css-939qlc path {
	stroke: rgb(48, 48, 51);
	stroke-width: 3;
}

.css-atr7u2 {
	position: absolute;
	top: 30%;
	margin-top: -40px;
	z-index: 10;
	cursor: pointer;
	right: 0px;
	padding: 20px 0px 20px 20px;
}

.css-1m5kce {
	width: 12px;
	height: 20px;
}

.css-1m5kce path {
	stroke: rgb(48, 48, 51);
	stroke-width: 3;
}

.css-r9lblg {
	bottom: 35px;
	width: 30%;
	font-size: 30px;
	font-style: italic;
	color: rgb(160, 160, 160);
	font-weight: 200;
	position: absolute;
	text-align: center;
	right: 0px;
}

.css-nxo31t {
	display: block;
	margin: 0px 35px -15px 0px;
	padding-right: 4px;
	font-size: 45px;
	color: rgb(0, 0, 0);
}
</style>


</head>
<body>

	<div id="__next">
		<div class="css-ud09pe e8avfrl70"></div>
		<div></div>
		<div class="css-1gqrtg9 e1uqlhsn0">
			<!-- first -->
			<div class="css-79elbk e8dmgjc0">
				<div class="css-ccftqy e1ha01s71">
					<div
						class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events css-10klw3m e1ha01s72">
						<div class="swiper-pagination swiper-pagination-bullets">
							<span class="swiper-pagination-bullet"></span><span
								class="swiper-pagination-bullet"></span><span
								class="swiper-pagination-bullet"></span><span
								class="swiper-pagination-bullet"></span><span
								class="swiper-pagination-bullet"></span><span
								class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>
						</div>
						<div class="swiper-wrapper"
							style="transform: translate3d(-3762px, 0px, 0px); transition-duration: 0ms;">
							<div
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
								data-swiper-slide-index="5" style="width: 627px;">
								<a class="css-12ngsuq eiewl70" target="_self"
									href="https://content.29cm.co.kr/focus/2024/05/06/3nd"><picture>
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/08/27b0afd9fdde4a48a8f981771021ab74_20240508180144.jpg?width=2000"
										class="css-1rdq2xw eiewl71"></picture>
									<div class="css-ftsck8 eiewl72">
										<div color="#000000" class="css-1a9mgan eiewl74">
											<h2 class="css-rrjwli eiewl75">올여름 새로운 휘파람</h2>
											<p class="css-1pnjbcd eiewl76">MOVEWARM</p>
										</div>
									</div></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate-next"
								data-swiper-slide-index="0" style="width: 627px;">
								<a class="css-12ngsuq eiewl70" target="_self" href="#"><picture>
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/08/6f3a219f5a464b56819ff80c21c34adc_20240508180402.jpg?width=2000"
										class="css-1rdq2xw eiewl71"></picture>
									<div class="css-ftsck8 eiewl72">
										<div color="#000000" class="css-1a9mgan eiewl74">
											<h2 class="css-rrjwli eiewl75">시적인 여름</h2>
											<p class="css-1pnjbcd eiewl76">LOOPLOOP</p>
										</div>
									</div></a>
							</div>
							<div class="swiper-slide" data-swiper-slide-index="1"
								style="width: 627px;">
								<a class="css-12ngsuq eiewl70" target="_self" href="#"><picture>
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/08/23f246eedc4044e4b32db5a4b71d577a_20240508180032.jpg?width=2000"
										class="css-1rdq2xw eiewl71"></picture>
									<div class="css-ftsck8 eiewl72">
										<div color="#000000" class="css-1a9mgan eiewl74">
											<h2 class="css-rrjwli eiewl75">일찍 만나는 래시가드</h2>
											<p class="css-1pnjbcd eiewl76">DISCOVERY EXPEDITION</p>
										</div>
									</div></a>
							</div>
							<div class="swiper-slide" data-swiper-slide-index="2"
								style="width: 627px;">
								<a class="css-12ngsuq eiewl70" target="_self" href="#"><picture>
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/08/2e9fb761932e4f96896d5c23a722c5bd_20240508180258.jpg?width=2000"
										class="css-1rdq2xw eiewl71"></picture>
									<div class="css-ftsck8 eiewl72">
										<div color="#000000" class="css-1a9mgan eiewl74">
											<h2 class="css-rrjwli eiewl75">자유의 해프닝</h2>
											<p class="css-1pnjbcd eiewl76">5PENING</p>
										</div>
									</div></a>
							</div>
							<div class="swiper-slide" data-swiper-slide-index="3"
								style="width: 627px;">
								<a class="css-12ngsuq eiewl70" target="_self" href="#"><picture>
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/08/6e8dc6a488114e2baab377967490a30f_20240508175744.jpg?width=2000"
										class="css-1rdq2xw eiewl71"></picture>
									<div class="css-ftsck8 eiewl72">
										<div color="#000000" class="css-1a9mgan eiewl74">
											<h2 class="css-rrjwli eiewl75">하이드로목 샌들 발매</h2>
											<p class="css-1pnjbcd eiewl76">MERRELL</p>
										</div>
									</div></a>
							</div>
							<div class="swiper-slide swiper-slide-prev"
								data-swiper-slide-index="4" style="width: 627px;">
								<a class="css-12ngsuq eiewl70" target="_self" href="#"><picture>
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/08/c22e491618784c7ba208d82860dcf00c_20240508175925.jpg?width=2000"
										class="css-1rdq2xw eiewl71"></picture>
									<div class="css-ftsck8 eiewl72">
										<div color="#000000" class="css-1a9mgan eiewl74">
											<h2 class="css-rrjwli eiewl75">흔들림 없는 안정감</h2>
											<p class="css-1pnjbcd eiewl76">BLACKYAK</p>
										</div>
									</div></a>
							</div>
							<div class="swiper-slide swiper-slide-active"
								data-swiper-slide-index="5" style="width: 627px;">
								<a class="css-12ngsuq eiewl70" target="_self" href="#"><picture>
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/08/27b0afd9fdde4a48a8f981771021ab74_20240508180144.jpg?width=2000"
										class="css-1rdq2xw eiewl71"></picture>
									<div class="css-ftsck8 eiewl72">
										<div color="#000000" class="css-1a9mgan eiewl74">
											<h2 class="css-rrjwli eiewl75">올여름 새로운 휘파람</h2>
											<p class="css-1pnjbcd eiewl76">MOVEWARM</p>
										</div>
									</div></a>
							</div>
							<div
								class="swiper-slide swiper-slide-duplicate swiper-slide-next"
								data-swiper-slide-index="0" style="width: 627px;">
								<a class="css-12ngsuq eiewl70" target="_self" href="#"><picture>
									<img
										src="https://img.29cm.co.kr/next-product/2024/05/08/6f3a219f5a464b56819ff80c21c34adc_20240508180402.jpg?width=2000"
										class="css-1rdq2xw eiewl71"></picture>
									<div class="css-ftsck8 eiewl72">
										<div color="#000000" class="css-1a9mgan eiewl74">
											<h2 class="css-rrjwli eiewl75">시적인 여름</h2>
											<p class="css-1pnjbcd eiewl76">LOOPLOOP</p>
										</div>
									</div></a>
							</div>
						</div>

						<!-- If we need navigation buttons -->
						<div style="left: 350px" class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>

						<!-- 
						<div class="css-145q29u e1ha01s73">
							<svg class="e1ha01s76 css-8k8h7u e15lsifv0"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
								<path d="M1 0l40 40.083L1.166 80" fill="none"
									fill-rule="evenodd" stroke="#000000" stroke-width="5"></path></svg>
						</div>
						<div class="css-a9wn2v e1ha01s74">
							<svg class="e1ha01s75 css-1s3uxh2 e15lsifv0"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
								<path d="M1 0l40 40.083L1.166 80" fill="none"
									fill-rule="evenodd" stroke="#000000" stroke-width="5"></path></svg>
						</div>
						 -->
					</div>
				</div>
				<div class="css-1onoukq etlggkw0">
					<form action="leisure_main.ss" method="post"
						enctype="multipart/form-data">
						<div class="css-8t2d70 etlggkw1">
							<h2 class="css-kkqm0g etlggkw2">레저</h2>
						</div>
						<ul class="css-eannyr etlggkw3">
							<a class="css-1iv23n0 etlggkw4" href="#">ALL</a>
							<a class="css-1iv23n0 etlggkw4" href="#">NEW</a>
							<a class="css-1iv23n0 etlggkw4" href="leisure_camping.ss">캠핑</a>
							<a class="css-1iv23n0 etlggkw4" href="leisure_hiking.ss">등산,하이킹</a>
							<a class="css-1iv23n0 etlggkw4" href="leisure_golf.ss">골프</a>
							<a class="css-1iv23n0 etlggkw4" href="leisure_swiming.ss">수영</a>
							<a class="css-1iv23n0 etlggkw4" href="leisure_running.ss">러닝</a>
							<a class="css-1iv23n0 etlggkw4" href="leisure_indoor-exercise.ss">실내운동</a>
							<a class="css-1iv23n0 etlggkw4" href="leisure_travel.ss">여행</a>
							<a class="css-1iv23n0 etlggkw4" href="leisure_tennis.ss">테니스</a>
							<a class="css-1iv23n0 etlggkw4" href="leisure_bike.ss">자전거</a>
						</ul>
					</form>
				</div>
			</div>
			<!-- second -->
			<div class="css-4e43p e8dmgjc1">
				<div class="css-zl0y5r e16y5wrz0"></div>
				<div class="css-19p5dbs e68p3yt0">
					<ul class="css-3dx3su e68p3yt2">
						<li class="css-1dmc8sd e68p3yt3"><a
							class="css-y6diwn e68p3yt4"
							href="https://content.29cm.co.kr/brand-news/21666"><div
									class="css-xsc7ie e68p3yt5">
									<div class="css-33647j e68p3yt6">
										<img
											src="https://img.29cm.co.kr/next-product/2024/05/08/14fb87fbd2e24b5a8e411ce4ad922175_20240508180453.jpg?width=800"
											alt="제니의 환상적인 모험" class="css-1324aqc e68p3yt7">
									</div>
								</div>
								<div class="css-9zetyy e68p3yt8">
									<h1 class="css-dtuif0 e68p3yt9">제니의 환상적인 모험</h1>
									<p class="css-1w6vxok e68p3yt11">코랄리크의 여름을 단독 혜택으로 만나요</p>
								</div></a></li>
						<li class="css-1dmc8sd e68p3yt3"><a
							class="css-y6diwn e68p3yt4"
							href="https://content.29cm.co.kr/brand-news/21532"><div
									class="css-xsc7ie e68p3yt5">
									<div class="css-33647j e68p3yt6">
										<img
											src="https://img.29cm.co.kr/next-product/2024/05/08/f8957dfdfb04447fb1e8cac04f6adc89_20240508180540.jpg?width=800"
											alt="본격 여름 준비 시작" class="css-1324aqc e68p3yt7">
									</div>
								</div>
								<div class="css-9zetyy e68p3yt8">
									<h1 class="css-dtuif0 e68p3yt9">본격 여름 준비 시작</h1>
									<p class="css-1w6vxok e68p3yt11">마딘의 스윔웨어와 함께 여름을 준비해요</p>
								</div></a></li>
						<li class="css-1dmc8sd e68p3yt3"><a
							class="css-y6diwn e68p3yt4"
							href="https://content.29cm.co.kr/keyword/2024/05/08/athleisure"><div
									class="css-xsc7ie e68p3yt5">
									<div class="css-33647j e68p3yt6">
										<img
											src="https://img.29cm.co.kr/next-product/2024/05/08/4e7d4061a590419f87082a5c83d3d0ef_20240508180633.jpg?width=800"
											alt="5월의 애슬레저룩" class="css-1324aqc e68p3yt7">
									</div>
								</div>
								<div class="css-9zetyy e68p3yt8">
									<h1 class="css-dtuif0 e68p3yt9">5월의 애슬레저룩</h1>
									<p class="css-1w6vxok e68p3yt11">요즘 입기 좋은 애슬레저 아이템을 만나보세요</p>
								</div></a></li>
						<li class="css-1dmc8sd e68p3yt3"><a
							class="css-y6diwn e68p3yt4"
							href="https://content.29cm.co.kr/brand-news/21516?product_sort=featured"><div
									class="css-xsc7ie e68p3yt5">
									<div class="css-33647j e68p3yt6">
										<img
											src="https://img.29cm.co.kr/next-product/2024/05/08/407e1b615d1e4159ba78056e863a6d38_20240508180726.jpg?width=800"
											alt="감각적인 우먼 골프웨어" class="css-1324aqc e68p3yt7">
									</div>
								</div>
								<div class="css-9zetyy e68p3yt8">
									<h1 class="css-dtuif0 e68p3yt9">감각적인 우먼 골프웨어</h1>
									<p class="css-1w6vxok e68p3yt11">버뮤다 그래스 24SS 컬렉션을 제안합니다</p>
								</div></a></li>
					</ul>
				</div>
			</div>
			<!-- third -->
			<div class="css-1rw4rkj efvsb0w0">
				<ul class="css-11egtcj efvsb0w1">
					<button class="css-13tv9x8 efvsb0w2">New arrivals</button>
					<button class="css-ydj7ef efvsb0w2">Weekly best</button>
				</ul>
				<div class="css-9qgiem epow2i30">
					<h2 class="css-fnx4f5 epow2i33">
						New arrivals<a class="css-f1nnni epow2i34"
							href="https://www.29cm.co.kr/shop/category/list?category_large_code=286100100&amp;category_medium_code=new">전체보기</a>
					</h2>
					<div class="css-1ymgzmv epow2i31">

						<!-- If we need navigation buttons -->
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>

						<!-- <div class="css-6vy6m4 epow2i35">
							<svg class="epow2i38 css-1dv0xyg e15lsifv0"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
								<path d="M1 0l40 40.083L1.166 80" fill="none"
									fill-rule="evenodd" stroke="#000000" stroke-width="5"></path></svg>
						</div>
						<div class="css-vhkf1b epow2i36">
							<svg class="epow2i37 css-1tulk9i e15lsifv0"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
								<path d="M1 0l40 40.083L1.166 80" fill="none"
									fill-rule="evenodd" stroke="#000000" stroke-width="5"></path></svg>
						</div> -->
						<div
							class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events css-13alrll epow2i32">
							<div class="swiper-pagination swiper-pagination-bullets">
								<span
									class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
									class="swiper-pagination-bullet"></span><span
									class="swiper-pagination-bullet"></span><span
									class="swiper-pagination-bullet"></span><span
									class="swiper-pagination-bullet"></span>
							</div>
							<div class="swiper-wrapper"
								style="transform: translate3d(0px, 0px, 0px);">
								<div class="swiper-slide swiper-slide-active"
									style="width: 427px;">
									<div class="css-s06ru1 el98g8e0">
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2635310"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/10/9f25ecc37d7445c4a8052a86840d0bdc_20240510143547.jpg?width=500"
															alt="블랜더보틀 프로V2 710ml" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">블랜더보틀</h2>
													<div class="css-5bfev eppx1jm8">블랜더보틀 프로V2 710ml</div>
													<span class="css-mojyhg eppx1jm9">16,900<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/48835">블랜더보틀</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2597039"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/07/02f90db0b84749baa595575dfd0fa0a7_20240507170640.jpg?width=500"
															alt="블루베리 모자이크 피크닉 매트 (110x145)"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">리튼</h2>
													<div class="css-5bfev eppx1jm8">블루베리 모자이크 피크닉 매트
														(110x145)</div>
													<span class="css-mojyhg eppx1jm9">53,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/10052">리튼</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2597037"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/07/292ddf300f084b11b6106b2bdc2ff488_20240507170649.jpg?width=500"
															alt="윈도우페인 체크 피크닉 매트 - 토피넛 (110x145)"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">리튼</h2>
													<div class="css-5bfev eppx1jm8">윈도우페인 체크 피크닉 매트 - 토피넛
														(110x145)</div>
													<span class="css-mojyhg eppx1jm9">53,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/10052">리튼</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2635312"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/10/bd25bdd6aa4846f78fc1cb4f893a2642_20240510143601.jpg?width=500"
															alt="블랜더보틀 프로V2 946ml" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">블랜더보틀</h2>
													<div class="css-5bfev eppx1jm8">블랜더보틀 프로V2 946ml</div>
													<span class="css-mojyhg eppx1jm9">18,900<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/48835">블랜더보틀</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2626990"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0bc4361731dbb9bbb1ba6e3e2c07.jpg?width=500"
															alt="TAMMY High-waist Bottom Sunshine"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">셸컬렉터</h2>
													<div class="css-5bfev eppx1jm8">TAMMY High-waist
														Bottom Sunshine</div>
													<span class="css-1o7wxso eppx1jm9">5% 65,550<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/24841">셸컬렉터</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide swiper-slide-next"
									style="width: 427px;">
									<div class="css-s06ru1 el98g8e0">
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2635311"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/10/93f2347173df49a5a57646b2fe06dd60_20240510143554.jpg?width=500"
															alt="블랜더보틀 프로V2 828ml" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">블랜더보틀</h2>
													<div class="css-5bfev eppx1jm8">블랜더보틀 프로V2 828ml</div>
													<span class="css-mojyhg eppx1jm9">17,900<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/48835">블랜더보틀</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2626985"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0bc20dfa416fbb14e71b42a738f8.jpg?width=500"
															alt="TAMMY High-waist Bottom Orange"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">셸컬렉터</h2>
													<div class="css-5bfev eppx1jm8">TAMMY High-waist
														Bottom Orange</div>
													<span class="css-1o7wxso eppx1jm9">5% 65,550<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/24841">셸컬렉터</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2618461"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202404/11ef06a1fab06460892b9796a687ac22.jpg?width=500"
															alt="로엔느 서플리스 스트랩 모노키니 - IVORY"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">비키니밴더</h2>
													<div class="css-5bfev eppx1jm8">로엔느 서플리스 스트랩 모노키니 -
														IVORY</div>
													<span class="css-mojyhg eppx1jm9">55,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/21279">비키니밴더</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2635151"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/10/582bada30a644b1193570b1645f070bd_20240510132240.jpg?width=500"
															alt="[난가] UDD BAG 380DX (BEIGE)"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">난가</h2>
													<div class="css-5bfev eppx1jm8">[난가] UDD BAG 380DX
														(BEIGE)</div>
													<span class="css-mojyhg eppx1jm9">578,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/16069">난가</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2618538"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202404/11ef06a5f71e1927bb14cfdde1ef0395.jpg?width=500"
															alt="듀이 그라데이션 백스트랩 모노키니 - YELLOW GREEN"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">비키니밴더</h2>
													<div class="css-5bfev eppx1jm8">듀이 그라데이션 백스트랩 모노키니 -
														YELLOW GREEN</div>
													<span class="css-mojyhg eppx1jm9">55,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/21279">비키니밴더</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide" style="width: 427px;">
									<div class="css-s06ru1 el98g8e0">
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2596975"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/07/6691f9f965b149a8ba92c84879b123f8_20240507170731.jpg?width=500"
															alt="아가일 매트 - 피치 (50X120)" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">리튼</h2>
													<div class="css-5bfev eppx1jm8">아가일 매트 - 피치 (50X120)</div>
													<span class="css-mojyhg eppx1jm9">82,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/10052">리튼</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2627010"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0bcddb7bf623b9bb0b18a6a47a88.jpg?width=500"
															alt="TAMMY Onesie Orange" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">셸컬렉터</h2>
													<div class="css-5bfev eppx1jm8">TAMMY Onesie Orange</div>
													<span class="css-1o7wxso eppx1jm9">5% 141,550<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/24841">셸컬렉터</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2598930"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/07/d548a7435093450eacb335d424c9cc6e_20240507170620.jpg?width=500"
															alt="스퀘어 보온보냉백 - 베이지 (175x165x170)"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">리튼</h2>
													<div class="css-5bfev eppx1jm8">스퀘어 보온보냉백 - 베이지
														(175x165x170)</div>
													<span class="css-mojyhg eppx1jm9">32,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/10052">리튼</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2618526"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202404/11ef06a54e9e1c91b9bbfbbc2db10f91.jpg?width=500"
															alt="드레이프 하이넥 모노키니 - CHARCOAL"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">비키니밴더</h2>
													<div class="css-5bfev eppx1jm8">드레이프 하이넥 모노키니 -
														CHARCOAL</div>
													<span class="css-mojyhg eppx1jm9">55,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/21279">비키니밴더</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2626975"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0bbb34009d39b9bbe704b483f6b5.jpg?width=500"
															alt="TIA Surf Top Banana" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">셸컬렉터</h2>
													<div class="css-5bfev eppx1jm8">TIA Surf Top Banana</div>
													<span class="css-1o7wxso eppx1jm9">5% 84,550<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/24841">셸컬렉터</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide" style="width: 427px;">
									<div class="css-s06ru1 el98g8e0">
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2635305"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/10/fe7ed1ef772c4d0ebe011f5432e2d9d5_20240510143521.jpg?width=500"
															alt="블랜더보틀 스트라다 트라이탄 710ml" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">블랜더보틀</h2>
													<div class="css-5bfev eppx1jm8">블랜더보틀 스트라다 트라이탄 710ml</div>
													<span class="css-mojyhg eppx1jm9">19,900<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/48835">블랜더보틀</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2619568"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0dd6d2c234dfbb1493cca1e7f158.jpg?width=500"
															alt="딜리백 PICK MY CHERRY GREEN (보온/보냉)"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">드롭드롭드롭</h2>
													<div class="css-5bfev eppx1jm8">딜리백 PICK MY CHERRY
														GREEN (보온/보냉)</div>
													<span class="css-mojyhg eppx1jm9">38,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/2494">드롭드롭드롭</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2626986"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0bc2d2daa483bb14b51454c4ed7b.jpg?width=500"
															alt="TAMMY High-waist Bottom Papaya"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">셸컬렉터</h2>
													<div class="css-5bfev eppx1jm8">TAMMY High-waist
														Bottom Papaya</div>
													<span class="css-1o7wxso eppx1jm9">5% 65,550<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/24841">셸컬렉터</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2618508"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202404/11ef06a46fb01a85bb1451ccc916284a.jpg?width=500"
															alt="아미르 플로랄 프릴 모노키니 - YELLOW"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">비키니밴더</h2>
													<div class="css-5bfev eppx1jm8">아미르 플로랄 프릴 모노키니 -
														YELLOW</div>
													<span class="css-mojyhg eppx1jm9">65,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/21279">비키니밴더</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2619575"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0dd680737ffc892b45ccf9b6107c.jpg?width=500"
															alt="딜리백 SWIMMING TOMATO (보온/보냉)"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">드롭드롭드롭</h2>
													<div class="css-5bfev eppx1jm8">딜리백 SWIMMING TOMATO
														(보온/보냉)</div>
													<span class="css-mojyhg eppx1jm9">38,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/2494">드롭드롭드롭</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide" style="width: 427px;">
									<div class="css-s06ru1 el98g8e0">
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2632037"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0d274f04e0d2892b69b1f3357239.png?width=500"
															alt="IGLOO Playmate 이글루 플레이메이트 4Qt (2colors)"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">폼페트</h2>
													<div class="css-5bfev eppx1jm8">IGLOO Playmate 이글루
														플레이메이트 4Qt (2colors)</div>
													<span class="css-mojyhg eppx1jm9">90,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/47215">폼페트</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2632053"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0d3426a2ab64892bfbad9a75b8cf.png?width=500"
															alt="IGLOO Playmate 이글루 플레이메이트 7Qt (7 colors)"
															class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">폼페트</h2>
													<div class="css-5bfev eppx1jm8">IGLOO Playmate 이글루
														플레이메이트 7Qt (7 colors)</div>
													<span class="css-mojyhg eppx1jm9">135,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/47215">폼페트</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2635306"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/10/048e5678ec41437c841f5ae8d2aa139b_20240510143528.jpg?width=500"
															alt="블랜더보틀 스트라다 트라이탄 828ml" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">블랜더보틀</h2>
													<div class="css-5bfev eppx1jm8">블랜더보틀 스트라다 트라이탄 828ml</div>
													<span class="css-mojyhg eppx1jm9">21,900<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/48835">블랜더보틀</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2626993"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/item/202405/11ef0bc5bab45d1bb9bb01e784bf229a.jpg?width=500"
															alt="TAMMY Surf Top Orange" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">셸컬렉터</h2>
													<div class="css-5bfev eppx1jm8">TAMMY Surf Top Orange</div>
													<span class="css-1o7wxso eppx1jm9">5% 84,550<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/24841">셸컬렉터</a>
										</div>
										<div class="css-1htel8m eppx1jm0">
											<a class="css-13o7eu2 eppx1jm1"
												href="https://product.29cm.co.kr/catalog/2596982"><div
													class="css-15ri281 eppx1jm3">
													<div class="css-1efnu1n eppx1jm4">
														<img
															src="https://img.29cm.co.kr/next-product/2024/05/07/c28891a3858348fa8b2f92ad42b1de4b_20240507170713.jpg?width=500"
															alt="크로스 매트 - 블루 (50X120)" class="css-uwwqev eppx1jm5">
													</div>
												</div>
												<div class="css-1pejrgr eppx1jm6">
													<h2 class="css-us5d4h eppx1jm7">리튼</h2>
													<div class="css-5bfev eppx1jm8">크로스 매트 - 블루 (50X120)</div>
													<span class="css-mojyhg eppx1jm9">82,000<span
														class="css-0 eppx1jm10">원</span></span>
												</div></a><a class="css-1cs9oh7 eppx1jm2"
												href="https://shop.29cm.co.kr/brand/10052">리튼</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- four -->
			<div class="css-xxabrc euxw2yv0">
				<div class="css-iwxnhl euxw2yv1">
					<hr class="css-ln2n0u euxw2yv3">
					<hr class="css-1kak7cd euxw2yv3">
					<ul class="css-1kc1i5k euxw2yv2">
						<div role="grid" class="css-kdcvh2" tabindex="0"
							style="position: relative; width: 100%; max-width: 100%; height: 3656px; max-height: 3656px;">
							<div role="gridcell"
								style="top: 1926px; left: 0px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/brand-news/20008"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cms/202405/11ef0ce095167846892b770c6195e769.jpeg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">타협 없는 아웃도어 브랜드</h1>
											<p class="css-jg1sml e1qv5i7p7">등산 및 아웃도어 분야에서 오랜 전통을
												자랑하는 컬럼비아의 신상 잡화 아이템을 소개합니다. 강한 자외선을 막아주는 버킷햇부터 백팩까지 24SS
												신상을 만나보세요.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2598097"><img
											src="https://img.29cm.co.kr/item/202404/11ef0116eeb25f4388b159fccb3c65a0.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">컬럼비아</span><span>
													[추가 쿠폰]_공용 데졸 보울 버킷 (278)</span><span
													class="css-1euw69w e1b74qft5">55,000<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">0</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2598095"><img
											src="https://img.29cm.co.kr/item/202404/11ef0116c656f36abb6a3b3d23a9fcc9.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">컬럼비아</span><span>
													[추가 쿠폰]_여성 이스케이프 쓰라이브 샌들 (292)</span><span
													class="css-1euw69w e1b74qft5">149,000<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">2</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div role="gridcell"
								style="top: 2767px; left: 606px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/collection/6578?product_sort=best&amp;product_group=168421"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cm/202405/11ef0e688e3af277bb142b9bb9be05e8.jpg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">주말엔 숲으로</h1>
											<p class="css-jg1sml e1qv5i7p7">등산과 피크닉의 계절, 산으로 숲으로 떠나고
												싶은 당신을 위한 모자와 가방 액세서리를 준비했어요. 가격대별로 추천하는 상품을 소개합니다.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2543323"><img
											src="https://img.29cm.co.kr/item/202403/11eee6820772b9e89a76112b5895296e.jpeg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">아크테릭스</span><span>[SS24]에어리어스
													18 백팩</span><span class="css-pu7sky e1b74qft5">5% 313,500<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">116</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2602296"><img
											src="https://img.29cm.co.kr/item/202404/11eefe2296b2fdeebb6a452d0d1cfa90.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">노스페이스</span><span>[노스페이스]
													TNF 폴리카보네이트 휠러 28인치 NN2AQ12A_BLK</span><span
													class="css-pu7sky e1b74qft5">5% 265,050<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">6</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div role="gridcell"
								style="top: 1007px; left: 303px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/brand-news/20319"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cms/202405/11ef0c31e42e1281bb148f516bfb93f0.jpeg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">도심 속 자연을 닮은</h1>
											<p class="css-jg1sml e1qv5i7p7">인&amp;아웃도어를 어우르는 브루클린웍스에서
												모던 아웃도어를 브루클린 웍스만의 감성으로 재해석한 라인을 소개합니다.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2437062"><img
											src="https://img.29cm.co.kr/next-product/2024/01/29/df6ad91cacc34599bf3a6461e8a5f2ac_20240129113422.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">브루클린웍스</span><span>BW_[브루클린웍스]
													게이트웨이 쉐이드 원터치 텐트 (4-5인용)</span><span class="css-1euw69w e1b74qft5">280,000<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">536</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/1873212"><img
											src="https://img.29cm.co.kr/item/202312/11ee926a841cc2b98a7f572fb4651493.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">브루클린웍스</span><span>BW_[브루클린웍스]
													로이 텐트 2.0 (3-4인용)</span><span class="css-1euw69w e1b74qft5">550,000<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">154</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div role="gridcell"
								style="top: 1912px; left: 303px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/collection/6578?product_sort=best"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cm/202405/11ef0ea5326ad6b6892b8b61222444de.jpg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">완전한 휴식에 필요한 것</h1>
											<p class="css-jg1sml e1qv5i7p7">피크닉의 계절에 꼭 필요한 모자와 가방
												액세서리 아이템을 만나보세요. 가격대별로 추천 상품을 소개합니다.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2303534"><img
											src="https://img.29cm.co.kr/item/202311/11ee7891070c6de78a7f6f2ba397f61d.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">폴로 랄프 로렌</span><span>폴로
													치노 베이스볼 캡 (RELAY CARSON)</span><span class="css-1euw69w e1b74qft5">89,000<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">4,413</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2439227"><img
											src="https://img.29cm.co.kr/item/202403/11eed9e82f6d0d3c9a763d5b0e4908f4.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">스노우피크 어패럴</span><span>듀얼테크
													백팩 25L Black (S24ZUFBP31)</span><span
													class="css-1euw69w e1b74qft5">169,000<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">200</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div role="gridcell"
								style="top: 1840px; left: 606px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/brand-news/20218"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cms/202405/11ef10c7ee0a8d89b9bb256e8be31c93.jpeg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">한계를 넘어서기 위한 모험</h1>
											<p class="css-jg1sml e1qv5i7p7">끊임없는 도전정신이 깃든 아크테릭스를
												소개해요. 시즌 마감 물량과 신상이 동시에 입고됐어요, 온라인은 한정 수량으로 진행하니 서둘러 만나보세요.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2630187"><img
											src="https://img.29cm.co.kr/item/202405/11ef0ce11fbe1387bb14091135ed7bb3.jpeg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">아크테릭스</span><span>[SS24]감마
													라이트웨이트 재킷 남성</span><span class="css-pu7sky e1b74qft5">5%
													285,000<span class="css-0 e1b74qft6">won</span>
												</span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">0</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2630183"><img
											src="https://img.29cm.co.kr/item/202405/11ef0ce0ef79f76bbb148fc74a8eb3a1.jpeg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">아크테릭스</span><span>[SS24]아톰
													SL 후디 남성</span><span class="css-pu7sky e1b74qft5">5%
													332,500<span class="css-0 e1b74qft6">won</span>
												</span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">0</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div role="gridcell"
								style="top: 0px; left: 303px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/brand-news/22002"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cms/202405/11ef0d22fdedbe3c892b637d1763f7c8.jpeg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">오로지 신체만으로 타협없는 도전</h1>
											<p class="css-jg1sml e1qv5i7p7">코오롱스포츠의 트레일러닝 라인, 이제
												29cm에서 만나보세요! 거친 움직임에 최적화된 디자인과 소재로 거듭난 코오롱스포츠의 트레일러닝을 머리부터
												신발까지 단독 할인 이벤트로 진행합니다. 사이즈 재고가 얼마 없으니 서두르세요.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2611903"><img
											src="https://img.29cm.co.kr/item/202404/11ef069b9945a356892bbf45c300825b.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">코오롱스포츠</span><span>
													[단독 할인]_[TRAIL] 남성 슬리브리스 TLTCX24741DGY</span><span
													class="css-pu7sky e1b74qft5">5% 74,100<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">1</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2611848"><img
											src="https://img.29cm.co.kr/item/202404/11ef069b8240d901b9bb6fcca9bb7449.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">코오롱스포츠</span><span>
													[단독 할인]_[TRAIL] 남성 러닝 반팔 티셔츠 TLTCX24735DGY</span><span
													class="css-pu7sky e1b74qft5">5% 93,100<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">0</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div role="gridcell"
								style="top: 0px; left: 0px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/brand-news/22065"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cms/202405/11ef0de9ad63bb28892b7790b1596f84.jpeg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">테니스를 멋있게 즐기는 방법</h1>
											<p class="css-jg1sml e1qv5i7p7">트렌드에 뒤쳐지지 않은 당신에게 테니스
												어패럴을 추천한다면 100년 넘게 이어진 헤리티지가 담긴 윌슨을 추천 합니다. 24년 신상을 29CM에서
												만나보세요.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2574777"><img
											src="https://img.29cm.co.kr/item/202404/11eef7ccb9214b6abb6a45fd8c5d772b.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">윌슨</span><span>여성
													캡내장 카라 슬리브리스_WW30042413WHT</span><span
													class="css-1euw69w e1b74qft5">139,000<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">6</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2574782"><img
											src="https://img.29cm.co.kr/item/202404/11eef7cd3c20e91c936791d033332d0a.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">윌슨</span><span>여성
													캡내장 카라 슬리브리스_WW30042413BLU</span><span
													class="css-1euw69w e1b74qft5">139,000<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">2</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div role="gridcell"
								style="top: 0px; left: 606px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/brand-news/21836"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cms/202405/11ef0925da8b3285bb142980ab3454fb.jpeg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">오로지 나만을 위한 하루</h1>
											<p class="css-jg1sml e1qv5i7p7">늦은 밤 산속은 또 다른 매력을 선사해요.
												지친 일상에서 오로지 나만을 위한 하루를 산에서 보내고 싶을 땐 콜맨과 함께하세요.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/1403485"><img
											src="https://img.29cm.co.kr/next-product/2022/02/10/aae75f9502f142b484c75eff195857cf_20220210170632.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">콜맨</span><span>
													[15% 쿠폰]_콜맨 레이체어 (레드) 리클라이닝 체어</span><span
													class="css-pu7sky e1b74qft5">18% 104,000<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">170</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/1403185"><img
											src="https://img.29cm.co.kr/next-product/2022/02/10/2c7ad63285cc4f5e96b7d9bfa5cfb577_20220210155047.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">콜맨</span><span>
													[15% 쿠폰]_콜맨 레이체어 (올리브) 리클라이닝 체어</span><span
													class="css-pu7sky e1b74qft5">15% 123,300<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">355</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div role="gridcell"
								style="top: 935px; left: 0px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/brand-news/21817"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cms/202405/11ef10c523b91b85bb140d0390325ea6.jpeg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">여름을 더욱 생기있게 만든 협업</h1>
											<p class="css-jg1sml e1qv5i7p7">감성 아웃도어 퍼니처 론체어와 네파의 만남.
												여름을 더욱 생기 있게 만들어 줄 콜라보레이션 라인업을 만나보세요. 20만원 이상 구매 시 추첨을 통해
												론체어를 증정합니다.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2622560"><img
											src="https://img.29cm.co.kr/item/202405/11ef0cd573829668892bef9a7b70e558.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">네파</span><span>
													[10% 추가 쿠폰]_네파/본사직영 7KD5368 공용 론체어 듀스 그래픽 반팔 티셔츠</span><span
													class="css-pu7sky e1b74qft5">10% 53,100<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">0</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2622564"><img
											src="https://img.29cm.co.kr/item/202405/11ef0cd69f98556bb9bb3d6369533eef.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">네파</span><span>
													[10% 추가 쿠폰]_네파/본사직영 7KD5388 공용 론체어 듀스 그래픽 반팔 티셔츠</span><span
													class="css-pu7sky e1b74qft5">19% 47,790<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">1</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div role="gridcell"
								style="top: 935px; left: 606px; width: 303px; writing-mode: horizontal-tb; position: absolute;">
								<div class="css-veh7ha elhzesg0">
									<a class="css-1jypvcz e1qv5i7p8"
										href="https://content.29cm.co.kr/brand-news/21646"><span
										class="css-1c39dt4 e1qv5i7p0"></span>
									<div class="css-u58y5m e1qv5i7p1">
											<img
												src="https://img.29cm.co.kr/cm/202405/11ef0e619ce589e9b9bbf30d9a17e90f.jpg?width=500"
												class="css-mqd1xo e1qv5i7p3">
										</div>
										<div class="css-10mzaug e1qv5i7p4">
											<h1 class="css-1se6r14 e1qv5i7p6">탐험을 위한 첫걸음</h1>
											<p class="css-jg1sml e1qv5i7p7">여행의 진정한 의미를 찾는 내셔널지오그래픽의
												캐리어를 소개해요. 새로 나온 신상품부터 인기 상품까지, 사은품 이벤트와 함께 만나보세요.</p>
										</div></a>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2608734"><img
											src="https://img.29cm.co.kr/next-product/2024/04/24/adb1c72489154635a09a42a930f9b51e_20240424153803.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">내셔널지오그래픽</span><span>내셔널지오그래픽
													N245ASU370 하바나 캐리어 28형 IVORY</span><span
													class="css-pu7sky e1b74qft5">15% 255,600<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">17</span>
											</button>
										</div>
									</div>
									<div class="css-15xwjg0 e1b74qft0">
										<a class="css-mn2zdd e1b74qft1"
											href="https://product.29cm.co.kr/catalog/2583300"><img
											src="https://img.29cm.co.kr/next-product/2024/04/11/cd8f111ba8814510b0b6532b11d831ae_20240411161025.jpg?width=150"
											class="css-nt3lq3 e1b74qft2">
										<div class="css-161seae e1b74qft3">
												<span class="css-16b7yk2 e1b74qft4">내셔널지오그래픽</span><span>내셔널지오그래픽
													N245ASU410 몬트 캐리어 26형 IVORY</span><span
													class="css-pu7sky e1b74qft5">14% 247,500<span
													class="css-0 e1b74qft6">won</span></span>
											</div></a>
										<div class="css-16j3p2r e1b74qft7">
											<button class="css-1u7zeg9 e1b74qft8">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="14" viewBox="0 0 20 20">
													<path
														d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
														fill="none" fill-rule="evenodd" stroke="#5d5d5d"
														stroke-width="0.7"></path></svg>
												<span class="css-1afbq5h e1b74qft9">9</span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div></div>
					</ul>
				</div>
			</div>
		</div>
		<footer class="css-1lo70d e1l4oco10">
			<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
		</footer>
	</div>
	<!-- next -->

</body>
<script>
	const swiper = new Swiper('.swiper-container', {
		// Optional parameters
		direction : 'horizontal',
		loop : true,

		// If we need pagination
		pagination : {
			el : '.swiper-pagination',
		},

		// Navigation arrows
		navigation : {
			nextEl : '.swiper-button-next',
			prevEl : '.swiper-button-prev',
		},

		// And if we need scrollbar
		scrollbar : {
			el : '.swiper-scrollbar',
		},
	});
</script>
<script>
	$("#third-1").on("click", function() {
		$("#third1").css("background", "rgb(48, 48, 51)");
		$("#third2").css("background", "rgb(255, 255, 255)");
		$("#dd2").hide();
		$("#dd1").show();
	})
	$("#third-2").on("click", function() {
		$("#third2").css("background", "rgb(48, 48, 51)");
		$("#third1").css("background", "rgb(255, 255, 255)");
		$("#dd1").hide();
		$("#dd2").show();
	})
</script>

</html>