<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <title>로그아웃 성공</title>
    <script type="text/javascript">
        function redirectToOriginal() {
            alert("정상적으로 로그아웃 되었습니다.");
            // 원래 페이지 URL로 리디렉션
            var originalURL = '<c:out value="${originalURL}" />';
            window.location.href = originalURL;
        }
        window.onload = redirectToOriginal;
    </script>
</head>
<body>
    <noscript>
        <p>정상적으로 로그아웃 되었습니다. <a href="<c:out value="${originalURL}" />">원래 페이지로 이동</a></p>
    </noscript>
</body>
</html>