<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
* {
    margin: 0;
    padding: 0;
}

<!-- article_left -->
.global_wrap {
    -webkit-transition: padding-top .25s ease-out;
    transition: padding-top .25s ease-out;
}

article, aside, details, figcaption, figure, footer, header, main, menu, nav, section, summary {
    display: block;
}

.my_wrap {
    position: relative;
    min-width: 900px;
    max-width: 1500px;
    /* margin: 40px auto 0; */
    padding: 0 50px 100px;
}

@media screen and (min-width: 541px) {
    .my_wrap {
        display: -webkit-box;
        display: flex;
    }
}

.article_right .article_right, .cs_wrap .article_left, .cs_wrap .article_right {
    padding-top: 0;
}

@media screen and (min-width: 541px) {
    .article_left {
        -webkit-box-flex: 0;
        flex: none;
        width: 230px;
        padding: 0 50px 0 0;
    }
}

.article_left {
    box-sizing: border-box;
}

.my_shop h4 {
    margin-bottom: 8px;
    font-size: 17px;
    line-height: 26px;
    font-weight: 800;
    color: #303033;
}

.my_shop ul {
    margin-bottom: 31px;
}

li, ol, ul {
    list-style: none;
}

.my_shop ul a {
    display: inline-block;
    padding: 10px 0;
    font-size: 15px;
    color: #5d5d5d;
    font-weight: 200;
}

a, button {
    outline: none;
}

