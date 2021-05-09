 

<%@page import="com.User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
    <a class="navbar-brand" href="index.jsp"><i class="fa fa-book" aria-hidden="true"></i>
        E-Notes</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
             aria-controls="navbarSupportedContent"   aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home.jsp"><i class="fa fa-home" 
                                                        aria-hidden="true"></i>Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="addnotes.jsp"><i class="fa fa-plus" aria-hidden="true"></i>Add notes</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="shownote.jsp"><i class="fa fa-address-book-o" aria-hidden="true"></i>
                    Show Notes</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">

            <%
                UserDetails user = (UserDetails) session.getAttribute("userD");
                if (user != null) {
                   
            %>
            <a class="btn btn-light my-2 my-sm-0 mr-2"  >
                <i class="fa fa-sign-in" aria-hidden="true"></i><%=user.getName()  %> </a>
                <a class="btn btn-light my-2 my-sm-0" href="LogoutServlet" ><i class="fa fa-user-plus" 
                                                                   aria-hidden="true"></i>
                logout</a>

            <%
            } else {
            %>
            <a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-2"  >
                <i class="fa fa-sign-in" aria-hidden="true"></i>
                login</a>
            <a  href="register.jsp" class="btn btn-light my-2 my-sm-0"  ><i class="fa fa-user-plus" 
                                                                   aria-hidden="true"></i>
                register</a>

            <%
                }
            %>






        </form>
    </div>
</nav>
