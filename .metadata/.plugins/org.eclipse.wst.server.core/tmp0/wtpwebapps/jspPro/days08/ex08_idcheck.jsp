<%@page import="com.util.ConnectionProvider"%>
<%@page import="com.util.JdbcUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page trimDirectiveWhitespaces="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	// 회원 테이블 존재 X 
	// [ emp 테이블의 empno(ID) 중복체크 ]
	// 사용이 가능한 empno(ID)  {"count": 1} 이미 사용중		
	// 							{"count": 0} 사용가능		
	
	String empno = request.getParameter("empno");
	
	String sql = " select count(*) cnt " +
				 " from emp " +
				 " where empno = ? ";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String jsonResult = null;  // {"count": 1}
	
	try{
		conn = ConnectionProvider.getConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, empno);
		rs = pstmt.executeQuery();
		
		rs.next();
		int cnt = rs.getInt("cnt"); // 1, 0
		
		jsonResult = String.format("{\"count\": %d}", cnt );
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
		JdbcUtil.close(conn);
	}
%>
<%= jsonResult %>


