/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.User.UserDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    private Connection conn;

    public UserDAO(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean addUser(UserDetails us) {
        boolean f = false;

        try {
            String qry = "insert into user(fullname,email,password) values(?,?,?)";
            PreparedStatement pst = conn.prepareStatement(qry);
            pst.setString(1, us.getName());
            pst.setString(2, us.getEmail());
            pst.setString(3, us.getPass());
            int i = pst.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
        }

        return f;
    }

    public UserDetails loginUser(UserDetails us) {
         UserDetails user = null;

        try {
            String qry = "select * from user where email = ? and password=? ";
            PreparedStatement pst = conn.prepareStatement(qry);
            pst.setString(1, us.getEmail());
            pst.setString(2, us.getPass());

            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                user  = new UserDetails();
                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setName1(rs.getString("fullname"));
                
                user.setPass("password");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

}
