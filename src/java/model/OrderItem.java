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
public class OrderItem {
    private int orderItemID;
    private int quantity;
    private double price;
    private int productID;
    private int orderID;

    public OrderItem() {
    }

    
    
    public OrderItem(int orderItemID, int quantity, double price, int productID, int orderID) {
        this.orderItemID = orderItemID;
        this.quantity = quantity;
        this.price = price;
        this.productID = productID;
        this.orderID = orderID;
    }

    public int getOrderItemID() {
        return orderItemID;
    }

    public void setOrderItemID(int orderItemID) {
        this.orderItemID = orderItemID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }
    
    
    
}
