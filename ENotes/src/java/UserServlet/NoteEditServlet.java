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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vikas
 */

public class NoteEditServlet extends HttpServlet {
   
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer noteid= Integer.parseInt(request.getParameter("noteid"));
        String Title = request.getParameter("title");
        String content = request.getParameter("content");
        PostDAO dao= new PostDAO( DBconnect.getcon());
        boolean f= dao.postUpdate(noteid,Title,content);
                    PrintWriter out = response.getWriter();
        if(f){

            out.println("data updated successfully");
            HttpSession session= request.getSession();
            session.setAttribute("updateMsg", "update successsfully");
            
            response.sendRedirect("shownote.jsp");
            
        }
        else{
            out.println("data is not updated!!!");
        }
        
        
        
         
    }

   
}
