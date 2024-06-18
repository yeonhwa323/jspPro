<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
* {
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
		/* padding-top: 190px; */
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
</style>

<!-- 여기서부터 작업하시면 됩니다 -->

<style>
.tit_row, .cnt_row, .add_img {
	display: table;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #e4e4e4;
}

.in_td:first-child {
	width: 120px;
	padding: 0;
	border-right: 1px solid #e4e4e4;
	vertical-align: top;
}

.in_td {
	display: table-cell;
	height: 62px;
	padding: 10px 0 10px 20px;
	box-sizing: border-box;
	font-size: 14px;
	vertical-align: middle;
}

.type {
	display: inline-block;
	font-size: 14px;
	font-weight: 600;
	color: #303033;
	line-height: 60px;
}

.inpbx {
	float: left;
	width: 245px;
	height: 46px;
}

.inpbx {
	position: relative;
	height: 40px;
	border: 1px solid #d4d4d4;
	background: #fff;
	vertical-align: top;
	box-sizing: border-box;
}

.notice_wr .inpbx input, .inptxtbx textarea {
	padding: 0 18px;
	font-size: 14px;
	font-weight: 600;
	color: #303033;
	line-height: 20px;
}

.notice_wr .inpbx input {
	display: block;
	width: 100%;
	height: 100%;
	padding: 0 14px;
	font-size: 15px;
	color: #1a1a1a;
	vertical-align: top;
	border: 0;
	background: transparent;
	outline: none;
	box-sizing: border-box;
}

input, textarea {
	border: 0;
	border-radius: 0;
	background: transparent;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.btn_bx .btn_black {
	width: 100px;
	height: 40px;
}

.notice_wr .inptxtbx textarea {
	padding: 18px;
	font-size: 14px;
	font-weight: 400;
	resize: none;
}

.inpbx input, .inptxtbx textarea {
	padding: 0 18px;
	font-size: 14px;
	font-weight: 600;
	color: #303033;
	line-height: 20px;
}

.inptxtbx textarea {
	display: block;
	overflow: auto;
	width: 100%;
	padding: 14px;
	border: 1px solid #ccc;
	background: transparent;
	font-size: 15px;
	line-height: 20px;
	color: #1a1a1a;
	vertical-align: top;
	outline: none;
	box-sizing: border-box;
}

textarea {
	resize: none;
}

input, textarea {
	border: 0;
	border-radius: 0;
	background: transparent;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

li, ol, ul {
	list-style: none;
}

/* li {
    display: list-item;
    text-align: -webkit-match-parent;
    unicode-bidi: isolate;
} */

/* 
li {
    display: table;
    position: relative;
    width: 100%;
     border-bottom: 1px solid #e4e4e4; 
} */
.notice_wr .inpbxinput, .notice_wr .inptxtbx textarea {
	padding: 0 18px;
	font-size: 14px;
	font-weight: 600;
	color: #303033;
	line-height: 20px;
}

.inpbx input {
	display: block;
	width: 100%;
	height: 100%;
	padding: 0 14px;
	font-size: 15px;
	color: #1a1a1a;
	vertical-align: top;
	border: 0;
	background: transparent;
	outline: none;
	box-sizing: border-box;
}

input, textarea {
	border: 0;
	border-radius: 0;
	background: transparent;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

input[type="text" i] {
	padding-block: 1px;
	padding-inline: 2px;
}

.notice_wr .in_td {
	display: table-cell;
	height: 62px;
	padding: 10px 0 10px 20px;
	box-sizing: border-box;
	font-size: 14px;
	vertical-align: middle;
}

.notice_wr .inptxtbx {
	padding-right: 12px;
}

.fileUpload .fileUpload-able label {
	display: block;
	overflow: hidden;
	position: relative;
	width: 76px;
	height: 76px;
	background: #303033;
	line-height: 100em;
	cursor: pointer;
}

.fileUpload .fileUpload-able label:after, .fileUpload .fileUpload-able label:before
	{
	position: absolute;
	top: 50%;
	left: 50%;
	background: #fff;
	content: "";
}

.fileUpload .fileUpload-able input[type=file] {
	overflow: hidden;
	position: absolute;
	width: 1px;
	height: 1px;
}

.fileUpload .fileUpload-able label:before {
	width: 1px;
	height: 22px;
	margin-top: -11px;
}

.fileUpload .fileUpload-able label:after {
	width: 22px;
	height: 1px;
	margin-left: -11px;
}

input, textarea {
	border: 0;
	border-radius: 0;
	background: transparent;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.fileUpload .fileUpload-able label:after,
 .fileUpload .fileUpload-able label:before {
    position: absolute;
    top: 50%;
    left: 50%;
    background: #fff;
    content: "";
}

.fileUpload, .fileUpload .fileUpload_list {
	display: flex;
}

.notice_wr .inpbx input,
.notice_wr .inptxtbx textarea {
    padding: 0 18px;
    font-size: 14px;
    font-weight: 600;
    color: #303033;
    line-height: 20px;
}

.notice_wr .inptxtbx textarea {
    padding: 18px;
    font-size: 14px;
    font-weight: 400;
    resize: none;
}

.add_img .info_lst {
	margin-top: 16px;
}

li, ol, ul {
	list-style: none;
}

.add_img .info_lst li {
	position: relative;
	padding-left: 14px;
	font-size: 12px;
	color: #a0a0a0;
	line-height: 24px;
}

.add_img .info_lst .point {
	color: #ff4800;
}

.add_img .info_lst .point:before {
	background: #ff4800;
}

.add_img .info_lst li:before {
	position: absolute;
	top: 9px;
	left: 0;
	width: 3px;
	height: 3px;
	border-radius: 100%;
	background: #a0a0a0;
	content: "";
}

input, textarea {
	border: 0;
	border-radius: 0;
	background: transparent;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.btn_black {
	display: inline-block;
	min-width: 82px;
	padding: 0 17px;
	border: 1px solid #303033;
	background: #303033;
	font-size: 13px;
	color: #fff;
	line-height: 38px;
	box-sizing: border-box;
}

a, button {
	outline: none;
}

.btn_bx {
	margin: 10px 0 -20px;
	text-align: center;
}

.n_wrap {
	padding: 0;
	border: 0;
}

.n_wrap {
	position: relative;
	padding-bottom: 10px;
	border-bottom: 4px solid #000;
	font-size: 22px;
	color: #000;
	line-height: 30px;
	font-weight: 500;
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
						<li class="service-li"><a class="service-a" href="#">1:1문의내역</a></li>
						<li class="service-li"><a class="service-a" href="#">상품Q&A내역</a></li>
						<li class="service-li"><a class="service-a" href="#">공지사항</a></li>
						<li class="service-li"><a class="service-a" href="#">FAQ</a>
						</li>
						<li class="service-li"><a class="service-a" href="#">고객의소리</a>
						</li>
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

			<h3 class="n_wrap">공지사항 글쓰기</h3>
			<br />
			<div class="notice_wr">
				<li class="tit_row">
					<div class="in_td">
						<label for="u_title" class="type">제목</label>
					</div>
					<div class="in_td">
						<div class="inpbx">
							<input type="text" id="u_title" formcontrolname="title"
								placeholder="제목을 입력하세요."
								class="ng-untouched ng-pristine ng-invalid">
						</div>
					</div>
				</li>
				<li class="cnt_row">
					<div class="in_td">
						<label for="u_content" class="type">내용</label>
					</div>
					<div class="in_td">
						<div class="inptxtbx">
							<textarea id="u_content" rows="5" cols="1"
								placeholder="내용을 입력하세요." formcontrolname="contents"
								class="field_inp ng-untouched ng-pristine ng-invalid"></textarea>
						</div>
					</div>
				</li>
				<li class="add_img">
					<div class="in_td">
						<strong class="type">사진첨부</strong>
					</div>
					<div class="in_td">
						<uio-file-upload>
						<div class="fileUpload">
							<ul class="fileUpload_list">
								<!---->
							</ul>
							<div class="fileUpload-able" style="display: block;">
								<label for="u_file">사진첨부</label> <input type="file"
									accept="image/*" id="u_file" multiple="">
							</div>
						</div>
						</uio-file-upload>

						<ul class="info_lst">
							<li>상품 불량 및 오배송의 경우, 해당 제품 사진을 등록 부탁드립니다.</li>
							<li class="point">파일명은 영문만 가능하며, 파일당 최대 10MB 의<br>
								용량제한이 있습니다.
							</li>
							<li>가로사이즈가 450pixel을 초과하는 경우 자동으로<br> 450픽셀로 조정됩니다.
							</li>
							<li>첨부파일은 최대 2개까지 등록가능합니다.</li>
						</ul>
					</div>
				</li>
				<div class="btn_bx">
					<button type="submit" class="btn_black">등록하기</button>
				</div>

			</div>
			<!-- 여기까지 -->

		</div>
	</div>
	<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>
</body>
</html>