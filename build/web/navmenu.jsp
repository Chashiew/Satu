<!--<div class=" visible-lg-block wdetail">-->
<div class="wdetail">
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
                   <%
                        String ua=request.getHeader("User-Agent").toLowerCase();
                        if(ua.matches("(?i).*((android|bb\\d+|meego).+mobile|avantgo|bada\\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\\.(browser|link)|vodafone|wap|windows ce|xda|xiino).*")||ua.substring(0,4).matches("(?i)1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\\-|your|zeto|zte\\-")) {
                    %>
                    <li>
                        <a href="AllModulesmobile.jsp?VarOne=1&PRadio=PRadio1" style="border-right: 1px solid #ffffff" >
                            NiMOPS for Regression
                        </a>
                    </li>
                    <%} else {%>
                    <li>
                        <a href="SFALSSVR.jsp?VarOne=1&PRadio=PRadio1" style="border-right: 1px solid #ffffff" >
                            NiMOPS for Regression
                        </a>
                    </li>
                    <%}%>

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
</div>
        
<!--<div class="visible-sm-block wdetailsm">
    <center>
        <img src="headhomepage.jpg" alt="Image Not Found ..." width="800">
    </center>
    
    <div id="wrapsm">
        <ul class="navbarsm">
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="#" onclick="show(1);">About</a>
                <ul id="ulaboutsm">
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
                <ul id="ulbaselinesm">
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
                <ul id="ulnimopssm">
                   <li>
                        <a href="AllModules.jsp?VarOne=1&PRadio=PRadio1" style="border-right: 1px solid #ffffff" >
                            NiMOPS for Regression
                        </a>
                   </li>

                   <li>
                        <a href="AllModules.jsp?VarTwo=2" style="border-right: 1px solid #ffffff">
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
</div>-->        
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