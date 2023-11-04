/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.group4.ejournal.dao;

import com.group4.ejournal.utilities.DBUtil;
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

    public PublicationDAO() {
    }
    

    private static final String CHECK_DUPLICATE = "SELECT * FROM Publication WHERE PublicationID=?";
    private static final String INSERT = "INSERT INTO Publication (PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, isApproved, files) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String GET_PUBLICATION = "SELECT * FROM PUBLICATION";
    private static final String SEARCH = "SELECT * WHERE PublicationID=?";

    public boolean checkDuplicate(String PublicationID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_DUPLICATE);
                ptm.setString(1, PublicationID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    check = true;
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
        return check;
    }

    public boolean insert(PublicationDTO publication) throws SQLException, ClassNotFoundException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtil.getConnection();
            if (conn != null) {
                conn.prepareStatement(INSERT);
                ptm.setString(1, publication.getPublicationID());
                ptm.setString(2, publication.getUserID());
                ptm.setString(3, publication.getTitle());
                ptm.setString(4, publication.getOverview());
                ptm.setDate(5, new java.sql.Date(publication.getReleaseDate().getTime()));
                ptm.setString(6, publication.getCategory());
                ptm.setBoolean(7, publication.getIsOpenAccess());
                ptm.setFloat(8, publication.getPrice());
                ptm.setBytes(9, publication.getCoverPage());
                ptm.setBoolean(10, publication.getIsApproved());
                ptm.setBytes(11, publication.getFiles());

                check = ptm.executeUpdate() > 0 ? true : false;

            }
        } catch (SQLException e) {
            // Handle the exception
            e.printStackTrace();
            throw e;
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;

    }

    public List<PublicationDTO> getListPublication() throws SQLException {
        List<PublicationDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PUBLICATION);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String PublicationID = rs.getString("PublicationID");
                    String Title = rs.getString("Title");
                    String UserID = rs.getString("UserID");
                    String Overview = rs.getString("Overview");
                    Date ReleaseDate = rs.getDate("ReleaseDate");
                    String Category = rs.getString("Category");
                    boolean IsOpenAccess = rs.getBoolean("isOpenAccess");
                    float Price = rs.getFloat("Price");
                    byte[] CoverPage = rs.getBytes("CoverPage");
                    boolean IsApproved = rs.getBoolean("isApproved");
                    byte[] Files = rs.getBytes("files");
                    list.add(new PublicationDTO(PublicationID, UserID, Title, Overview, ReleaseDate, Category, IsOpenAccess, Price, CoverPage, IsApproved, Files));
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
        return list;
    }


    public static PublicationDTO getPublication(String id) throws SQLException {
        PublicationDTO publication = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH);
                ptm.setString(1, id);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    publication = new PublicationDTO();
                    publication.setPublicationID(rs.getString("PublicationID"));
                    publication.setUserID(rs.getString("UserID"));
                    publication.setTitle(rs.getString("Title"));
                    publication.setOverview(rs.getString("Overview"));
                    publication.setReleaseDate(rs.getDate("ReleaseDate"));
                    publication.setCategory(rs.getString("Category"));
                    publication.setIsOpenAccess(rs.getBoolean("IsOpenAccess"));
                    publication.setPrice(rs.getFloat("Price"));
                    publication.setCoverPage(rs.getBytes("CoverPage"));
                    publication.setIsApproved(rs.getBoolean("isApproved"));
                    publication.setFiles(rs.getBytes("files"));
                    return publication;
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
        return publication;
    }
}
