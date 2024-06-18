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
 System.out.print("product_main_json()..."); 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String pLarge_ctgr_id = request.getParameter("large_ctgr_id");

if(pLarge_ctgr_id == null || pLarge_ctgr_id.equals("")) pLarge_ctgr_id = "5";

int large_ctgr_id = Integer.parseInt(pLarge_ctgr_id);

String sql = " select brand_name, pd_name, pd_price, pd_grade,pd_image_url, pd_discount_rate, c.main_ctgr_name"
			+" from product p"
			+" join pd_like l on p.pd_Id=l.pd_id"
			+" join product_grade g on l.pd_id=g.pd_id"
			+" join brand b on p.brand_Id=b.brand_Id"
			+" join product_image i on p.pd_id=i.pd_id"
			+" join LARGE_CTGR c on p.large_ctgr_id = c.large_ctgr_id"
			+" where p.large_ctgr_id = ? ";




JSONObject jsonData = new JSONObject();
JSONArray jsonEmpArray = new JSONArray();

try{
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, large_ctgr_id);
    rs = pstmt.executeQuery();

    while(rs.next()){       
        String brand_name = rs.getString("brand_name");
        String pd_name = rs.getString("pd_name");
        int pd_price = rs.getInt("pd_price");
        int pd_grade = rs.getInt("pd_grade");
        String pd_image_url = rs.getString("pd_image_url");
      	int pd_discount_rate = rs.getInt("pd_discount_rate");
      	String main_ctgr_name = rs.getString("main_ctgr_name");
       
        
        

        JSONObject jsonProduct_main = new JSONObject();
        jsonProduct_main.put("brand_name", brand_name);
        jsonProduct_main.put("pd_name", pd_name);
        jsonProduct_main.put("pd_price", pd_price);
        jsonProduct_main.put("pd_grade", pd_grade);
        jsonProduct_main.put("pd_image_url", pd_image_url);
        jsonProduct_main.put("pd_discount_rate", pd_discount_rate);
        jsonProduct_main.put("main_ctgr_name",main_ctgr_name);
        jsonProduct_main.put("large_ctgr_id", large_ctgr_id);
       

        jsonEmpArray.add(jsonProduct_main);
    }

    jsonData.put("jsonProduct_main", jsonEmpArray);

} catch(Exception e){
    e.printStackTrace();
} finally{
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

%>
<%= jsonData %>
 