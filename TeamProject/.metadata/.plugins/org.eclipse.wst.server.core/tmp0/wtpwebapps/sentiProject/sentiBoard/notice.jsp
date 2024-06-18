<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>

*s {
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

@media (min-width: 541px) {
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

@media (min-width: 541px) {
    .mid-mid {
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        padding-top: 190px;
    }
}

</style>

<!-- start -->

<style>

.my_tit.nobor {
    padding: 0;
    border: 0;
}

.my_tit {
    position: relative;
    padding-bottom: 10px;
    border-bottom: 4px solid #000;
    font-size: 22px;
    color: #000;
    line-height: 30px;
    font-weight: 500;
}

h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
    unicode-bidi: isolate;
}

.tab {
    overflow: hidden;
    margin-top: 40px;
    border-bottom: 4px solid #000;
    font-size: 0;
}

li, ol, ul {
    list-style: none;
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

.tab li, .tab li a {
    display: inline-block;
}

.tab li {
    margin: 0 -1px -1px 0;
}

.tab .selected a {
    border-color: #000;
    background: #000;
    color: #fff;
}

.tab li a {
    padding: 0 30px;
    border: 1px solid #d4d4d4;
    font-size: 14px;
    color: #a0a0a0;
    line-height: 48px;
}

.tab li, .tab li a {
    display: inline-block;
}

a, button {
    outline: none;
}

.my_tbl_notice .my_tbl_info .infoinner .date, .my_tbl_notice .my_tbl_info .infoinner .type {
    color: #5d5d5d;
}

.my_tbl_notice .type {
    width: 140px;
    padding: 15px 0;
    color: #000;
}

.my_tbl_info p {
    display: table-cell;
    min-height: 50px;
    text-align: center;
    vertical-align: middle;
    font-size: 14px;
    box-sizing: border-box;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    unicode-bidi: isolate;
}

.my_tbl_info {
    display: table;
    table-layout: fixed;
    position: relative;
    width: 100%;
    box-sizing: border-box;
    color: #303033;
}

.my_tbl_notice .my_tbl_info .infoinner .tit {
    cursor: pointer;
}

.my_tbl_notice .tit {
    padding: 15px 3% 15px 0;
    color: #000;
    text-align: left;
}

.my_tbl_info p {
    display: table-cell;
    min-height: 50px;
    text-align: center;
    vertical-align: middle;
    font-size: 14px;
    box-sizing: border-box;
}


.blind, legend {
    overflow: hidden;
    position: absolute;
    top: 0;
    left: 0;
    width: 1px;
    height: 1px;
    font-size: 1px;
    line-height: 100px;
    white-space: nowrap;
}

.my_tbl_notice .date {
    width: 130px;
    padding: 15px 1%;
    color: #000;
}

.my_tbl_info .infoinner {
    display: table;
    width: 100%;
}

[_nghost-wwq-c98] {
    display: block;
    text-align: center;
}

ruler-basic-pagination .custom-pagination {
    margin-top: 35px;
}

.custom-pagination {
    display: inline-block;
    position: relative;
    padding: 0 50px;
    text-align: center;
    line-height: 22px;
    vertical-align: top;
}

.custom-pagination .pagination-previous {
    position: absolute;
    top: 50%;
    left: 0;
    margin: -11px 10px 0;
}

.custom-pagination .pagination-next, 
.custom-pagination .pagination-previous {
    display: inline-block;
    width: 22px;
    margin: 0 10px;
    height: 22px;
    vertical-align: top;
}

.custom-pagination.current{
    font-weight: 700;
    color: #000;
}

.custom-pagination .current, .custom-pagination .num a {
    display: inline-block;
    min-width: 10px;
    padding: 0 5px;
    font-size: 16px;
}

.custom-pagination .current span {
    border-bottom: 1px solid #000;
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
							<a class="delivery-view" href="#">주문배송조회</a>
						</li>
						<li>
							<a class="shop-info-a" href="#">숙박예약조회</a>
						</li>
						<li>
							<a class="shop-info-a" href="#">취소/교환/반품 내역</a>
						</li>
						<li>
							<a class="shop-info-a" href="/SentiProject/sentiBoard/list/mypage_item_review.jsp">상품 리뷰</a>
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
		
		<!-- 여기서부터 작업하시면 됩니다 -->

			<div class="article_right">
				<section class="my_notice2">
					<h3 class="my_tit nobor">공지사항</h3>

					<div class="tab">
						<ul class="tab-tab">
							<li class="selected">
							  <a href="javascript:">공지사항</a>
							</li>
							<li>
							  <a href="javascript:">이벤트 당첨안내</a>
							</li>
						</ul>
					</div>

					<div class="my_tbl_lst my_tbl_notice">

						<div class="ng-star-inserted">
							<div class="my_tbl">

								<div class="my_tbl_info">
									<div class="infoinner">
										<p class="type">
											<span class="blind">번호</span>78
										</p>
										<p class="tit">
											<span class="blind">제목</span>[공지] 멤버십
											약관 관련 정책 시행 사전안내 ( 시행일자 : 2023년 10월 1일 )
										</p>
										<p class="date">
											<span class="blind">등록일</span>2023-09-14
										</p>
									</div>
								</div>
						</div>
						<div class="ng-star-inserted">
							<div class="my_tbl"></div>
						</div>
						<!---->
						<ruler-basic-pagination _nghost-wwq-c98="">
						<div class="custom-pagination ng-star-inserted">
							<span class="pagination-previous disabled">
								<!---->
							</span> 
							<span class="num current ng-star-inserted">
								<!----> 
								<span class="ng-star-inserted">
									1 </span>
							<!---->
							</span><span class="num ng-star-inserted">
								<a class="ng-star-inserted"> 2 </a>
							<!----> <!---->
							</span><span class="num ng-star-inserted">
								<a class="ng-star-inserted"> 3 </a>
							<!----> <!---->
							</span>
							<span class="num ng-star-inserted">
								<a class="ng-star-inserted"> 4 </a>
							<!----> <!---->
							</span><span class="num ng-star-inserted">
								<a class="ng-star-inserted"> 5 </a>
							<!----> <!---->
							</span><span class="num ng-star-inserted">
								<a class="ng-star-inserted"> 6 </a>
							<!----> <!---->
							</span><span class="num ng-star-inserted">
								<a class="ng-star-inserted"> 7 </a>
							<!----> <!---->
							</span>
							<!---->

							<span class="pagination-next"> 
							  <a class="ng-star-inserted">
							     <ruler-svg-icon-next width="11" height="22" stroke="#000">
									 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80" style="width: 11px; height: 22px;">
    									<path d="M1 0l40 40.083L1.166 80"
											style="fill: none; fill-rule: evenodd; stroke: rgb(0, 0, 0); stroke-width: 5;">
									    </path>
									 </svg> 
								 </ruler-svg-icon-next>
							</a> <!---->
							</span>
						</div>
						<!----> 
						</ruler-basic-pagination>
					</div>
				</section>
				</ui-notice-list>
				<!---->
			</div>

			<!-- 여기까지 -->
		
		</div>
	</div>
<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</body>
</html>