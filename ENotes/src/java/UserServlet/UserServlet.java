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
 
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            System.out.println("hello");
            String name1 = req.getParameter("fname");
            String email = req.getParameter("email");
            String pass = req.getParameter("pass");
            System.out.println(""+name1+email+pass);
            UserDetails us = new UserDetails();
            try {
                 us.setName1(name1);
            us.setEmail(email);
            us.setPass(pass);
            } catch (Exception e) {
                e.printStackTrace();
            }
           
            UserDAO dao = new UserDAO(DBconnect.getcon());
            boolean f = dao.addUser(us);
            System.out.print(us);
            PrintWriter out = resp.getWriter();
             HttpSession session;
            if (f) {
                 session = req.getSession();
                session.setAttribute("reg-success", "Registeration Successfully");
                resp.sendRedirect("register.jsp");
                //out.print("user register successfully");
            } else {
                session=req.getSession();
                session.setAttribute("failed-msg", "failed succesfully");
                resp.sendRedirect("register.jsp");
                //out.print("not inserted");
            }
            
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
        }
        
    }
    
}
