<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- requestScope는 생략이 가능합니다.--%>

${name}<br>
${vo.id}<br>
${requestScope.vo.name}<br>
${requestScope.vo.email}<br>

<%----%>
${now}
${sessionScope.now}
</body>
</html>