<%-- 
    Document   : logincheck
    Created on : Oct 3, 2015, 5:33:39 PM
    Author     : Jeffisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NiMOPS: Log In</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
    </head>
    
    <body>                
        <%
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            if (username.equals("PiMLab") && password.equals("27376321"))
                {
                    session.setAttribute("username", "PiMLab");
                    response.sendRedirect("Home.jsp");
                } 
            else if (username.equals("a") && password.equals("a"))
                {
                    session.setAttribute("username", "PiMLab");
                    response.sendRedirect("Home.jsp");
                } 
            else {
                response.sendRedirect("loginpage.jsp?wronglogin=1");
            } 
        %>

        <input type="text" name="username" id="username">
         
    </body>
</html>
