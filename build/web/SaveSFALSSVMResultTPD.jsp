<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "";
    String foldno = "0";
    
    String ssResult06Name = request.getParameter("ssResult06Name");
    File file = new File(ssResult06Name);
    if (!ssResult06Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(ssResult06Name));
        String line;
        String[] cols;
        
        while ((line = br.readLine()) != null)
        {
            cols = line.split("\\t");
            if (!foldno.equals(cols[0]))
            {
                foldno = cols[0];
                content += "Tracing Path for Searching Best Performance of Test Data - Fold No. " + foldno + "\r\n";
                content += "Generation No.\tFireflies No.\tPenalty Parameter, C\tKernel Function Parameter, S\tMAE\r\n";
            }
            content += cols[1] + "\t" + cols[2] + "\t"  + cols[3] + "\t" + cols[4] + "\t"  + cols[5] + "\r\n";
        }
    }
    
    content = content.substring(0, content.length()-1);
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Tracing_Path_Data.txt");
    response.getWriter().write(content);
%>