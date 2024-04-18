<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	// JSP ��ũ��Ʈ ���� �� �ϳ�
	// ��ũ��Ʈ�� -- �ڹ� �ڵ�
	Date now = new Date();
	// ��� ���� 2024-04-18 9:48:23
	String pattern = "yyyy-MM-dd hh:mm:ss";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	String strNow = sdf.format(now);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/jspPro/resources/cdn-main/example.css">
<script src="/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>
</head>
<body>
<header>
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">yeon HOme</a></h1>
  <ul>
    <li><a href="#">�α���</a></li>
    <li><a href="#">ȸ������</a></li>
  </ul>
</header>
<h3>
  <span class="material-symbols-outlined">view_list</span> jsp days00
</h3>
<div>
  <xmp class="code">
   <%-- [ jsp�� �ּ�ó��: Ctrl+Shift+ / ] -> html������ �ּ�ó���ϸ� ������
    [JSP ��ũ��Ʈ 3���� ����] -�ϱ��߿�*****
      1) ��ũ��Ʈ�� <% %>
      2) ǥ����		<%= %>
      3) ����		<%! %> 
      
      [JSP 9���� ���� ���]
      1. JSP 3 ������
      	1) page ������		<%@ page %>
      	2) include ������	<%@ include %>
      	3) taglib ������	<%@ taglib %>
    --%>            
  </xmp>  
  
  <!-- ǥ���� <% %> ����ϸ� ��û�Ҷ����� ���������� ��� �ٲ� == �����ڿ�/���� ������-->
  <h3>ex02.jsp(���� �ڿ�) - <%= strNow %></h3>  
  <h3>ex02.jsp(���� �ڿ�) - <span></span></h3>  
  
</div>

<script>
  let now = '<%= strNow%>'; 
  $("h3:last span").html(now);
  
</script>
</body>
</html>