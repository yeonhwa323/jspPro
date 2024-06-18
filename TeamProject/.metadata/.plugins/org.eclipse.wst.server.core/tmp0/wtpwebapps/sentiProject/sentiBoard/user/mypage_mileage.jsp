<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
.css-1z77vw {
	-webkit-align-items: stretch;
	-webkit-box-align: stretch;
	-ms-flex-align: stretch;
	align-items: stretch;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	justify-content: space-between;
	padding-bottom: 20px;
	border-bottom: var(--ruler-scale-dimension-50) solid
		var(--ruler-semantic-color-border-divider-strong);
}

.css-ffmerx {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	gap: 6px;
}

.css-1pz4yje {
	border: none;
	outline: none;
	cursor: pointer;
	border-radius: var(--ruler-scale-corner-radius-full);
	background-color: var(--ruler-semantic-color-fill-primary);
	padding: 6px 14px;
}

.css-1pz4yje .tag-component-ruler-text {
	color: var(--ruler-semantic-color-text-on-color);
}

.css-113q9ye {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-m-medium-font-family);
	font-weight: var(--ruler-semantic-typography-text-m-medium-font-weight);
	line-height: var(--ruler-semantic-typography-text-m-medium-line-height);
	font-size: var(--ruler-semantic-typography-text-m-medium-font-size);
	color: var(--ruler-semantic-color-text-primary);
}

.css-oh9vub {
	border: none;
	outline: none;
	cursor: pointer;
	border-radius: var(--ruler-scale-corner-radius-full);
	background-color: var(--ruler-semantic-color-fill-tertiary);
	padding: 6px 14px;
}

.css-oh9vub .tag-component-ruler-text {
	color: var(--ruler-semantic-color-text-secondary);
}

.css-c71srt {
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: start;
	-ms-flex-pack: start;
	-webkit-justify-content: flex-start;
	justify-content: flex-start;
}

.css-1rp8836 {
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-box-pack: start;
	-ms-flex-pack: start;
	-webkit-justify-content: flex-start;
	justify-content: flex-start;
}

@media ( min-width : 541px) {
	.css-phel57 {
		display: none;
	}
}

.css-phel57 {
	width: 100%;
	background-color: var(--ruler-semantic-color-background-low);
}

.css-i5y6v0 {
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	justify-content: space-between;
	padding: 18px 18px 18px 20px;
}

.css-izpnhq {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-l-bold-font-family);
	font-weight: var(--ruler-semantic-typography-text-l-bold-font-weight);
	line-height: var(--ruler-semantic-typography-text-l-bold-line-height);
	font-size: var(--ruler-semantic-typography-text-l-bold-font-size);
	color: var(--ruler-semantic-color-text-primary);
}

.css-qty8jo {
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: start;
	-ms-flex-pack: start;
	-webkit-justify-content: flex-start;
	justify-content: flex-start;
}

.css-4tu4wq {
	width: 18px;
	height: 18px;
	min-width: 18px;
	min-height: 18px;
}

.css-4tu4wq * {
	fill: var(--ruler-semantic-color-text-primary);
}

.css-1q4fi7z {
	padding-top: 20px;
}

.css-1t5fflo {
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
}

.css-1kf5pac {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-xxl-font-family);
	font-weight: var(--ruler-semantic-typography-text-xxl-font-weight);
	line-height: var(--ruler-semantic-typography-text-xxl-line-height);
	font-size: var(--ruler-semantic-typography-text-xxl-font-size);
	color: var(--ruler-semantic-color-text-secondary);
}

.css-jn01mi {
	margin-top: 50px;
}

.css-nhhzm7 {
	padding: 30px 20px;
	background-color: var(--ruler-semantic-color-background-low);
}

.css-x0q8ne {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-m-bold-font-family);
	font-weight: var(--ruler-semantic-typography-text-m-bold-font-weight);
	line-height: var(--ruler-semantic-typography-text-m-bold-line-height);
	font-size: var(--ruler-semantic-typography-text-m-bold-font-size);
	color: var(--ruler-semantic-color-text-secondary);
}

.css-1h6a260 {
	-webkit-align-items: stretch;
	-webkit-box-align: stretch;
	-ms-flex-align: stretch;
	align-items: stretch;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-box-pack: start;
	-ms-flex-pack: start;
	-webkit-justify-content: flex-start;
	justify-content: flex-start;
	gap: 6px;
	margin-top: 10px;
}

.css-8srg86 {
	display: block;
	width: 3px;
	height: 3px;
	margin-right: 7px;
	background-color: var(--ruler-scale-color-gray-600);
	border-radius: 50%;
}

.css-1nlkm3q {
	display: inline-block;
	font-family: var(--ruler-semantic-typography-text-m-font-family);
	font-weight: var(--ruler-semantic-typography-text-m-font-weight);
	line-height: var(--ruler-semantic-typography-text-m-line-height);
	font-size: var(--ruler-semantic-typography-text-m-font-size);
	color: var(--ruler-semantic-color-text-secondary);
}

.css-mq441d>li+li {
	margin-top: 30px;
}

.css-1pz4yje:hover {
    background-color: var(--ruler-semantic-color-fill-primary-hover);
}

