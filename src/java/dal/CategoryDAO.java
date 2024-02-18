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
import java.util.ArrayList;
import java.util.List;
import model.CategoryDTO;

/**
 *
 * @author HuuThanh
 */
public class CategoryDAO extends DBContext {

    private static final String GETDATA = "SELECT * FROM Categories";
    private static final String GETCATEGORYBYID = "SELECT * FROM Categories WHERE categoryid = ?";

    public List<CategoryDTO> getData() throws SQLException {
        List<CategoryDTO> categories = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GETDATA);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int categoryId = rs.getInt("categoryid");
                    String categoryName = rs.getString("categoryname");
                    categories.add(new CategoryDTO(categoryId, categoryName));
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
        return categories;
    }
    
    public CategoryDTO getCategoryById(int id) throws SQLException {
        CategoryDTO category = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GETCATEGORYBYID);
                ptm.setInt(1, id);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int categoryId = rs.getInt("categoryid");
                    String categoryName = rs.getString("categoryname");
                    category = new CategoryDTO(categoryId, categoryName);
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
        return category;
    }

    public static void main(String[] args) throws SQLException {
        CategoryDAO dao = new CategoryDAO();
        List<CategoryDTO> list = dao.getData();
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getCategoryName());
        }
    }
}
