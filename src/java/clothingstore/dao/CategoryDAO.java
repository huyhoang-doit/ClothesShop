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
import clothingstore.model.CategoryDTO;
import clothingstore.model.TypeDTO;

/**
 *
 * @author HuuThanh
 */
public class CategoryDAO extends DBContext {

    private static final String GETDATA = "SELECT * FROM Categories";
    private static final String GET_QUANTITY_BY_NAME = "SELECT COUNT(*) AS Total FROM Categories WHERE categoryname = ?";
    private static final String GET_CATEGORY_BYID = "SELECT * FROM Categories WHERE categoryid = ?";
    private static final String INSERT_CATEGORY = "INSERT INTO Categories VALUES (?,?)";
    private static final String DELETE_CATEGORY = "DELETE FROM Categories WHERE categoryid = ?";
    private static final String GET_CATEGORY_BY_TYPEID = "SELECT * FROM Categories WHERE type_id = ?";
    private static final String UPDATE_CATEGORY = "UPDATE Categories SET categoryname = ?, Type_id = ? WHERE categoryid = ?";

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
                    TypeDAO dao = new TypeDAO();
                    TypeDTO type = dao.getTypeById(rs.getInt("type_id"));
                    int categoryId = rs.getInt("categoryid");
                    String categoryName = rs.getString("categoryname");
                    int typeid = rs.getInt("type_id");
                    categories.add(new CategoryDTO(categoryId, categoryName, type));
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

    public List<CategoryDTO> getCategoriesByTypeId(int typpid) throws SQLException {
        List<CategoryDTO> categories = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_CATEGORY_BY_TYPEID);
                ptm.setInt(1, typpid);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    TypeDAO dao = new TypeDAO();
                    TypeDTO type = dao.getTypeById(rs.getInt("type_id"));
                    int categoryId = rs.getInt("categoryid");
                    String categoryName = rs.getString("categoryname");
                    int typeid = rs.getInt("type_id");
                    categories.add(new CategoryDTO(categoryId, categoryName, type));
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
                ptm = conn.prepareStatement(GET_CATEGORY_BYID);
                ptm.setInt(1, id);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    TypeDAO dao = new TypeDAO();
                    TypeDTO type = dao.getTypeById(rs.getInt("type_id"));
                    int categoryId = rs.getInt("categoryid");
                    String categoryName = rs.getString("categoryname");
                    int typeid = rs.getInt("type_id");
                    category = new CategoryDTO(categoryId, categoryName, type);
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

    public int getQuantityByName(String name) throws SQLException {
        int quantity = 0;
        CategoryDTO category = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_QUANTITY_BY_NAME);
                ptm.setString(1, name);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    quantity = rs.getInt("Total");
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
        return quantity;
    }

    public boolean insertCategory(String categoryName, String typeId) {
        Connection con = null;
        PreparedStatement ptm = null;
        try {
            con = getConnection();
            if (con != null) {
                ptm = con.prepareStatement(INSERT_CATEGORY);
                ptm.setString(1, categoryName);
                ptm.setString(2, typeId);
                ptm.executeUpdate();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return false;
    }

    public void deleteCategory(String cid) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE_CATEGORY);
                ptm.setString(1, cid);
                ptm.executeUpdate();
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
    }

    public void editCategory(String name, String tId, String id) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_CATEGORY);
                ptm.setString(1, name);
                ptm.setString(2, tId);
                ptm.setString(3, id);
                ptm.executeUpdate();
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
    }

    public static void main(String[] args) throws SQLException {
        CategoryDAO dao = new CategoryDAO();
        dao.editCategory("mimo", "1", "1");
        List<CategoryDTO> list = dao.getData();
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getName());
        }
//        
//        if(dao.insertCategory("ao da")) {
//            System.out.println("OK");
//        }else {
//            System.out.println("FAIL");
//        }
//    List<CategoryDTO> list = dao.getCategoriesByTypeId(1);
        for (CategoryDTO categoryDTO : list) {
            System.out.println(categoryDTO.getName());
        }

        int quantity = dao.getQuantityByName("T-shirt");
        System.out.println(quantity);

    }
}
