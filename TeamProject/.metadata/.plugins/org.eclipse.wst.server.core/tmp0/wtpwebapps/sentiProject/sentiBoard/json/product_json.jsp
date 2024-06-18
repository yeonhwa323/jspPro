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
System.out.print("product_json()..."); 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String pMedium_ctgr_id = request.getParameter("medium_ctgr_id");

 if(pMedium_ctgr_id == null || pMedium_ctgr_id.equals("")) pMedium_ctgr_id = "21"; 
 /* medium_ctgr_id가 21인 경우만 데이터 값을 가져온다. 이유는 모르겠으나 데이터 전부 넣어보고 한번 더 확인해 봐야겠다. */

int medium_ctgr_id = Integer.parseInt(pMedium_ctgr_id);


String sql = " select brand_name, pd_name, pd_price,pd_image_url,p.pd_id"
			+" from product p"
			+" join brand b on p.brand_Id=b.brand_Id"
			+" join product_image i on p.pd_id=i.pd_id" 
			+" where p.medium_ctgr_id = ? ";

JSONObject jsonData = new JSONObject();
JSONArray jsonEmpArray = new JSONArray();

try{
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, medium_ctgr_id);
    rs = pstmt.executeQuery();

    while(rs.next()){       
        String brand_name = rs.getString("brand_name");
        String pd_name = rs.getString("pd_name");
        int pd_price = rs.getInt("pd_price");
        String pd_image_url = rs.getString("pd_image_url");
        int pd_id = rs.getInt("pd_id");
        
        


        JSONObject jsonProduct = new JSONObject();
        jsonProduct.put("brand_name", brand_name);
        jsonProduct.put("pd_name", pd_name);
        jsonProduct.put("pd_price", pd_price);
        jsonProduct.put("pd_image_url", pd_image_url);
        jsonProduct.put("medium_ctgr_id", medium_ctgr_id);
        jsonProduct.put("pd_id",pd_id);
       
        jsonEmpArray.add(jsonProduct);
    }

    jsonData.put("Product", jsonEmpArray);

} catch(Exception e){
    e.printStackTrace();
} finally{
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

%>
<%= jsonData %>
 