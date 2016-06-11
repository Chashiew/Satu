<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "Main Output\r\n";
    
    String PRadio = request.getParameter("PRadio");
    
    ////////// Write Best performance part //////////
    String stResult01Name = request.getParameter("stResult01Name");
    File file = new File(stResult01Name);
    if (!stResult01Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(stResult01Name));
        String line = br.readLine();
        br.close();
        String[] cols; 
        if (line != null)
        {
            content += "\r\nBest performance\r\n";
            cols = line.split("\\t");
            if (PRadio.equals("PRadio1")) {
                content += "Mean RMSE of Test Data = " + cols[0] + "\r\n";
                content += "Mean R of Test Data = " + cols[1] + "\r\n";
            } else {
                content += "Mean RMSE of Prediction Data = " + cols[0] + "\r\n";
                content += "Mean R of Prediction Data = " + cols[1] + "\r\n";
            }
            content += "Best Fold = " + cols[2] + "\r\n";
            content += "Mean R of Test Data = " + cols[3] + "\r\n";
        }
    }
    
    ////////// Write Performance and Mean Performance of learning and test data part //////////
    String stResult02Name = request.getParameter("stResult02Name");
    file = new File(stResult02Name);
    if (!stResult02Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(stResult02Name));
        String line;
        String[] cols;
        if (PRadio.equals("PRadio1")) {
            content += "\r\nPerformance of learning and test data\r\n";
        } else {
            content += "\r\nPerformance of learning and prediction data\r\n";
        }
        
        if (PRadio.equals("PRadio1"))
        {
            content += "\r\nPerformance of learning and test data\r\n";
            content += "Fold No.\tRMSE Learning\tRMSE Test\tMAE Learning\tMAE Test\tMAPE Learning\tMAPE Test\tR Learning\tR Test\r\n";
        }
        else
        {
            content += "\r\nPerformance of learning and prediction data\r\n";
            content += "Fold No.\tRMSE Learning\tRMSE Prediction\tMAE Learning\tMAE Prediction\tMAPE Learning\tMAPE Prediction\tR Learning\tR Prediction\r\n";
        }
        
        int index = 1;
        while (!(line = br.readLine()).equals(""))
        {
            cols = line.split("\\t");
            content += index + "\t" + cols[0] + "\t" + cols[1] + "\t" + cols[2] + "\t" + cols[3] + "\t" + cols[4] + "\t" + cols[5] + "\t" + cols[6] + "\t" + cols[7] + "\r\n";
            index++;
        }
        
        if (PRadio.equals("PRadio1"))
        {
            content += "\r\nMean performance of learning and test data\r\n";
        }
        else
        {
            content += "\r\nMean performance of learning and prediction data\r\n";
        }
        
        content += "Mean RMSE Learning\tMean MAE Learning\tMean MAPE Learning\tMean R Learning\r\n";
        
        line = br.readLine();
        if (line != null) {
            cols = line.split("\\t");
            content += index + "\t" + cols[0] + "\t" + cols[1] + "\t" + cols[2] + "\t" + cols[3] + "\r\n";
        } 
        
        if (PRadio.equals("PRadio1"))
        {
            content += "Mean RMSE Test\tMean MAE Test\tMean MAPE Test\tMean R Test\r\n";
        } else {
            content += "Mean RMSE Learning\tMean MAE Learning\tMean MAPE Learning\tMean R Learning\r\n";
        }
        line = br.readLine();
        if (line != null) {
            cols = line.split("\\t");
            content += index + "\t" + cols[0] + "\t" + cols[1] + "\t" + cols[2] + "\t" + cols[3] + "\r\n";
        }
    }
    
    ////////// Write Analysis Report part //////////
    content += "\r\n";
    String stResult03Name = request.getParameter("stResult03Name");
    file = new File(stResult03Name);
    if (!stResult03Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(stResult03Name));
        String line;
        while ((line = br.readLine()) != null)
        {
            content += line + "\r\n";
        }
        br.close();
    }
    
    ////////// Write Raw Dataset with Predicted Values part //////////
    content += "\r\nRaw Dataset with Predicted Values\r\n";
    
    String stResult04Name = request.getParameter("stResult04Name");
    file = new File(stResult04Name);
    if (!stResult04Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(stResult04Name));
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
        
        if (PRadio.equals("PRadio1"))
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
        if (PRadio.equals("PRadio1"))
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