<%-- 
    Document   : index
    Created on : 2 May, 2021, 10:59:15 AM
    Author     : vikas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .back-img{
                background: url("https://dummyimage.com/1800x700/b8f03e/2eb9d1&text=notes");
                width: 100%;
                height: 80vh;
                background-repeat: no-repeat;
            }
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index Page</title>
        
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
          
        <div class="container-fluid back-img"> 
        
            <div class="text-center">
                <h1 class="text-white"> Enotes Save your Notes</h1>
            <a href="login.jsp"  class="btn btn-light">login </a>
            <a href="register.jsp" class="btn btn-light"> register</a>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
