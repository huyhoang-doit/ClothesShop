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
import model.TypeDTO;

/**
 *
 * @author HuuThanh
 */
public class TypeDAO extends DBContext {
    private static final String GET_TYPE_BY_ID = "SELECT * FROM Types WHERE id = ?";
    
    public TypeDTO getTypeById(int id) throws SQLException {
        TypeDTO type = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_TYPE_BY_ID);
                ptm.setInt(1, id);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    int typeid = rs.getInt("id");
                    String name = rs.getString("name");
                    type = new TypeDTO(typeid, name);
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
        return type;
    }
    
    public static void main(String[] args) throws SQLException {
        TypeDAO dao = new TypeDAO();
        TypeDTO list = dao.getTypeById(1);
        System.out.println(list);
    }
}
