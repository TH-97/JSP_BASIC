<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--/*--%>
<%--1. 폼태그를 처리할 수 있는 bean을 선언합니다.--%>
<%--2. 폼값을 받아서 평균과 총점을 구합니다.--%>
<%--3. quiz01_result페이지로 이동해서--%>
<%--학생정보와 평균, 총점을 모두 출력하세요.--%>

<%--조건: session (x)--%>
<%--*/--%>

	<form action="quiz01_ok.jsp" method="post">
		아이디:<input type="text" name="id"><br>
		비밀번호:<input type="password" name="pw"><br>
		이름:<input type="text" name="name"><br>
		주소:<input type="text" name="address"><br>
		국어:<input type="text" name="kor"><br>
		수학:<input type="text" name="math"><br>	
		<input type="submit" value="확인">
	</form>
	
</body>
</html>