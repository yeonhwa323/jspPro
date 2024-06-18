<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.3/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
  <script src="https://code.jquery.com/ui/1.13.3/jquery-ui.js"></script>
  
<style>

html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, 
a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, 
small, strike, strong, sub, sup, tt, var, b, u, i, dl, dt, dd, ol, ul, li, fieldset, 
form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, 
canvas, details, embed, figure, figcaption, footer, header, menu, nav, output, ruby, 
section, summary, time, mark, audio, video, input, textarea, button, select {
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

article, aside, details, figcaption, figure, footer, header, main, menu, nav, section, summary {
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

@media (min-width: 541px) {
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

@media (min-width: 541px) {
    .mid-top {
        position: absolute;
        top: 0px;
        right: 50px;
        left: 280px;
        height: 150px;
        padding: 25px 0px;
    }
}

@media (min-width: 541px) {
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

@media (min-width: 541px) {
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

@media (max-width: 1440px) {
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

.delivery-view {
    display: inline-block;
    padding: 10px 0px;
    font-size: 15px;
    color: rgb(93, 93, 93);
    font-weight: 200;
}

.shop-info-a {
    display: inline-block;
    padding: 10px 0px;
    font-size: 15px;
    color: rgb(93, 93, 93);
    font-weight: 200;
}

.review-info-a {
    display: inline-block;
    padding: 10px 0px;
    font-size: 15px;
    color: rgb(48, 48, 51);
    font-weight: 600;
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

@media (min-width: 541px) {
    .mid-mid {
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        padding-top: 190px;
    }
}

.review-text {
    margin-bottom: 16px;
    font-size: 22px;
    font-weight: 500;
    line-height: 30px;
    color: rgb(0, 0, 0);
}

.review-list {
    display: flex;
    border-bottom: 4px solid rgb(0, 0, 0);
    position: relative;
}

.can-review {
    cursor: pointer;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 180px;
    height: 49px;
    font-size: 14px;
    color: rgb(255, 255, 255);
    background-color: rgb(0, 0, 0);
}

.my-review {
    cursor: pointer;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 180px;
    height: 49px;
    font-size: 14px;
    color: rgb(160, 160, 160);
    background-color: rgb(255, 255, 255);
    border-width: 1px 1px 0px;
    border-top-style: solid;
    border-right-style: solid;
    border-left-style: solid;
    border-top-color: rgb(212, 212, 212);
    border-right-color: rgb(212, 212, 212);
    border-left-color: rgb(212, 212, 212);
    border-image: initial;
    border-bottom-style: initial;
    border-bottom-color: initial;
}

.mileage-sum {
    position: absolute;
    top: 50%;
    right: 0px;
    transform: translateY(-50%);
}

.mile-sum2 {
    position: relative;
}

.mile-sum3 {
    line-height: 0;
}

.mileage-box {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
}

.mile-text {
    margin-right: 10px;
    font-size: 16px;
    font-weight: bold;
    line-height: 30px;
    color: rgb(0, 0, 0);
}

.mile-num {
    color: rgb(255, 72, 0);
}

.question-mark {
    line-height: 0;
}

.mile-textbox {
    position: absolute;
    font-size: 12px;
    color: rgb(255, 255, 255);
    white-space: nowrap;
    opacity: 1;
    background: rgb(255, 255, 255);
    border-radius: 2px;
    transition: opacity 0.2s ease-in-out 0s;
    top: -12px;
    display: none;
    right: 0px;
    left: auto;
    transform: translate(0px, -100%);
    width: 408px;
    padding: 24px;
    box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px 0px;
}

.mile-textbox::after{
	border-top: 7px solid rgb(255,255,255);
}

.mile-textbox::after{
	cursor: pointer;
	content: "";
    position: absolute;
    bottom: -6px;
    left: 50%;
    display: block;
    transform: translateX(-50%);
    border-top: 7px solid rgb(255, 255, 255);
    border-right: 5px solid transparent;
    border-left: 5px solid transparent;
}

.box-box {
    color: rgb(0, 0, 0);
    white-space: pre-wrap;
}

.textbox1 {
    display: block;
    margin-bottom: 8px;
    font-size: 14px;
    line-height: 20px;
}

.textbox2 {
    font-size: 14px;
    line-height: 20px;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
	</header>
	<div class="mid-div">
		<div class="mid-left">
			<div class="mid-left-top">
				<h3 class="name">유*</h3>
				<ul class="like">
					<li class="like-li">
						<a class="like-a" href="#">좋아요 0</a>
					</li>
				</ul>
			</div>
			<ul class="mid-top">
				<li class="user-grade">
					<a class="grade1" href="#">
						<strong class="grade2">회원등급</strong>
						<span class="grade-color">GREEN</span>
					</a>
					<a class="sale" target="blank" href="#">할인혜택 보기</a>
				</li>
				<li class="user-coupon">
					<a class="grade1" href="#">
						<strong class="grade2">사용가능쿠폰</strong>
						<span class="grade-color">2</span>
					</a>
				</li>
				<li class="user-mileage">
					<a class="grade1" href="#">
						<strong class="grade2">마일리지</strong>
						<span class="grade-color">0</span>
					</a>
				</li>
			</ul>	
			<ul class="mid-left-list-top">
				<li class="">
					<h4 class="shop-info">나의 쇼핑정보</h4>
					<ul class="shop-info-list">
						<li class="shop-info-li">
							<a class="delivery-view" href="/SentiProject/sentiBoard/list/mypage_delivery.jsp">주문배송조회</a>
						</li>
						<li>
							<a class="shop-info-a" href="#">숙박예약조회</a>
						</li>
						<li>
							<a class="shop-info-a" href="#">취소/교환/반품 내역</a>
						</li>
						<li>
							<a class="review-info-a" href="#">상품 리뷰</a>
						</li>
						<li>
							<a class="shop-info-a" href="#">증빙서류 발급</a>
						</li>
					</ul>
				</li>
				<li class="id">
					<h4 class="id-info">나의 계정설정</h4>
					<ul class="">
						<li class="id-li">
							<a class="id-a" href="#">회원정보수정</a>
						</li>
						<li class="id-li">
							<a class="id-a" href="#">회원등급</a>
						</li>
						<li class="id-li">
							<a class="id-a" href="#">쿠폰</a>
						</li>
						<li class="id-li">
							<a class="id-a" href="#">마일리지</a>
						</li>
					</ul>
				</li>
				<li class="service-center">
					<h4 class="service-info">고객센터</h4>
					<ul class="">
						<li class="service-li">
							<a class="service-a" href="#">1:1 문의내역</a>
						</li>
						<li class="service-li">
							<a class="service-a" href="#">상품 Q&A내역</a>
						</li>
						<li class="service-li">
							<a class="service-a" href="#">공지사항</a>
						</li>
						<li class="service-li">
							<a class="service-a" href="#">FAQ</a>
						</li>
						<li class="service-li">
							<a class="service-a" href="#">고객의 소리</a>
						</li>
					</ul>
				</li>
			</ul>
			<section class="information">
				<h4 class="service-center-guide">고객센터 안내</h4>
				<p class="service-email">customer@29cm.co.kr</p>
				<ul class="go-go">
					<li>
						<a class="go-go-go" href="#">1:1 문의하러가기</a>
					</li>
				</ul>
			</section>
		</div>
		<div class="mid-mid">
			<h3 class="review-text">리뷰</h3>
			<ul class="review-list">
				<li class="can-review">작성 가능한 리뷰(0)</li>
				<li class="my-review">내 리뷰(0)</li>
				<div class="mileage-sum">
					<div class="mile-sum2">
						<div class="mile-sum3">
							<div class="mileage-box">
								<p class="mile-text">
								적립 가능한 마일리지 합계
								<span class="mile-num">0</span>
								</p>
								<div class="question-mark">
									<svg width="20" height="20" viewBox="0 0 20 20">
										<g transform="translate(1 1)" fill="none" fill-rule="evenodd">
											<circle stroke="#d4d4d4" cx="9" cy="9" r="9">
											</circle>
											<path d="M9.614 10.944H8.271v-.592c0-.214.024-.408.072-.58.047-.173.117-.33.207-.47.09-.14.2-.273.329-.4a5.94 5.94 0 0 1 .435-.39l.529-.432c.21-.156.383-.327.521-.512s.207-.422.207-.71c0-.395-.145-.71-.435-.944-.29-.235-.665-.352-1.122-.352-.476 0-.857.131-1.143.395a1.534 1.534 0 0 0-.5.963L6 6.784a2.5 2.5 0 0 1 .357-.957 2.64 2.64 0 0 1 .679-.722c.271-.198.583-.348.935-.45A4.009 4.009 0 0 1 9.1 4.5c.4 0 .774.05 1.121.148.348.099.655.245.922.438.267.194.476.433.628.716.153.284.229.612.229.982 0 .263-.033.494-.1.691-.067.198-.16.377-.279.537-.119.16-.264.311-.435.451-.172.14-.357.284-.557.432-.19.14-.353.265-.486.377a1.598 1.598 0 0 0-.314.34 1.186 1.186 0 0 0-.165.382 2.28 2.28 0 0 0-.05.518v.432zm.357 1.741c0 .214-.09.403-.271.568a.98.98 0 0 1-.686.247c-.266 0-.493-.08-.678-.24-.186-.161-.279-.348-.279-.562 0-.223.09-.414.272-.575.18-.16.41-.24.685-.24.276 0 .505.078.686.234a.725.725 0 0 1 .271.568z" fill="#5d5d5d">
											</path>
										</g>
									</svg>
								</div>
							</div>
						</div>
						<div class="mile-textbox">
							<div class="box-box">
								<strong class="textbox1">마일리지 합계는 작성 가능한 리뷰를 모두 작성 하였을 때, 적립 가능한 최대 마일리지의 합계 입니다.</strong>
								<p class="textbox2">(건 당 적립 가능한 최대 마일리지는 결제 금액에 따라 달라집니다. 1만원 이하 – 100 마일리지, 1만원 초과 – 1,500 마일리지)</p>
							</div>
						</div>
					</div>
				</div>
			</ul>
			<div class=""></div>
		</div>
	</div>
<script>
	$(".mileage-box").hover(function(){
		$(".mile-textbox").show();
	}, function(){
		$(".mile-textbox").hide();
	})
	$(".my-review").on("click", function(){
		$(".mile-sum2").hide();
	})
</script>
</body>
</html>