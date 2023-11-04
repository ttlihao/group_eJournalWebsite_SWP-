/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.group4.ejournal.dao;

import java.io.InputStream;
import java.util.Date;

/**
 *
 * @author Phan Thien
 */
public class PublicationDTO {
    private String publicationID;
    private String userID;
    private String title;
    private String overview;
    private Date releaseDate;
    private String category;
    private boolean isOpenAccess;
    private float price;
    private byte[] coverPage;
    private boolean isApproved;
    private byte[] files;

    public PublicationDTO() {
    }

    public PublicationDTO(String publicationID, String userID, String title, String overview, Date releaseDate, String category, boolean isOpenAccess, float price, byte[] coverPage, boolean isApproved, byte[] files) {
        this.publicationID = publicationID;
        this.userID = userID;
        this.title = title;
        this.overview = overview;
        this.releaseDate = releaseDate;
        this.category = category;
        this.isOpenAccess = isOpenAccess;
        this.price = price;
        this.coverPage = coverPage;
        this.isApproved = isApproved;
        this.files = files;
    }

    
    public String getPublicationID() {
        return publicationID;
    }

    public void setPublicationID(String publicationID) {
        this.publicationID = publicationID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public boolean getIsOpenAccess() {
        return isOpenAccess;
    }

    public void setIsOpenAccess(boolean isOpenAccess) {
        this.isOpenAccess = isOpenAccess;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public byte[] getCoverPage() {
        return coverPage;
    }

    public void setCoverPage(byte[] coverPage) {
        this.coverPage = coverPage;
    }

    public boolean getIsApproved() {
        return isApproved;
    }

    public void setIsApproved(boolean isApproved) {
        this.isApproved = isApproved;
    }

    public byte[] getFiles() {
        return files;
    }

    public void setFiles(byte[] files) {
        this.files = files;
    }
}