a {
    text-decoration: none;
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

h4 {
    display: block;
    margin-block-start: 1.33em;
    margin-block-end: 1.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
    unicode-bidi: isolate;
}

.my_call .txt_cs {
    margin-bottom: 12px;
    font-size: 12px;
    color: #a0a0a0;
    line-height: 1.85;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    unicode-bidi: isolate;
}

.m_view {
    display: none;
}

.my_call .btn_bx a {
    display: block;
    width: 150px;
    height: 40px;
    padding-left: 12px;
    box-sizing: border-box;
    border: 1px solid #d4d4d4;
    border-radius: 2px;
    font-size: 12px;
    color: #303033;
    line-height: 40px;
}

.my_call .btn_bx a {
    position: relative;
}

button {
    border: 0;
    background: transparent;
    cursor: pointer;
}

</style>

<!-- article_right -->
<style>
.article_right .article_right, .cs_wrap .article_left, .cs_wrap .article_right {
    padding-top: 0;
}

@media screen and (min-width: 541px) {
    .article_right {
        -webkit-box-flex: 1;
        flex: 1;
        padding-top: 190px;
    }
}

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


[_nghost-juo-c77] .my_tbl_info {
    display: table;
    table-layout: fixed;
    position: relative;
    width: 100%;
    box-sizing: border-box;
    color: #303033;
}

.my_tbl_notice .type {
    width: 140px;
    padding: 15px 0;
    color: #000;
}

.my_tbl_tit {
    border-bottom: 1px solid #000;
    font-weight: 700;
    text-align: left;
}

.my_tbl_lst .my_tbl_tit .type, .my_tbl_lst .my_tbl_tit .type .tit {
    text-align: center;
}

.article_right .my_tbl_info p {
    display: table-cell;
    min-height: 50px;
    /* text-align: center; */
    vertical-align: middle;
    font-size: 14px;
    box-sizing: border-box;
}


.my_tbl_notice .date {
    width: 130px;
    padding: 15px 1%;
    color: #000;
    float: right;
}

.my_tbl_info p {
    display: table-cell;
    min-height: 50px;
    text-align: center;
    vertical-align: middle;
    font-size: 14px;
    box-sizing: border-box;
}

.my_tbl_lst .my_tbl, .my_tbl_lst>li {
    border-bottom: 1px solid #d4d4d4;
}

.notice_wrap {
    position: relative;
    z-index: 1;
    margin: -1px 0;
    padding: 30px 30px 30px 140px;
    background: #f8f8f8;
    text-align: left;
}

.notice_wrap p {
    display: block;
    font-size: 14px;
    color: #303033;
    line-height: 24px;
    text-align: left;
}

.my_tbl_notice .my_tbl_info .infoinner .tit {
    cursor: pointer;
}

.notice_wrap {
    display: none;
}

.my_tbl_notice[_ngcontent-juo-c152] .tit[_ngcontent-juo-c152] {
    padding: 15px 3% 15px 0;
    color: #000;
    text-align: left;
}

.my_tbl_notice .tit {
    padding: 15px;
    color: #000;
    text-align: left;
}

[_nghost-juo-c77] .my_tbl_info p {
    display: table-cell;
    min-height: 50px;
    /* text-align: center; */
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

[_nghost-qkr-c77] .my_tbl_info {
    display: table;
    table-layout: fixed;
    position: relative;
    width: 100%;
    box-sizing: border-box;
    color: #303033;
}
</style>

<!-- 페이징 -->
<style>
[_nghost-kxm-c98] {
    display: block;
    text-align: center;
    padding-bottom: 100px;
}

[_nghost-kxm-c77] ruler-basic-pagination .custom-pagination {
    margin-top: 35px;
}

.custom-pagination[_ngcontent-kxm-c98] {
    display: inline-block;
    position: relative;
    padding: 0 50px;
    text-align: center;
    line-height: 22px;
    vertical-align: top;
}

.custom-pagination[_ngcontent-kxm-c98] .pagination-previous[_ngcontent-kxm-c98] {
    position: absolute;
    top: 50%;
    left: 0;
    margin: -11px 10px 0;
}

.custom-pagination[_ngcontent-kxm-c98] .pagination-next[_ngcontent-kxm-c98], .custom-pagination[_ngcontent-kxm-c98] .pagination-previous[_ngcontent-kxm-c98] {
    display: inline-block;
    width: 22px;
    margin: 0 10px;
    height: 22px;
    vertical-align: top;
}

custom-pagination[_ngcontent-kxm-c98] .current[_ngcontent-kxm-c98] {
    font-weight: 700;
    color: #000;
}

.custom-pagination[_ngcontent-kxm-c98] .current[_ngcontent-kxm-c98], .custom-pagination[_ngcontent-kxm-c98] .num[_ngcontent-kxm-c98] a[_ngcontent-kxm-c98] {
    display: inline-block;
    min-width: 10px;
    padding: 0 5px;
    font-size: 16px;
}

.custom-pagination[_ngcontent-kxm-c98] .current[_ngcontent-kxm-c98] span[_ngcontent-kxm-c98] {
    border-bottom: 1px solid #000;
}

.custom-pagination[_ngcontent-kxm-c98] .num[_ngcontent-kxm-c98] a[_ngcontent-kxm-c98] {
    font-weight: 300;
    color: #d4d4d4;
}

.custom-pagination[_ngcontent-kxm-c98] .current[_ngcontent-kxm-c98], .custom-pagination[_ngcontent-kxm-c98] .num[_ngcontent-kxm-c98] a[_ngcontent-kxm-c98] {
    display: inline-block;
    min-width: 10px;
    padding: 0 5px;
    font-size: 16px;
}

[_nghost-kxm-c98] a[_ngcontent-kxm-c98] {
    cursor: pointer;
}

[_nghost-kxm-c77] a, [_nghost-kxm-c77] button {
    outline: none;
}

</style>
</head>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<body>


<section class="mypage global_wrap">
        <div class="my_wrap cs_wrap">
            
            <div class="article_left ng-star-inserted">
                <!---->
                <ui-left-nav-cs class="ng-star-inserted">
<section class="my_shop">
  <h4>고객센터</h4>
  <ul>
    <li>
      <a routerlink="cscenter/notice-cs/notice-list" href="/mypage/cscenter/notice-cs/notice-list">공지사항</a>
    </li>
    <li>
      <a routerlink="cscenter/faq-cs/faq-list" href="/mypage/cscenter/faq-cs/faq-list">FAQ</a>
    </li>
  </ul>
</section>


<section class="my_call">
  <h4 class="blind">고객센터 안내</h4>
  <p class="txt_cs">
    CUSTOMER@29CM.CO.KR
  </p>
  <p class="txt_notice m_view">
    ※ 운영시간 : 평일 10:00 ~ 17:00 (점심시간 12:30 ~ 13:30 제외 / 주말 및 공휴일 제외)
  </p>
  <div class="btn_bx">
    <div class="btn_tb">
      <div class="m_view in_td">
        <a href="tel:1644-0560" class="btn_call">전화걸기</a>
      </div>
      
      <div class="in_td">
        <a href="https://order.29cm.co.kr/my-order/cscenter/qna/qna-mantoman-list">1:1 문의하기
        </a>
      </div>
    </div>
    <button type="button" class="m_view btn_login">
      LOGIN
    </button>
    
  </div>
</section>
</ui-left-nav-cs><!---->
            </div>
            <!----><!---->
            <div _nghost-juo-c77 class="article_right">
                <router-outlet [_nghost-juo-c77]></router-outlet>
                <ui-notice-list class="ng-star-inserted">
<section class="my_notice2">
	<h3 class="my_tit nobor">공지사항</h3>

	<div class="tab">
		<ul>
			<li class="selected">
				<a href="javascript:">공지사항</a>
			</li> 
			<li class="">
				<a href="javascript:">이벤트 당첨안내</a>
			</li>
		</ul>
	</div>

	<div class="my_tbl_lst my_tbl_notice">
		<div class="my_tbl_tit">
			<div class="my_tbl_info">
				<p class="type">번호</p>
				<p class="tit">제목</p>
				<p class="date">등록일</p>
			</div>
		</div>
		<div class="ng-star-inserted">
			<div class="my_tbl">
				
				<div class="my_tbl_info">
					<div class="infoinner">
						<p class="type"><span class="blind">번호</span>91</p>
						<p class="tit"><span class="blind">제목</span>[공지] 29CM 서비스 이용약관 개정 사전 안내 (시행일: 2024년 5월 20일)</p>
						<p class="date"><span class="blind">등록일</span></p>
					</div>
				</div>

				<div class="reply_row">
					<div class="notice_wrap" id="notice_wp">
						<div>
                            <!---->
							<p><p><span>안녕하세요. 감도 깊은 취향 셀렉트샵 29CM입니다. </span>
							</p>
							<p><span>29CM 회원님께 더 나은 서비스를 제공할 수 있도록 29CM 서비스 이용약관 개정이 예정되어 사전 안내드립니다. </span>
							</p>
							<p><br></p><p><span>■ 개정 안내</span>	</p>
							<p><span>- 개정 약관 공고일: 2024년 4월 23일 (화)</span></p><p><span>- 개정 약관 적용일: 2024년 5월 20일 (월)</span></p><p><span>■ 약관 개정 주요 내용</span></p><p><span>- 제 7조 제 2~5항 회원탈퇴 및 자격상실 등의 제한 사유 추가</span></p><p><span>- 제 8조 제 1, 2항 회원에 대한 통지의 방법 및 유효성에 대한 추가 </span></p><p><br></p><p><span>변경된 이용약관의 전문은 하단 [이용약관] 에서 확인하실 수 있습니다. </span></p><p><br></p><p><span>■ 동의 철회 방법</span></p><p><span>- 본 개정에 동의하지 않으실 경우 거부의사 표시(회원탈퇴)를 하실 수 있습니다. 단, 회원 탈퇴하시는 경우 29CM의 서비스 이용이 제한될 수 있음을 안내드립니다. </span></p><p><span>- 개정 공지기간 개정약관에 대해 별도의 의사표시를 하지 않으신 경우 개정에 동의하신 것으로 간주됩니다. </span></p><p><br></p><p><span>이용약관에 대한 문의는 29CM 고객센터(1644-0560 또는 1:1문의하기)를 통해 접수해주시기 바랍니다.</span></p><p><span>29CM는 더 나은 서비스 제공을 위해 항상 최선을 다하겠습니다. 앞으로도 지속적인 서비스 이용과 관심 부탁드립니다.</span></p><p><br></p><p><span>감사합니다. </span></p></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="ng-star-inserted">
			<div class="my_tbl">
				
				<div class="my_tbl_info">
					<div class="infoinner">
						<p class="type"><span _ngcontent-kxm-c152="" class="blind">번호</span>90</p>
						<p class="tit"><span _ngcontent-kxm-c152="" class="blind">제목</span>[공지] 5월 고객센터 운영 안내</p>
						<p class="date"><span _ngcontent-kxm-c152="" class="blind">등록일</span>2024-04-30</p>
					</div>
				</div>

				<div _ngcontent-kxm-c152="" class="reply_row">
					<div _ngcontent-kxm-c152="" class="notice_wrap">
						<div _ngcontent-kxm-c152="">
                            <!---->
							<p _ngcontent-kxm-c152=""><p>안녕하세요,</p><p>감도 깊은 취향 셀렉트 샵 29CM입니다.</p><p><br></p><p>2024년 5월, 다양한 연휴와 일정에 따라 고객센터 운영 시간을 아래와 같이 변경하였습니다.</p><p><br></p><p> 고객님의 너그러운 양해 부탁드리며, 29CM 이용에 참고 부탁드립니다.</p><p><br></p><p> ◼︎ 고객 센터 휴무일</p><p>	ㄴ 5월 1일 (수)ㅣ근로자의 날</p><p>	ㄴ 5월 6일 (월)ㅣ어린이 날 대체 공휴일</p><p>	ㄴ 5월 15일 (수)ㅣ부처님 오신 날</p><p><br></p><p><br></p><p> 휴무일 내 문의사항은 [1:1 문의하기] 혹은 [1644-0560]으로 문의하시면, 영업시간 재개 후 순차적으로 답변해 드리겠습니다.</p><p><br></p><p> 사랑하는 사람과 함께 따스함 가득한 5월이 되기를 진심으로 기원합니다.</p><p><br></p><p> 감사합니다.</p><p>	</p><p><br></p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div _ngcontent-kxm-c152="" class="ng-star-inserted">
			<div _ngcontent-kxm-c152="" class="my_tbl">
				
				<div _ngcontent-kxm-c152="" class="my_tbl_info">
					<div _ngcontent-kxm-c152="" class="infoinner">
						<p _ngcontent-kxm-c152="" class="type"><span _ngcontent-kxm-c152="" class="blind">번호</span>89</p>
						<p _ngcontent-kxm-c152="" class="tit"><span _ngcontent-kxm-c152="" class="blind">제목</span>[공지] 개인정보 처리방침 개정 안내 (시행일 : 2024년 4월 30일)</p>
						<p _ngcontent-kxm-c152="" class="date"><span _ngcontent-kxm-c152="" class="blind">등록일</span>2024-04-23</p>
					</div>
				</div>

				<div _ngcontent-kxm-c152="" class="reply_row">
					<div _ngcontent-kxm-c152="" class="notice_wrap">
						<div _ngcontent-kxm-c152="">
                            <!---->
							<p _ngcontent-kxm-c152=""><p>안녕하세요.</p><p><br></p><p>감도 깊은 취향 셀렉트 샵 29CM 입니다.</p><p>29CM 회원님께 더 나은 서비스를 제공할 수 있도록 개인정보처리방침 개정이 예정되어 사전 안내드립니다.</p><p><br></p><p><strong>◼︎ 변경 내용 (v2.5.4)</strong></p><p>일부 내용 변경 및 삭제</p><p><br></p><p><strong>◼︎ 상세 변경 내용</strong></p><p><strong> </strong></p><p><strong>3. 수집한 개인정보 처리 위탁</strong></p><p><strong>-&nbsp;처리위탁 안내 문구 변경</strong></p><p><br></p><p>ㄴ개정 전</p><p>회사는 수탁자들이 위탁한 개인정보를 안전하게 처리하고 있는지 지속적으로 관리 감독하고 있으며, 수탁업무가 종료된 때에 수탁자가 보유하고 있는 개인정보는 즉시 파기하게 하고 있습니다.</p><p><br></p><p>ㄴ개정 후</p><p><u>회사는 위탁 계약 체결 시 「개인정보 보호법」 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적·관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리·감독, 손해배상책임 등에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다. 위탁업무의 내용이나 수탁자가 변경될 경우 개인정보처리방침을 통해 공개하겠습니다. 회사는 원활한 서비스 제공을 위하여 개인정보 처리업무를 위탁하는 경우는 다음과 같습니다.</u></p><p><br></p><p><strong>-&nbsp;인프라 제공 수탁자 삭제</strong></p><p><br></p><p>ㄴ개정 전</p><p>수탁자 : Amazon Web Service Inc</p><p>위탁 업무 : 인프라제공</p><p>보유 및 이용기간 : 회원 탈퇴 시 또는 위탁 계약 종료 시까지</p><p><br></p><p>ㄴ개정 후</p><p><u>삭제</u></p><p><br></p><p><strong>◼︎ 변경 시기</strong></p><p>-&nbsp;변경된 개인정보 처리방침은 시행일인 2024년 4월 30일부터 효력이 발생합니다.</p><p><br></p><p><br></p><p><strong>◼︎ 동의 철회 방법</strong></p><p>-&nbsp;변경되는 개인정보 처리방침에 동의하지 않으시는 경우 '회원 탈퇴'를 통해 거부 의사를 표시하실 수 있습니다.</p><p>-개인정보 처리방침에 대한 문의는 고객센터 (1644-0560) 또는 1:1 문의를 통해 접수해 주시기 바랍니다.</p><p><br></p><p><br></p><p>29CM는 앞으로도 회원님의 개인정보를 보다 안전하게 보호할 것을 약속드립니다.</p><p><br></p><p>고맙습니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div _ngcontent-kxm-c152="" class="ng-star-inserted">
			<div _ngcontent-kxm-c152="" class="my_tbl">
				
				<div _ngcontent-kxm-c152="" class="my_tbl_info">
					<div _ngcontent-kxm-c152="" class="infoinner">
						<p _ngcontent-kxm-c152="" class="type"><span _ngcontent-kxm-c152="" class="blind">번호</span>88</p>
						<p _ngcontent-kxm-c152="" class="tit"><span _ngcontent-kxm-c152="" class="blind">제목</span>[공지] 29CM 구매확정 기준 정책 변경 안내 (시행일 : 2024년 4월 1일)</p>
						<p _ngcontent-kxm-c152="" class="date"><span _ngcontent-kxm-c152="" class="blind">등록일</span></p>
					</div>
				</div>

				<div _ngcontent-kxm-c152="" class="reply_row">
					<div _ngcontent-kxm-c152="" class="notice_wrap">
						<div _ngcontent-kxm-c152="">
                            <!---->
							<p _ngcontent-kxm-c152=""><p>안녕하세요.</p><p>감도 깊은 취향 셀렉트샵 29CM입니다.</p><p><br></p><p>29CM 고객님께 더 나은 서비스를 제공할 수 있도록</p><p>구매확정 기준 정책 변경되어 안내드립니다.</p><p><br></p><p>● 시행일</p><p>2024년 4월 1일 14:00</p><p><br></p><p>● 시행 내용</p><p>- 유형상품의 자동 구매확정 기준 변경</p><p>- 유/무형 상품의 수동 구매확정 신규 기능 배포&nbsp;</p><p>- 무형상품 리뷰 작성 가능 시점 변경</p><p><br></p><p>● 상세 변경 내용</p><p>- 유형상품: 자동 구매확정 기준이 배송 완료일 기준 +7일로 변경&nbsp;</p><p>단, 배송 완료일을 추적할 수 없는 상품의 경우 배송 시작일 +21일</p><p>- 신규기능: 유형상품 및 무형(티켓/숙박) 상품 수동 구매확정 가능</p><p>- 무형(티켓/숙박) 상품: 사용 완료로 상태 변경 이후 리뷰 작성 및 구매확정 가능&nbsp;</p><p><br></p><p>29CM 이용에 참고 부탁드리며,</p><p>항상 좋은 서비스를 제공해 드리기 위해 노력하겠습니다.</p><p><br></p><p>감사합니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div _ngcontent-kxm-c152="" class="ng-star-inserted">
			<div _ngcontent-kxm-c152="" class="my_tbl">
				
				<div _ngcontent-kxm-c152="" class="my_tbl_info">
					<div _ngcontent-kxm-c152="" class="infoinner">
						<p _ngcontent-kxm-c152="" class="type"><span _ngcontent-kxm-c152="" class="blind">번호</span>87</p>
						<p _ngcontent-kxm-c152="" class="tit"><span _ngcontent-kxm-c152="" class="blind">제목</span>[공지] 개인 식별 정보(CI) 수집을 위한 본인인증 서비스 시행 안내</p>
						<p _ngcontent-kxm-c152="" class="date"><span _ngcontent-kxm-c152="" class="blind">등록일</span>2024-03-28</p>
					</div>
				</div>

				<div _ngcontent-kxm-c152="" class="reply_row">
					<div _ngcontent-kxm-c152="" class="notice_wrap">
						<div _ngcontent-kxm-c152="">
                            <!---->
							<p _ngcontent-kxm-c152=""><p><span>안녕하세요. 감도 깊은 취향 셀렉트샵 29CM입니다.</span></p><p><br></p><p><span>29CM는 보다 안전한 서비스 환경 제공을 위해 2023년 3월 12일부터 개인 식별 정보(CI)를 수집하고 있습니다.</span></p><p><br></p><p><span>이에 2023년 3월 12일 이전 가입 고객 대상 구매 시 1회 본인인증이 진행되고 있으니 이용에 참고 부탁드립니다.</span></p><p><br></p><p><span>*기존 본인인증을 진행하신 경우에도 최신정보 수집을 위해 추가로 본인인증이 진행될 수 있는 점 안내해 드립니다. </span></p><p><br></p><p><span>29CM는 회원님의 안전한 서비스 제공을 위해 최선을 다할 것을 약속드립니다.</span></p><p><br></p><p><span>감사합니다.</span></p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div _ngcontent-kxm-c152="" class="ng-star-inserted">
			<div _ngcontent-kxm-c152="" class="my_tbl">
				
				<div _ngcontent-kxm-c152="" class="my_tbl_info">
					<div _ngcontent-kxm-c152="" class="infoinner">
						<p _ngcontent-kxm-c152="" class="type"><span _ngcontent-kxm-c152="" class="blind">번호</span>86</p>
						<p _ngcontent-kxm-c152="" class="tit"><span _ngcontent-kxm-c152="" class="blind">제목</span>[공지] 29CM 장바구니 상품 보관 정책 변경 사전 안내 (시행일 : 2024년 3월 11일)</p>
						<p _ngcontent-kxm-c152="" class="date"><span _ngcontent-kxm-c152="" class="blind">등록일</span>2024-03-07</p>
					</div>
				</div>

				<div _ngcontent-kxm-c152="" class="reply_row">
					<div _ngcontent-kxm-c152="" class="notice_wrap">
						<div _ngcontent-kxm-c152="">
                            <!---->
							<p _ngcontent-kxm-c152=""><p><span>안녕하세요.</span></p><p><span>감도 깊은 취향 셀렉트샵 29CM입니다.</span></p><p><br></p><p><span>29CM 고객님께 더 나은 서비스를 제공할 수 있도록 </span></p><p><span>장바구니 상품 보관 정책 변경이 예정되어 사전 안내드립니다.</span></p><p><br></p><p><strong>● 변경 일정</strong></p><p><span>2024년 3월 11일</span></p><p><br></p><p><strong>● 변경 전</strong></p><p><span>장바구니에 담긴 상품은 접속 종료 후 60일 동안 보관됩니다.</span></p><p><br></p><p><strong>● 변경 후</strong></p><p><span>장바구니에 최대 100개의 상품을 보관할 수 있습니다.</span></p><p><span>장바구니에 상품을 추가할 때 보관된 상품이 100개를 초과할 경우 보관날짜가 오래된 순으로 삭제됩니다.</span></p><p><span>변경된 정책이 적용되는 날짜를 기준으로 100개를 초과하여 보관된 상품은 일괄 삭제됩니다.</span></p><p><br></p><p><span>29CM 이용에 참고 부탁드리며,</span></p><p><span>항상 좋은 서비스를 제공해 드리기 위해 노력하겠습니다.</span></p><p><br></p><p><span>감사합니다.</span></p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div _ngcontent-kxm-c152="" class="ng-star-inserted">
			<div _ngcontent-kxm-c152="" class="my_tbl">
				
				<div _ngcontent-kxm-c152="" class="my_tbl_info">
					<div _ngcontent-kxm-c152="" class="infoinner">
						<p _ngcontent-kxm-c152="" class="type"><span _ngcontent-kxm-c152="" class="blind">번호</span>85</p>
						<p _ngcontent-kxm-c152="" class="tit"><span _ngcontent-kxm-c152="" class="blind">제목</span>[공지] 유효기간 만료 마일리지 일괄 소멸 예정 안내</p>
						<p _ngcontent-kxm-c152="" class="date"><span _ngcontent-kxm-c152="" class="blind">등록일</span>2024-02-05</p>
					</div>
				</div>

				<div _ngcontent-kxm-c152="" class="reply_row">
					<div _ngcontent-kxm-c152="" class="notice_wrap">
						<div _ngcontent-kxm-c152="">
                            <!---->
							<p _ngcontent-kxm-c152=""><p>안녕하세요,</p><p>감도 깊은 취향 셀렉트샵 29CM입니다.</p><p><br></p><p>당사 이용 약관 제 6장 부가서비스의 이용 제 21조 (마일리지)에 근거하여</p><p>유효기간이 만료된 마일리지가 2/6 (화) 일괄 소멸 처리될 예정입니다.</p><p><br></p><p>해당 사유로 보유 마일리지의 변동이 있을 수 있으며</p><p>상세 소멸 내역은 MY&gt;마일리지에서 확인 가능한 점 알려드립니다.</p><p><br></p><p>29CM 서비스 이용에 참고 부탁드리며</p><p>관련 문의는 고객센터 1644-0560 또는 1:1 문의를 통해 접수 가능합니다.</p><p><br></p><p>감사합니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div _ngcontent-kxm-c152="" class="ng-star-inserted">
			<div _ngcontent-kxm-c152="" class="my_tbl">
				
				<div _ngcontent-kxm-c152="" class="my_tbl_info">
					<div _ngcontent-kxm-c152="" class="infoinner">
						<p _ngcontent-kxm-c152="" class="type"><span _ngcontent-kxm-c152="" class="blind">번호</span>84</p>
						<p _ngcontent-kxm-c152="" class="tit"><span _ngcontent-kxm-c152="" class="blind">제목</span>[공지] 현대카드 12개월 무이자 할부 관련 변경 안내 (시행일 : 2024년 02월 07일)</p>
						<p _ngcontent-kxm-c152="" class="date"><span _ngcontent-kxm-c152="" class="blind">등록일</span>2024-01-26</p>
					</div>
				</div>

				<div _ngcontent-kxm-c152="" class="reply_row">
					<div _ngcontent-kxm-c152="" class="notice_wrap">
						<div _ngcontent-kxm-c152="">
                            <!---->
							<p _ngcontent-kxm-c152=""><p>안녕하세요,</p><p>감도 깊은 취향 셀렉트샵 29CM입니다.</p><p><br></p><p>29CM 결제수단 중 현대카드 12개월 무이자 할부 관련하여 일부 변경된 사항 안내드립니다.</p><p><br></p><p>● 변경 내용: 12개월 무이자 할부 결제 시 <strong>"2% 청구 할인 적용 불가"</strong></p><p>● 변경 사유: 현대카드 12개월 무이자 할부 결제 시 일부 혜택 적용 불가</p><p>● 변경 일정: 2024년 02월 07일(수)부터 시행</p><p><br></p><p>29CM 이용에 참고 부탁드리며,</p><p>항상 좋은 서비스를 제공해 드리기 위해 노력하겠습니다.</p><p><br></p><p>감사합니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div _ngcontent-kxm-c152="" class="ng-star-inserted">
			<div _ngcontent-kxm-c152="" class="my_tbl">
				
				<div _ngcontent-kxm-c152="" class="my_tbl_info">
					<div _ngcontent-kxm-c152="" class="infoinner">
						<p _ngcontent-kxm-c152="" class="type"><span _ngcontent-kxm-c152="" class="blind">번호</span>83</p>
						<p _ngcontent-kxm-c152="" class="tit"><span _ngcontent-kxm-c152="" class="blind">제목</span>[공지] 29CM 개인정보 처리방침 개정 사전 안내 (시행일 : 2024년 1월 24일)</p>
						<p _ngcontent-kxm-c152="" class="date"><span _ngcontent-kxm-c152="" class="blind">등록일</span>2024-01-16</p>
					</div>
				</div>

				<div _ngcontent-kxm-c152="" class="reply_row">
					<div _ngcontent-kxm-c152="" class="notice_wrap">
						<div _ngcontent-kxm-c152="">
                            <!---->
							<p _ngcontent-kxm-c152=""><p>안녕하세요.</p><p><br></p><p>감도 깊은 취향 셀렉트샵 29CM 입니다.</p><p>29CM 고객님께 더 나은 서비스를 제공할 수 있도록 개인정보처리방침 개정이 예정되어 사전 안내드립니다.</p><p><br></p><p><strong>◼︎ 변경 내용 (v2.5.4)</strong></p><p><br></p><p><strong>3. 수집한 개인정보 처리 위탁</strong></p><p><strong>-&nbsp;브랜드 사 공지 메일 발송 업체 추가</strong></p><p><br></p><p>ㄴ개정 전</p><p>없음</p><p><br></p><p>ㄴ개정 후</p><p><u>수탁자 : (주)스티비</u></p><p><u>위탁 업무 :&nbsp;브랜드 사 메일 발송</u></p><p><u>보유 및 이용기간 : 계약 종료 시까지</u></p><p><br></p><p><strong>7. 개인정보를 자동으로 수집하는 장치의 설치운영 및 그 거부에 관한 사항</strong></p><p><strong>-&nbsp;개인정보 보호책임자 변경</strong></p><p><br></p><p>ㄴ개정 전</p><p>이용자 피해구제 방법 : 아래의 연락처로 행태정보와 관련하여 궁금한 사항과 거부권 행사, 피해 신고 접수 등을 문의할 수 있습니다.</p><p>1.성명 :&nbsp;이인섭(CPO)</p><p>2.민원(고충) 처리부서: 29CM CX 고객지원</p><p>3.연락처: 1644-0560이메일 :&nbsp;<a target="_blank">customer@29cm.co.kr</a></p><p><br></p><p>ㄴ개정 후</p><p><u>이용자 피해구제 방법 : 아래의 연락처로 행태정보와 관련하여 궁금한 사항과 거부권 행사, 피해 신고 접수 등을 문의할 수 있습니다.</u></p><p><u>1.성명 :&nbsp;</u><strong><u>정광은</u></strong><u>(CPO)</u></p><p><u>2.민원(고충) 처리부서: 29CM 고객지원팀</u></p><p><u>3.연락처: 1644-0560이메일 :&nbsp;</u><a target="_blank"><u>customer@29cm.co.kr</u></a></p><p><br></p><p><strong>12. 개인정보 보호책임자</strong></p><p><strong> -&nbsp;개인정보 보호책임자 변경</strong></p><p><br></p><p>ㄴ개정 전</p><p>개인정보 보호책임자 성명 : 이인섭</p><p><br></p><p><u>ㄴ개정 후</u></p><p><u>개인정보 보호책임자 성명 :&nbsp;</u><strong><u>정광은</u></strong></p><p><br></p><p><strong>◼︎ 변경 시기</strong></p><p>-&nbsp;변경된 개인정보 처리방침은 시행일인 2024년 1월 24일부터 효력이 발생합니다.</p><p><br></p><p><br></p><p><strong>◼︎ 동의 철회 방법</strong></p><p>-&nbsp;변경되는 개인정보 처리방침에 동의하지 않으시는 경우 '회원 탈퇴'를 통해 거부 의사를 표시하실 수 있습니다.</p><p>-&nbsp;개인정보 처리방침에 대한 문의는 고객센터(1644-0560) 또는 1:1 문의를 통해 접수해주시기 바랍니다.</p><p><br></p><p>29CM는 앞으로도 고객님의 개인정보를 보다 안전하게 보호할 것을 약속드립니다.</p><p><br></p><p>감사합니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div _ngcontent-kxm-c152="" class="ng-star-inserted">
			<div _ngcontent-kxm-c152="" class="my_tbl">
				
				<div _ngcontent-kxm-c152="" class="my_tbl_info">
					<div _ngcontent-kxm-c152="" class="infoinner">
						<p _ngcontent-kxm-c152="" class="type"><span _ngcontent-kxm-c152="" class="blind">번호</span>82</p>
						<p _ngcontent-kxm-c152="" class="tit"><span _ngcontent-kxm-c152="" class="blind">제목</span>[공지] 29CM 개인정보 처리방침 개정 사전 안내</p>
						<p _ngcontent-kxm-c152="" class="date"><span _ngcontent-kxm-c152="" class="blind">등록일</span>2023-11-08</p>
					</div>
				</div>

				<div _ngcontent-kxm-c152="" class="reply_row">
					<div _ngcontent-kxm-c152="" class="notice_wrap">
						<div _ngcontent-kxm-c152="">
                            <!---->
							<p _ngcontent-kxm-c152=""><p>안녕하세요.</p><p>감도 깊은 취향 셀렉트샵 29CM입니다.</p><p><br></p><p>29CM 고객님께 더 나은 서비스를 제공할 수 있도록 개인정보 처리 방침 개정이 예정되어 사전 안내 드립니다.</p><p><br></p><p>=====</p><p><strong> 변경 내용 (V2.5.2)</strong></p><p><strong>3.1</strong> 개인정보의 국외 이전</p><p>-국외 이전을 거부하는 방법, 절차 및 거부의 효과 반영</p><p><br></p><p><strong>13.</strong> 고지의 의무</p><p>-처리방침 버전 번호, 고지일자, 시행일자 현행화</p><p><br></p><p><strong> 변경 시기</strong></p><p>-변경된 개인정보 처리방침은 시행일인 2023년 11월 15일부터 효력이 발생합니다.</p><p><br></p><p><strong> 동의 철회 방법</strong></p><p>-변경되는 개인정보 처리방침에 동의하지 않으시는 경우 '회원 탈퇴'를 통해 거부 의사를 표시하실 수 있습니다.</p><p>-개인정보 처리방침에 대한 문의는 고객센터 (1644-0560) 또는 1:1 문의를 통해 접수해 주시기 바랍니다.</p><p>=====</p><p><br></p><p>29CM는 앞으로도 고객님의 개인정보를 보다 안전하게 보호할 것을 약속 드립니다.</p><p><br></p><p>감사합니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div _ngcontent-kxm-c152="" class="ng-star-inserted">
			<div _ngcontent-kxm-c152="" class="my_tbl active">
				
				<div class="my_tbl_info">
					<div class="infoinner">
						<p class="type"><span class="blind">번호</span>81</p>
						<p class="tit"><span class="blind">제목</span>[공지] 현대카드 청구할인 혜택 제외 카드 안내</p>
						<p class="date"><span class="blind">등록일</span>2023-10-18</p>
					</div>
				</div>

				<div class="reply_row">
					<div class="notice_wrap">
						<div>
                            <!---->
							<p><p>안녕하세요,</p><p>안녕하세요. 감도 깊은 취향 셀렉트샵 29CM입니다.</p><p><br></p><p>29CM 결제 수단중, 현대카드 청구할인 혜택 제외 카드가 일부 변경되어 안내드립니다.</p><p><br></p><p><br></p><p><br></p><p><br></p><ul><li><strong>변경내용</strong>&nbsp;: 법인, <u>체크</u>, <u>하이브리드</u>, 기프트 카드 <strong><u>(</u>+ <u>체크, 하이브리드 추가)</u></strong></li><li><strong>변경사유</strong>&nbsp;: 현대카드 청구할인 2% 혜택 제외</li><li><strong>변경일정</strong>&nbsp;: 2023년 11월 1일 (수)부터 시행</li></ul><p><br></p><p>29CM 이용에 참고 부탁드리며, 항상 좋은 서비스를 제공해드리기 위해 노력하겠습니다.</p><p><br></p><p>감사합니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div class="ng-star-inserted">
			<div class="my_tbl">
				
				<div class="my_tbl_info">
					<div class="infoinner">
						<p class="type"><span class="blind">번호</span>80</p>
						<p class="tit"><span class="blind">제목</span>[공지] 29CM 서비스 이용약관 개정 사전 안내 ( 시행일자 : 11월 1일 )</p>
						<p class="date"><span class="blind">등록일</span>2023-10-06</p>
					</div>
				</div>

				<div class="reply_row">
					<div class="notice_wrap">
						<div>
                            <!---->
							<p><p>안녕하세요. 감도 깊은 취향 셀렉트샵 29CM입니다.</p><p>29CM 회원님께 더 나은 서비스를 제공할 수 있도록 29CM 서비스 이용약관 개정이 예정되어 사전 안내드립니다.</p><p><br></p><p><strong>◼︎ 시행일</strong></p><p>2023년 11월 1일</p><p><br></p><p><strong>◼︎ 변경 내용</strong></p><p>서비스 이용약관 내 면책조항 삭제 및 변경</p><p><br></p><p><strong>◼︎ 상세 변경 내용</strong></p><p><br></p><p><strong>제 5조 (서비스의 중단) 1항</strong></p><p>변경 전 : 1.회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 <u>등의 사유가 발생한 경우</u>에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</p><p>변경 후 : 1.회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절, <u>천재지변, 불가항력, 기타 회사의 합리적인 통제범위를 벗어난 사유</u>가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</p><p><br></p><p><strong>제 5조 (서비스의 중단) 3항</strong></p><p>변경 전 : 3.회사는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여, <u>회사의 고의성이 없는 경우</u>에는 배상하지 아니합니다.</p><p>변경 후 : 3.회사는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여, 회사의 고의 <u>또는 과실이 없는 한 손해를</u> 배상하지 아니합니다.</p><p><br></p><p><strong>제 19조 (회원의 계정에 대한 의무) 4항</strong></p><p>변경 전 : 4.회사는 회원이 상기 제1항, 제2항, 제3항을 위반하여 회원에게 발생한 손해에 대하여 <u>아무런 책임을 부담하지 않습니다.</u></p><p>변경 후 : 4.회사는 회원이 상기 제1항, 제2항, 제3항을 위반하여 회원에게 발생한 손해에 대하여 <u>그 손해 발생의 원인이 회사의 고의 또는 과실에 기인하지 않는 한</u> 책임을 부담하지 않습니다.</p><p><br></p><p><strong>제 20조 (이용자의 의무) 2항</strong></p><p>변경 전 : 2.회사는 회원이 본 조의 금지행위를 행하는 경우 서비스의 일부 또는 전부를 이용 <u>정지하거나 서비스 이용계약을 임의로 해지할 수 있으며, 이 경우 발생하는 손해에 대한 책임은 회원이 부담합니다.</u> 회사는 필요한 경우 회원의 금지행위 사실을 관련 정부기관 또는 사법기관에 통지할 수 있습니다.</p><p>변경 후 : 2.회사는 회원이 본 조의 금지행위를 행하는 경우 서비스의 일부 또는 전부를 이용 <u>정지하거나 서비스 이용계약을 임의로 해지할 수 있습니다.</u> 회사는 필요한 경우 회원의 금지행위 사실을 관련 정부기관 또는 사법기관에 통지할 수 있습니다.</p><p><br></p><p><strong>제 25조 (게시물의 관리 및 이용 제한) 3항</strong></p><p>변경 전 : 3.회사는 회원이 서비스 내에 게시판 게시물(회원 간 전달 포함)이 다음 각 호의 경우에 해당한다고 판단되는 경우 회원 또는 제3자의 신고가 없어도 <u>사전통지 없이 삭제, 변경할 수 있으며, 이에 대해 회사는 어떠한 책임도 지지 않습니다.</u></p><p>변경 후 : 3.회사는 회원이 서비스 내에 게시한 게시물(회원 간 전달 포함)이 다음 각 호의 경우에 해당한다고 판단되는 경우 회원 또는 제3자의 신고가 없어도 <u>사전 통지 후(단, 관련 볍령에서 정하고 있는 경우 사전통지 없이) 삭제, 변경할 수 있으며, 회사는 회원의 게시물로 인한 피해 발생의 원인이 회사의 고의 또는 중과실에 기인하지 않는 한 게시물의 삭제, 변경에 대한 책임을 지지 않습니다.</u></p><p><br></p><p>변경 전 : ⑨기타 관계 법령 및 <u>회사의 각 서비스별 세부 이용 지침 등</u>에 위반된다고 판단되는 경우</p><p>변경 후 : ⑨<u>기타 관계 법령에 위반되는 경우</u></p><p><br></p><p><strong>제 26조 (면책)</strong></p><p>변경 후 : <u>조항 삭제</u></p><p><br></p><p><strong>제 27조 (사이트의 연결) 2항</strong></p><p>변경 후 : <u>항 삭제</u></p><p><br></p><p><strong>제 28조 (정보의 제공 및 광고의 게재) 3항</strong></p><p>변경 전 : 3.회원이 서비스상에 게재되어 있는 광고를 이용하거나 서비스를 통한 광고주의 판촉활동에 참여하는 등의 방법으로 교신 또는 거래를 하는 것은 <u>전적으로 회원과 광고주 간의 문제입니다. 만약 회원과 광고주간에 문제가 발생할 경우에도 회원과 광고주가 직접 해결하여야 하며, 이와 관련하여 회사는 어떠한 책임도 지지 않습니다.</u></p><p>변경 후 : 3.회원이 서비스상에 게재되어 있는 광고를 이용하거나 서비스를 통한 광고주의 판촉활동에 참여하는 등의 방법으로 교신 또는 거래를 하는 것은 <u>회원과 광고주 간의 거래이므로, 회원과 광고주간에 문제가 발생할 경우 회원과 광고주가 직접 해결합니다.</u></p><p><br></p><p><strong>◼︎ 동의 철회 방법</strong></p><p>- 변경되는 이용약관에 동의하지 않으시는 경우 '회원 탈퇴'를 통해 거부 의사를 표시하실 수 있습니다.</p><p>-변경되는 서비스 이용약관에 대해 시행일 전까지 거부 의사를 표시하지 않으면 변경에 동의한 것으로 간주합니다.</p><p><br></p><p>이용약관에 대한 문의는 29CM 고객센터(1644-0560 또는 1:1문의하기)를 통해 접수해주시기 바랍니다.</p><p>29CM는 앞으로도 회원님의 원활한 고객경험을 위해 최선을 다할 것을 약속드립니다.</p><p><br></p><p>감사합니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div class="ng-star-inserted">
			<div class="my_tbl">
				
				<div class="my_tbl_info">
					<div class="infoinner">
						<p class="type"><span class="blind">번호</span>79</p>
						<p class="tit"><span class="blind">제목</span>[공지] '교환 접수 기능' 개발 및 업데이트 안내 (업데이트 예정일 : 9월 22일 )</p>
						<p class="date"><span class="blind">등록일</span>2023-09-22</p>
					</div>
				</div>

				<div class="reply_row">
					<div class="notice_wrap">
						<div >
                            <!---->
							<p><p>안녕하세요.</p><p>감도 깊은 취향 셀렉트샵 29CM입니다.</p><p><br></p><p>29CM 회원님께 더 나은 서비스를 제공할 수 있도록 <strong>'교환접수 기능'</strong>이 업데이트 될 예정입니다.</p><p><br></p><p><strong>◼︎ 업데이트 예정일</strong></p><p>2023년 9월 22일</p><p><br></p><p><strong>◼︎ 업데이트 내용</strong></p><p>-앱 사용시 : MY-주문배송조회-[교환접수]버튼 선택</p><p>-웹 사용시 : MY PAGE-나의쇼핑정보-주문번호 클릭-[교환접수]버튼 선택</p><p><br></p><p>29CM는 앞으로도 회원님의 원활한 고객경험을 위해 최선을 다할 것을 약속드립니다.</p><p><br></p><p>감사합니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div class="ng-star-inserted">
			<div class="my_tbl">
				
				<div class="my_tbl_info">
					<div class="infoinner">
						<p class="type"><span class="blind">번호</span>78</p>
						<p class="tit"><span class="blind">제목</span>[공지] 멤버십 약관 관련 정책 시행 사전안내 ( 시행일자 : 2023년 10월 1일 )</p>
						<p class="date"><span class="blind">등록일</span>2023-09-14</p>
					</div>
				</div>

				<div class="reply_row">
					<div class="notice_wrap">
						<div>
                            <!---->
							<p ><p>안녕하세요.</p><p>감도 깊은 취향 셀렉트샵 29CM 입니다.</p><p><br>
							</p><p>29CM 회원님께 더 나은 서비스를 제공할 수 있도록 <span>멤버십 약관 변경사항 사전 안내</span>드립니다.</p><p><br></p><p><strong>◼︎ 시행일 </strong></p><p>2023년 10월 1일</p><p><br></p><p><strong>◼︎ 시행 내용 </strong></p><p>기존 멤버십 약관 정책 일부 변경 (구매횟수 및 등급할인 혜택)</p><p><br></p><p><strong>◼︎ 상세 변경 내용 </strong></p><p><strong>1) 등급별 멤버십 혜택 </strong></p><p><strong>(1) VIP</strong></p><p>- 최근 6개월 간 구매금액 : 50만원 이상</p><p>- 등급할인 혜택 : 월 15% 할인쿠폰 2장 지급</p><p><strong>(2) Red</strong></p><p>- 최근 6개월 간 구매금액 : 30만원 이상, 50만원 미만</p><p>- 등급할인 혜택 : 월 15% 할인쿠폰 1장 지급 / 월 10% 할인쿠폰 1장 지급</p><p><strong>(3) Orange</strong></p><p>- 최근 6개월 간 구매금액 : 10만원 이상, 30만원 미만</p><p>- 등급할인 혜택 : 월 10% 할인쿠폰 2장 지급</p><p><strong>(4) Green</strong></p><p>- 최근 6개월 간 구매금액 : 가입 회원 전체</p><p>- 등급할인 혜택 : 월 10% 할인쿠폰 1장 지급 / 앱 전용 15% 할인쿠폰 1장 지급 (신규 가입 시 지급, 가입 후 유효기간 1개월)</p><p><br></p><p><strong>2) 멤버십 안내 </strong></p><p>(1) 최근 6개월 간의 ‘구매 금액’을 반영하여 멤버십 등급이 결정되며 매월 1일 멤버십 등급에 반영됩니다.</p><p>(2) ‘구매 금액'은 ‘구매 확정' 된 주문 건에 한하여 멤버십 등급 산정에 반영됩니다.</p><p>(3) '구매 금액'은 구매 확정된 주문의 합계 구매 금액에서 배송비를 제외하여 계산합니다.</p><p>(4) 향후 멤버십 등급 별 혜택 및 선정 기준은 사전 통지 후 변경될 수 있습니다.</p><p><br></p><p><strong>3) 쿠폰 안내 </strong></p><p>(1) '등급 할인 혜택' 중 '월 할인쿠폰'은 매월 1일에 지급되고 '마이페이지 &gt; 쿠폰' 메뉴에서 확인하실 수 있습니다.</p><p>(2) Green 등급에 지급되는 앱 전용 15% 할인쿠폰 1장은 신규 회원 가입 시 1회에 한정하여 지급되는 할인쿠폰으로 신규 회원 가입 후 1개월 이내에 29CM 앱에서만 사용할 수 있습니다.</p><p>(3) 멤버십 등급 변경 및 쿠폰 지급은 자정부터 순차적으로 진행됩니다. 쿠폰이 확인되지 않는 경우 약 1시간 후 다시 확인해주세요.</p><p>(4) 브랜드 정책에 따라 일부 상품은 쿠폰이 적용되지 않을 수 있으며, 주문서에서 '쿠폰적용 불가상품'으로 표시됩니다.</p><p><br></p><p><strong>◼︎ 변경 시기 </strong></p><p>변경된 멤버십 약관은 시행일인 2023년 10월 1일부터 효력이 발생합니다.</p><p>만약 시행일 전까지 거부 의사를 표시하지 않으면 변경에 동의한 것으로 간주합니다.</p><p><br></p><p><strong>◼︎ 동의 철회 방법 </strong></p><p>변경되는 이용약관에 동의하지 않으시는 경우 '회원 탈퇴'를 통해 거부 의사를 표시하실 수 있습니다.</p><p>이용약관에 대한 문의는 29CM 1:1 문의하기를 통해 접수해주시기 바랍니다.</p><p><br></p><p>29CM는 앞으로도 회원님의 원활한 고객경험을 위해 최선을 다할 것을 약속드립니다.</p><p><br></p><p>감사합니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><div class="ng-star-inserted">
			<div class="my_tbl">
				
				<div class="my_tbl_info">
					<div class="infoinner">
						<p class="type"><span class="blind">번호</span>77</p>
						<p class="tit"><span class="blind">제목</span>[공지] 개인정보처리방침 개정 안내 (시행일 : 2023년 9월 8일)</p>
						<p class="date"><span class="blind">등록일</span>2023-09-05</p>
					</div>
				</div>

				<div class="reply_row">
					<div class="notice_wrap">
						<div>
                            <!---->
							<p><p>안녕하세요.</p><p><br></p><p>감도 깊은 취향 셀렉트 샵 29CM 입니다.</p><p><br></p><p>29CM 회원님께 더 나은 서비스를 제공할 수 있도록 개인정보처리방침 개정이 예정되어 사전 안내드립니다.</p><p><br></p><p><strong>◼︎ 시행일</strong></p><p>2023년 9월 8일</p><p><br></p><p><strong>◼︎ 변경 내용 (v2.5.1)</strong></p><p>서문 및 용어변경</p><p><br></p><p><br></p><p><strong>◼︎ 상세 변경 내용</strong></p><p><strong>1. 개인정보 수집 이용 보유 파기</strong></p><p><strong>ㅇ 필수 항목 현행화</strong></p><p><br></p><p>구분&nbsp;</p><p>- 전통주 및 성인 인증 상품 구매/선물하기 서비스</p><p>-&nbsp;성인 인증이 필요한 상품 수령 시 성인인증</p><p><br></p><p>목적</p><p>-&nbsp;회원 정보 자동 업데이트 및 관리 추가 및 오탈자 수정</p><p>-&nbsp;서비스 및 상품 제공에 관한 계약 이행</p><p>-&nbsp;재화 또는 서비스 제공</p><p>-&nbsp;성인 인증이 필요한 상품 수령 시 성인인증</p><p>-&nbsp;고객 상담 및 불만, 민원 사무 처리</p><p><br></p><p>항목</p><p>-&nbsp;연계정보(CI) 추가</p><p>-&nbsp;성명, 휴대폰 번호, 생년월일, 연계정보(CI), 주소</p><p>보유 및 이용기간 현행화</p><p>-&nbsp;전자상거래 등에서의 소비자보호에 관한 법률에 따라 5년 보관 후 파기합니다.</p><p><br></p><p><strong>3. 수집한 개인정보 처리 위탁</strong></p><p>-&nbsp;결제처리 수탁자 사명 변경((주)시옷&nbsp;→ 주식회사 코리아포트원)</p><p><br></p><p><strong>13. 고지의 의무</strong></p><p>- 처리방침 버전 번호, 고지일자, 시행일자 현행화</p><p><br></p><p><br></p><p><strong>◼︎ 변경 시기</strong></p><p>- 변경된 개인정보 처리방침은 시행일인 2023년&nbsp;9월&nbsp;8일부터 효력이 발생합니다.</p><p>- 변경되는 개인정보 처리방침에 대해 시행일 전까지 거부 의사를 표시하지 않으면 변경에 동의한 것으로 간주합니다.</p><p><br></p><p><strong>◼︎ 동의 철회 방법</strong></p><p>-&nbsp;변경되는 개인정보 처리방침에 동의하지 않으시는 경우 '회원 탈퇴'를 통해 거부 의사를 표시하실 수 있습니다.</p><p>-&nbsp;개인정보 처리방침에 대한 문의는 고객센터(1644-0560) 또는 마이페이지 내 [1:1문의하기]를 통해 접수해주시기 바랍니다.</p><p><br></p><p><br></p><p>29CM는 앞으로도 회원님의 개인정보를 보다 안전하게 보호할 것을 약속드립니다.</p><p><br></p><p>고맙습니다.</p></p>
						</div>
					</div>
				</div>
			</div>
		</div><!---->

	</div>
