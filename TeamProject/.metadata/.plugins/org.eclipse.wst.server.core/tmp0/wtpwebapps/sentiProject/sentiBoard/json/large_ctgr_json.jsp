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
 System.out.print("large_ctgr_json()...");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String pMain_ctgr_id = request.getParameter("main_ctgr_id");

if(pMain_ctgr_id == null || pMain_ctgr_id.equals("")) pMain_ctgr_id = "1";

int main_ctgr_id = Integer.parseInt(pMain_ctgr_id);

String sql = " SELECT large_ctgr_id, large_ctgr_name, main_ctgr_id"
			+" FROM large_ctgr " 
			+" WHERE main_ctgr_id = ?";


JSONObject jsonData = new JSONObject();
JSONArray jsonEmpArray = new JSONArray();

try{
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, main_ctgr_id);
    rs = pstmt.executeQuery();

    while(rs.next()){
        int large_ctgr_id = rs.getInt("large_ctgr_id");
        String large_ctgr_name = rs.getString("large_ctgr_name");
        

        JSONObject jsonLarge_ctgr = new JSONObject();
        jsonLarge_ctgr.put("large_ctgr_id", large_ctgr_id);
        jsonLarge_ctgr.put("large_ctgr_name", large_ctgr_name);
        jsonLarge_ctgr.put("main_ctgr_id", main_ctgr_id);
       

        jsonEmpArray.add(jsonLarge_ctgr);
    }

    jsonData.put("large_ctgr", jsonEmpArray);

} catch(Exception e){
    e.printStackTrace();
} finally{
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

%>
<%= jsonData %>
 