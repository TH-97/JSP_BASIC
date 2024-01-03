package com.example.bean;

public class MemberVo2 {
    private String id;
    private String name;
    private String pw;
    private String address;
    private String kor;
    private String math;

    public MemberVo2() {
        this.id = "잘못된";
        this.name = "잘못된";
        this.address = "잘못된";
        this.kor = "잘못된";
        this.math = "잘못된";
    }

    public MemberVo2(String id, String name, String pw, String address, String kor, String math) {
        this.id = id;
        this.name = name;
        this.pw = pw;
        this.address = address;
        this.kor = kor;
        this.math = math;
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

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getKor() {
        return kor;
    }

    public void setKor(String kor) {
        this.kor = kor;
    }

    public String getMath() {
        return math;
    }

    public void setMath(String math) {
        this.math = math;
    }
}