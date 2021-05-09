 

<%@page import="com.Db.DBconnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="all_component/allcss.jsp" %>
        <title>Edit  Page</title>
    </head>
    <body style="background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(118,9,121,1) 29%, rgba(0,212,255,1) 100%);">
        <%@include file="all_component/navbar.jsp" %>
        <%
           UserDetails us = (UserDetails)session.getAttribute("userD");
          Integer id = Integer.parseInt(request.getParameter("note_id"));
          
          PostDAO post= new PostDAO(DBconnect.getcon());
          com.User.Post p = post.getDataById(id);
          
          
          


        %>      
        <h1  style="text-align: center; color: white" >Edit your page</h1>
        <div class="container">
        <form method="post" action="NoteEditServlet">
              <input type="hidden" name="noteid"  value="<%=id  %>">
            <div class="form-group" >
                 
                <label style="color: white;font-size: 20px;" >Title</label>
                
                <input type="text"  class="form-control" name ="title"  value="<%=p.getTitle() %>" placeholder="Enter title ">
             </div>
            <div class="form-group">
                <label style="color: white ; font-size: 20px;" for="exampleInputcontent">content</label>
                 <textarea   name="content" class="form-control" id="exampleFormControlTextarea1" rows="3"><%=p.getContent() %></textarea>
                
                
            </div>
            
            <button type="submit" class="btn btn-light">Submit</button>
        </form>
        </div>
                 <%@include file="all_component/footer.jsp" %>
    </body>
</html>
