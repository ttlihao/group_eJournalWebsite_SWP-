/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.group4.ejournal.dao;

import java.util.Date;

/**
 *
 * @author Phan Thien
 */
public class UserDTO {
    private String userID;
    private String FullName;
    private String Address;
    private String Phone;
    private String UserName;
    private String Password;
    private String Email;
    private Date Birth;
    private int RoleID;

    public UserDTO() {
    }

    public UserDTO(String userID, String FullName, String Address, String Phone, String UserName, String Password, String Email, Date Birth, int RoleID) {
        this.userID = userID;
        this.FullName = FullName;
        this.Address = Address;
        this.Phone = Phone;
        this.UserName = UserName;
        this.Password = Password;
        this.Email = Email;
        this.Birth = Birth;
        this.RoleID = RoleID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public Date getBirth() {
        return Birth;
    }

    public void setBirth(Date Birth) {
        this.Birth = Birth;
    }

    public int getRoleID() {
        return RoleID;
    }

    public void setRoleID(int RoleID) {
        this.RoleID = RoleID;
    }
    
}
