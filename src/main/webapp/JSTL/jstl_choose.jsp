<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<%--	<c:choose>--%>
<%--		<c:when test="${param.name eq '홍길동' }">--%>
<%--			홍길동입니다--%>
<%--		</c:when>--%>
<%--		<c:when test="${param.name eq '이순신' }">--%>
<%--			이순신입니다--%>
<%--		</c:when>--%>
<%--		<c:otherwise>--%>
<%--			홍길동, 이순신이 아닙니다--%>
<%--		</c:otherwise>--%>
<%--	</c:choose>--%>
<%--	--%>
	<!-- 
	choose를 사용해서 90이상이면 A, 80이상이면 B, 나머지는 F
	중첩구문을 사용해서 95점이상일때는 A+, 90~94까지는 A로 출력
	 -->

	<c:choose>
		<c:when test="${param.name == '홍길동'}">

			<h3 style="text-align: center">홍길동입니다</h3><br>
			<c:choose>
				<c:when test="${param.testScores >= 95}">
					A+학점
				</c:when>
				<c:when test="${param.testScores < 95 and param.testScores >= 90}">
					A학점
				</c:when>
				<c:when test="${param.testScores < 90 and param.testScores > 80}">
					B학점
				</c:when>
				<c:otherwise>
					F학점
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:when test="${param.name == '이순신' }">
			<b style="text-align: center">이순신입니다</b>
		</c:when>
		<c:otherwise>
			홍길동, 이순신이 아닙니다
		</c:otherwise>
	</c:choose>

	
</body>
</html>