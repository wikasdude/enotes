/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.DAO;
 
import com.User.Post;
import com.mysql.cj.protocol.Resultset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

/**
 *
 * @author vikas
 */
public class PostDAO {
    private Connection conn;
    public PostDAO(Connection conn) {
        super();
        this.conn= conn;
        
        
    }
    public boolean AddNotes(String title , String content,  Integer uid){
        boolean f = false;
        try {
            String qry = "insert into post(title, content, uid) values(?,?,?);  ";
        PreparedStatement ps = conn.prepareStatement(qry);
        ps.setString(1,title);
        ps.setString(2, content);
        ps.setInt(3,  uid);
         int i=   ps.executeUpdate();
        if(i==1){
            f= true;
        }
        } catch (Exception e) {
        }
        
        return f;
    }

    public List<Post> getdata(int id){
        
        List<Post> list = new ArrayList<Post>();
        Post po = null;
        try {
            String qry ="select * from post  where uid= ?";
            PreparedStatement ps= conn.prepareStatement(qry);
            ps.setInt(1, id);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                po = new Post();
                po.setId(rs.getInt(1));
                po.setTitle(rs.getString(2));
                po.setContent(rs.getString(3));
                po.setDate(rs.getString(4));
             list.add(po);
             
            }
               
        } catch (Exception e) {
        }
        
        return list;
    }
    
    public Post getDataById(int noteid){
        Post p=null ;
        try {
            String qry = "select * from post where id=?";
            PreparedStatement ps= conn.prepareStatement(qry);
            ps.setInt(1, noteid);
            ResultSet rs= ps.executeQuery();
            if(rs.next()){
                p= new Post();
                p.setId(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setContent(rs.getString(3));
                
                
            }
        } catch (Exception e) {
            
        }
        return p;
    }
    
  public    boolean postUpdate(int noteid,String title ,String content ){
        boolean f= false;
        try {
            String qu = "update post set title=? , content=? where id =? ";
            PreparedStatement ps = conn .prepareStatement(qu);
            ps.setString(1,title);
            ps.setString(2, content);
            ps.setInt(3, noteid);
            int i = ps.executeUpdate();
            if(i==1){
                f= true;
                
            }
            
            
        } catch (Exception e) {
        }
        return f;
    }
  
  public boolean deleteNote(int nid){
      boolean f= false;
       try {
          
           
        String qry = "delete  from post where id = ?";
        PreparedStatement ps = conn.prepareStatement(qry);
        ps.setInt(1, nid);
       int x= ps.executeUpdate();
        
       if(x==1)
        {
            f= true;

        
        }
        
        
      } catch (Exception e) {
      }
       return f;
  }
     
    
    
    
}
