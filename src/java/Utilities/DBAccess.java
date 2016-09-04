/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Utilities;
import java.sql.*;

/**
 *
 * @author dnt11mgu
 */
public class DBAccess {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
         String jdbcDriver = "org.postgresql.Driver"; 
         Class.forName(jdbcDriver); 
         String jdbcUrl = "jdbc:postgresql:dnt11mgu"; 
         String username = "postgres"; 
         String password = "foxley42"; 
         return (DriverManager.getConnection(jdbcUrl, username, password)); 
    }
    
    }

