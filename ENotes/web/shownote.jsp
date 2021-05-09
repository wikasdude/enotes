<%-- 
    Document   : shownote
    Created on : 7 May, 2021, 4:17:15 PM
    Author     : vikas
--%>

<%@page import="java.util.*"%>
<%@page import="com.Db.DBconnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.User.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="all_component/allcss.jsp" %> 
        <title>Show Note Page</title>
    </head>
    <body>
        
        <%@include file="all_component/navbar.jsp" %>
        
       
          <% 
        String updatemsg=(String)   request.getAttribute("updateMsg");
         if(updatemsg!=null){
             %>
             
             <div class="alert alert-success" role="alert">
                               <%=updatemsg  %> 
                            </div>
             <%
          session.removeAttribute("updatemsg");    
         }
         
        %>
        <div class="container">
             <div class="row">
        <% 
       UserDetails us = (UserDetails) session.getAttribute("userD");
       //out.println(us);
       if(us==null){
           response.sendRedirect("login.jsp");
       }
       else  if(us!=null){
             PostDAO ob  = new PostDAO((DBconnect.getcon()));
            try{
              //  out.print(us.getId());
             List<Post> post = ob.getdata(us.getId()) ;
             for(Post po :post){
            
           
                 
                 
            %>
           
           
               <div class="col-sm-4 col-md-4">
           
             <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="https://dummyimage.com/300x200/b61ed4/fff&text=notes" alt="Card image cap">
  <div class="card-body">
      <h5 class="card-title"> <%=po.getTitle()  %> </h5>
    <p class="card-text"><%=po.getContent()  %></p>
    <p class="card-text">published by <%=us.getName()  %></p>
    <p class="card-text">published by <%=po.getDate() %></p>
    
    <a href="edit.jsp?note_id=<%=po.getId() %>" class="btn btn-primary">update</a>
     <a href="deleteServlet?note_id=<%=po.getId() %>" class="btn btn-primary">delete</a>
  </div>
</div>
     </div>
          
            
      
        <%
             }
             
         }
            
            catch(Exception e){
                
            }
         }
        
        %>
          </div>
          </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
