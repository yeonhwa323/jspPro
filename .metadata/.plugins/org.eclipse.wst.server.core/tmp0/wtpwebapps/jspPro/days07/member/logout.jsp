<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	session.invalidate();
	//session.removeAttribute(name);
	
	String location = "/jspPro/days07/ex07.jsp";  // 로그인 후 메인페이지 이동
	response.sendRedirect(location);

%>