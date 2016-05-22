<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "";
    String PRadio = request.getParameter("PRadio");
    String foldno = "0";
    
    String sResult06Name = request.getParameter("sResult06Name");
    File file = new File(sResult06Name);
    if (!sResult06Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(sResult06Name));
        String line;
        String[] cols;
        
        while ((line = br.readLine()) != null)
        {
            cols = line.split("\\t");
            if (!foldno.equals(cols[0]))
            {
                foldno = cols[0];
                content += "Tracing Path for Searching Best Performance of Test Data - Fold No. " + foldno + "\r\n";
                content += "Generation No.\tFireflies No.\tPenalty Parameter, C\tKernel Function Parameter, S\tRMSE\r\n";
            }
            content += cols[1] + "\t" + cols[2] + "\t"  + cols[3] + "\t" + cols[4] + "\t"  + cols[5] + "\r\n";
        }
    }
    
    content = content.substring(0, content.length()-1);
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Tracing_Path_Data.txt");
    response.getWriter().write(content);
%>