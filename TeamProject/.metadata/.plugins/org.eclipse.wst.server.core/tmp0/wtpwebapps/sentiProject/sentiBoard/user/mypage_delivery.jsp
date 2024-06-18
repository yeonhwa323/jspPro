<%@page import="java.util.Date"%>
<%@page import="com.util.JdbcUtil"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.DeliveryVO"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Connection conn = null;

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT b.brand_name, p.pd_name, p.pd_price, po.pd_option_name, de.delivery_state, de.delivery_pay, de.delivery_date, p.pd_id "
			+ "FROM product p JOIN large_ctgr lc ON p.large_ctgr_id = lc.large_ctgr_id "
            + "JOIN product_option po ON lc.large_ctgr_id = po.large_ctgr_id "
            + "JOIN brand b ON p.brand_id = b.brand_id "
            + "JOIN pay pay ON p.pd_id = pay.pd_id "
            + "JOIN delivery de ON pay.pay_id = de.pay_id "
            + "WHERE de.delivery_state = 1";
	int pdId;
	String brandName;
	String pdName;
	int pdPrice;
	String pdOptionName;
	int deliveryState;
	int deliveryPay;
	Date deliveryDate;
	
	
	DeliveryVO dvo = null;
	ArrayList<DeliveryVO> dlist = null;
	
	try{
		conn = ConnectionProvider.getConnection();
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			dlist = new ArrayList();
			do{
				pdId = rs.getInt("pd_id");
				brandName = rs.getString("brand_name");
				pdName = rs.getString("pd_name");
				pdPrice = rs.getInt("pd_price");
				pdOptionName = rs.getString("pd_option_name");
				deliveryState = rs.getInt("delivery_state");
				deliveryPay = rs.getInt("delivery_pay");
				deliveryDate = rs.getDate("delivery_date");
				
				dvo = new DeliveryVO(pdId, brandName, pdName, pdPrice, pdOptionName, deliveryState, deliveryPay, deliveryDate);
			
				dlist.add(dvo);
			} while(rs.next());
		}// if
		
		} catch (SQLException e){
			e.printStackTrace();
		} finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
	
	request.setAttribute("dlist", dlist);
