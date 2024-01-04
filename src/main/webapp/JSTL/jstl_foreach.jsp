<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yuntaehun
  Date: 1/4/24
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--  구구단 2단 ~ 9단까지 jstl출력--%>

<c:forEach var="i" begin="2" end="9" step="1">
  <c:forEach var="j" begin="1" end="9" step="1">
    ${i} x ${j} = ${i * j}
  </c:forEach>
  <br>
</c:forEach>
<h3>향상된 for문 item(배열 or 리스트)</h3>
<c:set var="arr" value="<%=new int[] {1,2,3,4,5}%>"/>
<c:forEach var="i" items="${arr}" varStatus="a">
  값:${i}
  인덱스:${a.index}
  카운트:${a.count}
  <br>
</c:forEach>
<hr>
<%
  ArrayList<String> list = new ArrayList<>();
  list.add("홍길동");
  list.add("이순신");
  list.add("홍길자");
  list.add("박찬호");
  request.setAttribute("list",list);
%>
<c:forEach var="i" items="${list}" varStatus="a">
  ${a.count}.${i}<br>
</c:forEach>
</body>
</html>
