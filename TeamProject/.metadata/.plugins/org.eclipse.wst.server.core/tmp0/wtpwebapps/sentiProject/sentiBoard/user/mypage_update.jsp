<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    /* padding-inline-start: 40px; */
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


</style>


		<!-- 여기서부터 작업 시작 -->

<style>
@media screen and (min-width:541px){.mypage{min-width:1000px;padding-top:220px}}
@media screen and (max-width:1230px){.mypage{padding-top:200px}}
@media screen and (max-width:540px){.mypage{padding:50px 0 0}}
@media screen and (min-width:541px){.has_banner .mypage, .has_banner .mypage{padding-top:276px}}
@media screen and (max-width:1230px){.has_banner .mypage, .has_banner .mypage{padding-top:256px}}
@media screen and (max-width:540px){.has_banner   .mypage, .has_banner .mypage{padding-top:100px}}
@media screen and (min-width:541px){.header_active .mypage, .header_active .mypage{padding-top:190px}}
@media screen and (max-width:1230px){.header_active .mypage, .header_active .mypage{padding-top:170px}}
@media screen and (max-width:540px){.header_active   .mypage, .header_active      .mypage{padding-top:50px}}
.article_right, .cs_wrap .article_left, .cs_wrap   .article_right{padding-top:0}
@media screen and (min-width:541px){
  .my_wrap{
    display:-webkit-box;
    display:flex
    }
  .article_right{
    -webkit-box-flex:1;flex:1;/* padding-top:190px */
    }
  .article_left{
    -webkit-box-flex:0;flex:none;width:230px;padding:0 50px 0 0
  }
}
@media screen and (max-width:540px){
	.article_left, .my_main_wrap .article_right{display:none}
	.my_main_wrap .article_left{display:block}
	.article_left{width:auto;padding:0 20px}
}

