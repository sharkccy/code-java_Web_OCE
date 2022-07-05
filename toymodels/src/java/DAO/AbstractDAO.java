/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;

/**
 *
 * @author student
 */
public class AbstractDAO {
    Connection con;
    Statement stmt;

    public Connection getCon() {
        return con;
    }

    public Statement getStmt() {
        return stmt;
    }
    
}
