package com.example.demo;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

// 1. URL맵핑 - 요청에 대해서 클래스를 연결하는 힌트
@WebServlet(name = "apple", value = "/apple") // 클라이언트에서 /apple 요청이 들어오면 이 클래스로 연결
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("서블릿 get 메소드 실행됨");
//        출력을 클라이언트로

        response.setContentType("text/html; charset=UTF-8"); // 내가 보내는 데이터에 대한 타입을 명시
        PrintWriter out = response.getWriter();
        out.println("<b>헬로월드</b>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}