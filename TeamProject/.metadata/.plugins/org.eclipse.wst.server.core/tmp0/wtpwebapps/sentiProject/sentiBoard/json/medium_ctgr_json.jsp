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
System.out.print("medium_ctgr_json()...");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String pLarge_ctgr_id = request.getParameter("large_ctgr_id");

int large_ctgr_id = Integer.parseInt(pLarge_ctgr_id);

String sql = " SELECT medium_ctgr_id, medium_ctgr_name, large_ctgr_id"
			+" FROM medium_ctgr" 
			+" WHERE large_ctgr_id = ?";




JSONObject jsonData = new JSONObject();
JSONArray jsonEmpArray = new JSONArray();

try{
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, large_ctgr_id);
    rs = pstmt.executeQuery();

    while(rs.next()){

        int medium_ctgr_id = rs.getInt("medium_ctgr_id");
        String medium_ctgr_name = rs.getString("medium_ctgr_name");
        

        JSONObject jsonMedium_ctgr = new JSONObject();
        jsonMedium_ctgr.put("medium_ctgr_id", medium_ctgr_id);
        jsonMedium_ctgr.put("medium_ctgr_name", medium_ctgr_name);
        jsonMedium_ctgr.put("large_ctgr_id", large_ctgr_id);

       

        jsonEmpArray.add(jsonMedium_ctgr);
    }

    jsonData.put("medium_ctgr", jsonEmpArray);

} catch(Exception e){
    e.printStackTrace();
} finally{
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

%>
<%= jsonData %>
 