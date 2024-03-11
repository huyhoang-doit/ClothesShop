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
import clothingstore.model.PaymentDTO;

/**
 *
 * @author lvhho
 */
public class PaymentDAO extends DBContext {

    private static final String GET_PAYMENTNAME_BYID = "SELECT * FROM Payments WHERE paymentid = ?";
    private static final String GET_PAYMENTNAME_DATA = "SELECT * FROM Payments";

    public PaymentDTO getPaymentById(int id) throws SQLException {
        PaymentDTO result = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PAYMENTNAME_BYID);
                ptm.setInt(1, id);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String method = rs.getString("payment_method");
                    result = new PaymentDTO(id, method);
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

    public List<PaymentDTO> getPaymentData() throws SQLException {
        List<PaymentDTO> result = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PAYMENTNAME_DATA);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("paymentid");
                    String method = rs.getString("payment_method");
                    PaymentDTO payment = new PaymentDTO(id, method);
                    result.add(payment);
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
    
    public static void main(String[] args) throws SQLException {
        PaymentDAO dao = new PaymentDAO();
        List<PaymentDTO> pms = dao.getPaymentData();
        for (PaymentDTO pm : pms) {
            System.out.println(pm.getPaymentMethod());
            
        }
        
    }
}
