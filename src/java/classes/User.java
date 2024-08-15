/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nipuni
 */
public class User {

    private int uid;
    private String name;
    private String nic;
    private String tel;
    private String email;
    private String password;

    public User(String email, String password) {
        this.email = email;
        this.password = MD5.getMd5(password);
    }

    public User(String name, String nic, String tel, String email, String password) {
        this.name = name;
        this.nic = nic;
        this.tel = tel;
        this.email = email;
        this.password = MD5.getMd5(password);
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean register(Connection con) {

        try {
            String query = "INSERT INTO user(name, nic, tel, email, pw) VALUES(?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, this.name);
            pstmt.setString(2, this.nic);
            pstmt.setString(3, this.tel);
            pstmt.setString(4, this.email);
            pstmt.setString(5, this.password);

            return pstmt.executeUpdate() > 0;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public boolean authenticate(Connection con) {
        try {
            String query = "SELECT * FROM user WHERE email = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, this.email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String db_password = rs.getString("pw");
                if (db_password.equals(this.password)) {
                    int user_id = rs.getInt("uid");
                    String user_name = rs.getString("name");
                    this.setUid(user_id);
                    this.setName(user_name);
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    
    
    public boolean adminAuthenticate(Connection con) {
        try {
            String query = "SELECT * FROM admin WHERE email = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, this.email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String db_password = rs.getString("password");
                if (db_password.equals(this.password)) {
//                    int user_id = rs.getInt("id");
//                    this.setUid(uid);
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    
    

}
