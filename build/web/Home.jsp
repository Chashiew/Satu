<%-- 
    Document   : Home
    Created on : Oct 17, 2015, 4:44:50 PM
    Author     : Jeffisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NiMOPS: Home</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </head>
    
    <body>
        <%
            if (session.getAttribute("username") != "PiMLab" && session.getAttribute("username") != "guest")
            {
                response.sendRedirect("loginpage.jsp");
                return;
            }
        %>
        
        <div class="wdetail">
        <center>
            <img src="headhomepage.jpg" alt="Image Not Found ..." width="1000">
        </center>

            <div id="wrap">
                <ul class="navbarcss">
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="#" onclick="show(1);">About</a>
                        <ul id="ulabout">
                            <li>
                                <a href="About.jsp" style="border-right: 1px solid #ffffff">
                                    Brief Introduction
                                </a>
                            </li>
                            <li>
                                <a href="HowTo.jsp" style="border-right: 1px solid #ffffff">
                                    User Manual
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#" onclick="show(2);">Baseline Model</a>
                        <%
                            if (null == session.getAttribute("username"))
                            {
                                //session.setAttribute("username", "");
                            }

                            //if (session.getAttribute("username").toString() == "PiMLab")
                            //{
                        %>
                        <ul id="ulbaseline">
                           <li>
                                <a href="AllModulesBaseline.jsp?VarA=1" style="border-right: 1px solid #ffffff">
                                    Regression
                                </a>
                           </li>

                           <li>
                                <a href="AllModulesBaseline.jsp?VarB=2" style="border-right: 1px solid #ffffff">
                                    Classification
                                </a>
                           </li>
                        </ul> 
                        <% 
                            //}
                        %>
                    </li>
                    <li><a href="#" onclick="show(3);">NiMOPS System</a>
                        <% 
                            if (session.getAttribute("username").toString() == "PiMLab")
                            {
                        %>
                        <ul id="ulnimops">
                           <li>
                                <a href="SFALSSVR.jsp?VarOne=1&PRadio=PRadio1" style="border-right: 1px solid #ffffff" >
                                    NiMOPS for Regression
                                </a>
                           </li>

                           <li>
                                <a href="SFALSSVM.jsp?VarTwo=2" style="border-right: 1px solid #ffffff">
                                    NiMOPS for Classification
                                </a>
                           </li>
                        </ul>  
                        <% 
                            }
                        %>
                    </li>
                    <li><a href="Contact.jsp">Contact Us</a></li>
                    <% 
                        if (session.getAttribute("username").toString() != "PiMLab")
                        {
                    %>
                    <li>
                        <a href="loginpage.jsp" style="border-right: 1px solid #ffffff">Log In</a>
                    </li>
                    <% 
                        } 
                        else
                        {
                    %>
                    <li>
                        <a href="logoutpage.jsp" style="border-right: 1px solid #ffffff">Log Out</a>
                    </li>
                    <% 
                        }
                    %>
                </ul>
            </div>
            <br>
            <br>
            <br>
            <center> 
                <div>
                    <img src="homepage7.JPG" alt="Image Not Found ..." style="width: 900px"/>
                </div>
            </center>
            <div class="scrollToTop">
                <img src="arrowup.JPG" alt="..." width="18">  
            </div>
        </div>
        <br>
        
        <center>
            <div class="container boundary">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="6000">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="homepage1.jpg" alt="...">
                    </div>
                    <div class="item">
                        <img src="homepage9.jpg" alt="...">
                    </div>
                    <div class = "item">
                        <img src = "homepage2.JPG" alt="...">
                    </div>
                    <div class = "item">
                        <img src = "homepage3.JPG" alt="...">
                    </div>
                    <div class = "item">
                        <img src = "homepage8.jpg" alt="...">
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control editbootstrap" href="#carousel-example-generic" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control editbootstrap" href="#carousel-example-generic" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
              </div> <!-- Carousel -->
            </div>
        </center>
        <!--<center>
            <div id = "myCarousel" class = "carousel slide" data-ride="carousel">

                <!-- Carousel indicators
                <ol class = "carousel-indicators">
                   <li data-target = "#myCarousel" data-slide-to = "0" class = "active"></li>
                   <li data-target = "#myCarousel" data-slide-to = "1"></li>
                   <li data-target = "#myCarousel" data-slide-to = "2"></li>
                   <li data-target = "#myCarousel" data-slide-to = "3"></li>
                   <li data-target = "#myCarousel" data-slide-to = "4"></li>
                </ol>   

                <!-- Carousel items
                <div class = "carousel-inner">
                    <div class = "item active">
                      <img src = "homepage1.jpg" alt = "First slide">
                    </div>

                    <div class = "item">
                        <img src = "homepage9.jpg" alt = "Second slide">
                    </div>

                    <div class = "item">
                        <img src = "homepage2.JPG" alt = "Third slide">
                    </div>

                    <div class = "item">
                        <img src = "homepage3.JPG" alt = "Forth slide">
                    </div>

                    <div class = "item">
                        <img src = "homepage8.jpg" alt = "Fifth slide">
                    </div>
                </div>

                <!-- Carousel nav
                <a class = "carousel-control left editbootstrap" href = "#myCarousel" data-slide = "prev">&lsaquo;</a>
                <a class = "carousel-control right editbootstrap" href = "#myCarousel" data-slide = "next">&rsaquo;</a>
            </div> 
        </center> --> 
        <br>
        <center>
            <img src="NiMOPS.JPG" alt="Image Not Found ..." style="width: 890px; bottom: 2%;"/>
        </center> 
    
        <script>
            function show(val)
            {
                if (val === 1)
                {
                    if (document.getElementById('ulabout').style.display === 'block')
                    {
                        document.getElementById('ulabout').style.display = 'none';
                    }
                    else
                    {
                        document.getElementById('ulabout').style.display = 'block';
                        document.getElementById('ulbaseline').style.display = 'none';
                        document.getElementById('ulnimops').style.display = 'none';
                    }
                    if (document.getElementById('ulaboutsm').style.display === 'block')
                    {
                        document.getElementById('ulaboutsm').style.display = 'none';
                    }
                    else
                    {
                        document.getElementById('ulaboutsm').style.display = 'block';
                        document.getElementById('ulbaselinesm').style.display = 'none';
                        document.getElementById('ulnimopssm').style.display = 'none';
                    }
                }
                else if (val === 2)
                {
                    if (document.getElementById('ulbaseline').style.display === 'block')
                    {
                        document.getElementById('ulbaseline').style.display = 'none';
                    }
                    else
                    {
                        document.getElementById('ulbaseline').style.display = 'block';
                        document.getElementById('ulabout').style.display = 'none';
                        document.getElementById('ulnimops').style.display = 'none';
                    }
                    if (document.getElementById('ulbaselinesm').style.display === 'block')
                    {
                        document.getElementById('ulbaselinesm').style.display = 'none';
                    }
                    else
                    {
                        document.getElementById('ulbaselinesm').style.display = 'block';
                        document.getElementById('ulaboutsm').style.display = 'none';
                        document.getElementById('ulnimopssm').style.display = 'none';
                    }
                }
                else if (val === 3)
                {
                    if (document.getElementById('ulnimops').style.display === 'block')
                    {
                        document.getElementById('ulnimops').style.display = 'none';
                    }
                    else
                    {
                        document.getElementById('ulnimops').style.display = 'block';
                        document.getElementById('ulbaseline').style.display = 'none';
                        document.getElementById('ulabout').style.display = 'none';
                    }
                    if (document.getElementById('ulnimopssm').style.display === 'block')
                    {
                        document.getElementById('ulnimopssm').style.display = 'none';
                    }
                    else
                    {
                        document.getElementById('ulnimopssm').style.display = 'block';
                        document.getElementById('ulbaselinesm').style.display = 'none';
                        document.getElementById('ulaboutsm').style.display = 'none';
                    }
                }
            }
        </script>
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