%>
<!DOCTYPE html>
<html>
<head>
<title>감도 깊은 취향 셀렉트샾 29CM</title>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="../css/mypage_delivery.css">
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
			<h4 class="mid-deli-view">주문배송조회</h4>
			<section>
				<section class="mid-deli-info">
					<section class="mid-deli-chart">
						<div class="item-info">상품정보</div>
						<div class="deli-charge">배송비</div>
						<div class="deli-ing">진행상태</div>
						<div class="buy-review">구매확정 및 리뷰</div>
					</section>
					<ol class="deli-ok">
					
					<!-- 여기서부터 데이터 뿌려주기 -->
					<c:choose>
					<c:when test="${empty dlist}">
					    <li class="deli-ok2">
					        <p class="deli-text">주문내역이 없습니다.</p>
					    </li>
					</c:when>
					<c:otherwise>
					    <c:forEach items="${dlist}" var="delivery">
					        <li class="deli-ok2">
					            <div class="deli-ok-info">
					                <span class="deli-ok-date">
					                    <span class="deli-ok-date2">주문일자 ${delivery.deliveryDate}</span>
					                </span>
					                <span class="deli-ok-ordernum">
					                    <span class="deli-ok-ordernum2">주문번호 ${delivery.pdId}</span>
					                </span>
					            </div>
					            <ul class="deli_ok-info2">
					                <li class="deli-ok-info3">
					                    <ul class="deli-ok-info4">
					                        <li class="deli-ok-info5">
					                            <a class="deli-ok-info-url" href="#">
					                                <div class="deli-ok-info6">
					                                    <div class="deli-ok-info-img">
					                                        <img src="" alt="" loading="lazy"/>
					                                    </div>
					                                    <div class="deli-ok-info7">
					                                        <p class="deli-ok-brandname">${delivery.brandName}</p>
					                                        <p class="deli-ok-pd-title">${delivery.pdName}</p>
					                                        <ul class="deli-ok-option">
					                                            <li>${delivery.pdOptionName}</li>
					                                        </ul>
					                                        <p class="deli-ok-pd-price">${delivery.pdPrice}</p>
					                                    </div>
					                                </div>
					                            </a>
					                            <div class="deli-ok-info7-padding"></div>
					                            <div class="deli-ok-info8">
					                                <div class="deli-ok-info9">
					                                    <div>
					                                        <p class="deli-ok-delistate">${delivery.deliveryState}</p>
					                                    </div>
					                                </div>
					                            </div>
					                            <c:if test="${delivery.deliveryState eq 1}">
					                                <div class="deli-ok-info10">
					                                    <div class="deli-ok-info-btn">
					                                        <button type="button" class="deli-ok-cancel">주문취소</button>
					                                        <a class="one-one-inquiry" href="#">1:1문의</a>
					                                    </div>
					                                    <div class="deli-ok-buy">-</div>
					                                </div>
					                            </c:if>
					                            <c:if test="${delivery.deliveryState eq 2}">
					                                <div class="deli-ok-info10">
					                                    <div class="deli-ok-info-btn">
					                                        <button type="button" class="deli-ok-review">리뷰작성</button>
					                                        <a class="one-one-inquiry" href="#">1:1문의</a>
					                                    </div>
					                                    <div class="deli-ok-buy">구매확정</div>
					                                </div>
					                            </c:if>
					                        </li>
					                    </ul>
					                    <div class="deli-ok-charge">
					                        <span class="deli-ok-charge2">${delivery.deliveryPay}</span>
					                    </div>
					                </li>
					            </ul>
					        </li>
					    </c:forEach>
					</c:otherwise>
					</c:choose>
						
					</ol>
				</section>
			</section>
			<section class="deli-guide">
				<h4 class="guide-text">주문상태 및 취소기간 안내</h4>
				<ol class="guide-main">
					<li class="guide-circle">
						<strong class="circle">
							<span class="circle-text">입금대기</span>
								<svg class="e17g6d407 css-u4n2w6 e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
									<g fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="3">
										<path d="M1 0l40 40.083L1.166 80">
										</path>
									</g>
								</svg>
						</strong>
						<p class="under-text">입금 전 상태입니다 (3일 이내 미입금 시 자동취소)</p>
					</li>
					<li class="guide-circle">
						<strong class="circle">
							<span class="circle-text">결제완료</span>
								<svg class="e17g6d407 css-u4n2w6 e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
									<g fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="3">
										<path d="M1 0l40 40.083L1.166 80">
										</path>
									</g>
								</svg>
						</strong>
						<p class="under-text">입금(결제) 확인이 완료되었습니다</p>
					</li>
					<li class="guide-circle">
						<strong class="circle">
							<span class="circle-text">상품준비중</span>
								<svg class="e17g6d407 css-u4n2w6 e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
									<g fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="3">
										<path d="M1 0l40 40.083L1.166 80">
										</path>
									</g>
								</svg>
						</strong>
						<p class="under-text">주문하신 상품을 발송할 예정입니다</p>
					</li>
					<li class="guide-circle">
						<strong class="circle">
							<span class="circle-text">배송시작</span>
								<svg class="e17g6d407 css-u4n2w6 e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
									<g fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="3">
										<path d="M1 0l40 40.083L1.166 80">
										</path>
									</g>
								</svg>
						</strong>
						<p class="under-text">상품준비가 완료되어 곧 배송 될 예정입니다</p>
					</li>
					<li class="guide-circle">
						<strong class="circle">
							<span class="circle-text">배송중</span>
								<svg class="e17g6d407 css-u4n2w6 e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
									<g fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="3">
										<path d="M1 0l40 40.083L1.166 80">
										</path>
									</g>
								</svg>
						</strong>
						<p class="under-text">상품이 고객님께 배송중입니다</p>
					</li>
					<li class="guide-circle">
						<strong class="circle">
							<span class="circle-text">배송완료</span>
						</strong>
						<p class="under-text">상품이 주문자에게 전달완료 되었습니다</p>
					</li>
				</ol>
				<section class="bottom-text">
					<p class="first-text">
						<span class="bot-text1"></span>
						직접취소가능
					</p>
					<p class="second-text">
						<span class="bot-text2"></span>
						취소불가
					</p>
				</section>
			</section>
		</div>
	</div>
<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</body>
<script>
	$(".deli-ok-cancel").on("click", function(){
		confirm("주문을 취소하시겠습니까?");
	})
</script>
</html>