<!DOCTYPE html>
<html>

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NiMOPS: Header</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
	
	<style>
	    img.bg {
                    /* Set rules to fill background */
                    min-height: 100%;
                    min-width: 1024px;

                    /* Set up proportionate scaling */
                    width: 100%;
                    height: auto;

                    /* Set up positioning */
                    position: fixed;
                    top: 0;
                    left: 0;
            }

            @media screen and (max-width: 1024px){
                    img.bg {
                            left: 50%;
                            margin-left: -512px; }
            }

            #page-wrap { position: relative; width: 400px; margin: 50px auto; padding: 20px; background: white; -moz-box-shadow: 0 0 20px black; -webkit-box-shadow: 0 0 20px black; box-shadow: 0 0 20px black; }
            p { font: 15px/2 Georgia, Serif; margin: 0 0 30px 0; text-indent: 40px; }
	</style>
</head>

<body>

    <img src="Header.jpg" alt="..." class="bg">
        
    <div id="page-wrap">
        <a href="loginpage.jsp">
            <font>
                Sign In
            </font>
        </a>
    </div>   
	
</body>

</html>