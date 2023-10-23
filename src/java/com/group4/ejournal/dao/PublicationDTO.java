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
public class PublicationDTO {
    private String PublicationID;
    private String UserID;
    private String Title;
    private String Overview;
    private Date ReleaseDate;
    private String Category;
    private boolean IsOpenAccess;
    private float Price;
    private String CoverPage;

    public PublicationDTO() {
        
    }

    public PublicationDTO(String PublicationID, String UserID, String Title, String Overview, Date ReleaseDate, String Category, boolean IsOpenAccess, float Price, String CoverPage) {
        this.PublicationID = PublicationID;
        this.UserID = UserID;
        this.Title = Title;
        this.Overview = Overview;
        this.ReleaseDate = ReleaseDate;
        this.Category = Category;
        this.IsOpenAccess = IsOpenAccess;
        this.Price = Price;
        this.CoverPage = CoverPage;
    }

    public String getPublicationID() {
        return PublicationID;
    }

    public void setPublicationID(String PublicationID) {
        this.PublicationID = PublicationID;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getOverview() {
        return Overview;
    }

    public void setOverview(String Overview) {
        this.Overview = Overview;
    }

    public Date getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(Date ReleaseDate) {
        this.ReleaseDate = ReleaseDate;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

    public boolean isIsOpenAccess() {
        return IsOpenAccess;
    }

    public void setIsOpenAccess(boolean IsOpenAccess) {
        this.IsOpenAccess = IsOpenAccess;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    public String getCoverPage() {
        return CoverPage;
    }

    public void setCoverPage(String CoverPage) {
        this.CoverPage = CoverPage;
    }
    
    
}
