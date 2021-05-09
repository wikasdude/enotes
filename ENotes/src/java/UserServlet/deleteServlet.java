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
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vikas
 */
public class deleteServlet extends HttpServlet {

 
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          
        Integer noteid = Integer.parseInt(request.getParameter("note_id"));
        
        PostDAO dao = new PostDAO( DBconnect.getcon());
        boolean f=dao.deleteNote(noteid);
        PrintWriter out = response.getWriter();
        if(f){
            out.println("data deleted succesfully");
            response.sendRedirect("shownote.jsp");
            
            
        }
        else{
            out.println("data is not deleted");
        }
          
    }

     
}
