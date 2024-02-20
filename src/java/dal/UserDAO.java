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
import model.UserDTO;

/**
 *
 * @author HuuThanh
 */
public class UserDAO extends DBContext {

    private static final String LOGIN = "SELECT * FROM Users WHERE username=? AND password=? and status=1";
    private static final String CHECK_LOGIN = "SELECT roleid FROM Users WHERE username=? AND password=? and status=1 and roleid=1";

    public UserDTO checkLogin(String userName, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, userName);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String firstname = rs.getString("firstname");
                    String lastname = rs.getString("lastname");
                    String email = rs.getString("email");
                    String avatar = rs.getString("avatar");
                    int roleid = rs.getInt("roleID");
                    boolean roleID = rs.getBoolean("roleID");
                    user = new UserDTO(firstname, lastname, email, avatar, userName, password, roleid, roleID);
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
        return user;
    }

    public boolean checkAdmin(UserDTO account) throws SQLException {
        int roleid = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_LOGIN);
                ptm.setString(1, account.getUserName());
                ptm.setString(2, account.getPassword());
                rs = ptm.executeQuery();
                if (rs.next()) {
                    roleid = rs.getInt("roleid");
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
        if (roleid == 0) {
            return false;
        } else {
            return true;
        }
    }

    public static void main(String[] args) throws SQLException {
        UserDAO dao = new UserDAO();
        UserDTO user = dao.checkLogin("phuuthanh2003", "12345");
        System.out.println(user.getAvatar());
    }
}
