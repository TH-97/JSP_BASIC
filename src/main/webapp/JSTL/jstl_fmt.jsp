<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: yuntaehun
  Date: 1/4/24
  Time: 10:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h3>fmt모듈</h3>
  formatDAte, parseDAte, formatNumber, parseNumber
  <br>
  parse는 형변환입니다
  format은 출력형식변환
  <hr>
  <c:set var="a" value="<%=new Date()%>"/>

  <fmt:formatDate var="result" value="${a}" pattern="yyyy년MM월dd일"/>
  <fmt:formatDate var="result2" value="${a}" pattern="yyyy-MM-dd HH:mm:ss"/>
  ${result}<br>
  ${result2}

  <h3>parseDate - 문자를 날짜로</h3>
  <fmt:parseDate value="2023-01-04" pattern="yyyy-MM-dd"/>
  <h3>formatNumber - 숫자를 문자로</h3>

  <fmt:formatNumber value="2000" pattern="00,000.00번"/>
  <h3>parseNumber - 문자를 숫자로</h3>
  <fmt:parseNumber value="10000번" pattern="00000번"/>
  <fmt:parseNumber value="3,300원" pattern="0,000원"/>

  <h2>아래값들을 2020년05월03일 형식으로 변경해서 출력</h2>
  <c:set var="TIME_B" value="2020/05/03" />
  <c:set var="TIME_C" value="2020-05-03 21:30:22" />
  <c:set var="TIME_D" value="<%=new Date() %>" />

  <fmt:parseDate var="i" value="${TIME_B}" pattern="yyyy/MM/dd"/>
  <fmt:formatDate value="${i}" pattern="yyyy년MM월dd일"/>
  <br>
  <fmt:parseDate var="j" value="${TIME_C}" pattern="yyyy-MM-dd HH:mm:ss"/>
  <fmt:formatDate value="${j}" pattern="yyyy년MM월dd일 HH:mm:ss"/>
  <br>
  <fmt:formatDate value="${TIME_D}" pattern="yyyy년MM월dd일"/>

</body>
</html>
