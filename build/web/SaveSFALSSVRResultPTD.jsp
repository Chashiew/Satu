<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "";
    String PRadio = request.getParameter("PRadio");
    String foldno = "0";
    
    String sResult05Name = request.getParameter("sResult05Name");
    File file = new File(sResult05Name);
    if (!sResult05Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(sResult05Name));
        String line;
        String[] cols;
        while ((line = br.readLine()) != null)
        {
            cols = line.split("\\t");
            if (!foldno.equals(cols[0]))
            {
                foldno = cols[0];
                content += "Performance Trajectory of Test Data - Fold No. " + foldno + "\r\n";
                content += "Generation No.\tMean RMSE\tBest RMSE\r\n";
            }
            content += cols[1] + "\t" + cols[2] + "\t"  + cols[3] + "\r\n";
        }
    }
    
    content = content.substring(0, content.length()-1);
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Performance_Trajectory_Data.txt");
    response.getWriter().write(content);
%>