</section>
</ui-notice-list><!---->
            </div>
        </div>
        <!---->
    </section>
    
    
    
    
    
    
    <ruler-basic-pagination _ngcontent-kxm-c152="" _nghost-kxm-c98="">
<div _ngcontent-kxm-c98="" class="custom-pagination ng-star-inserted">
    <span _ngcontent-kxm-c98="" class="pagination-previous disabled">
        <!---->
    </span>

    <span _ngcontent-kxm-c98="" class="num current ng-star-inserted">
        <!---->
        <span _ngcontent-kxm-c98="" class="ng-star-inserted">
            1
        </span><!---->
    </span><span _ngcontent-kxm-c98="" class="num ng-star-inserted">
        <a _ngcontent-kxm-c98="" class="ng-star-inserted">
            2
        </a><!---->
        <!---->
    </span><span _ngcontent-kxm-c98="" class="num ng-star-inserted">
        <a _ngcontent-kxm-c98="" class="ng-star-inserted">
            3
        </a><!---->
        <!---->
    </span><span _ngcontent-kxm-c98="" class="num ng-star-inserted">
        <a _ngcontent-kxm-c98="" class="ng-star-inserted">
            4
        </a><!---->
        <!---->
    </span><span _ngcontent-kxm-c98="" class="num ng-star-inserted">
        <a _ngcontent-kxm-c98="" class="ng-star-inserted">
            5
        </a><!---->
        <!---->
    </span><span _ngcontent-kxm-c98="" class="num ng-star-inserted">
        <a _ngcontent-kxm-c98="" class="ng-star-inserted">
            6
        </a><!---->
        <!---->
    </span><span _ngcontent-kxm-c98="" class="num ng-star-inserted">
        <a _ngcontent-kxm-c98="" class="ng-star-inserted">
            7
        </a><!---->
        <!---->
    </span><!---->

    <span _ngcontent-kxm-c98="" class="pagination-next">
        <a _ngcontent-kxm-c98="" class="ng-star-inserted">
            <ruler-svg-icon-next _ngcontent-kxm-c98="" width="11" height="22" stroke="#000"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80" style="width: 11px;height: 22px;">
    <path d="M1 0l40 40.083L1.166 80" style="fill: none; fill-rule: evenodd; stroke: rgb(0, 0, 0); stroke-width: 5;"></path>
</svg>
</ruler-svg-icon-next>
        </a><!---->
    </span>
</div><!---->
</ruler-basic-pagination>



<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>

<script>
$(document).ready(function() {
    $(".tit").on("click", function() {
        $(this).closest(".my_tbl_info").next().find(".notice_wrap").toggle();
    });
});
</script>

</body>
</html>