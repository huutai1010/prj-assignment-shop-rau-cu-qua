/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import sample.utils.DBUtils;


public class OrderDAO {
    private static final String CREATE = "INSERT INTO tblOrder(orderID, orderDate, total, userID) VALUES (?, ?, ?, ?)";
    
    public boolean create (OrderDTO order) throws SQLException, ClassNotFoundException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CREATE);
                ptm.setString(1, order.getOrderID());
                ptm.setString(2, order.getOrderDate());
                ptm.setFloat(3, order.getTotal());
                ptm.setString(4, order.getUserID());                        
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } finally {
            if (ptm != null) ptm.close();
            if (conn != null) conn.close();
        }
        return check;
    }
}
