/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {

    private static Connection conn;

    public static Connection getcon() {
        try {

            if (conn == null) {

                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enote", "root", "");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

}
