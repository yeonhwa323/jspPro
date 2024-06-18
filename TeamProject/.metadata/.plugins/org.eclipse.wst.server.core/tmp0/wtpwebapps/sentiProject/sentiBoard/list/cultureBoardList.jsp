<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- <script src="/jspPro/resources/cdn-main/example.js"></script> -->
<style>
body {
	min-height: 190vh;
	max-width: 100vw; 
    
}

#wrap {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	/* 위  display는  웹킷(Webkit) 엔진을 사용하는 브라우저에서 Flexbox 레이아웃을 지원하기 위한 속성입니다. 
        Flexbox를 사용하여 요소를 배치 및 정렬할 수 있게 해줍니다. 하지만 최신의 브라우저에서는 -webkit-box 대신에 
        display: flex;를 사용하는 것이 일반적입니다. */
	display: flex;
	min-width: 900px;
	padding: 40px 50px 90px
}
#best-left {
	width: 200px;
    padding-right: 80px;
    box-sizing: content-box;
}
.best_title_left{
    width: 200px;
    padding-bottom: 12px;
    border-bottom: 4px solid #000000;
    font-size: 23px;
    font-weight: 800;
    line-height: 1.25;
}
.left-menu{
    margin-top: 16px;
   list-style-type: none;
   padding: 0px;

}
.medium-ctgr{
    display: block;
    width: 100%;
    line-height: 2.13;
    font-size: 16px;
    color: rgb(93, 93, 93);
    text-align: left;
    outline: none;
    font-weight: 200;
    text-decoration: none;
	
}
#best-right{
  flex:1; 

}
.best_title_right{

	 margin-bottom: 36px;
    font-size: 34px;
    font-weight: 600;
    line-height: 41px;
}
.best_radio_box{
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    flex-wrap: wrap;
    width: 100%;
    border: 1px solid rgb(212, 212, 212);
    background-color: rgb(255, 255, 255);
    
    
}
.aa{
    display: flex;
    flex-wrap: wrap;
    list-style: none;
}
.aa > span {
  min-height: 10px;
  line-height: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  overflow: visible;
  height: 18px;
  margin-right: 10px; /* 간격 조절 */
  padding-right: 15px; /* 구분선 위치 조절 */
  border-right: 1px solid #ccc; /* 구분선 스타일 */
  font-size: 12px;
}

.aa > span:last-child {
  margin-right: 0;
  padding-right: 0;
  border-right: none;
}
input[type="radio"] {
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    -ms-appearance: none;
    width: 0;
    height: 0;
    position: absolute;
    opacity: 0;
}
label {
    cursor: pointer;
}
input[type="radio"]:checked + label {
    font-weight: bold; /* 체크된 상태일 때 텍스트의 굵기를 변경할 수 있다 */
}
.best_raido_box2{
	margin-top: 30px;
}
.best_raido_box2 > span{
	position: relative;
    overflow: hidden;
    display: inline-block;
    min-height: 20px;
    line-height: 20px;
    margin-right: 0px
}
.best_raido_box2 > span > input{
    position: absolute;
    z-index: -10;
    top: -100%;
    left: -100%;
    width: 13px;
    height: 13px;
    background: transparent;
}
. class="best_radio_box3":checked+.bb {
    font-weight: 600;
}

.best_radio_box3 {
   padding-left: 0px;
    font-size: 14px;
    font-weight: 300;
    color: rgb(93, 93, 93);
    margin: 0px 24px;
    cursor: pointer;
    position: relative;
    z-index: 1;
    display: inline-block;
    padding-left: 27px;
    line-height: 20px;
    color: #303033;
}
.bb{
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    height: 31px;
    padding: 0px;
    border-radius: 16.5px;
    border: solid 1px #e4e4e4;
    font-family: AppleSDGothicNeo;
    font-size: 13px;
    font-weight: 500;
    background-color: #ffffff;
    color: #5d5d5d;
    width: 60px
}
#photo_list{
	display: grid; 
    grid-template-columns: repeat(20, 1fr);
    margin-top: 36px;
    counter-reset: list-number;
    grid-gap: 40px 20px;
    min-height: 800px;  
  	padding:0px;

}


.photo1{
    position: relative;
    list-style: none;
    background-color: white;
    grid-column: auto / span 4; 
}
.photo{
    position: relative;
    list-style: none;
    background-color: white;
    grid-column: auto / span 3; 
}

 

