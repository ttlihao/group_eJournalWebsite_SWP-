/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.group4.ejournal.dao;

import com.group4.ejournal.dbutility.DBUtil;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Phan Thien
 */
public class PublicationDAO {
    private static final String CHECK_DUPLICATE="SELECT * FROM Publication WHERE PublicationID=?";
    private static final String INSERT ="INSERT INTO UserAccount(PublicationID, UserID, Title, Overview, ReleaseDate, Category, Price, CoverPage) VALUES (?,?,?,?,?,?,?,?)";
    private static final String SEARCH="SELECT PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage FROM Publication WHERE fullName like ?";
    
    public boolean checkDuplicate(String PublicationID) throws SQLException {
        boolean check=false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn= DBUtil.getConnection();
            if(conn!=null){
                ptm= conn.prepareStatement(CHECK_DUPLICATE);
                ptm.setString(1, PublicationID);
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

    public boolean insert(PublicationDTO publication) throws SQLException, ClassNotFoundException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn= DBUtil.getConnection();
            if(conn!=null){
                ptm = conn.prepareStatement(INSERT);
                ptm.setString(1, publication.getPublicationID());
                ptm.setString(2, publication.getUserID());
                ptm.setString(3, publication.getTitle());
                ptm.setString(4, publication.getOverview());
                ptm.setDate(5, (Date) publication.getReleaseDate());
                ptm.setString(6, publication.getCategory());
                ptm.setDouble(7, publication.getPrice());
                ptm.setString(8, publication.getCoverPage());

               
                check = ptm.executeUpdate()>0?true:false;
                
            }
        } catch (SQLException e) {
            // Handle the exception
            e.printStackTrace();
            throw e;
        }finally{
            if(ptm != null) ptm.close();
            if(conn!= null) conn.close();
        }
        return check;
        
    }
    
    public List<PublicationDTO> getListPublication(String search) throws SQLException{
        List<PublicationDTO> list = new ArrayList<>();
        Connection conn= null;
        PreparedStatement ptm= null;
        ResultSet rs= null;
        try{
            conn= DBUtil.getConnection();
            if(conn!= null){
                ptm= conn.prepareStatement(SEARCH);
                ptm.setString(1, "%"+ search+"%");
                rs= ptm.executeQuery();
                while(rs.next()){
                    String PublicationID= rs.getString("PublicationID");
                    String Title= rs.getString("Title");
                    String UserID= rs.getString("UserID");
                    String Overview= rs.getString("Overview");
                    Date ReleaseDate= rs.getDate("ReleaseDate");
                    String Category= rs.getString("Category");
                    boolean IsOpenAccess= rs.getBoolean("IsOpenAccess");
                    float Price= rs.getFloat("Price");
                    String CoverPage= rs.getString("CoverPage");
                    list.add(new PublicationDTO(PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage));
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs!= null) rs.close();
            if(ptm!= null) ptm.close();
            if(conn!= null) conn.close();
        }
        return list;
    }
}
