/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author lvhho
 */
public class WishListDTO {
    private int wishListID;
    private int productID;
    private String userName;

    public WishListDTO() {
    }
    
    public WishListDTO(int wishListID, int productID, String userName) {
        this.wishListID = wishListID;
        this.productID = productID;
        this.userName = userName;
    }

    public int getWishListID() {
        return wishListID;
    }

    public void setWishListID(int wishListID) {
        this.wishListID = wishListID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    
}
