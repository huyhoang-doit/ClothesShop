/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.web;

import java.util.HashMap;
import model.ProductDTO;

/**
 *
 * @author lvhho
 */
public class WishlistUtil {
    private static HashMap<Integer, ProductDTO> listItemsInWishlist = null;

    public HashMap<Integer, ProductDTO> createWishlist(ProductDTO item) {
        listItemsInWishlist = new HashMap<>();
        listItemsInWishlist.put(item.getId(), item);
        return listItemsInWishlist;
    }

    public HashMap<Integer, ProductDTO> addItemToWishlist(ProductDTO item) {
        if (!checkItemExist(item)) {
            listItemsInWishlist.put(item.getId(), item);
        }
        return listItemsInWishlist;
    }

    public boolean checkItemExist(ProductDTO product) {
        for (Integer id : listItemsInWishlist.keySet()) {
            if (product.getId() == id) {
                return true;
            }
        }
        return false;
    }
    
    public HashMap<Integer,ProductDTO> removeItem(ProductDTO product) {
        listItemsInWishlist.remove(product.getId());
        return listItemsInWishlist;
    }
}
