<%-- 
    Document   : register
    Created on : 2 May, 2021, 11:02:33 AM
    Author     : vikas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>

        <%@include file="all_component/navbar.jsp" %>



        <div class="container-fluid">

            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">

                            Register Page
                            
                            <%
                             String regmsg=(String)session.getAttribute("reg-success");
                             
                             if(regmsg!=null)
                             {
                                 %>
                                  <div class="alert alert-success" role="alert">
                                      <%=regmsg   %> <a href="login.jsp">login?</a>
                            </div>
                            
                                 <%
                                 session.removeAttribute("reg-success");
                             }
                            %>
                            
                            
                             <%
                             String failmsg=(String)session.getAttribute("failed-msg");
                             
                             if(failmsg!=null)
                             {
                                 %>
                                  <div class="alert alert-danger" role="alert">
                               <%=failmsg   %> 
                            </div>
                                 <%
                                 session.removeAttribute("failed-msg");
                             }
                            %>
                           
                        </div>


                        <div class="card-body">
                            <form action="UserServlet" method="post">
                                <div class="form-group">
                                    <label  >Enter full name :</label>
                                    <input type="text" class="form-control" 

                                           placeholder="Enter full name" name ="fname">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" 

                                           placeholder="Enter email" name ="email">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control"
                                           name ="pass"
                                           placeholder="Password">
                                </div>

                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>



    </body>
</html>
