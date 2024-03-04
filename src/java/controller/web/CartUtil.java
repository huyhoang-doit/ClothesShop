/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.web;

import java.util.HashMap;
import model.CartItem;
import model.ProductDTO;

/**
 *
 * @author lvhho
 */
public class CartUtil {

    private static HashMap<Integer, CartItem> listItemsInCart = null;

    public HashMap<Integer, CartItem> createCart(CartItem item) {
        listItemsInCart = new HashMap<>();
        listItemsInCart.put(item.getProduct().getId(), item);
        return listItemsInCart;
    }

    public HashMap<Integer, CartItem> addItemToCart(CartItem item) {
        if (checkItemExist(item.getProduct())) {
            CartItem itemExist = listItemsInCart.get(item.getProduct().getId());
            itemExist.setQuantity(itemExist.getQuantity() + item.getQuantity());
            listItemsInCart.put(itemExist.getProduct().getId(), itemExist);
        } else {
            listItemsInCart.put(item.getProduct().getId(), item);
        }
        return listItemsInCart;
    }

    public boolean checkItemExist(ProductDTO product) {
        for (Integer id : listItemsInCart.keySet()) {
            if (product.getId() == id) {
                return true;
            }
        }
        return false;
    }
    
    public HashMap<Integer,CartItem> removeItem(ProductDTO product) {
        listItemsInCart.remove(product.getId());
        return listItemsInCart;
    }
}
