<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "";
    
    String PRadio = request.getParameter("PRadio");
    
    ////////// Write Predicted Values of Test/Prediction Data part //////////
    if (PRadio.equals("PRadio1"))
    {
        content += "Predicted Values of Test Data\r\n";
    }
    else
    {
        content += "Predicted Values of Prediction Data\r\n";
    }
    
    String sResult04aName = request.getParameter("sResult04aName");
    File file = new File(sResult04aName);
    if (!sResult04aName.equals("") && file.exists() && !file.isDirectory()) {
        content += "Data No.\tActual Y\tPredicted Y\r\n";
        
        BufferedReader br = new BufferedReader(new FileReader(sResult04aName));
        String line;
        int index = 1;
        /*if (PRadio.equals("PRadio1"))
        {*/
        while ((line = br.readLine()) != null)
        {
            content += index + "\t" + line + "\r\n";
            index++;
        }
        /*}
        else
        {
            while ((line = br.readLine()) != null)
            {
                cols = line.split("\\t");
                content += index + "\t" + cols[cols.length-1] + "\t" + cols[cols.length-1] + "\r\n";
                index++;
            }
        }*/
    }
    
    ////////// Write Predicted Values of Learning Data part //////////
    content += "\r\nPredicted Values of Learning Data\r\n";
    String sResult04bName = request.getParameter("sResult04bName");
    file = new File(sResult04bName);
    if (!sResult04aName.equals("") && file.exists() && !file.isDirectory()) {
        content += "Data No.\tActual Y\tPredicted Y\r\n";
        
        BufferedReader br = new BufferedReader(new FileReader(sResult04bName));
        String line;
        int index = 1;
        while ((line = br.readLine()) != null)
        {
            content += index + "\t" + line + "\r\n";
            index++;
        }
        br.close();
    }
    
    ////////// Write Predicted Values of Validation Partition from Learning Data part //////////
    content += "\r\nPredicted Values of Validation Partition from Learning Data\r\n";
    String sResult04cName = request.getParameter("sResult04cName");
    file = new File(sResult04cName);
    if (!sResult04cName.equals("") && file.exists() && !file.isDirectory()) {
        content += "Data No.\tActual Y\tPredicted Y\r\n";
        
        BufferedReader br = new BufferedReader(new FileReader(sResult04cName));
        String line;
        int index = 1;
        while ((line = br.readLine()) != null)
        {
            content += index + "\t" + line + "\r\n";
            index++;
        }
        br.close();
    }
    
    ////////// Write Predicted Values of Training Partition from Learning Data part //////////
    content += "\r\nPredicted Values of Training Partition from Learning Data\r\n";
    String sResult04dName = request.getParameter("sResult04dName");
    file = new File(sResult04dName);
    if (!sResult04dName.equals("") && file.exists() && !file.isDirectory()) {
        content += "Data No.\tActual Y\tPredicted Y\r\n";
        
        BufferedReader br = new BufferedReader(new FileReader(sResult04dName));
        String line;
        int index = 1;
        while ((line = br.readLine()) != null)
        {
            content += index + "\t" + line + "\r\n";
            index++;
        }
        br.close();
    }
    content = content.substring(0, content.length()-1);
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Prediction_Output.txt");
    response.getWriter().write(content);
%>