.cc{
	position: relative;
    font-size: 12px;
    line-height: 1.4;

}
.dd{
    position: relative;
    overflow: hidden;
    padding-top: 100%;
    background-color: rgb(244, 244, 244);

}
.ff{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;

}
@media (max-width: 540px) {
<style>
    .gg {
        padding: 16px 12px 0px;
    }
}
.hh{

    overflow: hidden;
    display: block;
    margin-bottom: 4px;
    font-size: 11px;
    font-weight: 700;
    line-height: 1.4;
    color: rgb(0, 0, 0);
    text-overflow: ellipsis;
    white-space: nowrap;
}
.jj{

	overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    max-height: calc(4.2em);
    font-size: inherit;
    font-weight: 300;
    overflow-wrap: break-word;
    white-space: normal;
    -webkit-line-clamp: 3
}
.jj1{

	margin-top: 12px;
    font-size: 14px;
    font-weight: 500;
    line-height: 1;
}
.jjj{
    line-height: 1;
    font-size: 11px;
    font-weight: normal;
    color: rgb(196, 196, 196);
    text-decoration: line-through;
}
.01{
	margin-top: 4px;
}
.kkk{
	margin-right: 5px;
    color: rgb(255, 72, 0);
}
.qqq{
    margin-top: 12px;
    font-size: 14px;
    font-weight: 700;
    line-height: 1;
}
.eee{
	display: flex;
    margin-top: 6px;
    list-style: none;
     padding: 0px;
}
.eee > li{
padding: 0px 6px;
    font-size: 10px;
    font-weight: 500;
    line-height: 18px;
    color: rgb(29, 29, 29);
    background-color: rgb(244, 244, 244);
    border-radius: 1px;
   
}
.ppp{
	display: flex;
    -webkit-box-align: center;
    align-items: center;
    margin-top: 16px;
    font-size: 11px;
    color: rgb(93, 93, 93);
}  

.ppp> a{
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    margin-left: 5px;
    color: inherit;
}
.photo1::before{
    counter-increment: list-number 1;
    content: counter(list-number);
    display: flex;
    flex-direction: column;
    -webkit-box-align: center;
    align-items: center;
    position: absolute;
    left: 0px;
    top: 0px;
    width: 46px;
    height: 46px;
    background-color: rgb(0, 0, 0);
    z-index: 1;
    pointer-events: none;
    color: white;
    font-size: 20px;
    font-weight: 400;
    letter-spacing: 1px;
    line-height: 46px;

}
.photo::before{
counter-increment: list-number 1;
    content: counter(list-number);
    display: flex;
    flex-direction: column;
    -webkit-box-align: center;
    align-items: center;
    position: absolute;
    left: 0px;
    top: 0px;
    width: 46px;
    height: 46px;
    background-color: rgb(0, 0, 0);
    z-index: 1;
    pointer-events: none;
    color: white;
    font-size: 20px;
    font-weight: 400;
    letter-spacing: 1px;
    line-height: 46px;
}
.styled-select {
    display: block;
    width: 100%;
    padding: 10px;
    font-size: 16px;
    line-height: 1.3;
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    background-color: #fff;
    background-image: url('data:image/svg+xml;utf8,<svg fill="#000000" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M7 10l5 5 5-5z"/><path d="M0 0h24v24H0z" fill="none"/></svg>');
    background-repeat: no-repeat;
    background-position: right 10px center;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
    cursor: pointer;
}

.styled-select:hover {
    border-color: #999;
}

.styled-select:focus {
    border-color: #66afe9;
    box-shadow: 0 0 0 3px rgba(102, 175, 233, 0.6);
}
.widget {
	-webkit-box-align: center;
	align-items: center;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: start;
	justify-content: flex-start;
	min-height: 42px;
	border: 1px solid gray;
}

.widget-gap {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: start;
	justify-content: flex-start;
	flex: 1 1 0%;
	-webkit-box-align: center;
	align-items: center;
	height: 100%;
	min-height: 42px;
	border-right: 1px solid gray;
}

.heart {
	display: flex;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    font-size: inherit;
    color: inherit;
}

.ppp>.heart+.review {
	margin-left: 27px;
}

.review {
	color: inherit;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	line-height: 1;
}

.review-point {
	margin-right: 2px;
	color: rgb(255, 72, 0);
}

.heart>svg+.jj {
	margin-left: 3px;
}

.j h5 {
	overflow: hidden;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	padding-right: 26px;
	font-size: 12px;
	font-weight: 400;
	word-break: break-all;
	overflow-wrap: break-word;
	white-space: normal;
	visibility: visible;
	-webkit-line-clamp: 2;
}

