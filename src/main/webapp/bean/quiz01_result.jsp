<%@ page import="com.example.bean.MemberVo2" %><%--
  Created by IntelliJ IDEA.
  User: gsg04
  Date: 2024-01-03
  Time: 오전 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberVo2 vo2 = (MemberVo2) request.getAttribute("vo2");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

아이디 : <%= vo2.getId()%><br/>
비번 : <%= vo2.getPw()%><br/>
주소 : <%= vo2.getAddress()%><br/>
이름 : <%= vo2.getName()%><br/>
<%
    int avg = (Integer.parseInt(vo2.getMath()) + Integer.parseInt(vo2.getKor())) / 2;
    out.println("평균 점수 : " + avg);
%>
</body>
</html>
