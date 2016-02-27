<%-- 
    Document   : logoutpage
    Created on : Oct 3, 2015, 5:36:34 PM
    Author     : Jeffisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("username") != "PiMLab" && session.getAttribute("username") != "a")
    {
        response.sendRedirect("loginpage.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NiMOPS: Log In</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
    </head>
    
    <body>
        <%@include file="navmenu.jsp" %>
        
        <%
            session.removeAttribute("username");
            session.removeAttribute("password");
            session.invalidate();
            response.sendRedirect("loginpage.jsp");
        %> 
        
        <div class="ctn">
        <div>
            <img src="homepage.png" alt="Image Not Found ..."/>
        </div>
        </div>
        
        <div id="wdetail">
        <div id="wrap">
        <h2>Logout was done successfully.</h2>
        </div>
        </div>
    </body>
</html>
