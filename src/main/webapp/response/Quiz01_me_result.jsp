<%--
  Created by IntelliJ IDEA.
  User: gsg04
  Date: 2024-01-02
  Time: 오후 10:30
  To change this template use File | Settings | File Templates.
--%>
<%
    String name = request.getParameter("name");
    int kor = Integer.parseInt(request.getParameter("kor"));
    int eng = Integer.parseInt(request.getParameter("eng"));
    int math = Integer.parseInt(request.getParameter("math"));

    double avg = (kor + eng + math) / 3.0;

    if (avg >= 60) {
        response.sendRedirect("quiz01_ok.jsp");
    } else {
        response.sendRedirect("quiz01_no.jsp");
    }
%>