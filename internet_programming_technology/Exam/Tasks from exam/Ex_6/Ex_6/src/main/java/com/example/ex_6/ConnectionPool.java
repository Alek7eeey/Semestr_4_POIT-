package com.example.ex_6;

import java.sql.*;

public class ConnectionPool {

    Connection connection;
    public Connection GetConnectionString() {
        if (connection == null) {
            String connectionString = "jdbc:mysql://localhost:3306/examdb?autoReconnect=true&useSSL=false";
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(connectionString, "root", "Kravchenko1");
            } catch (ClassNotFoundException | SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return connection;
    }

}