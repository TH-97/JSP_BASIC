<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h3>리디렉션 확인하기</h3>

<%--	<form action="ex02.jsp" method="post">--%>
<form action="ex02.jsp" method="post">
    이름:<input type="text" name="name"><br>
    나이:<input type="text" name="age"><br>
    <input type="submit" value="확인">
</form>

</body>
</html>

<%--아래 구문을 실행 할 때, 아직 서밋으로 값을 보내주지 않았기 때문에,
if 문을 넣지 않으면 오류가뜬다.--%>

<%--<%  // 중간에 서블릿을 안넣고 이렇게도 가능한데 왜 굳이 서블릿을 넣을까?--%>
<%--	request.setCharacterEncoding("utf-8");--%>
<%--	String age = request.getParameter("age");--%>
<%--	if (age != null) {--%>
<%--        int result = Integer.parseInt(age);--%>
<%--        if (result >= 20) {--%>
<%--            response.sendRedirect("ex02_ok.jsp");--%>
<%--        } else {--%>
<%--			response.sendRedirect("ex02_no.jsp");--%>
<%--		}--%>
<%--    }--%>
<%--%>--%>