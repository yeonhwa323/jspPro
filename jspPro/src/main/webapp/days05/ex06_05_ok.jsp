<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	Enumeration<String> en = request.getParameterNames();
	while(en.hasMoreElements()){
		 String cname = en.nextElement();
		 String cvalue = request.getParameter(cname);
		 
		 // 새로 쿠키 생성 응답
		 Cookie c = new Cookie(cname, URLEncoder.encode(cvalue, "UTF-8"));
		 c.setMaxAge(-1); 
		 response.addCookie(c);		  
		
		  
	} // while

	 String location = "ex06_03.jsp";
	 response.sendRedirect(location);	

%>