package com.example.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "*.test") // 1. 확장자패턴을 씁니다 ( ~~~~.test로 끝나면 맵핑 )
public class TestController extends HttpServlet {

    // get/ post 요청도 하나로 모은다.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doAction(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doAction(request, response);
    }

    protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 3. URL 주소를 분기 (각 요청별로 코드를 만듬)

        request.setCharacterEncoding("uft-8"); // 앞으로 인코딩 신경 쓸 필요 없어짐 ㅋ

        System.out.println(request.getRequestURI());

//        이것은 앞에 불필요한 컨텍스트패스를 자르는 방법이다.
//        나는 이미 컨텍스트를 / 로 줄여놨기에 필요 없음
//        String path = request.getRequestURI().substring(request.getContextPath().length());

        if (request.getRequestURI().equals("/controller/join.test")) {
            // 회원가입~~~ 처리로직
        } else if (request.getRequestURI().equals("/controller/modify.test")) {
            // 정보수정~~~ 처리 로직
        } else if (request.getRequestURI().equals("/controller/delete.test")) {
            // 회원탈퇴~~~ 요청
        } else if (request.getRequestURI().equals("/controller/logout.test")) {
            // 로그아웃~~~ 처리 로직
        }

        

    }

}