/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Context;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 *
 * @author HuuThanh
 */
public class DBContext {

    public Connection getConnection() throws Exception {
        //1.Get current context
        Context currentContext = new InitialContext();
        //2.Get tomcat context
        Context tomcatContext = (Context) currentContext.lookup("java:comp/env");
        //3.Access Data source
        DataSource ds = (DataSource) tomcatContext.lookup("DBCon");
        //4.Open connection
        Connection con = ds.getConnection();
        return con;
    }

}