button {
    border: 0;
    background: transparent;
    cursor: pointer;
    outline: none;
}
.stick {
    position: sticky;
    top: 0;
    z-index: 1000; /* Adjust z-index as needed */
    background-color: white; /* Optionally, change background color */
    box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* Optional: Add shadow for visual effect */
}
</style>
</head>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<body>
	<div id="wrap">
		<div id="best-left">
			<button></button>
			<div>
				<!-- <button></button>  화면이 작아졌을 때 #best-left메뉴 나타나게 하는거 -->
				<h2 class="best_title_left">컬처</h2>
				<!-- <ul class="left_bar_meue" > -->
				<ul class="left-menu">
					<li><a class="medium-ctgr" href="">ALL</a></li>
					<li><a class="medium-ctgr"  href="">NEW</a></li>
					<li><a class="medium-ctgr"  href="">티켓</a></li>
				</ul>
				<!-- </ul> -->
			</div>
		</div>

		<div id="best-right">
			<!-- <h2 class="best_title_right" >여성의류</h2> -->
			<div class="widget">
				<div class="widget-gap"></div>
				<div class="controlgroup">
					<select id="sort-type" class="styled-select">
						<option>추천순</option>
						<option>신상품순</option>
						<option>리뷰많은순</option>
						<option>낮은가격순</option>
						<option>높은가격순</option>
						<option>높은할인순</option>
						<option>좋아요많은순</option>
						<option>판매순</option>
					</select>
				</div>

				<br>
			</div>
			<!-- <div class="best_radio_box">
				<ul class="aa">
					<span class="right_radio"> <input type="radio" name="14"> <label for="14" class="right_label">전체</label>
					</span>
					<span class="right_radio"> <input type="radio" name="01"> <label for="01" class="right_label">상의</label>
					</span>
					<span class="right_radio"> <input type="radio" name="02"> <label for="02" class="right_label">원피스</label>
					</span>
					<span class="right_radio"> <input type="radio" name="03"> <label for="03" class="right_label">바지</label>
					</span>
					<span class="right_radio"> <input type="radio" name="04"> <label for="04" class="right_label">아우터</label>
					</span>
					<span class="right_radio"> <input type="radio" name="05"> <label for="05" class="right_label">스커트</label>
					</span>
					<span class="right_radio"> <input type="radio" name="06"> <label for="06" class="right_label">니트웨어</label>
					</span>
					<span class="right_radio"> <input type="radio" name="07"> <label for="07" class="right_label">액티브웨어</label>
					</span>
					<span class="right_radio"> <input type="radio" name="08"> <label for="08" class="right_label">홈웨어</label>
					</span>
					<span class="right_radio"> <input type="radio" name="09"> <label for="09" class="right_label">셋업</label>
					</span>
					<span class="right_radio"> <input type="radio" name="10"> <label for="10" class="right_label">이너웨어</label>
					</span>
					<span class="right_radio"> <input type="radio" name="11"> <label for="11" class="right_label">점프수트</label>
					</span>
					<span class="right_radio"> <input type="radio" name="12"> <label for="12" class="right_label">EXCLUSIVE</label>
					</span>
					<span class="right_radio"> <input type="radio" name="13"> <label for="13" class="right_label">해외브랜드</label>
					</span>
					라디오 버튼을 없앴다. 레이블을 클릭하면 input이 동작 할 수 있도록 for을  사요했다. 
				</ul> 
			</div> --> <!-- 소분류가 있는 카테고리만 표시  -->
		
			<ul id="photo_list">
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt="" src="https://img.29cm.co.kr/item/202404/11ef043c3b245391b9bbe7fdf10f5149.jpg?width=700" class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">리얼뱅크시</a>	
							<a title="[얼리버드] 리얼뱅크시 - Banksy is NOWHERE">
								<div class="j">
									<h5 class="jj">[얼리버드] 리얼뱅크시 - Banksy is NOWHERE</h5>
										<strong class="jjj">15000</strong>							
									<div class="01" >
										<span class="kkk">20%</span>
										<strong class="qqq">12000</strong>
									</div>
									<ul class="eee">
										<li class="yyy">무료배송</li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button>703</button><!-- 하트 마크표시 필요함  -->
								<a>
									<span>0</span><!--  댓글 마크 표시 필요함 -->
								</a>
							</div>
						</div>
					</div>
				</li>
				
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt="" src="https://img.29cm.co.kr/item/202404/11ef043c3b245391b9bbe7fdf10f5149.jpg?width=700" class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">리얼뱅크시</a>	
							<a title="[얼리버드] 리얼뱅크시 - Banksy is NOWHERE">
								<div class="j">
									<h5 class="jj">[얼리버드] 리얼뱅크시 - Banksy is NOWHERE</h5>
										<strong class="jjj">15000</strong>							
									<div class="01" >
										<span class="kkk">20%</span>
										<strong class="qqq">12000</strong>
									</div>
									<ul class="eee">
										<li class="yyy">무료배송</li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button class="heart">
									<svg xmlns="http://www.w3.org/2000/svg" width="21" height="18"
										viewBox="0 0 20 20">
										<path
											d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5" />
									</svg>
									<h5 class="jj">14,715</h5>
								</button>
								<a href="#" class="review"> <svg
										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
								<path
											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
											stroke-width="1.5"></path>
								</svg>
									<div class="review-point">4.8</div>
									<div class="review-count">(1183)</div>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt="" src="https://img.29cm.co.kr/item/202404/11ef043c3b245391b9bbe7fdf10f5149.jpg?width=700" class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">리얼뱅크시</a>	
							<a title="[얼리버드] 리얼뱅크시 - Banksy is NOWHERE">
								<div class="j">
									<h5 class="jj">[얼리버드] 리얼뱅크시 - Banksy is NOWHERE</h5>
										<strong class="jjj">15000</strong>							
									<div class="01" >
										<span class="kkk">20%</span>
										<strong class="qqq">12000</strong>
									</div>
									<ul class="eee">
										<li class="yyy">무료배송</li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button>703</button><!-- 하트 마크표시 필요함  -->
								<a>
									<span>0</span><!--  댓글 마크 표시 필요함 -->
								</a>
							</div>
						</div>
					</div>
				</li>
					
			<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt="" src="https://img.29cm.co.kr/item/202404/11ef043c3b245391b9bbe7fdf10f5149.jpg?width=700" class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">리얼뱅크시</a>	
							<a title="[얼리버드] 리얼뱅크시 - Banksy is NOWHERE">
								<div class="j">
									<h5 class="jj">[얼리버드] 리얼뱅크시 - Banksy is NOWHERE</h5>
										<strong class="jjj">15000</strong>							
									<div class="01" >
										<span class="kkk">20%</span>
										<strong class="qqq">12000</strong>
									</div>
									<ul class="eee">
										<li class="yyy">무료배송</li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button>703</button><!-- 하트 마크표시 필요함  -->
								<a>
									<span>0</span><!--  댓글 마크 표시 필요함 -->
								</a>
							</div>
						</div>
					</div>
				</li>
					<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt="" src="https://img.29cm.co.kr/item/202404/11ef043c3b245391b9bbe7fdf10f5149.jpg?width=700" class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">리얼뱅크시</a>	
							<a title="[얼리버드] 리얼뱅크시 - Banksy is NOWHERE">
								<div class="j">
									<h5 class="jj">[얼리버드] 리얼뱅크시 - Banksy is NOWHERE</h5>
										<strong class="jjj">15000</strong>							
									<div class="01" >
										<span class="kkk">20%</span>
										<strong class="qqq">12000</strong>
									</div>
									<ul class="eee">
										<li class="yyy">무료배송</li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button>703</button><!-- 하트 마크표시 필요함  -->
								<a>
									<span>0</span><!--  댓글 마크 표시 필요함 -->
								</a>
							</div>
						</div>
					</div>
				</li>
					<li class="photo1">
					<div class="cc">
						<a href="">
							<div class="dd">
								<img alt="" src="https://img.29cm.co.kr/item/202404/11ef043c3b245391b9bbe7fdf10f5149.jpg?width=700" class="ff">
							</div>
						</a>
						<div class="gg">
							<a class="hh" href="">리얼뱅크시</a>	
							<a title="[얼리버드] 리얼뱅크시 - Banksy is NOWHERE">
								<div class="j">
									<h5 class="jj">[얼리버드] 리얼뱅크시 - Banksy is NOWHERE</h5>
										<strong class="jjj">15000</strong>							
									<div class="01" >
										<span class="kkk">20%</span>
										<strong class="qqq">12000</strong>
									</div>
									<ul class="eee">
										<li class="yyy">무료배송</li>
										<li></li>
									</ul>
								</div>
							</a>
							<div class="ppp">
								<button>703</button><!-- 하트 마크표시 필요함  -->
								<a>
									<span>0</span><!--  댓글 마크 표시 필요함 -->
								</a>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>


<script>

</script>
<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</body>
</html>
