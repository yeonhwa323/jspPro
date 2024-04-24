<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 새로운 쿠키 생성 작업 + setMaxAge(0) -->
<!-- ex06_04.jsp?ckbCookie=name&ckbCookie=age -->
<%
	String [] delCookieNames = request.getParameterValues("ckbCookie");
	for(int i=0; i < delCookieNames.length; i++){
		String cname = delCookieNames[i];
		String cvalue = "";
		Cookie c = new Cookie(cname, cvalue);
		c.setMaxAge(0);
		response.addCookie(c);
	}// for
%>

<script>
	alert("쿠키 삭제 완료!!!");
	location.href = "ex06_03.jsp";
	
</script>
