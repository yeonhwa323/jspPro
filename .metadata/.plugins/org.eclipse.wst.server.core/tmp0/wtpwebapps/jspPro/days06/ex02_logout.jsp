<%@page import="com.util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>
<%
	// 1) 세션 (즉시!) 강제종료(제거)
	session.invalidate(); 
	// 2) 세션 (대략!) 자동으로 종료 -- 종료시점은 정확하지 않음.
%>
<script>
	alert("<%= logonID %>님 로그아웃하셨습니다.");
	location.href = "ex02_default.jsp";

</script>



