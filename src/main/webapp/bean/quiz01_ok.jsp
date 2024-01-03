<%@ page import="com.example.bean.MemberVo2" %><%--
  Created by IntelliJ IDEA.
  User: gsg04
  Date: 2024-01-03
  Time: 오전 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String kor = request.getParameter("kor");
    String math = request.getParameter("math");

    // id, name, email 을 자바빈에 저장
    MemberVo2 vo2 = new MemberVo2(id, pw, name, address, kor, math);

    request.setAttribute("vo2", vo2); // 저장

    //
    request.getRequestDispatcher("quiz01_result.jsp").forward(request, response);
%>