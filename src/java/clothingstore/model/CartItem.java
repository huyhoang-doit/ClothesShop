/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.model;

import clothingstore.model.ProductDTO;

/**
 *
 * @author lvhho
 */
public class CartItem {
    private ProductDTO product;
    private int quantity;

    public CartItem() {
    }

    
    public CartItem(ProductDTO product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }
    
    

    public ProductDTO getProduct() {
        return product;
    }

    public void setProduct(ProductDTO product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return product.getId()+","+quantity+"";
    }
    
    
}
