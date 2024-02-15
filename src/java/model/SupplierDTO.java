/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author HuuThanh
 */
public class SupplierDTO {
    private int supplierId;
    private String supplierName, image;
    

    public SupplierDTO() {
    }

    public SupplierDTO(int supplierId, String supplierName, String image) {
        this.supplierId = supplierId;
        this.supplierName = supplierName;
        this.image = image;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    

    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(int supplierId) {
        this.supplierId = supplierId;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }
    
    
}
