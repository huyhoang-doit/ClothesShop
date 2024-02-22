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
import java.sql.SQLException;
import model.PaymentDTO;

/**
 *
 * @author lvhho
 */
public class PaymentDAO extends DBContext{
    private static final String GET_PAYMENTNAME_BYID = "SELECT * FROM Payments WHERE paymentid = ?";
    
    
    public PaymentDTO getPaymentById (int id) throws SQLException {
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
}
