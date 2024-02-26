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
import model.WishListDTO;

/**
 *
 * @author ltn04
 */
public class WishlistDAO {
    private final String QUERY_WISHLIST="SELECT * FROM WishLists";
    
    
    
    public List<WishListDTO> getWishlist() throws SQLException{
        List<WishListDTO> listWL=new ArrayList<>();
        Connection con=null;
        PreparedStatement ptm=null;
        ResultSet rs=null;
        DBContext conn=new DBContext();
        try{
            con = conn.getConnection();
            ptm=con.prepareStatement(QUERY_WISHLIST);
            rs=ptm.executeQuery();
            while (rs.next()) {                
                int id=rs.getInt("wishListid");
                String Username=rs.getString("username");
                int prID=rs.getInt("productid");
                
               WishListDTO temp=new WishListDTO(id,prID,Username);
               listWL.add(temp);
            }
            
        }catch(Exception e){}
         finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return listWL;
    }
}
