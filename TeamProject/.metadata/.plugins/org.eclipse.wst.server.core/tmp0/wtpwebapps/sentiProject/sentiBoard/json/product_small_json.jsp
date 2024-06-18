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
 System.out.print("product_small_json()..."); 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String pSmall_ctgr_id = request.getParameter("small_ctgr_id");


 if(pSmall_ctgr_id == null || pSmall_ctgr_id.equals("")) pSmall_ctgr_id = "0"; 
 
 int small_ctgr_id = Integer.parseInt(pSmall_ctgr_id); 


String sql =" SELECT brand_name, pd_name, pd_price, pd_image_url,p.pd_id"
         +" FROM product p"
         +" JOIN BRAND b ON p.brand_id=b.brand_id"
         +" Join SMALL_CTGR s ON s.small_ctgr_id = p.small_ctgr_id"
         +" JOIN PRODUCT_IMAGE i ON p.pd_id=i.pd_id"
         +" WHERE p.small_ctgr_id = ?";
      
JSONObject jsonData = new JSONObject();
JSONArray jsonEmpArray = new JSONArray();

try{
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
     pstmt.setInt(1, small_ctgr_id); 
    rs = pstmt.executeQuery();

    while(rs.next()){       
        String brandName = rs.getString("brand_name");
        String pdName = rs.getString("pd_name");
        int pdPrice = rs.getInt("pd_price");
        String pdImageUrl = rs.getString("pd_image_url");
        int pd_id = rs.getInt("pd_id");
        
        

        JSONObject jsonProduct_small = new JSONObject();
        jsonProduct_small.put("brand_name", brandName);
        jsonProduct_small.put("pd_name", pdName);
        jsonProduct_small.put("pd_price", pdPrice);
        jsonProduct_small.put("pd_image_url", pdImageUrl);
        jsonProduct_small.put("small_ctgr_id", small_ctgr_id);
        jsonProduct_small.put("pd_id",pd_id);

        jsonEmpArray.add(jsonProduct_small);
    }

    jsonData.put("Product_small", jsonEmpArray);

} catch(Exception e){
    e.printStackTrace();
} finally{
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

%>
<%= jsonData %>
 