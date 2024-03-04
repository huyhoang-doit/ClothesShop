/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Context;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 *
 * @author HuuThanh
 */
public class DBContext {

    public Connection getConnection() throws Exception {
//        //1.Get current context
//        Context currentContext = new InitialContext();
//        //2.Get tomcat context
//        Context tomcatContext = (Context) currentContext.lookup("java:comp/env");
//        //3.Access Data source
//        DataSource ds = (DataSource) tomcatContext.lookup("DBCon");
//        //4.Open connection
//        Connection con = ds.getConnection();
//        return con;

        //1. Load Driver(driver is available)
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

        //2. Create Connection String
        String url = "jdbc:sqlserver://localhost:1433;"
                + "databaseName=ClothesShop";
        //3. Open connection
        Connection con = DriverManager.getConnection(url, "sa", "12345");
        return con;
    }

}
