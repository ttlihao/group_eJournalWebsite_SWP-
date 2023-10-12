/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.group4.ejournal.dao;

import com.group4.ejournal.dbutility.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Phan Thien
 */
public class UserDAO {
    
    /*    private static final String LOGIN = "SELECT fullName, roleID FROM tblUsers WHERE userID=? AND password=?";

    public UserDTO checkLogin(String email, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, email);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String userID = rs.getString("userID");
                    String fullName = rs.getString("fullName");
                    int RoleID = rs.getInt("RoleID");
                    String Email = rs.getString("Email");
                    String Phone = rs.getString("Phone");
                    String UserName = rs.getString("UserName");
                    String Address = rs.getString("Address");
                    String Password = rs.getString("Password");
                    Date Birth = rs.getDate("Birth");
                    user = new UserDTO(userID, fullName, Address, Phone, UserName, Password, Email, Birth, RoleID);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return user;
    } */
    private Connection conn;

    public UserDAO() throws SQLException, ClassNotFoundException {
        conn = DBUtil.getConnection();
    }

    public boolean validateLogin(String Email, String Password) {
        boolean canLogin = false;

        try {
            PreparedStatement ps = conn.prepareStatement("select * from UserAccount where Email=? and Password=?");
            ps.setString(1, Email);
            ps.setString(2, Password);

            ResultSet rs = ps.executeQuery();
            canLogin = rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return canLogin;
    }

    public UserDTO userSession(String Email) {
        UserDTO user = new UserDTO();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from UserAccount where Email=?");
            ps.setString(1, Email);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user.setUserID(rs.getString("userID"));
                user.setUserName(rs.getString("UserName"));
                user.setPassword(rs.getString("Password"));
                user.setEmail(rs.getString("Email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
