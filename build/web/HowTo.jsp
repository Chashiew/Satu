<%-- 
    Document   : HowTo
    Created on : Sep 15, 2015, 11:20:38 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("username") != "PiMLab" && session.getAttribute("username") != "guest")
    {
        response.sendRedirect("loginpage.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NiMOPS: User's Manual</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
        
    </head>
    
    <body>
        <center>
            <img src="headhomepage.jpg" alt="Image Not Found ..." width="1000">
        </center>
        <%@include file="navmenu.jsp" %>
        
        <div class="visible-lg-block wdetail">
            <br>
            <br>
            <br>
            <center>
                <div>
                    <img src="manual1.JPG" alt="Image Not Found ..." style="width: 1000px"/>
                </div>
                <br>
                <br>
                <br>
                <div>
                    <img src="manual6.JPG" alt="Image Not Found ..." style="width: 1000px"/>
                </div>
                <br>
                <br>
                <div>
                    <img src="Step Order1.jpg" alt="Image Not Found ..." style="width: 1000px"/>
                </div>
                <div>
                        <img src="manual2.JPG" alt="Image Not Found ..." style="width: 850px"/>
                </div>
                <br><br><br>
                <div>
                        <img src="manual3.JPG" alt="Image Not Found ..." style="width: 1000px"/>
                </div>
                <br>
                <div>
                    <img src="Step Order2.jpg" alt="Image Not Found ..." style="width: 1000px"/>
                </div>
                <div>
                        <img src="manual4.JPG" alt="Image Not Found ..." style="width: 1000px"/>
                </div>
                
            </center>
            <br>
            <br>
            <div class="scrollToTop">
                <img src="arrowup.JPG" alt="..." width="18">  
            </div>
        </div>
        
        <div class="visible-sm-block wdetailsm">
            <br>
            <br>
            <br>
            <center>
                <div>
                    <img src="manual1.JPG" alt="Image Not Found ..." style="width: 800px"/>
                </div>
                <br>
                <br>
                <br>
                <div>
                    <img src="manual10.JPG" alt="Image Not Found ..." style="width: 800px"/>
                </div>
                <br>
                <br>
                <div>
                    <img src="Step Order1.jpg" alt="Image Not Found ..." style="width: 800px"/>
                </div>
                <div>
                        <img src="manual2.JPG" alt="Image Not Found ..." style="width: 680px"/>
                </div>
                <br>
                <div>
                    <img src="Step Order2.jpg" alt="Image Not Found ..." style="width: 800px"/>
                </div>
                <div>
                        <img src="manual3.JPG" alt="Image Not Found ..." style="width: 544px"/>
                </div>
                <div>
                        <img src="manual4.JPG" alt="Image Not Found ..." style="width: 520px"/>
                </div>
                <br>
                <div>
                    <img src="Step Order3.jpg" alt="Image Not Found ..." style="width: 800px"/>
                </div>
                <div>
                        <img src="manual5.JPG" alt="Image Not Found ..." style="width: 560px"/>
                </div>
                
            </center>
            <br>
            <br>
            <div class="scrollToTopsm">
                <img src="arrowup.JPG" alt="..." width="14">  
            </div>
        </div>
        
        <script>
            $(document).ready(function(){

                //Check to see if the window is top if not then display button
                $(window).scroll(function(){
                        if ($(this).scrollTop() > 100) {
                                $('.scrollToTop').fadeIn();
                        } else {
                                $('.scrollToTop').fadeOut();
                        }
                        if ($(this).scrollTop() > 100) {
                                $('.scrollToTopsm').fadeIn();
                        } else {
                                $('.scrollToTopsm').fadeOut();
                        }
                });

                //Click event to scroll to top
                $('.scrollToTop').click(function(){
                        $('html, body').animate({scrollTop : 0},800);
                        return false;
                });
                $('.scrollToTopsm').click(function(){
                        $('html, body').animate({scrollTopsm : 0},800);
                        return false;
                });
            });
        </script>
    </body>
</html>
