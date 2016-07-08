<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "Prediction Output of Test Data\r\n";
    
    String suResult04dName = request.getParameter("suResult04dName");
    File file = new File(suResult04dName);
    if (!suResult04dName.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(suResult04dName));
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
    response.setHeader("Content-Disposition", "attachment; filename=Prediction_Output_of_Test_Data.txt");
    response.getWriter().write(content);
%>