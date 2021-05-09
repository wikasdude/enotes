/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package UserServlet;

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
public class LogoutServlet extends HttpServlet {

     
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            HttpSession  session= request.getSession();
            session.removeAttribute("userD");
            HttpSession session1= request.getSession();
            session1.setAttribute("logoutMsg", "logout successfully!!");
            response.sendRedirect("login.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        
    }

 

}
