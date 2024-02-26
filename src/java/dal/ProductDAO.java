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
import model.CategoryDTO;
import model.ProductDTO;
import model.SupplierDTO;
import model.TypeDTO;

/**
 *
 * @author HuuThanh
 */
public class ProductDAO extends DBContext {

    private static final String GET_DATA = "SELECT * FROM Products";
    private static final String GET_TOTAL_PRODUCTS = "SELECT COUNT(*) AS Total FROM Products";
    private static final String GET_QUANTITY_SOLD = "SELECT SUM(unitSold) AS Total from Products";
    private static final String GET_PRODUCTS_LOW_QUANTITY = "SELECT COUNT(*) AS Total from Products WHERE Stock < 10";
    private static final String GET_PRODUCTS_BY_ID = "SELECT * FROM Products WHERE id = ?";
    private static final String GET_PRODUCTS_NEW_YEAR = "SELECT * from Products WHERE year(releasedate) = 2024";
    private static final String GET_PRODUCTS_BEST_SELLER = "SELECT TOP(5) * from Products order by unitSold desc";
    private static final String GET_PRODUCTS_BY_SEARCH = "SELECT * FROM Products WHERE productname LIKE ?";

    public List<ProductDTO> getData() throws SQLException {
        List<ProductDTO> products = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_DATA);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    CategoryDAO cDao = new CategoryDAO();
                    SupplierDAO sDao = new SupplierDAO();
                    TypeDAO tDao = new TypeDAO();
                    String productname = rs.getString("productname");
                    int id = rs.getInt("id");
                    SupplierDTO supplier = sDao.getSupplierById(rs.getInt("supplierid"));
                    CategoryDTO category = cDao.getCategoryById(rs.getInt("categoryid"));
                    TypeDTO type = tDao.getTypeById(rs.getInt("typeid"));
                    int stock = rs.getInt("stock");
                    String description = rs.getString("description");
                    Date date = rs.getDate("releasedate");
                    double discount = rs.getDouble("discount");
                    int unitSold = rs.getInt("unitSold");
                    double price = rs.getDouble("price");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, category, supplier, type);
                    products.add(product);
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
        return products;
    }
    
    public ProductDTO getProductByID (int id) {
        ProductDTO product = null;
        Connection con = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            if(con != null) {
                ptm = con.prepareStatement(GET_PRODUCTS_BY_ID);
                ptm.setInt(1,id);
                rs = ptm.executeQuery();
                if(rs.next()) {
                    CategoryDAO cDao = new CategoryDAO();
                    SupplierDAO sDao = new SupplierDAO();
                    TypeDAO tDao = new TypeDAO();
                    String productname = rs.getString("productname");
                    SupplierDTO supplier = sDao.getSupplierById(rs.getInt("supplierid"));
                    CategoryDTO category = cDao.getCategoryById(rs.getInt("categoryid"));
                    TypeDTO type = tDao.getTypeById(rs.getInt("typeid"));
                    int stock = rs.getInt("stock");
                    String description = rs.getString("description");
                    Date date = rs.getDate("releasedate");
                    double discount = rs.getDouble("discount");
                    int unitSold = rs.getInt("unitSold");
                    double price = rs.getDouble("price");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, category, supplier, type);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
        
    }

    public int getTotalProducts() throws SQLException {
        int result = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_TOTAL_PRODUCTS);
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

    public int getQuantitySold() throws SQLException {
        int result = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_QUANTITY_SOLD);
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

    public int getProductsLowQuantiry() throws SQLException {
        int result = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PRODUCTS_LOW_QUANTITY);
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
    
    public List<ProductDTO> getListByPage(List<ProductDTO> list, int start, int end) {
        ArrayList<ProductDTO> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
    
    public List<ProductDTO> getProductNew() throws SQLException {
        List<ProductDTO> products = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PRODUCTS_NEW_YEAR);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    CategoryDAO cDao = new CategoryDAO();
                    SupplierDAO sDao = new SupplierDAO();
                    TypeDAO tDao = new TypeDAO();
                    String productname = rs.getString("productname");
                    int id = rs.getInt("id");
                    SupplierDTO supplier = sDao.getSupplierById(rs.getInt("supplierid"));
                    CategoryDTO category = cDao.getCategoryById(rs.getInt("categoryid"));
                    TypeDTO type = tDao.getTypeById(rs.getInt("typeid"));
                    int stock = rs.getInt("stock");
                    String description = rs.getString("description");
                    Date date = rs.getDate("releasedate");
                    double discount = rs.getDouble("discount");
                    int unitSold = rs.getInt("unitSold");
                    double price = rs.getDouble("price");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, category, supplier, type);
                    products.add(product);
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
        return products;
    }
    
    public List<ProductDTO> getProductsBestSeller() throws SQLException {
        List<ProductDTO> products = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PRODUCTS_BEST_SELLER);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    CategoryDAO cDao = new CategoryDAO();
                    SupplierDAO sDao = new SupplierDAO();
                    TypeDAO tDao = new TypeDAO();
                    String productname = rs.getString("productname");
                    int id = rs.getInt("id");
                    SupplierDTO supplier = sDao.getSupplierById(rs.getInt("supplierid"));
                    CategoryDTO category = cDao.getCategoryById(rs.getInt("categoryid"));
                    TypeDTO type = tDao.getTypeById(rs.getInt("typeid"));
                    int stock = rs.getInt("stock");
                    String description = rs.getString("description");
                    Date date = rs.getDate("releasedate");
                    double discount = rs.getDouble("discount");
                    int unitSold = rs.getInt("unitSold");
                    double price = rs.getDouble("price");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, category, supplier, type);
                    products.add(product);
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
        return products;
    }
    
    public List<ProductDTO> getProductBySearch(String txtSearch) throws SQLException {
        List<ProductDTO> products = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PRODUCTS_BY_SEARCH);
                ptm.setString(1, "%" + txtSearch + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    CategoryDAO cDao = new CategoryDAO();
                    SupplierDAO sDao = new SupplierDAO();
                    TypeDAO tDao = new TypeDAO();
                    String productname = rs.getString("productname");
                    int id = rs.getInt("id");
                    SupplierDTO supplier = sDao.getSupplierById(rs.getInt("supplierid"));
                    CategoryDTO category = cDao.getCategoryById(rs.getInt("categoryid"));
                    TypeDTO type = tDao.getTypeById(rs.getInt("typeid"));
                    int stock = rs.getInt("stock");
                    String description = rs.getString("description");
                    Date date = rs.getDate("releasedate");
                    double discount = rs.getDouble("discount");
                    int unitSold = rs.getInt("unitSold");
                    double price = rs.getDouble("price");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, category, supplier, type);
                    products.add(product);
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
        return products;
    }

    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
        int count = dao.getTotalProducts();
        System.out.println(count);
        
//        ProductDTO product = dao.getProductByID(1);
//        System.out.println(product.getProductName());
        
    }
}
