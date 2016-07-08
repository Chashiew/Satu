<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "";
    String foldno = "0";
    
    String ssResult05Name = request.getParameter("ssResult05Name");
    File file = new File(ssResult05Name);
    if (!ssResult05Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(ssResult05Name));
        String line;
        String[] cols;
        while ((line = br.readLine()) != null)
        {
            cols = line.split("\\t");
            if (!foldno.equals(cols[0]))
            {
                foldno = cols[0];
                content += "Performance Trajectory of Test Data - Fold No. " + foldno + "\r\n";
                content += "Generation No.\tMean MAE\tBest MAE\r\n";
            }
            content += cols[1] + "\t" + cols[2] + "\t"  + cols[3] + "\r\n";
        }
    }
    
    content = content.substring(0, content.length()-1);
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Performance_Trajectory_Data.txt");
    response.getWriter().write(content);
%>