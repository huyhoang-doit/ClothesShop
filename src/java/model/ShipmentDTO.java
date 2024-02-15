/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author lvhho
 */
public class ShipmentDTO {
    private int shipmentID;
    private Date shipmentDate;
    private String userName;
    private String address;
    private String zipcode;

    public ShipmentDTO() {
    }
    
    

    public ShipmentDTO(int shipmentID, Date shipmentDate, String userName, String address, String zipcode) {
        this.shipmentID = shipmentID;
        this.shipmentDate = shipmentDate;
        this.userName = userName;
        this.address = address;
        this.zipcode = zipcode;
    }

    public int getShipmentID() {
        return shipmentID;
    }

    public void setShipmentID(int shipmentID) {
        this.shipmentID = shipmentID;
    }

    public Date getShipmentDate() {
        return shipmentDate;
    }

    public void setShipmentDate(Date shipmentDate) {
        this.shipmentDate = shipmentDate;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }
    
    
    
    
}
