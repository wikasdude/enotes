/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package UserServlet;

import com.DAO.PostDAO;
import com.Db.DBconnect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vikas
 */
 
public class NotesServlet extends HttpServlet {

     
    

     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         int uid = Integer.parseInt(request.getParameter("uid"));
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        PostDAO dao= new PostDAO(DBconnect.getcon());
        boolean f = dao.AddNotes(title, content, uid);
          PrintWriter out= response.getWriter();
        if(f){
          
            
            out.println("data inserted successfully");
            response.sendRedirect("shownote.jsp");
            
        }
        else {
             out.println("not inserted");
        }
    }

    

}
