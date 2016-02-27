<%-- 
    Document   : Contact
    Created on : Sep 15, 2015, 11:19:40 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NiMOPS: Contact Us</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
        
        <script type="text/javascript">
            function validation(){
                var valid = true;
                if(document.getElementById("name").value == ""){
                    alert("Input your name ...!");
                    valid = false;
                }
                if(document.getElementById("namesm").value == ""){
                    alert("Input your name ...!");
                    valid = false;
                }
                if(document.getElementById("email").value == ""){
                    alert("Input your email ...!");
                    valid = false;
                }
                if(document.getElementById("emailsm").value == ""){
                    alert("Input your email ...!");
                    valid = false;
                }
                if(document.getElementById("message").value == ""){
                    alert("Input your message ...!");
                    valid = false;
                }
                if(document.getElementById("messagesm").value == ""){
                    alert("Input your message ...!");
                    valid = false;
                }
                return valid;
            }
        </script>
    </head>
    
    <body>
    <center>
        <img src="headhomepage.jpg" alt="Image Not Found ..." width="1000">
    </center>
    <%@include file="navmenu.jsp" %>
    
    <form action="EmailFunction.jsp" method="post" id="emailform">
        <div class="wdetail">
            <br>
            <center>    
                <br>
                <br>
                <center>
                    <font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt" color="#2F4F4F">
                    <b>Contact Us</b>
                    </font>
                </center>
                <table>
                    <tr>
                        <td align="right">
                            <label><font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 16pt"> Your Name : </font></label>
                        </td>
                        <td>
                            &nbsp; <input type="text" name="dname" id="name" size="58" class="text">
                        </td>
                    <br><br>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label><font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 16pt"> Email : </font></label>
                        </td>
                        <td>
                            &nbsp; <input type="text" name="demail" id="email" class="text">
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label><font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 16pt"> Message : </font></label>
                        </td>
                        <td>
                            &nbsp; <textarea name="dmessage" form="emailform" id="message" cols="44" rows="8"></textarea>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <center>            
                    <table>    
                        <tr>
                            <td>
                                <input type="submit" name="dsubmit" value="Submit" style="font-size: 12pt" onclick="validation();">
                            </td>
                            <br><br><br>
                        </tr>
                    </table>
                </center>
            </center>
        </div>
    </form>
    <style>
        .text, textarea {
            font-family: Arial, sans-serif;
            font-size: 100%;
            width: 26em;
            width: 40ch;
        }
    </style>
    </body>
</html>
