/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.entity;

/**
 *
 * @author student
 */
public class Member {

    private String email;
    private String name;
    private String gender;
    private String mobile;
    private String passwd;

    public Member() {
    }

    public Member(String email, String name, String gender, String mobile, String passwd) {
        this.email = email;
        this.name = name;
        this.gender = gender;
        this.mobile = mobile;
        this.passwd = passwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    
}
