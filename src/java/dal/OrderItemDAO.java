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
import model.OrderItem;
import model.ProductDTO;

/**
 *
 * @author lvhho
 */
public class OrderItemDAO extends DBContext{
    private ProductDAO pDao = new ProductDAO();

    private static final String GET_ODERITEM_BY_ORDER_ID= "SELECT * FROM OrderItem WHERE order_id = ?";
    
    public List<OrderItem> getOrderItemByOrderId(int id) {
        List<OrderItem> list = new ArrayList<>();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ptm = null;
        try {
            con = getConnection();
            if(con !=null) {
                ptm= con.prepareStatement(GET_ODERITEM_BY_ORDER_ID);
                ptm.setInt(1, id);
                rs = ptm.executeQuery();
                if(rs.next()) {
                    int orderItemID = rs.getInt("order_item_id");
                    int quantity = rs.getInt("quantity");
                    double price = rs.getDouble("price");
                    int productID = rs.getInt("product_id");
                    ProductDTO product = pDao.getProductByID(productID);
                    int orderID = rs.getInt("order_id");
                    OrderItem order = new OrderItem(orderItemID, quantity, price, product, orderID);
                    list.add(order);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public static void main(String[] args) {
        OrderItemDAO dao = new OrderItemDAO();
        List<OrderItem> list = dao.getOrderItemByOrderId(1);
        for (OrderItem orderItem : list) {
            System.out.println(orderItem.getProduct().getName());
        }
    }

}
