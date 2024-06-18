<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
a{
	text-decoration: none;
    outline: none;
}
div {
    display: block;
    unicode-bidi: isolate;
}
body, input, select, textarea, button, a {
    -webkit-text-size-adjust: none;
    font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic, '나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}
:root {
    --swiper-theme-color: #007aff;
}
*, *::before, *::after {
    box-sizing: border-box;
}
q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, menu, nav, output, ruby, section, summary, time, mark, audio, video, input, textarea, button, select {
    margin: 0;
    padding: 0;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    unicode-bidi: isolate;
}
button {
    border: 0;
    background: transparent;
    cursor: pointer;
    outline: none;
}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
}
.bigframe{
	min-width: 900px;
    max-width: 1300px;
    margin: 0 auto;
    padding: 40px 50px 0;
}
.aa {
    margin-bottom: 16px;
}
.bb{
	position: relative;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    padding-right: 80px;
}

.cc {
    display: -webkit-inline-box;
    display: -webkit-inline-flex;
    display: -ms-inline-flexbox;
    display: inline-flex;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.dd {
    overflow: hidden;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    width: 100%;
    margin-left: 14px;
}
.ee {
    overflow: hidden;
    font-size: 16px;
    font-weight: 600;
    line-height: 22px;
    color: #000000;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.ff {
    overflow: hidden;
    font-size: 13px;
    color: #000000;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.gg{
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    align-items: flex-start;
    -webkit-box-pack: end;
    -ms-flex-pack: end;
    justify-content: flex-end;
    margin-top: 6px;
}
.hh{
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    min-width: 40px;
    min-height: 25px;
    display: inline;
    padding: 0 9px;
    font-size: 11px;
    color: #000000;
    border: 1px solid #d4d4d4;
    border-radius: 2px;
}
</style>
</head>
<body>
<div class="bigframe">
	<div class="aa">
		<div class="bb">
			<a class="cc" href="#"> 
				<img src="https://img.29cm.co.kr/next-brand/2024/03/26/bdd0317dcfd4465299f24d422b266db4_20240326141431.jpg?width=100" alt="brand-image" loading="lazy" class="css-82vwid ek3ksls2">
				<div class="dd">
					<h3 class="ee">리얼뱅크시</h3>
					<p class="ff">전세계에 커다란 반항을 일으키는 있는 영국 출신 그래피티 작가 뱅크시의 작품들을 만나볼 수 있는 전시가 개최됩니다.</p>
					<div class="gg">
						<button class="hh" type="button">BRAND HOME</button>
					</div>
				</div>
			</a>
		</div>
	</div>
	<div class="css-1y47rmj e18uevlq0">
		<div class="css-1nxhd22 enepqhc0">
			<div class="splide splide--slide splide--ltr is-active is-initialized" id="splide01" role="region" aria-roledescription="carousel">
				<div class="splide__track splide__track--slide splide__track--ltr" id="splide01-track" style="padding-left: 0px; padding-right: 0px;" aria-live="polite" aria-relevant="additions">
					<ul class="splide__list" id="splide01-list" role="presentation" style="transform: translateX(0px);">
						<li class="splide__slide css-1vt3f8z enepqhc2 is-active is-visible" id="splide01-slide01" role="tabpanel" aria-roledescription="slide" aria-label="1 of 1">
							<div class="css-122y91a enepqhc4"><img src="https://img.29cm.co.kr/item/202404/11ef043c3b245391b9bbe7fdf10f5149.jpg?width=700" alt="" loading="eager" class="css-12qah06 enepqhc5">
							</div>
						</li>
					</ul>
				</div>
				<div class="splide__arrows css-1mbilhv enepqhc1 splide__arrows--ltr" style="display: none;">
					<button class="splide__arrows splide__arrow--prev enepqhc8 css-uw6dxe e12h9sp60" type="button">
						<svg class="enepqhc10 css-19ilmue e15lsifv0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
							<path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="5"></path>
						</svg>
					</button>
					<button class="splide__arrows splide__arrow--next enepqhc7 css-1l4yul5 e12h9sp60" type="button">
						<svg class="enepqhc9 css-fc0kkr e15lsifv0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
							<path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="5"></path>
						</svg>
					</button>
				</div>
			</div>
		</div>
		<div class="css-3eeht e18uevlq1">
			<div class="css-uz7uc7 ek83fdm0">
				<div class="css-1k84vqv ek83fdm1">
					<div class="css-e9pho6 ek83fdm2">
						<div>
							<div translate="no">
								<a class="css-14q0h0e ek83fdm3" href="https://shop.29cm.co.kr/brand/45003">리얼뱅크시<!-- --> 
									<svg class="ek83fdm4 css-pd2let e15lsifv0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
										<path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#5d5d5d" stroke-width="10"></path>
									</svg>
								</a>
							</div>
							<h2 id="pdp_product_name" class="css-xz8ybi ek83fdm5">[얼리버드] 리얼뱅크시 - Banksy is NOWHERE</h2>
						</div>
						<div class="css-1gyviqy ek83fdm6">
							<button class="e1xxmqg30 css-1qwq84l e12h9sp60" type="button">
								<svg class="css-kglvp1 e1xxmqg31" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 18">
									<path d="M9 6.088C9 3.831 10.791 2 13 2s4 1.83 4 4.088c0 1.743-1.46 3.23-1.46 3.23L9 16 2.46 9.318S1 7.83 1 6.088C1 3.831 2.791 2 5 2s4 1.83 4 4.088z" fill="#ffffff" fill-rule="evenodd" stroke="#5d5d5d" stroke-width="0.7"></path></svg><span class="css-17mseqq e1xxmqg32">찜하기</span></button></div></div><div class="css-lcoy4n ek83fdm7"><div class="css-1rr4qq7 ejuizc30"><p class="css-1bci2fm ejuizc31">15,000</p><div class="css-h6obet ejuizc33"><div><span class="css-1jsmahk ejuizc32">20%</span><span id="pdp_product_price" class="css-4bcxzt ejuizc34">12,000<em class="css-a5v5ts ejuizc35">원</em></span></div><div class="css-1cevk7j ep1otq20"></div></div><p class="css-52zi8k ebobx0d0">120p (1%) 적립</p></div></div></div></div><div class="css-0 easzzdg1"><div class="e1egnq760 css-enxt79 e1tt1b990">
										<div class="css-1n5ilnb e60he1z0">
											<div class="css-7boy05 e60he1z2">
												<div class="css-1eaetqv e60he1z3">
													<div class="css-1ueg5w e60he1z4">
														<h3 class="e60he1z5 css-mmrttp e1q77p0w0" color="primary">나의 구매 가능 가격</h3>
														<div class="css-x1sij0 e1k05gfc0">
															<button class="css-1g7qv4a e1k05gfc1" type="button">
																<svg xmlns="http://www.w3.org/2000/svg" class="css-1udwh3t e60he1z6" width="20" height="20" viewBox="0 0 20 20" fill="none">
																	<path fill-rule="evenodd" clip-rule="evenodd" d="M18.3332 9.99999C18.3332 14.6024 14.6022 18.3333 9.99984 18.3333C5.39746 18.3333 1.6665 14.6024 1.6665 9.99999C1.6665 5.39762 5.39746 1.66666 9.99984 1.66666C14.6022 1.66666 18.3332 5.39762 18.3332 9.99999ZM9.99984 17.5C14.142 17.5 17.4998 14.1421 17.4998 9.99999C17.4998 5.85785 14.142 2.49999 9.99984 2.49999C5.8577 2.49999 2.49984 5.85785 2.49984 9.99999C2.49984 14.1421 5.8577 17.5 9.99984 17.5Z" fill="var(--ruler-scale-color-gray-400)"></path>
																	<path d="M8.98441 12.2742C9.00601 10.6746 9.76938 10.3477 10.7704 9.7287C11.4978 9.27663 11.9227 8.7411 11.9227 7.97606C11.9227 6.94674 11.0873 6.2582 10.0358 6.26515C9.05642 6.2582 8.17782 6.88414 8.12021 8.07343H7.08317C7.13358 6.44598 8.40827 5.41666 10.0358 5.41666C11.7498 5.41666 12.9165 6.51553 12.9165 8.01779C12.9165 9.03321 12.4268 9.74261 11.4762 10.3407C10.5544 10.911 9.99984 11.1753 9.97823 12.2742V12.5107H8.98441V12.2742ZM8.68914 13.846C8.68914 13.4357 9.04202 13.1018 9.46692 13.0949C9.88461 13.1018 10.2303 13.4357 10.2303 13.846C10.2303 14.2494 9.88461 14.5902 9.46692 14.5832C9.04202 14.5902 8.68914 14.2494 8.68914 13.846Z" fill="var(--ruler-scale-color-gray-400)"></path>
																</svg>
																<span class="css-17mseqq e1k05gfc5">툴팁</span>
															</button>
															<div class="css-jtvhsa e1k05gfc3">
																<span class="e1k05gfc4 css-i5lk9o e1q77p0w0" color="secondary">
																	<ul class="css-0 ew8veqf0">
																		<li class="ew8veqf1 css-1gdpno1 e1q77p0w0" color="secondary">
																			<div class="css-38xa9a ew8veqf2">구매 가능 가격은 옵션 한 개의 금액으로 계산됩니다.</div>
																		</li>
																		<li class="ew8veqf1 css-1gdpno1 e1q77p0w0" color="secondary">
																			<div class="css-38xa9a ew8veqf2">구매 가능 가격은 확인 용도로만 사용할 수 있습니다.</div>
																		</li>
																		<li class="ew8veqf1 css-1gdpno1 e1q77p0w0" color="secondary">
																			<div class="css-38xa9a ew8veqf2">상품쿠폰과 장바구니 쿠폰을 중복으로 사용할 수 있습니다. 단, <em>중복 불가 상품 쿠폰의 경우 장바구니 쿠폰과 중복 불가능<em> 합니다. </em></em></div>
																		</li>
																		<li class="ew8veqf1 css-1gdpno1 e1q77p0w0" color="secondary">
																			<div class="css-38xa9a ew8veqf2">장바구니 쿠폰은 상품쿠폰이 사용된 후 가격을 기준으로 추가 할인이 반영됩니다.</div>
																		</li>
																	</ul>
																</span>
															</div>
														</div>
													</div>
													<div class="css-79elbk e1x3va4u0">
														<div class="e60he1z10 css-1otzfd9 e1x3va4u1">카드, 마일리지 추가 할인도 확인하세요</div>
														<button type="button" class="css-10bxcp7 e60he1z7">
															<div class="css-a8kslq e60he1z8">
																<div class="css-zqatfe e60he1z9">
																	<span class="e60he1z12 css-u757q e1q77p0w0" color="tertiary">32%</span>
																	<span class="e60he1z13 css-1kj9qon e1q77p0w0" color="primary">10,200<span class="css-14gt3bc e60he1z14">원</span></span>
																</div>
															</div>
															<svg class="e60he1z11 eobi4ha0 css-1bz6w5x e11s8l6m0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 16">
																<g fill="none" fill-rule="evenodd" stroke="var(--ruler-semantic-color-text-primary)" stroke-width="2">
																	<path d="M28 1L13.97 15 0 1.058"></path>
																</g>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="css-17qwfjj e18fti9d0">
									<h3 class="e18fti9d1 css-a4fgns e1q77p0w0" color="secondary">무이자 할부</h3>
									<div class="css-1slczgn e18fti9d2">
										<button class="css-70qvj9 e18fti9d3">
											<span class="css-x0q8ne e1q77p0w0" color="secondary">카드사별 할부 혜택 안내</span>
											<svg class="css-acbihw e18fti9d4" width="12px" height="15px" viewBox="0 0 12 12">
												<g fill="none" fill-rule="evenodd">
													<path d="M0 0h12v12H0z"></path>
													<path stroke="#a0a0a0" d="m4.5 2.155 3.89 3.889L4.5 9.933"></path>
												</g>
											</svg>
										</button>
									</div>
								</div>
								<div class="css-ozyn3l e18uevlq3">
									<div class="css-129gw94 e1uqcbdd5">
										<div class="css-0 ed3wcbu0">
											<div class="ed3wcbu1 css-1rhyn18 e15gsm0h0">
												<div id="" role="button" class="css-79elbk e15gsm0h3">
												<input class="e15gsm0h1 css-qmbng6 e1u1pays0" placeholder="얼리버드" autocapitalize="none" type="text" readonly="" value="">
													<svg class="e15gsm0h2 css-cs4h3q e11s8l6m0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 16">
														<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="3">
															<path d="M28 1L13.97 15 0 1.058"></path>
														</g>
													</svg>
												</div>
											</div>
										</div>
									</div>
									<div class="css-jna93d e1aklvx10">
										<button id="pdp_shopping_basket" class="e1aklvx11 eh8h1ux0 css-vqh4y e12h9sp60" type="button">장바구니 담기</button>
										<button id="pdp_buy_now" class="e1aklvx12 er7ti0m0 css-103n73x e12h9sp60" type="button">바로 구매하기</button>
									</div>
								</div>
							</div>
						</div>
</div>
</body>
</html>