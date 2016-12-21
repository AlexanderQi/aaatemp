/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.beans.*;
import java.io.Serializable;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author Qi
 */
public class DaoBean implements Serializable {
    private String id;
    private String name;
    public DaoBean() {
        System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DaoBean()");
       getuser();
    }

    public String getId() {
        
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
       
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    private Connection getConnection(){
        try {
            System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>getConnection");
            Context ctx  = new InitialContext();
            Context context = (Context) ctx.lookup("java:comp/env");
            DataSource ds = (DataSource)context.lookup("jdbc/mydata");
            Connection conn = ds.getConnection();
            return  conn;
            
        } catch (Exception e) {
            System.out.print(e.toString());
        }
        return  null;
    }
    
    public  void getuser(){
        Connection conn = getConnection();
        try {
            java.sql.Statement stat = conn.createStatement(); 
            String sql = "select id,username from tbluser;";
            ResultSet rs = stat.executeQuery(sql);
            System.out.print(sql);
            if(rs.next()){
                id = rs.getString(1);
                name =rs.getString(2);
                System.out.print(id+name);
                
            }
        } catch (Exception e) {
            System.out.print(e.toString());
        }
        
       
        
     }
}
