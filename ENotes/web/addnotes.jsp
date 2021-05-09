<%-- 
    Document   : addnotes
    Created on : 5 May, 2021, 12:02:38 PM
    Author     : vikas
--%>

<%@page import="com.User.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allcss.jsp" %>

    </head>
    <body style="background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(118,9,121,1) 29%, rgba(0,212,255,1) 100%);">
        <% 
         UserDetails us=(UserDetails)session.getAttribute("userD");
          if(us==null){
              response.sendRedirect("login.jsp");
          }
          else{
        %>

        <%@include file="all_component/navbar.jsp" %>
        <h1 style="text-align: center; color: whitesmoke">add notes </h1>
        <div class="container">
        <form method="post" action="NotesServlet">
       <input type="hidden" name="uid"  value="<%=us.getId()  %>">
            <div class="form-group">
                 
                <label style="color: white; font-size: 20px;" >Title</label>
               
                <input type="text"  class="form-control" name ="title"  placeholder="Enter title ">
             </div>
            <div class="form-group">
                <label style="color: white;font-size: 25px;" for="exampleInputPassword1">content</label>
                <textarea class="form-control" name="content" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            
            <button type="submit" class="btn btn-light" >Submit</button>
        </form>
            </div>
             <%@include file="all_component/footer.jsp" %>
      <% 
      
      
          } 
          
          %>
         
    </body>
</html>
