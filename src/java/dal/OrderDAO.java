/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import Context.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.OrderDTO;
import model.PaymentDTO;
import model.UserDTO;

/**
 *
 * @author HuuThanh
 */
public class OrderDAO extends DBContext {

    private UserDAO uDao = new UserDAO();
    private PaymentDAO pDao = new PaymentDAO();

    private static final String GET_TOTAL_SALE = "SELECT SUM(totalprice) AS TotalSale from [Orders]";
    private static final String GET_TOTAL_MONEY_YEAR = "SELECT SUM(totalprice) AS TotalSale from [Orders] where year([orderdate]) = ? AND Status = 1";
    private static final String GET_TOTAL_MONEY_MONTH = "SELECT SUM(totalprice) AS TotalSale from [Orders] where month([orderdate]) = ? AND Status = 1";
    private static final String GET_NUMBER_ORDERS = "SELECT COUNT(*) AS Total FROM [Orders] WHERE Status = 1";
    private static final String GET_TOTAL_ORDERS = "SELECT * FROM [Orders]";
    private static final String GET_TOTAL_SALE_TODAY = "SELECT sum(totalprice) AS TotalSale FROM [Orders] "
            + " WHERE cast(orderdate as Date) = cast(getdate() as Date)";
    private static final String GET_ORDERS_USER = "SELECT * FROM [Orders] WHERE username = ?";
    private static final String GET_ORDERS_BYID = "SELECT * FROM [Orders] WHERE order_id = ?";
    private static final String GET_RECENT_ORDERS = "SELECT Top 10 * FROM Orders ORDER BY orderdate DESC";

    public double getTotalSale() throws SQLException {
        double result = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_TOTAL_SALE);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    result = rs.getDouble("TotalSale");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return result;
    }

    public double getTotalSaleToday() throws SQLException {
        double result = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_TOTAL_SALE_TODAY);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    result = rs.getDouble("TotalSale");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return result;
    }

    public double getTotalMoneyByYear(int year) throws SQLException {
        double result = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_TOTAL_MONEY_YEAR);
                ptm.setInt(1, year);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    result = rs.getDouble("TotalSale");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return result;
    }

    public double getTotalMoneyByMonth(int month) throws SQLException {
        double result = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_TOTAL_MONEY_MONTH);
                ptm.setInt(1, month);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    result = rs.getDouble("TotalSale");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return result;
    }

    public List<OrderDTO> getRecentOrders() throws SQLException {
        List<OrderDTO> orders = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_RECENT_ORDERS);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int orderId = rs.getInt("order_id");
                    Date orderDate = rs.getDate("orderdate");
                    double totalPrice = rs.getDouble("totalprice");
                    int paymentId = rs.getInt("paymentid");
                    PaymentDTO payment = pDao.getPaymentById(paymentId);
                    int shipmentId = rs.getInt("shipmentid");
                    String userName = rs.getString("username");
                    UserDTO user = uDao.getUserByName(userName);
                    boolean status = rs.getBoolean("status");
                    OrderDTO order = new OrderDTO(orderId, orderDate, totalPrice, payment, shipmentId, user, status);
                    orders.add(order);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return orders;
    }

    public List<OrderDTO> getOrdersByUsername(String userName) throws SQLException {
        List<OrderDTO> orders = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ORDERS_USER);
                ptm.setString(1, userName);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int orderId = rs.getInt("order_id");
                    Date orderDate = rs.getDate("orderdate");
                    double totalPrice = rs.getDouble("totalprice");
                    int paymentId = rs.getInt("paymentid");
                    PaymentDTO payment = pDao.getPaymentById(paymentId);
                    int shipmentId = rs.getInt("shipmentid");
                    boolean status = rs.getBoolean("status");
                    UserDTO user = uDao.getUserByName(userName);
                    OrderDTO order = new OrderDTO(orderId, orderDate, totalPrice, payment, shipmentId, user, status);
                    orders.add(order);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return orders;
    }

    public OrderDTO getOrdersByID(String id) throws SQLException {
        OrderDTO order = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ORDERS_BYID);
                ptm.setString(1, id);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int orderId = rs.getInt("order_id");
                    Date orderDate = rs.getDate("orderdate");
                    double totalPrice = rs.getDouble("totalprice");
                    int paymentId = rs.getInt("paymentid");
                    PaymentDTO payment = pDao.getPaymentById(paymentId);
                    int shipmentId = rs.getInt("shipmentid");
                    boolean status = rs.getBoolean("status");
                    String userName = rs.getString("username");
                    UserDTO user = uDao.getUserByName(userName);
                    order = new OrderDTO(orderId, orderDate, totalPrice, payment, shipmentId, user, status);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return order;
    }

    public int getTotalOrders() throws SQLException {
        int result = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_NUMBER_ORDERS);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    result = rs.getInt("Total");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return result;
    }

    public List<OrderDTO> getAllOrders() throws SQLException {
        List<OrderDTO> orders = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_TOTAL_ORDERS);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int orderId = rs.getInt("order_id");
                    Date orderDate = rs.getDate("orderdate");
                    double totalPrice = rs.getDouble("totalprice");
                    int paymentId = rs.getInt("paymentid");
                    PaymentDTO payment = pDao.getPaymentById(paymentId);
                    int shipmentId = rs.getInt("shipmentid");
                    String userName = rs.getString("username");
                    UserDTO user = uDao.getUserByName(userName);
                    boolean status = rs.getBoolean("status");
                    OrderDTO order = new OrderDTO(orderId, orderDate, totalPrice, payment, shipmentId, user, status);
                    orders.add(order);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return orders;
    }

    public static void main(String[] args) throws SQLException {
        OrderDAO dao = new OrderDAO();
        double list = dao.getTotalOrders();
        
        OrderDTO order = dao.getOrdersByID("1");
        System.out.println(list);
    }
}
