<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/jspPro/resources/cdn-main/example.css">
<script src="/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>
</head>
<body>

<header>
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">kenik HOme</a></h1>
  <ul>
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
  </ul>
</header>
<h3>
  <span class="material-symbols-outlined">view_list</span> jsp days00
</h3>
<div>
  <xmp class="code">  
  </xmp> 
  <button id="btnDeleteMarkers">delete marker</button>
  <br>  
  <div id="map" style="width: 100%; height: 500px;"></div>
  
</div>

<script>
	//한독빌딩 위도,경도 
	var lat = 37.49935854213284;
	var lng = 127.03320798504977;
	
	var markers = [];
	var customLabel = {//js 객체
			restaurant:{
				label: 'R'
			}
           , bar:{
        	   label: 'B'
           }
	};
	
	function  myMap() {
		// 1. 
		var mapCanvas = document.getElementById("map");
		var myCenter = new google.maps.LatLng(lat, lng); 
		
		var mapOptions = {
			center : myCenter,
			zoom : 15
		};
		var map = new google.maps.Map(mapCanvas, mapOptions);
		
		// 2. ajax 요청 -> _json_data.jsp  -> 지도 위에 마커 표시
		var infoWindow = new google.maps.InfoWindow;
		
		// 3. jquery ajax method :   ajax()
		var params = null;
		
		$.ajax({
			url : "ex02_oracle_json_data.jsp",
			dataType : "json",
			type : "get",
			data : params,
			cache : false,
			success : function(data) { //  []
			// data == [
    		//       		{"id":100,"type":"restaurant","name":"admin","lng":127.03432487024399,"lat":37.49937084987687,"address":"seoul"}
    		//             ,{"id":200,"type":"bar","name":"admin","lng":127.03231042642815,"lat":37.49895800057274,"address":"seoul"}
    		//        ]
				$(data).each(
						function(index, e) {
							// id, type,name, lng,lat,address
							var id = e.id;
							var name = e.name;
							var address = e.address;
							var type = e.type;
							var point = new google.maps.LatLng(
									parseFloat(e.lat), parseFloat(e.lng));

							var infowincontent = $("<div />");
							var strong = $("<strong />").html(name);
					 		infowincontent.append(strong).append($("<br>"));

							var text = document.createElement('text');
							text.textContent = address;
					 		infowincontent.append(text);
					 		
							var icon = customLabel[type] || {};

							var marker = new google.maps.Marker({
								map : map,
								position : point,
								label : icon.label
							});
							
							marker.addListener('click', function() {
								infoWindow.setContent(infowincontent.html());
								infoWindow.open(map, marker);
							}); 
							
							// 모든 마커를 저장했다.
							markers.push(marker);
						}); // each
			}
		}); // ajax 
			
	} // myMap
	
	function placeMarker(map, location) {		 
		marker = new google.maps.Marker({
			position : location,  
			map : map
		});
		// 
		var infowindow = new google.maps.InfoWindow({
			content : 'Latitude: ' + location.lat() + 
			'<br>Longitude: '	+ location.lng()
		});
		infowindow.open(map, marker);
	}
	
	// 5. 
	$("#btnDeleteMarkers").click(function (){
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(null);  // 마커 삭제
		}
	});
</script>
<script async="true" defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMZa_JnX7cpbVL8ouN-ZugjqgPkW_FuxU&callback=myMap"></script>
 
</body>
</html>
 