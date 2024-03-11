/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.dao;

import clothingstore.utils.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import clothingstore.model.CartItem;
import clothingstore.model.OrderDTO;
import clothingstore.model.OrderItem;
import clothingstore.model.ProductDTO;

/**
 *
 * @author lvhho
 */
public class OrderItemDAO extends DBContext {

    private ProductDAO pDao = new ProductDAO();

    private static final String GET_ORDER_ITEM_BY_ORDER_ID = "SELECT order_id, product_id, SUM(quantity) AS quantity, price FROM OrderItem WHERE order_id = ? GROUP BY order_id, product_id, price";
    private static final String CREATE_NEW_ORDER_ITEM = "INSERT INTO [dbo].[OrderItem]\n"
            + "           ([quantity]\n"
            + "           ,[price]\n"
            + "           ,[product_id]\n"
            + "           ,[order_id])\n"
            + "     VALUES (?,?,?,?)";

    public List<OrderItem> getOrderItemByOrderId(int id) {
        List<OrderItem> list = new ArrayList<>();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ptm = null;
        try {
            con = getConnection();
            if (con != null) {
                ptm = con.prepareStatement(GET_ORDER_ITEM_BY_ORDER_ID);
                ptm.setInt(1, id);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int quantity = rs.getInt("quantity");
                    double price = rs.getDouble("price");
                    int productID = rs.getInt("product_id");
                    ProductDTO product = pDao.getProductByID(productID);
                    int orderID = rs.getInt("order_id");
                    OrderItem order = new OrderItem(quantity, price, product, orderID);
                    list.add(order);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    public boolean createNewOrderDetail(CartItem item, OrderDTO order) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CREATE_NEW_ORDER_ITEM);
                ptm.setInt(1,item.getQuantity());
                ptm.setDouble(2,item.getProduct().getSalePrice());
                ptm.setInt(3, item.getProduct().getId());
                ptm.setInt(4,order.getOrderID());
                ptm.executeUpdate();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return false;
    }

    public static void main(String[] args) {
        OrderItemDAO dao = new OrderItemDAO();
        List<OrderItem> list = dao.getOrderItemByOrderId(1);
        for (OrderItem orderItem : list) {
            System.out.println(orderItem.getProduct().getName());
        }
    }

}
