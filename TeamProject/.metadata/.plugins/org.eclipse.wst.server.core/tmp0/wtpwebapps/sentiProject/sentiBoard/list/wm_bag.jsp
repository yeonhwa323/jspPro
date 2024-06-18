<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="domain.Medium_CtgrVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.Large_CtgrVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

    Connection conn = ConnectionProvider.getConnection();  /* DBconn 사용x ,ConnectionProvider 사용할것. */

    
    PreparedStatement pstmt = null; /*  sql문 사용할 준비 */
    ResultSet rs = null;    	/*  sql로 불러온 결과 집합들을 저장할 공간 */
    String sql = " SELECT medium_ctgr_id, medium_ctgr_name, large_ctgr_id " 
    		+" FROM medium_ctgr"
    		+" where large_ctgr_id='2'";
    
    int medium_ctgr_id = 0;
    String medium_ctgr_name =  null; 
    int large_ctgr_id =0;
    
    Medium_CtgrVO mcvo = null;
    ArrayList<Medium_CtgrVO> mclist = null;
    
    try {
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        
        if( rs.next() ) {
            mclist = new ArrayList<>();
            do {
            	medium_ctgr_id = rs.getInt("medium_ctgr_id");
            	medium_ctgr_name = rs.getString("medium_ctgr_name");
            	large_ctgr_id = rs.getInt("large_ctgr_id");    
                
                mcvo = new Medium_CtgrVO(medium_ctgr_id, medium_ctgr_name, large_ctgr_id);    
                
                mclist.add(mcvo);
            } while (rs.next());                
        } // if 
        
        
    } catch (SQLException e) { 
        e.printStackTrace();
    } finally {
        try {
          
            
            JdbcUtil.close(rs);
            JdbcUtil.close(pstmt);
            JdbcUtil.close(conn);
            /* ConnectionProvider 닫아주는 것, 순서대로 닫아줘야 한다.  */
        } catch (Exception e) { 
        	
        	
            e.printStackTrace();
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
<title>감도 깊은 취향 셀렉트샾 29CM</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<link rel="stylesheet" href="../css/wm_cloth.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- <script src="/jspPro/resources/cdn-main/example.js"></script> -->
</head>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<body>
	<div id="wrap">
		<div id="best-left">
			<button></button>
			<div>
				<h2 class="best_title_left">여성가방</h2>
				<ul class="left-menu">
					 	<%
              Iterator<Medium_CtgrVO> ir = mclist.iterator();
              while (ir.hasNext()) {
              mcvo = ir.next();
         %>
               <li value="<%= mcvo.getMedium_ctgr_id() %>" class="medium_ctgr_id111"> <!-- value값은 밑에서 ajax 처리 할 때 사용하기 위해 지정해준다.  -->
               		<a href="#" class="medium-ctgr"  <%=medium_ctgr_id == mcvo.getMedium_ctgr_id() ? "selected" : "" %>><%= mcvo.getMedium_ctgr_name() %></a>
               </li>  
               
    
    <!-- 각 도메인의 url도 db에 있어야 할거 같음.  -->
		<%
		        } // while
		 %> 
				</ul>
				<!-- </ul> -->
			</div>
		</div>

		<div id="best-right">
			<!-- <h2 class="best_title_right" >여성의류</h2> -->
			<div class="widget">
				<div class="widget-gap">
					<div class="widget-top-btn">
						<div class="widget-top-btn-box">
						
						</div>
					</div>
				</div>
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

			<ul class="photo_list">
				
			</ul>
		</div>
	</div>
<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</body>
<script>
$(".medium_ctgr_id111").on("click", function(){
	  
    let selectedMedium_ctgr_id = $(this).val(); // 선택한 부서번호 가져오기
    $.ajax({
       url: "../json/small_ctgr_json.jsp", 
       dataType: "json",
       type: "GET", 
       data: { medium_ctgr_id: selectedMedium_ctgr_id }, // 선택한 부서번호를 전달
       cache: false,
       success: function(data){
           $(".widget-top-btn-box").empty(); // 테이블 내용 초기화
           $(data.small_ctgr).each(function(index, element){
               // 직원 정보를 테이블에 추가
               $(".widget-top-btn-box").append(`	
              		 
            		   <button class="wm-top-btn">
						<span class="wm-top-btn-click">\${element.small_ctgr_name}</span>
						</button>
						
                             `);
           });
           
          //alert( data.small_ctgr );
       },
       error: function(){
           alert("error");
       }
    });
});

$(".medium_ctgr_id111").on("click", function(){
	   /*medium카테고리를 클릭 했을 떄 해당 카테고리의 상품 전부(All)를 보여주는 코드  */
	  
   let selectedMedium_ctgr_id = $(this).val(); 
   $.ajax({
      url: "../json/product_json.jsp", 
      dataType: "json",
      type: "GET", 
      data: { medium_ctgr_id: selectedMedium_ctgr_id }, 	
      cache: false,
      success: function(data){           	 
           $(".photo_list").empty(); 
          $(data.Product).each(function(index, element){	                     
              $(".photo_list").append(`	
             	<li class="photo1">
  					<div class="cc">
  						<a href="#">
  							<div class="dd">
  								<img alt=""
  									src="\${element.pd_image_url}"
  									class="ff">
  							</div>
  						</a> 
  						<div class="gg">
  							<a class="hh" href="#">\${element.brand_name}</a> <a
  								title="\${element.pd_name}">
  								<div class="j">
  									<h5 class="jj">\${element.pd_name} (10 Color)</h5>
  									<strong class="jjj"></strong>
  									<div class="01">
  										<span class="kkk"></span> <strong class="qqq">\${Number(element.pd_price).toLocaleString()}</strong>
  									</div>
  									<ul class="eee">
  										<li class="yyy"></li>
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
  									<h5 class="jj">좋아요 필요</h5>
  								</button>
  								<a href="#" class="review"> <svg
  										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
  										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
  								<path
  											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
  											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
  											stroke-width="1.5"></path>
  								</svg>
  									<div class="review-point">\${element.pd_grade}</div>
  									<div class="review-count">평점 필요</div>
  								</a>
  							</div>
  						</div>
  					</div>
  				</li>                   		 
                    `);	                     
							 });  //data.small_ctgr		       
         												 
     						 },//success
  			  	  error: function(){
 		      	   alert("error");
    						  }	            	             
					   });
											   });
</script>
<script>
$(document).on('click', '.wm-top-btn', function(){


	 let selectedSmall_ctgr_id = $(this).val(); 
        $.ajax({
           url: "../json/product_small_json.jsp", 
           dataType: "json",
           type: "GET", 
           data: { small_ctgr_id: selectedSmall_ctgr_id }, 
           cache: false,
           success: function(data){           	 
                	$(".photo_list").empty(); 
               $(data.Product_small).each(function(index, element){	                     
                   $(".photo_list").append(`	
                  	<li class="photo1">
       					<div class="cc">
       						<a href="#">
       							<div class="dd">
       								<img alt=""
       									src="\${element.pd_image_url}"
       									class="ff">
       							</div>
       						</a> 
       						<div class="gg">
       							<a class="hh" href="#">\${element.brand_name}</a> <a
       								title="\${element.pd_name}">
       								<div class="j">
       									<h5 class="jj">\${element.pd_name}</h5>
       									<strong class="jjj"></strong>
       									<div class="01">
       										<span class="kkk"></span> <strong class="qqq">\${element.pd_price}</strong>
       									</div>
       									<ul class="eee">
       										<li class="yyy"></li>
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
       									<h5 class="jj">좋아요 갯수 카운팅하는 쿼리문 작성해야함</h5>
       								</button>
       								<a href="#" class="review"> <svg
       										xmlns="http://www.w3.org/2000/svg" width="15" height="15"
       										viewBox="0 0 13 12" class="css-ik4rmz e1f8g7yn1">
       								<path
       											d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z"
       											fill="none" fill-rule="evenodd" stroke="#5d5d5d"
       											stroke-width="1.5"></path>
       								</svg>
       									<div class="review-point">\${element.pd_grade}</div>
       									<div class="review-count">평점 준 사람들 카운팅 하는 쿼리문 필요함</div>
       								</a>
       							</div>
       						</div>
       					</div>
       				</li>                   		 
                         `);	                     
								 });  //data.small_ctgr		       
              												 
          						 },//success
       			  	  error: function(){
      		      	   alert("error");
         						  }	            	             
     					   });
		});
	</script>
</html>
