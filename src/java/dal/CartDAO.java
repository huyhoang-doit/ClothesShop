/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.CartDTO;

/**
 *
 * @author lvhho
 */
public class CartDAO extends DBContext {

    private static final String GET_CART_BY_USERNAME = "SELECT * FROM Carts WHERE username = ?";
    private static final String CREATE_CART = "INSERT INTO Carts VALUES (?,?,?)";
    private static final String INSERT_CART = "INSERT INTO Carts VALUES (?,?,?)";

    public boolean createCart(CartDTO cart) {
        Connection con = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            if (con != null) {
                ptm = con.prepareStatement(CREATE_CART);
                ptm.setInt(1, cart.getProductID());
                ptm.setString(2, cart.getUserName());
                ptm.setInt(3, cart.getQuantity());
                int result = ptm.executeUpdate();
                if (result > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return false;
    }

    public List<CartDTO> insertCart(List<CartDTO> list,CartDTO cart) {
        Connection con = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            if (con != null) {
                ptm = con.prepareStatement(INSERT_CART);
                ptm.setInt(1, cart.getProductID());
                ptm.setString(2, cart.getUserName());
                ptm.setInt(3, cart.getQuantity());
                int result = ptm.executeUpdate();
                if (result > 0) {
                    list.add(cart);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<CartDTO> getCartByUserName(String name) {
        List<CartDTO> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            if (con != null) {
                ptm = con.prepareStatement(GET_CART_BY_USERNAME);
                ptm.setString(1, name);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int quantity = rs.getInt("quantity");
                    String userName = name;
                    int product_id = rs.getInt("productid");
                    CartDTO c = new CartDTO(product_id, quantity, userName);
                    list.add(c);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        CartDAO dao = new CartDAO();
        List<CartDTO> list = dao.getCartByUserName("admin");
        for (CartDTO cartDTO : list) {
            System.out.println(cartDTO.getProductID());
        }
    }
}
