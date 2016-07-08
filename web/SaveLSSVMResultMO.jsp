<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "Main Output\r\n";
    
    String PRadioLSSVM = request.getParameter("PRadioLSSVM");
    
    ////////// Write Best performance part //////////
    String suResult01Name = request.getParameter("suResult01Name");
    File file = new File(suResult01Name);
    if (!suResult01Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(suResult01Name));
        String line = br.readLine();
        br.close();
        String[] cols; 
        if (line != null)
        {
            content += "\r\nBest performance\r\n";
            cols = line.split("\\t");
            content += "Percent Accuracy of Learning Data = " + cols[0] + "\r\n";
            if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                content += "Percent Accuracy of Test Data = " + cols[1] + "\r\n";
            } else {
                content += "Percent Accuracy of Prediction Data = " + cols[1] + "\r\n";
            }
            content += "Best Fold = " + cols[2] + "\r\n";
            content += "Computing time, s (sec) = " + cols[3] + "\r\n";
        }
    }
    
    ////////// Write Performance and Mean Performance of learning and test data part //////////
    String suResult02Name = request.getParameter("suResult02Name");
    file = new File(suResult02Name);
    if (!suResult02Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(suResult02Name));
        String line;
        String[] cols;
        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
            content += "\r\nPerformance of learning and test data\r\n";
        } else {
            content += "\r\nPerformance of learning and prediction data\r\n";
        }
        
        if (PRadioLSSVM.equals("PRadio1LSSVM"))
        {
            content += "\r\nPerformance of learning and test data\r\n";
            content += "Fold No.\tPercent Accuracy Learning\tPercent Accuracy Test\r\n";
        }
        else
        {
            content += "\r\nPerformance of learning and prediction data\r\n";
            content += "Fold No.\tPercent Accuracy Learning\tPercent Accuracy Prediction\r\n";
        }
        
        int index = 1;
        while (!(line = br.readLine()).equals(""))
        {
            cols = line.split("\\t");
            content += index + "\t" + cols[0] + "\t" + cols[1] + "\t" + "\r\n";
            index++;
        }
        
        if (PRadioLSSVM.equals("PRadio1LSSVM"))
        {
            content += "\r\nMean performance of learning and test data\r\n";
            content += "Mean Percent Accuracy Learning\tMean Percent Accuracy Test\r\n";
        }
        else
        {
            content += "\r\nMean performance of learning and prediction data\r\n";
            content += "Mean Percent Accuracy Learning\tMean Percent Accuracy Prediction\r\n";
        }
        
        line = br.readLine();
        if (line != null) {
            cols = line.split("\\t");
            content += index + "\t" + cols[0] + "\t" + cols[1] + "\t" + "\r\n";
        } 
    }
    
    ////////// Write Analysis Report part //////////
    content += "\r\n";
    String suResult03Name = request.getParameter("suResult03Name");
    file = new File(suResult03Name);
    if (!suResult03Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(suResult03Name));
        String line;
        while ((line = br.readLine()) != null)
        {
            content += line + "\r\n";
        }
        br.close();
    }
    
    ////////// Write Raw Dataset with Predicted Values part //////////
    content += "\r\nRaw Dataset with Predicted Values\r\n";
    
    String suResult04Name = request.getParameter("suResult04Name");
    file = new File(suResult04Name);
    if (!suResult04Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(suResult04Name));
        int ncol;
        String line;
        
        while (!(line = br.readLine()).equals(""))
        {}
        
        content += "\r\nLearning data with predicted values of the best fold\r\n";
        line = br.readLine();
        ncol = line.split("\\t").length - 2;
        
        content += "Data No.\t";
        for (int i = 1; i <= ncol; i++)
        {
            content += "X" + i + "\t";
        }
        content += "Actual Y\tPredicted Y\r\n";
        
        int index = 1;
        while (!line.equals(""))
        {
            content += index + "\t" + line + "\r\n";
            index++;
            line = br.readLine();
        }
        
        if (PRadioLSSVM.equals("PRadio1LSSVM"))
        {
            content += "\r\nTest data with predicted values of the best fold\r\n";
        }
        else
        {
            content += "\r\nPrediction data with predicted values of the best fold\r\n";
        }
        content += "Data No.\t";
        for (int i = 1; i <= ncol; i++)
        {
            content += "X" + i + "\t";
        }
        if (PRadioLSSVM.equals("PRadio1LSSVM"))
        {
            content += "Actual Y\t";
        }
        content += "Predicted Y\r\n";
        
        index = 1;
        while ((line = br.readLine()) != null)
        {
            content += index + "\t" + line + "\r\n";
            index++;
        }
        br.close();
    }
    content = content.substring(0, content.length()-1);
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Main_Output.txt");
    response.getWriter().write(content);
%>