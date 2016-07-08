<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "";
    
    String PRadioLSSVM = request.getParameter("PRadioLSSVM");
    
    ////////// Write Predicted Values of Test/Prediction Data part //////////
    if (PRadioLSSVM.equals("PRadio1LSSVM"))
    {
        content += "Predicted Values of Test Data\r\n";
    }
    else
    {
        content += "Predicted Values of Prediction Data\r\n";
    }
    
    String ssResult04aName = request.getParameter("ssResult04aName");
    File file = new File(ssResult04aName);
    if (!ssResult04aName.equals("") && file.exists() && !file.isDirectory()) {
        content += "Data No.\tActual Y\tPredicted Y\r\n";
        
        BufferedReader br = new BufferedReader(new FileReader(ssResult04aName));
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
    String ssResult04bName = request.getParameter("ssResult04bName");
    file = new File(ssResult04bName);
    if (!ssResult04aName.equals("") && file.exists() && !file.isDirectory()) {
        content += "Data No.\tActual Y\tPredicted Y\r\n";
        
        BufferedReader br = new BufferedReader(new FileReader(ssResult04bName));
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
    String ssResult04cName = request.getParameter("ssResult04cName");
    file = new File(ssResult04cName);
    if (!ssResult04cName.equals("") && file.exists() && !file.isDirectory()) {
        content += "Data No.\tActual Y\tPredicted Y\r\n";
        
        BufferedReader br = new BufferedReader(new FileReader(ssResult04cName));
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
    String ssResult04dName = request.getParameter("ssResult04dName");
    file = new File(ssResult04dName);
    if (!ssResult04dName.equals("") && file.exists() && !file.isDirectory()) {
        content += "Data No.\tActual Y\tPredicted Y\r\n";
        
        BufferedReader br = new BufferedReader(new FileReader(ssResult04dName));
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