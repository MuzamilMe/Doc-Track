package com.example.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBManager {
    public static  Connection getConnection(){
        //String driverName = "com.mysql.cj.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:1527/";
        String dbName = "doc track";
        String userId = "root";
        String password = "1234";
        Connection ob;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            ob = DriverManager.getConnection(connectionUrl+dbName,
                    userId, password);
            return ob;

        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


    }
    }