.active {
	background-color: black; /* 활성화시 배경색 */
	color: white; /* 활성화시 텍스트 색상 */
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
			<section class="css-1z77vw euts7bx1">
				<div class="css-tsn2tp euts7bx2">
					<ul class="css-ffmerx ek9a2il0">
						<li><button class="e8avfrl12 css-1pz4yje e8avfrl9">
								<span class="tag-component-ruler-text css-113q9ye e8avfrl0"
									color="primary">전체</span>
							</button></li>
						<li><button class="e8avfrl12 css-oh9vub e8avfrl9">
								<span class="tag-component-ruler-text css-113q9ye e8avfrl0"
									color="primary">적립</span>
							</button></li>
						<li><button class="e8avfrl12 css-oh9vub e8avfrl9">
								<span class="tag-component-ruler-text css-113q9ye e8avfrl0"
									color="primary">사용</span>
							</button></li>
						<li><button class="e8avfrl12 css-oh9vub e8avfrl9">
								<span class="tag-component-ruler-text css-113q9ye e8avfrl0"
									color="primary">소멸</span>
							</button></li>
					</ul>
				</div>
				<div class="css-c71srt euts7bx3">
					<section class="css-1rp8836 e1udli4m0">
						<div class="css-phel57 e1udli4m1">
							<a class="css-i5y6v0 e1udli4m2"
								href="https://order.29cm.co.kr/my-order/review"><span
								class="css-izpnhq e8avfrl0" color="primary">적립 가능 마일리지</span>
								<div class="css-qty8jo e1udli4m3">
									<span class="css-izpnhq e8avfrl0" color="primary">0</span>
									<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
										viewBox="0 0 24 24" fill="none" color="primary"
										class="css-4tu4wq e8avfrl6">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M17.1314 12L8.56569 20.5657L7.43432 19.4343L14.8686 12L7.43432 4.56568L8.56569 3.43431L17.1314 12Z"
											fill="black"></path></svg>
								</div></a>
						</div>
					</section>
				</div>
			</section>
			<div class="css-1q4fi7z euts7bx4">
				<section>
					<div style="flex: none; height: 200px"></div>
					<div class="css-1t5fflo">
						<span class="css-1kf5pac e8avfrl0" color="secondary">마일리지
							내역이 없습니다.</span>
					</div>
					<div style="flex: none; height: 200px"></div>
				</section>
			</div>
			<div class="css-jn01mi euts7bx5">
				<section class="css-nhhzm7 eutcdjm0">
					<div>
						<ul class="css-mq441d eybdqcu0">
							<li><span class="css-x0q8ne e8avfrl0" color="secondary">마일리지
									적립</span>
								<ul class="css-1h6a260 eybdqcu1">
									<li class="css-qty8jo eybdqcu2"><span
										class="css-8srg86 eybdqcu3"></span><span
										class="css-1nlkm3q e8avfrl0" color="secondary">구매적립
											마일리지는 구매확정 시 (배송시작 후 9일째) 적립됩니다.</span></li>
									<li class="css-qty8jo eybdqcu2"><span
										class="css-8srg86 eybdqcu3"></span><span
										class="css-1nlkm3q e8avfrl0" color="secondary">리뷰작성
											마일리지는 리뷰 작성 완료 즉시 적립됩니다.</span></li>
								</ul></li>
							<li><span class="css-x0q8ne e8avfrl0" color="secondary">마일리지
									소멸</span>
								<ul class="css-1h6a260 eybdqcu1">
									<li class="css-qty8jo eybdqcu2"><span
										class="css-8srg86 eybdqcu3"></span><span
										class="css-1nlkm3q e8avfrl0" color="secondary">마일리지의 기본
											유효기한은 적립 일자로부터 5년이며, 유효기한이 지난 마일리는 소멸됩니다. 소멸된 마일리지는 복구되지
											않습니다.</span></li>
									<li class="css-qty8jo eybdqcu2"><span
										class="css-8srg86 eybdqcu3"></span><span
										class="css-1nlkm3q e8avfrl0" color="secondary">이벤트
											마일리지의 경우, 유효기간 내에만 사용이 가능하며, 미사용 마일리지는 소멸됩니다.</span></li>
								</ul></li>
							<li><span class="css-x0q8ne e8avfrl0" color="secondary">마일리지
									사용</span>
								<ul class="css-1h6a260 eybdqcu1">
									<li class="css-qty8jo eybdqcu2"><span
										class="css-8srg86 eybdqcu3"></span><span
										class="css-1nlkm3q e8avfrl0" color="secondary">보유한
											마일리지는 주문 시 총 상품 금액만큼 사용할 수 있습니다. (배송비 제외)</span></li>
									<li class="css-qty8jo eybdqcu2"><span
										class="css-8srg86 eybdqcu3"></span><span
										class="css-1nlkm3q e8avfrl0" color="secondary">마일리지는 남은
											유효기간이 짧은 순서대로 사용됩니다.</span></li>
									<li class="css-qty8jo eybdqcu2"><span
										class="css-8srg86 eybdqcu3"></span><span
										class="css-1nlkm3q e8avfrl0" color="secondary">주문
											취소/반품으로 인한 마일리지 환불 시, 남은 유효기간이 긴 순서대로 환불됩니다.</span></li>
								</ul></li>
						</ul>
					</div>
				</section>
			</div>
		</div>
	</div>
	<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>
</body>
<script>
$(document).ready(function() {
    // 버튼 클릭 이벤트 핸들러 설정
    $(".css-ffmerx li button").click(function() {
        // 모든 버튼에서 'css-1pz4yje' 클래스를 제거하고 'css-oh9vub' 클래스를 추가
        $(".css-ffmerx li button").removeClass("css-1pz4yje").addClass("css-oh9vub");
        
        // 클릭된 버튼에만 'css-1pz4yje' 클래스를 추가하고 'css-oh9vub' 클래스를 제거
        $(this).removeClass("css-oh9vub").addClass("css-1pz4yje");
    });
});
</script>
</html>