<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
 <%
 System.out.print("small_ctgr_json()...");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String pMedium_ctgr_id = request.getParameter("medium_ctgr_id");

int medium_ctgr_id = Integer.parseInt(pMedium_ctgr_id);
String sql = " SELECT small_ctgr_id, small_ctgr_name, medium_ctgr_id"
			+" FROM small_ctgr" 
			+" WHERE medium_ctgr_id = ?";



JSONObject jsonData = new JSONObject();
JSONArray jsonEmpArray = new JSONArray();

try{
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, medium_ctgr_id);
    rs = pstmt.executeQuery();

    while(rs.next()){
        int small_ctgr_id = rs.getInt("small_ctgr_id");
        String small_ctgr_name = rs.getString("small_ctgr_name");
        

        JSONObject jsonSmall_ctgr = new JSONObject();
        jsonSmall_ctgr.put("small_ctgr_id", small_ctgr_id);
        jsonSmall_ctgr.put("small_ctgr_name", small_ctgr_name);
        jsonSmall_ctgr.put("medium_ctgr_id", medium_ctgr_id);
       

        jsonEmpArray.add(jsonSmall_ctgr);
    }

    jsonData.put("small_ctgr", jsonEmpArray);

} catch(Exception e){
    e.printStackTrace();
} finally{
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

%>
<%= jsonData %>
 