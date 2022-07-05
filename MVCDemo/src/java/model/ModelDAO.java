/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controllers.loginController;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.entity.Member;

/**
 *
 * @author student
 */
public class ModelDAO {

    private static Connection con; // 效能考量 可以建立多個 connections / connection pool 

    static {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mariadb://127.0.0.1/classicmodels", "root", "123456");
        } 
        catch (ClassNotFoundException ex) {
            Logger.getLogger(ModelDAO.class.getName()).log(Level.SEVERE, null, ex);
        } 
        catch (SQLException ex) {
            Logger.getLogger(ModelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static Member CheckUser(String email, String passwd) {
        Statement stmt = null;
        ResultSet rs = null;
        try {                        
            stmt = con.createStatement();
            String sql = "SELECT * from members where email = '" + email + "' and passwd = '" + passwd + "'";
            System.out.println("SQL 語法" + sql);
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                //可移動到一筆資料 表示 有符合的帳密資料
                // ORM 對應 將資料庫內的一筆資料轉換成 一個 Java 物件(Entity)
                Member member = new Member();
                member.setEmail(rs.getString("email"));
                member.setName(rs.getString("name"));
                member.setGender(rs.getString("gender"));
                member.setMobile(rs.getString("mobile"));                
                return member;
            } 
            else {
                return null;
            }
        } 
        catch (SQLException ex) {
            Logger.getLogger(loginController.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        finally{
            try {
                stmt.close();
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ModelDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

}

