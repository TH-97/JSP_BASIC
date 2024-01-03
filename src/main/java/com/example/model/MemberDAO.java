package com.example.model;

public class MemberDAO {

    /*
    *  DAO는 데이터베이스 연결을 처리하는 클래스
    *  불필요하게 요청별로 객체를 여러개 만들 필요가 없어서
    * */

//    1. 나 자신의 1개 객첼르 만든다.
    private static final MemberDAO instance = new MemberDAO();

//    2. 생성자는 private 처리합니다.
    private MemberDAO() {
    }

    public static MemberDAO getInstance() {
        return instance;
    }

//    아래에서 데이터베이스 관련 로직....~~~~~~~~~~~~~~~~

}
