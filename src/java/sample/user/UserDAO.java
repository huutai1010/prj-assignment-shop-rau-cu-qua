/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import sample.utils.DBUtils;

/**
 *
 * @author ADMIN
 */
public class UserDAO {
    private static final String LOGIN = 
            "SELECT u.fullName, u.roleID, r.roleName FROM tblUsers u, tblRoles r WHERE u.roleID = r.roleID AND u.userID=? AND u.password=?";
    private static final String CREATE_USER = "INSERT INTO tblUsers (userID, fullName, password, roleID, address, birthday, phone, email, status) VALUES (?, ?, ?, 1, ?, ?, ?, ?, 1)";
    private static final String CHECK_DUPLICATE = "SELECT fullName FROM tblUsers WHERE userID=?";
    
    public boolean checkDuplicate(String userID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_DUPLICATE);
                ptm.setString(1, userID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    check = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();           
            if (ptm != null) ptm.close();            
            if (conn != null) conn.close();          
        }
        return check;
    }
    
    
    public boolean create(UserDTO user) throws SQLException, ClassNotFoundException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CREATE_USER);
                ptm.setString(1, user.getUserID());
                ptm.setString(2, user.getFullName());
                ptm.setString(3, user.getPassword());
                ptm.setString(4, user.getAddress());
                ptm.setString(5, user.getBirthday());
                ptm.setString(6, user.getPhone());
                ptm.setString(7, user.getEmail());
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } finally {
            if (ptm != null) ptm.close();
            if (conn != null) conn.close();
        }
        return check;
    }
    
    public UserDTO checkLogin(String userID, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, userID);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String fullName = rs.getString("fullName");
                    String roleName = rs.getString("roleName");
                    user = new UserDTO(userID, fullName, "", roleName, "", "", "", "");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (ptm != null) ptm.close();
            if (conn != null) conn.close();
        }
        return user;
    } 
    
}
