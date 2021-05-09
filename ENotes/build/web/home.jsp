<%-- 
    Document   : home
    Created on : 4 May, 2021, 12:01:46 AM
    Author     : vikas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   UserDetails us = (UserDetails) session.getAttribute("userD");
       //out.println(us);
       if(us==null){
           response.sendRedirect("login.jsp");
       }
       else{

%>
<html>
    <head>
          <style>
            .back-img{
                background: url("https://dummyimage.com/1800x700/2ec752/fff&text=notes");
                width: 100%;
                height: 80vh;
                background-repeat: no-repeat;
            }
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home Page</title>
        
        <%@include  file="all_component/allcss.jsp" %>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid back-img">
            <h1 style="color: red" >Hello home page</h1>
        <h1 style="color: yellow">Start taking your notes!!!</h1>
        <a href="addnotes.jsp" class="btn btn-light " style="color: blueviolet"> start here </a>
        </div>
       
        
        
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
<%
       }
           %>
