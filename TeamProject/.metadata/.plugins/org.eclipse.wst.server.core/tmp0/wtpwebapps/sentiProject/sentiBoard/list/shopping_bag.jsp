<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<link rel="stylesheet" href="../css/shopping_bag.css">


</head>
<body>
<header>
  <jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>


<div class="shop_1">
	<div class="shop_2">
		<ol class="shop_3">
			<li class="shop_4" style="color: black">
				"01"
				"SHOPPING BAG"
				<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
					<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
					<path d="M1 0l40 40.083L1.166 80"></path>
				</g>
				</svg>
			</li>
			<li class="shop_4">
				"02"
				"ORDER"
				<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
					<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
					<path d="M1 0l40 40.083L1.166 80"></path>
				</g>
				</svg>
			</li>
			<li class="shop_4">
				"03"
				"ORDER CONFIRMED"
				<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
					<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
					<path d="M1 0l40 40.083L1.166 80"></path>
				</g>
				</svg>
			</li>
		</ol>	
	</div>
	<section>
			<div class="shop_5_1">
				<span class="shop_6_1" id="all_select_btn">
					<input class="shop_7_1" type="checkbox">
					<label class="shop_7_2">
					
					"전체선택 ("
					"1"
					"/"
					"1"
					")"
					
					</label>
				</span>
				<button class="shop_6_2" type="button">선택삭제</button>
			</div>
			<div class="shop_5_2">
				<div class="shop_8_1">
					<div class="shop_9_1">
					<span class="shop_10_1">
						<input class="shop_11_1" type="checkbox">
						<label class="shop_11_2"></label>
					</span>
					</div>
					<div class="shop_9_2">상품 정보</div>
					<div class="shop_9_3">수량</div>
					<div class="shop_9_4">주문금액</div>
					<div class="shop_9_5">배송비</div>
				</div>
				<div class="shop_8_2">
					<h3 translate="no" class="shop_9_6">로우로우</h3>
					<div class="shop_9_7">
						<div class="shop_10_2">
							<span class="shop_11_3">
								<input class="shop_12_1" type="checkbox">
								<label class="shop_12_2"></label>
							</span>
						</div>
						<div class="shop_10_3">
							<div class="shop_11_3">
								<a href="https://product.29cm.co.kr/catalog/1056337">
								<img src="https://img.29cm.co.kr/next-product/2023/03/17/7fa23081b50747409bfeb23237637017_20230317194723.jpg?width=150" alt="로우로우 스트링 크로스백 750 ep.2 Charcoal" loading="lazy" class="css-o1wb4r e1pwpbld9"></a>
								<div class="shop_12_1">
								<div translate="no">
									<a class="shop_30_1" href="https://shop.29cm.co.kr/brand/215">로우로우</a>
								</div>
									<a id="product_title_1056337" class="shop_13_1" href="https://product.29cm.co.kr/catalog/1056337">로우로우 스트링 크로스백 750 ep.2 Charcoal</a>
								<div class="shop_12_2">
									<span class="shop_13_1">59,000원</span>
									 <span class="shop_13_2">[5%] 56,050원</span>
								  </div>
						    </div>
						 </div>
							  <button id="product_delete_btn_1056337" class="shop_14_1" type="button">삭제</button>
					   </div>
						<div class="shop_10_4">
							  <div class="shop_15_1">
							  <div class="shop_15_2">
								  <button class="shop_16_1" type="button">-</button>
								  <input class="shop_16_2" autocapitalize="none" id="number_of_products_1056337" type="text" inputmode="numeric" value="1">
								  <button id="add_product_btn_1056337" class="shop_16_3" type="button">+</button>
							</div>
							  </div>
						  </div>
						<div class="shop_10_5">
							  <div>
							 	 <span id="product_amount_1056337" class="shop_17_1">56,050</span>
							  원</div>
							  <div class="shop_17_2">
							 	 <button class="shop_17_3" type="button">BUY NOW</button>
							  </div>
						  </div>
					    <div class="shop_10_6"></div>
					  </div>
					  <div class="shop_10_7">
					 	 조건무료 업체배송
						  <p class="shop_10_8">
					 		 <a class="shop_10_9" href="https://shop.29cm.co.kr/brand/215">[RAWROW]</a> 
					 			 제품 으로만 30,000원 이상 구매시 무료배송됩니다.
						  <br>(배송비 3,000원)
					 	 </p>
					  </div>
				  </div>
			  </div>
			  <div class="shop_5_3">
				  <div class="shop_10_10">
				 	 <button class="shop_10_12" type="button">선택상품 삭제</button>
				 	 <button class="shop_10_13" type="button">품절상품 삭제</button>
				  </div>
					  <p class="shop_10_11">장바구니는 최대 100개의 상품을 담을 수 있습니다.</p>
			  </div>
	  </section>
	
	<section class="shop_2_2">
		<div class="shop_21_1">
			<div class="shop_22_1">
				<div class="shop_23_1">총 주문금액</div>
				<div class="shop_23_2">총 배송비</div>
				<div class="shop_23_3">총 결제금액</div>
			</div>
			<div class="shop_22_2">
				<div class="shop_24_1">
					<span class="shop_25_1">
						<strong  class="shop_26_1">56,050</strong>원
					</span>
					<span class="shop_25_2">총 1개</span>
				</div>
				<div class="shop_24_2">
					<i class="shop_26_2"></i>
					<span class="shop_26_3">
						<strong class="shop_26_4">0</strong>원
					</span>
				</div>
				<div class="shop_24_3">
					<i class="shop_26_5"></i>
					<span class="shop_26_6">
						<strong class="shop_26_7">56,050</strong>원
					</span>
				</div>
			</div>
		</div>
	</section>
	<div class="shop_3_3">
		<a class="shop_27_1" href="#">CONTINUE SHOPPING</a>
		<button class="shop_27_2" type="button">CHECK OUT</button>
	</div>
</div>







</body>
<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</html>