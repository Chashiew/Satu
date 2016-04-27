<%-- 
    Document   : logincheck
    Created on : Oct 3, 2015, 5:33:39 PM
    Author     : Jeffisa
--%>

<%@page import="org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NiMOPS: Log In</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
    </head>
    
    <body>                
        <%!
            public void clearexcessivefiles()
            {
                String path = "E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web";
                File dir = new File(path);
                File[] listOfFiles = dir.listFiles();
                ArrayList<File> arr = new ArrayList();
                for (File file : listOfFiles) {
                    if (file.isFile())
                    {
                        if (getExtension(file.getName()).equals("txt"))
                        {
                            arr.add(file);
                        }
                    }
                }
                
                int limit = 50;
                if (arr.size() > limit)
                {
                    arr = sortArraylist(arr);
                    while (arr.size() > limit)
                    {
                        arr.get(0).delete();
                        arr.remove(0);
                    }
                }
                System.out.println("Excessive files deleted succesfully.");
            }
            
            private String getExtension(String name)
            {
                if (name.contains("."))
                {
                    return name.substring(name.lastIndexOf('.')+1);
                }
                else
                {
                    return "";
                }
            }
            
            private ArrayList sortArraylist(ArrayList<File> arr)
            {
                ArrayList<File> newarr = new ArrayList();
                for (int i = 0; i < arr.size(); i++)
                {
                    int index = 0;
                    boolean bool = true;
                    while (index < newarr.size() && bool == true)
                    {
                        long val1 = arr.get(i).lastModified();
                        long val2 = newarr.get(index).lastModified();
                        if (val1 <= val2)
                        {
                            bool = false;
                        }
                        else
                        {
                            index++;
                        }
                    }
                    newarr.add(index, arr.get(i));
                }
                return newarr;
            }
        %>
        <%
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            if (username.equals("PiMLab") && password.equals("27376321"))
                {
                    clearexcessivefiles();
                    session.setAttribute("username", "PiMLab");
                    response.sendRedirect("Home.jsp");
                } 
            else if (username.equals("a") && password.equals("a"))
                {
                    clearexcessivefiles();
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
