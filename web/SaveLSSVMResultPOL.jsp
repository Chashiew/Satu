<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "Prediction Output of Learning Data\r\n";
    
    String suResult04cName = request.getParameter("suResult04cName");
    File file = new File(suResult04cName);
    if (!suResult04cName.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(suResult04cName));
        String line = "";
        
        while (line != null)
        {
            line = br.readLine();
            content += "\r\n" + line + "\r\n";
            content += "Data No.\tActual Value\tPredicted Value\r\n";
            int index = 1;
            line = br.readLine();
            while (line != null && !line.equals(""))
            {
                content += index + "\t" + line + "\r\n";
                index++;
                line = br.readLine();
            }
        }
    }
    content = content.substring(0, content.length()-1);
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Prediction_Output_of_Learning_Data.txt");
    response.getWriter().write(content);
%>