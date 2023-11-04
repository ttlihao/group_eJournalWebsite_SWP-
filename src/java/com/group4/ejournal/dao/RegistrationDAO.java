/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.group4.ejournal.dao;

import com.group4.ejournal.utilities.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Phan Thien
 */
public class RegistrationDAO {
    private static final String CHECK_DUPLICATE="SELECT * FROM UserAccount WHERE UserID=?";
    private static final String INSERT ="INSERT INTO UserAccount(UserID, FullName, Address, Phone, UserName, Password, Email, Birth, RoleID) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    
    public boolean checkDuplicate(String UserID) throws SQLException {
        boolean check=false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn= DBUtil.getConnection();
            if(conn!=null){
                ptm= conn.prepareStatement(CHECK_DUPLICATE);
                ptm.setString(1, UserID);
                rs= ptm.executeQuery();
                if(rs.next()){
                    check=true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return check;
    }

    public boolean insert(RegistrationDTO user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn= DBUtil.getConnection();
            if(conn!=null){
                ptm = conn.prepareStatement(INSERT);
                ptm.setString(1, user.getUserID());
                ptm.setString(2, user.getFullName());
                ptm.setString(3, user.getAddress());
                ptm.setString(4, user.getPhone());
                ptm.setString(5, user.getUserName());
                ptm.setString(6, user.getPassword());
                ptm.setString(7, user.getEmail());
                ptm.setDate(8, user.getBirth());
                ptm.setInt(9, user.getRoleID());

               
                check = ptm.executeUpdate()>0?true:false;
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(ptm != null) ptm.close();
            if(conn!= null) conn.close();
        }
        return check;
        
    }
}
