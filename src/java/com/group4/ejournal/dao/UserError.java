/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.group4.ejournal.dao;

import java.sql.Date;
/**
 *
 * @author ☢ minhuy ☣
 */
public class UserError {
    private String UserIDError;
    private String FullNameError;
    private String AddressError;
    private String PhoneError;
    private String UserNameError;
    private String PasswordError;
    private String EmailError;
    private String BirthError;
    private String RoleIDError;
    private String confirmError;
    private String error;
    public UserError() {
    }

    public UserError(String UserIDError, String FullNameError, String AddressError, String PhoneError, String UserNameError, String PasswordError, String EmailError, String BirthError, String RoleIDError, String confirmError, String error) {
        this.UserIDError = UserIDError;
        this.FullNameError = FullNameError;
        this.AddressError = AddressError;
        this.PhoneError = PhoneError;
        this.UserNameError = UserNameError;
        this.PasswordError = PasswordError;
        this.EmailError = EmailError;
        this.BirthError = BirthError;
        this.RoleIDError = RoleIDError;
        this.confirmError = confirmError;
        this.error = error;
    }

    

    public String getUserIDError() {
        return UserIDError;
    }

    public void setUserIDError(String UserIDError) {
        this.UserIDError = UserIDError;
    }

    public String getFullNameError() {
        return FullNameError;
    }

    public void setFullNameError(String FullNameError) {
        this.FullNameError = FullNameError;
    }

    public String getAddressError() {
        return AddressError;
    }

    public void setAddressError(String AddressError) {
        this.AddressError = AddressError;
    }

    public String getPhoneError() {
        return PhoneError;
    }

    public void setPhoneError(String PhoneError) {
        this.PhoneError = PhoneError;
    }

    public String getUserNameError() {
        return UserNameError;
    }

    public void setUserNameError(String UserNameError) {
        this.UserNameError = UserNameError;
    }

    public String getPasswordError() {
        return PasswordError;
    }

    public void setPasswordError(String PasswordError) {
        this.PasswordError = PasswordError;
    }

    public String getEmailError() {
        return EmailError;
    }

    public void setEmailError(String EmailError) {
        this.EmailError = EmailError;
    }

    public String getBirthError() {
        return BirthError;
    }

    public void setBirthError(String BirthError) {
        this.BirthError = BirthError;
    }

    public String getRoleIDError() {
        return RoleIDError;
    }

    public void setRoleIDError(String RoleIDError) {
        this.RoleIDError = RoleIDError;
    }

    public String getConfirmError() {
        return confirmError;
    }

    public void setConfirmError(String confirmError) {
        this.confirmError = confirmError;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    
    
    
}
