/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.model;

/**
 *
 * @author lvhho
 */
public class OrderItem {
    private int quantity;
    private double price;
    private ProductDTO product;
    private int orderID;

    public OrderItem() {
    }

    
    
    public OrderItem(int quantity, double price, ProductDTO product, int orderID) {
        this.quantity = quantity;
        this.price = price;
        this.product = product;
        this.orderID = orderID;
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

    public ProductDTO getProduct() {
        return product;
    }

    public void setProduct(ProductDTO productID) {
        this.product = productID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }
    
    
    
}
