package com.example.bean;

public class MemberVo {
    // 자바빈 - DB통신과정에서 변수처리를 쉽갛게 위한 데이터를 저장하는 클래스
    // 1. 멤변수는 으닉
    // 2. 생성자는 2개 (기본생성자, 매개변수받는 생성자)
    // 3. getter, setter

    private String id;
    private String name;
    private String email;

    public MemberVo() {
        this.id = "잘못됨";
        this.name = "잘못됨";
        this.email = "잘못됨";
    }

    public MemberVo(String id, String name, String email) {
        this.id = id;
        this.name = name;
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
