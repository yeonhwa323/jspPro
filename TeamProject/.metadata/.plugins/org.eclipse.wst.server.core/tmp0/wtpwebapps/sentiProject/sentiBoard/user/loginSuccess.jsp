<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 성공</title>
    <link rel="shortcut icon" href="http://localhost/sentiProject/images/29.ico">
</head>
<body>
    <script>
        alert('로그인에 성공했습니다.');
        // main.jsp로 리디렉션
        window.location.href = '<c:url value="/sentiBoard/main.jsp"/>';
    </script>
</body>
</html>