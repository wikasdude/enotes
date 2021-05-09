/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserServlet;

import com.DAO.UserDAO;
import com.Db.DBconnect;
import com.User.UserDetails;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vikas
 */
@WebServlet("/LoginSerlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        String email= request.getParameter("uemail");
        String pass = request.getParameter("pass");
        UserDetails us = new UserDetails();
        us.setEmail(email);
        us.setPass(pass);
        
        UserDAO dao = new UserDAO(DBconnect.getcon());
        UserDetails user =dao.loginUser(us);
            HttpSession session;
        if(user!=null){
             session=request.getSession();
             session.setAttribute("userD", user);
            response.sendRedirect("home.jsp");
        }
        else
        {
            session=request.getSession();
                session.setAttribute("login-failed", " login failed succesfully");
                response.sendRedirect("login.jsp");
            
        }
    }

}
