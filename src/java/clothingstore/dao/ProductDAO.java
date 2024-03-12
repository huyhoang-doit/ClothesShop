/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.dao;

import clothingstore.utils.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import clothingstore.model.CartItem;
import clothingstore.model.CategoryDTO;
import clothingstore.model.ProductDTO;
import clothingstore.model.SupplierDTO;
import clothingstore.model.TypeDTO;

/**
 *
 * @author HuuThanh
 */
public class ProductDAO extends DBContext {

    private static final String GET_DATA = "SELECT * FROM Products WHERE status = 1";
    private static final String GET_TOTAL_PRODUCTS = "SELECT COUNT(*) AS Total FROM Products WHERE status = 1";
    private static final String GET_QUANTITY_SOLD = "SELECT SUM(unitSold) AS Total from Products";
    private static final String GET_STOCK = "SELECT stock AS Total FROM Products WHERE id = ?";
    private static final String GET_PRODUCTS_LOW_QUANTITY = "SELECT COUNT(*) AS Total from Products WHERE Stock < 10 AND status = 1";
    private static final String GET_PRODUCTS_BY_ID = "SELECT * FROM Products WHERE id = ? AND status = 1";
    private static final String GET_PRODUCTS_BY_TYPE_ID = "SELECT * FROM Products WHERE typeid = ? AND status = 1";
    private static final String GET_PRODUCTS_BY_CATEGORY_ID = "SELECT * FROM Products WHERE categoryid = ? AND status = 1";
    private static final String GET_PRODUCTS_BY_SUPPLIER_ID = "SELECT * FROM Products WHERE supplierid = ? AND status = 1";
    private static final String GET_PRODUCTS_NEW_YEAR = "SELECT * from Products WHERE year(releasedate) = 2024 AND status = 1";
    private static final String GET_PRODUCTS_BEST_SELLER = "SELECT TOP(5) * from Products WHERE status = 1 order by unitSold desc";
    private static final String GET_PRODUCTS_BY_SEARCH = "SELECT * FROM Products WHERE productname LIKE ? AND status = 1";
    private static final String DELETE_PRODUCT = "UPDATE Products SET status = 0 WHERE id = ?";
    private static final String UPDATE_QUANTITY_PRODUCT = "UPDATE Products SET [stock] = ? WHERE id = ?";
    private static final String INSERT_PRODUCT = "INSERT INTO Products VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

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
                    boolean status = rs.getBoolean("status");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, status, category, supplier, type);
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

    public ProductDTO getProductByID(int id) {
        ProductDTO product = null;
        Connection con = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            if (con != null) {
                ptm = con.prepareStatement(GET_PRODUCTS_BY_ID);
                ptm.setInt(1, id);
                rs = ptm.executeQuery();
                if (rs.next()) {
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
                    boolean status = rs.getBoolean("status");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, status, category, supplier, type);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;

    }

    public List<ProductDTO> getProductByTypeId(int typeId) {
        List<ProductDTO> products = new ArrayList<>();
        Connection con = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            if (con != null) {
                ptm = con.prepareStatement(GET_PRODUCTS_BY_TYPE_ID);
                ptm.setInt(1, typeId);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    CategoryDAO cDao = new CategoryDAO();
                    SupplierDAO sDao = new SupplierDAO();
                    TypeDAO tDao = new TypeDAO();
                    String productname = rs.getString("productname");
                    SupplierDTO supplier = sDao.getSupplierById(rs.getInt("supplierid"));
                    CategoryDTO category = cDao.getCategoryById(rs.getInt("categoryid"));
                    TypeDTO type = tDao.getTypeById(typeId);
                    int id = rs.getInt("id");
                    int stock = rs.getInt("stock");
                    String description = rs.getString("description");
                    Date date = rs.getDate("releasedate");
                    double discount = rs.getDouble("discount");
                    int unitSold = rs.getInt("unitSold");
                    double price = rs.getDouble("price");
                    boolean status = rs.getBoolean("status");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, status, category, supplier, type);
                    products.add(product);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;

    }

    public List<ProductDTO> getProductByCategoryId(List<ProductDTO> list, int categoryid) {
        if (categoryid == 0) {
            return list;
        }
        List<ProductDTO> rs = new ArrayList<>();
        for (ProductDTO productDTO : list) {
            if (productDTO.getCategory().getId() == categoryid) {
                rs.add(productDTO);
            }
        }
        return rs;
//        List<ProductDTO> products = new ArrayList<>();
//        Connection con = null;
//        PreparedStatement ptm = null;
//        ResultSet rs = null;
//        try {
//            con = getConnection();
//            if (con != null) {
//                ptm = con.prepareStatement(GET_PRODUCTS_BY_CATEGORY_ID);
//                ptm.setInt(1, categoryid);
//                rs = ptm.executeQuery();
//                while (rs.next()) {
//                    CategoryDAO cDao = new CategoryDAO();
//                    SupplierDAO sDao = new SupplierDAO();
//                    TypeDAO tDao = new TypeDAO();
//                    String productname = rs.getString("productname");
//                    SupplierDTO supplier = sDao.getSupplierById(rs.getInt("supplierid"));
//                    CategoryDTO category = cDao.getCategoryById(categoryid);
//                    int id = rs.getInt("id");
//                    TypeDTO type = tDao.getTypeById(rs.getInt("typeid"));
//                    int stock = rs.getInt("stock");
//                    String description = rs.getString("description");
//                    Date date = rs.getDate("releasedate");
//                    double discount = rs.getDouble("discount");
//                    int unitSold = rs.getInt("unitSold");
//                    double price = rs.getDouble("price");
//                    boolean status = rs.getBoolean("status");
//                    String colors[] = rs.getString("colors").split(",");
//                    String images[] = rs.getString("images").split(" ");
//                    String sizes[] = rs.getString("size").split(",");
//                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, status, category, supplier, type);
//                    products.add(product);
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return products;
    }

    public List<ProductDTO> getProductSupplierId(int supplierid) {
        List<ProductDTO> products = new ArrayList<>();
        Connection con = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            if (con != null) {
                ptm = con.prepareStatement(GET_PRODUCTS_BY_SUPPLIER_ID);
                ptm.setInt(1, supplierid);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    CategoryDAO cDao = new CategoryDAO();
                    SupplierDAO sDao = new SupplierDAO();
                    TypeDAO tDao = new TypeDAO();
                    String productname = rs.getString("productname");
                    SupplierDTO supplier = sDao.getSupplierById(supplierid);
                    CategoryDTO category = cDao.getCategoryById(rs.getInt("categoryid"));
                    int id = rs.getInt("id");
                    TypeDTO type = tDao.getTypeById(rs.getInt("typeid"));
                    int stock = rs.getInt("stock");
                    String description = rs.getString("description");
                    Date date = rs.getDate("releasedate");
                    double discount = rs.getDouble("discount");
                    int unitSold = rs.getInt("unitSold");
                    boolean status = rs.getBoolean("status");
                    double price = rs.getDouble("price");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, status, category, supplier, type);
                    products.add(product);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;

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

    public int getStock(int id) throws SQLException {
        int result = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_STOCK);
                ptm.setInt(1, id);
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
                    boolean status = rs.getBoolean("status");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, status, category, supplier, type);
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
                    boolean status = rs.getBoolean("status");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, status, category, supplier, type);
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
                    boolean status = rs.getBoolean("status");
                    String colors[] = rs.getString("colors").split(",");
                    String images[] = rs.getString("images").split(" ");
                    String sizes[] = rs.getString("size").split(",");
                    ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, status, category, supplier, type);
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

    public List<ProductDTO> sortProduct(List<ProductDTO> list, String value) throws SQLException {
        List<ProductDTO> result = new ArrayList<>(list);
        if (value.equals("1")) {
            Collections.sort(result, (ProductDTO s1, ProductDTO s2) -> {
                return Double.compare(s1.getSalePrice(), s2.getSalePrice());
            });
        } else if (value.equals("2")) {
            Collections.sort(result, (ProductDTO s1, ProductDTO s2) -> {
                return -(Double.compare(s1.getSalePrice(), s2.getSalePrice()));
            });
        } else if (value.equals("3")) {
            Collections.sort(result, (ProductDTO s1, ProductDTO s2) -> {
                return s1.getName().compareTo(s2.getName());
            });
        }
        return result;
    }

    public void editProduct(int id, String name, String description, int stock, String image,
            String color, String size, String releasedate, double discount, double price, int categoryId, int supplierId, int typeId) {
        String sql = "UPDATE [dbo].[Products]\n"
                + "   SET [productname] = ?\n"
                + "   ,[supplierid] = ?\n"
                + "      ,[categoryid] = ?\n"
                + "      ,[size]=? \n"
                + "      ,[stock] =? \n"
                + "      ,[description] =? \n";
        if (!(image.equals(""))) {
            sql += "      ,[images] =? \n";
        }
        sql += "      ,[colors] =? \n"
                + "      ,[releasedate] =? \n"
                + "      ,[discount] =? \n"
                + "      ,[price] =? \n"
                + "      ,[typeid] =? \n"
                + " WHERE [id]=?";
        try {
            Connection conn = null;
            PreparedStatement ptm = null;
            ResultSet rs = null;
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(sql);
                ptm.setString(1, name);
                ptm.setInt(2, supplierId);
                ptm.setInt(3, categoryId);
                ptm.setString(4, size);
                ptm.setInt(5, stock);
                ptm.setString(6, description);
                if (!image.equals("")) {
                    ptm.setString(7, image);
                    ptm.setString(8, color);
                    ptm.setString(9, releasedate);
                    ptm.setDouble(10, discount);
                    ptm.setDouble(11, price);
                    ptm.setInt(12, typeId);
                    ptm.setInt(13, id);
                    ptm.executeUpdate();
                    return;
                } else {
                    ptm.setString(7, color);
                    ptm.setString(8, releasedate);
                    ptm.setDouble(9, discount);
                    ptm.setDouble(10, price);
                    ptm.setInt(11, typeId);
                    ptm.setInt(12, id);
                    ptm.executeUpdate();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(String pid) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE_PRODUCT);
                ptm.setString(1, pid);
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

    public void updateQuanityProduct(CartItem item) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_QUANTITY_PRODUCT);
                ptm.setInt(1, (item.getProduct().getStock() - item.getQuantity()));
                ptm.setInt(2, item.getProduct().getId());
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

    public void insertProduct(String name, int cId, int sId, int tId, double price, double discount, String size, String color, int stock,
            String date, String images, String description) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(INSERT_PRODUCT);
                ptm.setString(1, name);
                ptm.setInt(2, sId);
                ptm.setInt(3, cId);
                ptm.setString(4, size);
                ptm.setInt(5, stock);
                ptm.setString(6, description);
                ptm.setString(7, images);
                ptm.setString(8, color);
                ptm.setString(9, date);
                ptm.setDouble(10, discount);
                ptm.setInt(11, 0);
                ptm.setDouble(12, price);
                ptm.setInt(13, 1);
                ptm.setInt(14, tId);
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

    public List<ProductDTO> searchByPrice(List<ProductDTO> list, double priceFrom, double priceTo) {
        List<ProductDTO> rs = new ArrayList<>();
        for (ProductDTO productDTO : list) {
            if (priceFrom != 0) {
                if (priceTo != 0) {
                    if (productDTO.getSalePrice() >= priceFrom && productDTO.getSalePrice() <= priceTo) {
                        rs.add(productDTO);
                    }
                } else if (productDTO.getSalePrice() >= priceFrom) {
                    rs.add(productDTO);
                }
            }
        }
        return rs;
    }

    public List<ProductDTO> searchByColor(List<ProductDTO> list, String color) {
        List<ProductDTO> rs = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            for (int j = 0; j < list.get(i).getColors().length; j++) {
                if (list.get(i).getColors()[j].contains(color)) {
                    rs.add(list.get(i));
                }
            }
        }
        return rs;
    }

    public List<ProductDTO> searchByDiscount(List<ProductDTO> list, double discount) {
        List<ProductDTO> rs = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getDiscount() > discount) {
                rs.add(list.get(i));
            }
        }
        return rs;
    }

    public List<ProductDTO> searchByCheckBox(List<ProductDTO> list, int[] cid) throws Exception {
//        Connection conn = null;
//        PreparedStatement ptm = null;
//        ResultSet rs = null;
        List<ProductDTO> result = new ArrayList<>();
//        String sql = "SELECT * FROM Products WHERE 1=1 ";
//        if ((cid != null) && (cid[0] != 0)) {
//            sql += " AND categoryid in(";
//            for (int i = 0; i < cid.length; i++) {
//                sql += cid[i] + ",";
//            }
//            if (sql.endsWith(",")) {
//                sql = sql.substring(0, sql.length() - 1);
//            }
//            sql += ")";
//        }
        if (cid[0] == 0) {
            return list;
        }

        for (ProductDTO productDTO : list) {
            for (int i = 0; i < cid.length; i++) {
                if (productDTO.getCategory().getId() == cid[i]) {
                    result.add(productDTO);
                }
            }
        }

//        try {
//            conn = getConnection();
//            PreparedStatement st = conn.prepareStatement(sql);
//            rs = st.executeQuery();
//            while (rs.next()) {
//                CategoryDAO cDao = new CategoryDAO();
//                SupplierDAO sDao = new SupplierDAO();
//                TypeDAO tDao = new TypeDAO();
//                String productname = rs.getString("productname");
//                int id = rs.getInt("id");
//                SupplierDTO supplier = sDao.getSupplierById(rs.getInt("supplierid"));
//                CategoryDTO category = cDao.getCategoryById(rs.getInt("categoryid"));
//                TypeDTO type = tDao.getTypeById(rs.getInt("typeid"));
//                int stock = rs.getInt("stock");
//                String description = rs.getString("description");
//                Date date = rs.getDate("releasedate");
//                double discount = rs.getDouble("discount");
//                int unitSold = rs.getInt("unitSold");
//                double price = rs.getDouble("price");
//                boolean status = rs.getBoolean("status");
//                String colors[] = rs.getString("colors").split(",");
//                String images[] = rs.getString("images").split(" ");
//                String sizes[] = rs.getString("size").split(",");
//                ProductDTO product = new ProductDTO(id, productname, description, stock, unitSold, images, colors, sizes, date, discount, price, status, category, supplier, type);
//                result.add(product);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
        return result;
    }

    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();

//        ProductDTO product = dao.getProductByID(1);
//        System.out.println(product.getProductName());
//        dao.insertProduct("GIÀY CHELSEA BOOTS ALL BLACK", 12, 6, 3, 123.0, 0.7, "40,41,42,43", "Đen", 123, "2022-05-04", "assets/img/products/28-1.jpg assets/img/products/29-2.jpg assets/img/products/29-3.jpg ",
//                "Vẻ đẹp của một đôi giày Chelsea boots bắt đầu bằng sự đơn giản. Từ việc không có những đường viền cầu kỳ đến hình dáng phức tạp là điều nổi bật nhất để sản phẩm này trường tồn mãi với thời gian.");
//        dao.insertProduct("", 12, 6, 3, 123.0, 1, "", "", 123, "", "", "");
//        List<ProductDTO> list = new ArrayList<>();
//        for (ProductDTO productDTO : dao.getData()) {
//            System.out.println(productDTO.getName());
//  
        int value = dao.getStock(3);
        System.out.println(value);
    }
}


