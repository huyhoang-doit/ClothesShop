/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author HuuThanh
 */
public class ProductDTO {
    private String productName, description;
    private int stock, unitSold;
    private String[] images, colors, size;
    private Date releasedate;
    private double discount, price;
    private CategoryDTO category;
    private SupplierDTO supplier;

    public ProductDTO() {
    }

    public ProductDTO(String productName, String description, int stock, int unitSold, String[] images, String[] colors, String[] size, Date releasedate, double discount, double price, CategoryDTO category, SupplierDTO supplier) {
        this.productName = productName;
        this.description = description;
        this.stock = stock;
        this.unitSold = unitSold;
        this.images = images;
        this.colors = colors;
        this.size = size;
        this.releasedate = releasedate;
        this.discount = discount;
        this.price = price;
        this.category = category;
        this.supplier = supplier;
    }
    
    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getUnitSold() {
        return unitSold;
    }

    public void setUnitSold(int unitSold) {
        this.unitSold = unitSold;
    }

    public String[] getImages() {
        return images;
    }

    public void setImages(String[] images) {
        this.images = images;
    }

    public String[] getColors() {
        return colors;
    }

    public void setColors(String[] colors) {
        this.colors = colors;
    }

    public String[] getSize() {
        return size;
    }

    public void setSize(String[] size) {
        this.size = size;
    }

    public Date getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Date releasedate) {
        this.releasedate = releasedate;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public CategoryDTO getCategory() {
        return category;
    }

    public void setCategory(CategoryDTO category) {
        this.category = category;
    }

    public SupplierDTO getSupplier() {
        return supplier;
    }

    public void setSupplier(SupplierDTO supplier) {
        this.supplier = supplier;
    }
    
    
}
