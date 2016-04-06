<%-- 
    Document   : About
    Created on : Sep 15, 2015, 11:19:32 PM
    Author     : User
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
        <title>NiMOPS: Brief Introduction</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
        
        <style>
            #container {
                position:relative;
            }
            #containersm {
                position:relative;
            }

            #img2 {
                position: absolute;
                right: 110px;
                top: 85px;
            }
            #img2sm {
                position: absolute;
                right: 88px;
                top: 68px;
            }
            
            #img3 {
                position: absolute;
                right: 140px;
                top: 135px;
            }
            #img3sm {
                position: absolute;
                right: 112px;
                top: 108px;
            }
            
            #img4 {
                position: absolute;
                left: 70px;
                top: 260px;
            }
            #img4sm {
                position: absolute;
                left: 56px;
                top: 208px;
            }
            
            #img5 {
                position: absolute;
                left: 100px;
                top:310px;
            }
            #img5sm {
                position: absolute;
                left: 80px;
                top:248px;
            }
        </style>
    </head>
    
    <body>
        <center>
            <img src="headhomepage.jpg" alt="Image Not Found ..." width="1000">
        </center>
        <%@include file="navmenu.jsp" %>
            
        <div class="wdetail">
            <br>
            <br>
            <br>
            <div>
                <img src="About1.JPG" alt="Image Not Found ..." style="width: 1000px"/>
            </div>
            <div>
                <img src="About2.JPG" alt="Image Not Found ..." style="width: 1000px"/>
            </div>
            <br>
            <br>
            <br>
            <div>
                <img src="About3.JPG" alt="Image Not Found ..." style="width: 1000px"/>
            </div>
            <br>
            <div>
                <img src="About4.JPG" alt="Image Not Found ..." style="width: 1000px"/>
            </div>
            <br>
            <div id="container">
                <img src="a-main.JPG" id="img1" style="width: 1000px" alt=""/>
                <a href="">
                    <img src="a-LVM.JPG" title="Click Me!" style="width: 210px" id="img2" alt=""/></a>
                <a href="">
                    <img src="a-LVR.JPG" title="Click Me!" style="width: 180px" id="img3" alt=""/></a>
                <a href="">
                    <img src="a-SFAM.JPG" title="Click Me!" style="width: 260px" id="img4" alt=""/></a>
                <a href="http://ascelibrary.org/doi/10.1061/%28ASCE%29CP.1943-5487.0000547">
                    <img src="a-SFAR.JPG" title="Click Me!" style="width: 230px" id="img5" alt=""/></a>
            </div>
            <div class="scrollToTop">
                <img src="arrowup.JPG" alt="..." width="18">  
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