@media screen and (max-width:540px){ruler-gnb .nav-bar{display:none}}
a,button{outline:none}
fieldset{padding:0;border:0}
.blind, legend{overflow:hidden;position:absolute;top:0;left:0;width:1px;height:1px;font-size:1px;line-height:100px;white-space:nowrap}
input::-ms-clear{display:none}
input, textarea{border:0;border-radius:0;background:transparent;-webkit-appearance:none;-moz-appearance:none;appearance:none}
input::-webkit-inner-spin-button, input::-webkit-outer-spin-button{margin:0;-webkit-appearance:none}
textarea{resize:none}
.inpbx{position:relative;height:40px;border:1px solid #d4d4d4;background:#fff;vertical-align:top;box-sizing:border-box}     
.inpbx input{display:block;width:100%;height:100%;padding:0 14px;font-size:15px;color:#1a1a1a;vertical-align:top;border:0;
  background:transparent;outline:none;box-sizing:border-box}
.inpbx input[type=tel]:disabled, .inpbx input[type=text]:disabled{color:#757471;opacity:1}
.inptxtbx textarea{display:block;overflow:auto;width:100%;padding:14px;border:1px solid #ccc;background:transparent;font-size:15px;line-height:20px;color:#1a1a1a;vertical-align:top;outline:none;box-sizing:border-box}     
.btn{display:inline-block;position:relative;text-align:center;vertical-align:top;box-sizing:border-box;outline:none;cursor:pointer}     
.btn_more{display:inline-block;position:relative;padding-right:12px;font-size:14px;color:#303033;line-height:24px}     
.btn_more ruler-svg-icon-next{position:absolute;top:-1px;right:0;width:5px;height:9px;vertical-align:top}     
.btn_bor{display:inline-block;border:1px solid #d4d4d4;border-radius:2px;font-size:12px;color:#5d5d5d;line-height:30px;text-align:center;box-sizing:border-box}     
.btn_black{display:inline-block;min-width:82px;padding:0 17px;border:1px solid #303033;background:#303033;font-size:13px;color:#fff;line-height:38px;box-sizing:border-box}     
.btn_black2, .btn_bor2{display:inline-block;border-radius:2px;font-size:12px;line-height:30px;text-align:center;box-sizing:border-box}     
.btn_bor2{border:1px solid #d4d4d4;color:#5d5d5d}     
.btn_black2{border:1px solid #303033;background:#303033;color:#fff}     
.btn_disabled{border:1px solid #e4e4e4;background:#e4e4e4}     
.my_wrap{position:relative;min-width:900px;max-width:1500px;margin:40px auto 0;padding:0 50px 100px}     
.my_wrap .btn_more{position:absolute;top:7px;right:0;line-height:24px}     
.my_order .order_list_none{border-bottom:1px solid #d4d4d4}     
.order_list_none{height:105px;font-weight:700;font-size:17px}     
.my_list_none, .order_list_none{display:-webkit-box;display:flex;-webkit-box-align:center;align-items:center;-webkit-box-pack:center;justify-content:center}     
.my_list_none{height:65px;font-size:14px;border-top:1px solid #000;border-bottom:1px solid #d4d4d4}
@media screen and (max-width:540px){.my_list_none{height:205px;border:0}}     
.mytit_area{padding-bottom:10px;border-bottom:4px solid #000}     
.mytit_area .tit{font-size:22px;line-height:30px}     
.mytit_area .txt{margin-top:4px;font-size:14px;line-height:26px}     
.my_tit{position:relative;padding-bottom:10px;border-bottom:4px solid #000;font-size:22px;color:#000;line-height:30px;font-weight:500}     
.my_tit span{font-size:13px;line-height:30px}     
.my_tit.nobor{padding:0;border:0}     
.evt_area .dscbx h1{font-weight:700!important;font-size:16px!important;color:#303033!important}     
.my_order_detail{position:relative}     
.my_order_detail .my_step .step{margin-top:87px}     
.detail_ordbx{margin-top:80px}     
.pc_view{display:block}     
.m_view{display:none}
@media screen and (max-width:540px){
	.my_wrap{min-width:0;max-width:100%;margin:0;padding:0}     
	.my_wrap .my_order .btn_more{position:relative;top:auto;right:auto;width:100%;padding:30px 0 0;font-size:20px;font-weight:700}     
	.my_wrap .my_order .btn_more:after{display:inline-block;position:static;width:10px;height:5px;margin:0 0 0 10px;vertical-align:middle}     
	.my_tit, .my_tit.nobor{padding:6px 0 24px;border-bottom:none;font-size:20px;line-height:30px;text-align:center}    
	.my_tit span{display:block;line-height:16px}     
	.my_order_detail .my_step .step{margin-top:0}     
	.detail_ordbx{margin-top:30px;padding:0 20px}       
	.pc_view{display:none}     
	.m_view{display:block}
	}     
</style>



<!--회원정보 수정 제일 중요한 style-->
<style>
.my_modify .my_tit{margin-bottom:20px;border:0}

 
.my_modify .modify_lst li{padding-top:22px;border-top:4px solid #000}
.my_modify .modify_lst li:nth-child(3){border-bottom:1px solid #e4e4e4}
.my_modify .modify_lst li:nth-child(3) .list_wrap{padding:25px 0}
.my_modify .modify_lst li:nth-child(3) p{margin-top:20px;color:#5d5d5d;font-size:13px;line-height:24px}
.my_modify .modify_lst li:nth-child(3) p a{display:none}

.my_modify .modify_lst .list_wrap{padding:20px 0 40px}
.my_modify .modify_lst .lr_wrap{margin-bottom:16px}
.my_modify .modify_lst .modify_l, .my_modify   .modify_lst   .modify_r{
  min-height:30px;
  color:#303033;
  font-size:14px;
  line-height:30px
}
.my_modify .modify_lst .modify_r.no_info{color:#d4d4d4}
.my_modify .user_ly .modify_l{float:left;min-width:60px;padding-right:17px}
.my_modify .user_ly .modify_r{overflow:hidden;min-width:160px;font-weight:500}
.my_modify .user_ly .modify_r:after{display:block;clear:both;content:""}
.my_modify .adress_wrap{padding-top:20px;border-top:1px solid #d4d4d4}
.my_modify .adress_wrap .inpbx{height:48px;max-width:372px;margin-top:10px;border-radius:2px}
.my_modify .adress_wrap .btn_black{
	width:100%;
	height:48px;
	margin-top:20px;
	background:#1d1d1d;
	border-radius:2px;
	font-weight:500;
	font-size:14px;
	line-height:46px;
	text-align:center
}  
.my_modify .adress_wrap .zipbx{max-width:100%}  
.my_modify .adress_wrap .zipbx .bx{
	height:48px!important;
	margin-bottom:8px;
	border-radius:2px;
	color:#303033;
  	font-weight:500;
  	font-size:15px!important;
  	line-height:48px
}  
  	
.my_modify .adress_wrap .zipbx .btn{
width:106px!important;
height:48px!important;
background:#eee;
border:0!important;
font-weight:500}

.adress_ly{max-width:360px}
.adress_ly .modify_r{margin-top:5px}  
.my_modify .adress_wrap .modify_r ruler-svg-icon-del-x{line-height:0}
.my_modify .adress_wrap ui-email{display:block;margin-bottom:10px;padding-bottom:10px}
.my_modify uio-checkbox{margin-right:30px;font-size:14px}
.my_modify .btn_out{
  display:inline-block;
  margin-top:25px;
  color:#303033;
  font-weight:700;
  font-size:14px;
  text-decoration:underline
}

.my_modify .go_nice{
  width:360px;
  height:48px;
  margin-bottom:12px;
  border-radius:2px;
  background:#375fff;
  color:#fff;
  font-weight:500;
  font-size:14px
}

.privacy-agreement{display:-webkit-box;display:flex;-webkit-box-align:center;align-items:center;padding-bottom:20px;border-bottom:1px solid #d4d4d4}
.privacy-agreement uio-checkbox{margin-right:10px;font-weight:700!important;font-size:18px;line-height:22px}
.privacy-agreement a{font-weight:400;font-size:14px;line-height:17px;-webkit-text-decoration-line:underline;-moz-text-decoration-line:underline;text-decoration-line:underline;color:#000}
@media screen and (max-width:540px){
  .my_modify{padding:0 20px 50px}
  .my_modify .my_tit{margin-bottom:10px;font-size:18px}
  .my_modify .modify_lst .list_wrap{padding:20px 0 30px}
  .my_modify .modify_lst li:nth-child(3) .list_wrap{padding:25px 5px 25px 0}
  .my_modify .modify_lst li:nth-child(3) p{margin-top:25px;font-size:14px}
  .my_modify .modify_lst li:nth-child(3) p a{
    display:block;
    margin-top:5px;
    font-weight:600;
    color:#375fff;
    text-decoration:underline
  }
.adress_ly{max-width:100%}
.my_modify .go_nice{width:100%}
.my_modify uio-checkbox{margin-right:40px}
}  

button {
    border: 0;
    background: transparent;
    cursor: pointer;
}

</style>


<!-- 로그인 정보 여백 -->
<style> 
.list_wrap{padding:28px 0 35px}
.lr_wrap{position:relative;max-width:360px;margin-bottom:14px}
.modify_l, .modify_r{font-size:14px}
.modify_l{color:#303033}
.modify_r{position:relative;padding:7px 0 15px;color:#000}
.modify_r i{
  display:inline-block;
  width:8px;
  height:8px;
  border-radius:50%;
  background:#303033;
  margin-right:6px
}
.btnbx{display:-webkit-box;display:flex}
.btnbx button + button{margin-left:8px}
.btn_mo{
  position:absolute;
  top:-15px;
  right:0;
  min-width:88px;
  height:48px;
  border:1px solid #d4d4d4;
  border-radius:2px;
  color:#1d1d1d;font-weight:600;font-size:12px;line-height:48px}

 
.edit_wrap .inpbx{width:100%;height:48px;margin-bottom:8px;border-radius:2px}
.edit_wrap .inpbx input[type=text]:disabled{color:#303033;font-weight:600}
.edit_wrap .inpbx.focus_on{border:1px solid #000}
.edit_wrap .inpbx input::-webkit-input-placeholder{color:#c4c4c4;font-size:14px}
.edit_wrap .inpbx input::-moz-placeholder{color:#c4c4c4;font-size:14px}
.edit_wrap .inpbx input:-ms-input-placeholder{color:#c4c4c4;font-size:14px}
.edit_wrap .inpbx input:-moz-placeholder{color:#c4c4c4;font-size:14px}
.edit_wrap .inpbx label{display:none}
.edit_wrap .err{margin-bottom:8px;color:#ff4800;font-size:12px;line-height:22px}
.edit_wrap .btn_mo{position:static;width:50%;vertical-align:bottom}
.edit_wrap .btn_black{width:50%;height:48px;background:#1d1d1d;border-radius:2px;vertical-align:bottom}.sns_wrap{max-width:100%;padding-top:28px}
.sns_wrap p{margin:15px 0 20px;font-size:14px;color:#5d5d5d}
.sns_wrap .modify_r{overflow:hidden;padding:0}
@media screen and (max-width:540px){.lr_wrap{max-width:100%}
.modify_r{padding:10px 0 15px}}
.dialog_btn_bor, ruler-message-dialog{text-align:center}
.dialog_btn_bor{display:inline-block;width:161px;margin-top:24px;border:1px solid #d4d4d4;
  border-radius:2px;font-size:14px;color:#5d5d5d;line-height:40px;box-sizing:border-box}



</style>


<!-- 우편번호 검색 입력폼 -->
<style> 
.zipbx{
  display:flex;
  line-height:40px
}
.zipbx .bx{flex:1;height:40px;border:1px solid #d4d4d4;padding:0 12px;font-size:14px;color:#303033;font-weight:500}
.zipbx .btn{width:102px;height:42px;margin-left:8px;background:#f4f4f4;font-size:12px;color:#303033;text-align:center}
</style>



<!-- 주소/상세주소, 체크박스 -->
<style>
input{
  overflow:hidden;
  position:absolute;
  top:2px;left:2px;
  z-index:-1;
  width:1px;
  height:1px;
  border:0;
  background:transparent;
  visibility:hidden;
  -webkit-appearance:none;
  -moz-appearance:none;
  appearance:none
}  

input:checked + label{font-weight:600}
input:checked + label:before{border-color:#375fff;background-color:#375fff}   
input:disabled + label{color:#d4d4d4;cursor:default}   
input:disabled + label:before{border-color:#e4e4e4;background-color:#e4e4e4}   
input:disabled + label:after{display:none}   
input:checked + label:after, input:disabled + label:after{border-color:#fff}    

/* 주소 정보 입력 폼 */
label{
  display:inline-block;
  position:relative;
  z-index:10;
  color:#303033;
  box-sizing:border-box;
  cursor:pointer;
  vertical-align:top;
  padding-left:29px
}   

label:before{
  position:absolute;
  top:0;
  left:0;
  background-color:#fff;
  border:1px solid #d4d4d4;
  border-radius:2px;
  text-align:center;
  box-sizing:border-box;
  content:"";
  width:20px;
  height:20px;
  transition:background-color .2s}   
  
label:after{
    position:absolute;
    border:1px solid #d4d4d4;
    border-width:0 1px 1px 0;
    transform:rotate(45deg);
    content:"";
    top:3px;
    left:7px;
    width:5px;
    height:10px
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

/*   
@media screen and (min-width:541px){.checkbox-cart{line-height:24px}
  .checkbox-cart label{padding-left:24px}
  .checkbox-cart label:before{width:24px;height:24px}
  .checkbox-cart label:after{top:4px;left:8px;width:6px;height:12px}
}
@media screen and (max-width:540px){.checkbox-cart{font-size:13px}}
.checkbox-return, .checkbox-return label{position:absolute;top:0;right:0;bottom:0;left:0}
.checkbox-return label{display:block;z-index:20;padding-left:0}
@media screen and (min-width:541px){
  .checkbox-return input::-ms-check{display:none}
  .checkbox-return label:before{top:50%;margin-top:-12px;width:24px;height:24px}
  .checkbox-return label:after{top:50%;left:8px;margin-top:-8px;width:6px;height:12px}
}
 */

/* 
@media screen and (max-width:540px){.checkbox-return{top:-32px}}
.checkbox-drop{display:block;width:100%}
.checkbox-drop label{width:100%;font-size:13px}
.checkbox-join{font-size:14px;line-height:26px}
.checkbox-join label{padding:5px 0 5px 26px}
.checkbox-join label:before{display:none}
.checkbox-join label:after{top:50%;left:6px;width:6px;height:11px;margin-top:-8px}
.checkbox-join input:checked + label:after{border-color:#375fff} 
*/

</style> 



<!-- sns연결 버튼 -->
<style>
.sns_btn{float:left}
.sns_btn a{display:inline-block;width:44px;height:44px;margin-right:16px;border-radius:50%;background:url(https://img.29cm.co.kr/next29cm/myedit_sns_icon_mo.png) no-repeat;background-size:191px 93px;background-position:-98px 0}
.sns_btn a.on{background-position:-98px -49px}
.dialog_btn_bor, ruler-message-dialog{text-align:center}
.dialog_btn_bor{display:inline-block;width:161px;margin-top:24px;border:1px solid #d4d4d4;border-radius:2px;font-size:14px;color:#5d5d5d;line-height:40px;box-sizing:border-box}
</style>


<!-- 
<style>
.sns_naver a{background-position:0 0}
.sns_naver a.on{background-position:0 -49px}
  <style>
    .sns_btn{float:left}
    .sns_btn a{
      display:inline-block;
      width:44px;
      height:44px;
      margin-right:16px;
      border-radius:50%;
      background:url(https://img.29cm.co.kr/next29cm/myedit_sns_icon_mo.png) no-repeat;
      background-size:191px 93px;background-position:-98px 0
    }
      .sns_btn a.on{background-position:-98px -49px}
      .dialog_btn_bor, ruler-message-dialog{text-align:center}
      .dialog_btn_bor{
        display:inline-block;
        width:161px;
        margin-top:24px;
        border:1px solid #d4d4d4;
        border-radius:2px;
        font-size:14px;
        color:#5d5d5d;
        line-height:40px;
        box-sizing:border-box
      }
  </style>
</style>
 -->


<!-- 
  <style>
.sns_btn{float:left}
.sns_btn a{
  display:inline-block;
  width:44px;
  height:44px;
  margin-right:16px;
  border-radius:50%;
  background:url(https://img.29cm.co.kr/next29cm/myedit_sns_icon_mo.png) no-repeat;
  background-size:191px 93px;background-position:-98px 0}
.sns_btn a.on{background-position:-98px -49px}
.dialog_btn_bor, ruler-message-dialog{text-align:center}
.dialog_btn_bor{
  display:inline-block;
  width:161px;
  margin-top:24px;
  border:1px solid #d4d4d4;
  border-radius:2px;font-size:14px;color:#5d5d5d;line-height:40px;box-sizing:border-box}
</style> 
-->


<!-- SNS 연결 카카오버튼 -->
<style>
.sns_kakao a{background-position:-49px 0}
.sns_kakao a.on{background-position:-49px -49px}
</style> 


<!-- SNS 연결 애플버튼 -->
<style>
.sns_apple a{background-position:-147px 0}
.sns_apple a.on{background-position:-147px -49px}
</style>


<style>
  .mid-div {
      position: relative;
  }
  
  footer {
      position: absolute;
      width: 100%;
      top: 800px;
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
						<li class="service-li">
						  <a class="service-a" href="#">1:1문의내역</a>
						</li>
						<li class="service-li">
						  <a class="service-a" href="#">상품Q&A내역</a>
						</li>
						<li class="service-li">
						  <a class="service-a" href="#">공지사항</a>
						</li>
						<li class="service-li">
						  <a class="service-a" href="#">FAQ</a>
						</li>
						<li class="service-li">
						  <a class="service-a" href="#">고객의소리</a>
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

			<div class="article_right">
				<section class="my_modify">
					<h3 class="my_tit">회원정보 수정</h3>
					<fieldset>
						<legend>회원정보 수정 양식 작성</legend>
						<ul class="modify_lst">
							<li>
								<h4>로그인 정보</h4>
								<div class="list_wrap">
									<div class="lr_wrap sns_wrap">
										<div class="modify_l">SNS 연결</div>
										<p>연결된 SNS 계정으로 로그인할 수 있습니다.</p>

										<div class="modify_r">
											<ui-sns-info> <sns-naver>
											<div class="sns_btn sns_naver">
												<a href="javascript:void(0)" class="ng-star-inserted"></a>
											</div>
											<div id="naverIdLogin" style="display: none;">
												<a id="naverIdLogin_loginButton" href="#"> 
												<img
													src="https://static.nid.naver.com/oauth/big_w.PNG?version=js-2.0.0"
													height="50">
												</a>
											</div>
											</sns-naver> <sns-kakao>
											<div class="sns_btn sns_kakao">
												<a href="javascript:void(0)" class="on ng-star-inserted"></a>
											</div>
											</sns-kakao>

											<div class="sns_btn">
												<a href="javascript:void(0);" class="ng-star-inserted"></a>
											</div>

											<sns-apple>
											<div class="sns_btn sns_apple">
												<a href="javascript:void(0);" class="ng-star-inserted"></a>
											</div>
											</sns-apple> </ui-sns-info>
										</div>
										<!-- .modify_r div 태그 -->

									</div>
								</div> <!-- list_wrap div 태그 -->
							</li>
							<!-- modify_lst li태그 //1// -->

							<li>
								<h4>회원 정보</h4>
								<div class="list_wrap">
									<div class="user_ly">
										<div class="lr_wrap">
											<div class="modify_l">성명</div>
											<div class="modify_r">
												<div class="modify_r">유*</div>
											</div>
										</div>
										<div class="lr_wrap">
											<div class="modify_l">연락처</div>
											<div class="modify_r">010-****-5678</div>
										</div>
									</div>
									<div class="lr_wrap">
										<button type="button" class="go_nice">본인인증으로 정보 수정하기</button>
									</div>
									<div class="lr_wrap adress_wrap">
										<div class="adress_ly">
											<div class="modify_l">이메일</div>
											<div class="modify_r">
												<span class="ng-star-inserted">yu******@****.com</span>
												<button type="button" class="btn_mo ng-star-inserted">변경</button>
											</div>
											<!---->
											<div class="modify_l">주소 정보</div>
											<div class="modify_r">
												<div class="zipbx">
													<div class="bx"></div>
													<button class="btn">우편번호 검색</button>
												</div>
												<div class="inpbx">
													<input type="text" title="주소 입력" placeholder="주소" isabled="" 	class="ng-untouched ng-pristine">
												</div>
												<div class="inpbx">
													<input type="text" 
															title="주소 상세입력"
															placeholder="상세주소"
															class="ng-untouched ng-pristine ng-valid">
												</div>
												<a href="javascript:void(0);" class="btn_black">저장하기</a>
											</div>
										</div>
									</div>
								</div>
							</li>
							<!-- modify_lst li태그 //2// -->
							<li>
								<div class="privacy-agreement">
									<input type="checkbox" value="undefined"> 
									<label
										title="(선택) 개인정보 수집 및 이용 동의">(선택)개인정보 수집 및 이용 동의</label> 
										<a href="https://29cm.co.kr/home/marketing" target="_blank">보기</a>
								</div>
								<div class="list_wrap">
									<uio-checkbox>
									<input type="checkbox" value="undefined">
									<label title="문자메시지">문자메시지</label> 
									</uio-checkbox>
									
									<uio-checkbox>
									<input type="checkbox" value="undefined">
									<label title="이메일">이메일</label> 
									</uio-checkbox>
									<p>
										서비스의 중요 안내사항 및 주문/배송에 대한 정보는 위 수신 여부와 관계없이 발송됩니다.<br> 
										앱 푸시 알림은 29CM 앱 로그인 &gt; MY &gt;
										설정 &gt; 쇼핑알림에서 알림을 끌 수 있습니다.

										<!---->
									</p>
								</div>
							</li>
							<!-- modify_lst li태그 //3// -->
							<a href="javascript:void(0);" class="btn_out">회원탈퇴하기</a>
					</fieldset>




				</section>
				<!-- my_modify section 태그 -->
			</div>
		</div>


<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>


</body>
</html>