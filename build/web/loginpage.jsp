<%-- 
    Document   : loginpage
    Created on : Oct 3, 2015, 5:29:12 PM
    Author     : Jeffisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>NiMOPS: Log In</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
        
    <%--><style>
        body { 
            background: url("edit.png");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: right bottom;
            background-size: 450px;
        }
        </style><--%>
</head>
    
 <body>
    <div id='wdetail' class="visible-lg-block">
        <center>
            <img src="NiMOPS.JPG" alt="Image Not Found ..." width="910">
        </center>
    </div><div class="visible-sm-block">
        <center>
            <img src="NiMOPS.JPG" alt="Image Not Found ..." width="850">
        </center>
    </div>
    <%--<div class="ctn">
        <div>
            <img src="Logo-Home.png" alt="Image Not Found ..."/>
        </div>
    </div>--%>
        
        
    <center>
        <br><br>
        <h1><font color="#2F4F4F" face="Georgia">Please Sign In</font></h1>
        <% 
            String wronglogin = request.getParameter("wronglogin"); 
            if (wronglogin == null) {
        %>
            <input type="hidden" id="wronglogin">
        <% } else { %>
            <input type="hidden" id="wronglogin" value="1">
        <% } %>
        <form name="form" action="logincheck.jsp" method="post">
            <table>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <font face="Georgia" size="4">Username :</font>
                    </td>
                    <td>
                        &nbsp; <input type="text" name="username" id="username" style="font-size: 11pt">
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <font face="Georgia" size="4">Password :</font>
                    </td>
                    <td>
                        &nbsp; <input type="password" name="password" id="password" style="font-size: 11pt"> 
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
            <input type="submit" name="VarSubmit" value="Submit" style="font-size: 10pt"/> 
            
            <%--
            username.focus();
            --%>                                        
        </form> 
    </center>
 
    <!--<script>
        function checklogin(val) { 
            var valid = true;
            var username = document.getElementById("username");
            var password = document.getElementById("password");
            
                if (username.value !== "PiMLab" || password.value !== "27376321") {
                    alert("Username/password is unknown...!");
                    username.focus();
                    valid = false;
                } else {
                    }
            return valid;
        }
   </script>-->
    <script>
        if (document.getElementById("wronglogin").value !== "")
        {
            alert("Username or Password is incorrect!");
        }
    </script>
</body>

</html>
