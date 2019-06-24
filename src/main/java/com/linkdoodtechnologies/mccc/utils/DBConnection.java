package com.linkdoodtechnologies.mccc.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    // JDBC driver name and database URL
    public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    public static final String DB_URL = GlobalClass.connectionUrl;

    // Database credentials
    public static final String USER = GlobalClass.connectionUsername;
    public static final String PASS = GlobalClass.connectionPassword;

    public static Connection con = null;

    /**
     This function is used to return the connection to the database
     @return connection to database
     */
    public static Connection getConnection(){
        try {
            Class.forName(JDBC_DRIVER);
            try {
                con = DriverManager.getConnection(DB_URL, USER, PASS);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return con;
    }
}
