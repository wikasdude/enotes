<%-- 
    Document   : login
    Created on : 2 May, 2021, 11:02:50 AM
    Author     : vikas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> login   Page</title>
         <%@include file="all_component/allcss.jsp" %>
   
    </head>
    <body>
        
        

        <%@include file="all_component/navbar.jsp" %>



        <div class="container-fluid mt-4">

            <div class="row">
                <div class="col-md-4 " style="margin-left: 500px;">
                    <div class="card">
                        <div class="card-header" >
                            <label style="color: #8e24aa">Login Page</label>
                           <%
                             String regmsg=(String)session.getAttribute("login-failed");
                             
                             if(regmsg!=null)
                             {
                                 %>
                                  <div class="alert alert-danger" role="alert">
                               <%=regmsg   %> 
                            </div>
                            
                                 <%
                                 session.removeAttribute("login-failed");
                             }
                            %>
                        </div>
                        <div class="card-body">
                            <form method="post" action="LoginSerlet">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" 
                                   name="uemail">

                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control"
                                   name="pass">
                        </div>
                         
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>


                            <%@include file="all_component/footer.jsp" %>
    </body>
</html>
