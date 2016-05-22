<%@page import="java.io.FileReader"%><%@page import="java.io.BufferedReader"%><%@page import="java.io.File"%>
<%
    String content = "Main Output\r\n";
    
    String PRadio = request.getParameter("PRadio");
    String OptimRadio = request.getParameter("OptimRadio");
    
    ////////// Write Best optimum hyperparameters part //////////
    String sResult01Name = request.getParameter("sResult01Name");
    File file = new File(sResult01Name);
    if (!sResult01Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(sResult01Name));
        String line = br.readLine();
        br.close();
        String[] cols; 
        if (line != null)
        {
            content += "\r\nBest optimum hyperparameters\r\n";
            cols = line.split("\\t");
            content += "Penalty Parameter, C = " + cols[0] + "\r\n";
            content += "Kernel Function Parameter, S = " + cols[1] + "\r\n";
            
            if (OptimRadio.equals("OptimRadio1"))
            {
                content += "RMSE = ";
            }
            else if (OptimRadio.equals("OptimRadio2"))
            {
                content += "MAE = ";
            }
            else if (OptimRadio.equals("OptimRadio3"))
            {
                content += "MAPE = ";
            }
            content += cols[2] + "\r\n";
            content += "Best Fold = " + cols[3] + "\r\n";
            content += "Computing time, s (sec) = " + cols[4] + "\r\n";
        }
    }
    
    ////////// Write Optimum hyperparameters part //////////
    String sResult02Name = request.getParameter("sResult02Name");
    file = new File(sResult02Name);
    if (!sResult02Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(sResult02Name));
        String line;
        String[] cols;
        content += "\r\nOptimum hyperparameters\r\n";
        content += "Fold No.\tPenalty Parameter, C\tKernel Function Parameter, S\t";
        if (OptimRadio.equals("OptimRadio1"))
        {
            content += "RMSE of Validation Data\r\n";
        }
        else if (OptimRadio.equals("OptimRadio2"))
        {
            content += "MAE of Validation Data\r\n";
        }
        else if (OptimRadio.equals("OptimRadio3"))
        {
            content += "MAPE of Validation Data\r\n";
        }
        
        while (!(line = br.readLine()).equals(""))
        {
            cols = line.split("\\t");
            content += cols[3] + "\t" + cols[0] + "\t" + cols[1] + "\t" + cols[2] + "\r\n";
        }
    
    ////////// Write Performance of learning and test/prediction data part //////////    
        content += "\r\nSystem Performance Evaluation\r\n";
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
        
        while (!(line = br.readLine()).equals("")){}    // skip unneeded part
        
        int index = 1;
        while (!(line = br.readLine()).equals(""))
        {
            cols = line.split("\\t");
            content += index + "\t" + cols[0] + "\t" + cols[1] + "\t" + cols[2] + "\t" + cols[3] + "\t" + cols[4] + "\t" + cols[5] + "\t" + cols[6] + "\t" + cols[7] + "\r\n";
            index++;
        }
        
    ////////// Write Performance of training and validation partitions of learning data part //////////
        content += "\r\nPerformance of training and validation partitions of learning data\r\n";
        content += "Fold No.\tRMSE Training\tRMSE Validation\tMAE Training\tMAE Validation\tMAPE Training\tMAPE Validation\tR Training\tR Validation\r\n";
        index = 1;
        while ((line = br.readLine()) != null)
        {
            cols = line.split("\\t");
            content += index + "\t" + cols[0] + "\t" + cols[1] + "\t" + cols[2] + "\t" + cols[3] + "\t" + cols[4] + "\t" + cols[5] + "\t" + cols[6] + "\t" + cols[7] + "\r\n";
            index++;
        }
        br.close();
    }
    
    ////////// Write Analysis Report part //////////
    content += "\r\n";
    String sResult03Name = request.getParameter("sResult03Name");
    file = new File(sResult03Name);
    if (!sResult03Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(sResult03Name));
        String line;
        while ((line = br.readLine()) != null)
        {
            content += line + "\r\n";
        }
        br.close();
    }
    
    ////////// Write Raw Dataset with Predicted Values part //////////
    content += "\r\nRaw Dataset with Predicted Values\r\n";
    
    String sResult04Name = request.getParameter("sResult04Name");
    file = new File(sResult04Name);
    if (!sResult04Name.equals("") && file.exists() && !file.isDirectory()) {
        BufferedReader br = new BufferedReader(new FileReader(sResult04Name));
        int ncol;
        String line;
        
        if (PRadio.equals("PRadio1"))
        {
            content += "\r\nTest data with predicted values of the best fold\r\n";
            line = br.readLine();
            ncol = line.split("\\t").length - 2;
        }
        else
        {
            content += "\r\nPrediction data with predicted values of the best fold\r\n";
            line = br.readLine();
            ncol = line.split("\\t").length - 1;
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
        
        int index = 1;
        while (!line.equals(""))
        {
            content += index + "\t" + line + "\r\n";
            index++;
            line = br.readLine();
        }
        
        ////////// Write Learning data with predicted values of the best fold part //////////
        content += "\r\nLearning data with predicted values of the best fold\r\n";
        content += "Data No.\t";
        for (int i = 1; i <= ncol; i++)
        {
            content += "X" + i + "\t";
        }
        content += "Actual Y\tPredicted Y\r\n";
        
        index = 1;
        while (!(line = br.readLine()).equals(""))
        {
            content += index + "\t" + line + "\r\n";
            index++;
        }
        
        ////////// Write Validation partition of learning data with predicted values of the best fold part //////////
        content += "\r\nValidation partition of learning data with predicted values of the best fold\r\n";
        content += "Data No.\t";
        for (int i = 1; i <= ncol; i++)
        {
            content += "X" + i + "\t";
        }
        content += "Actual Y\tPredicted Y\r\n";
        
        index = 1;
        while (!(line = br.readLine()).equals(""))
        {
            content += index + "\t" + line + "\r\n";
            index++;
        }
        
        ////////// Write Training partition of learning data with predicted values of the best fold part //////////
        content += "\r\nTraining partition of learning data with predicted values of the best fold\r\n";
        content += "Data No.\t";
        for (int i = 1; i <= ncol; i++)
        {
            content += "X" + i + "\t";
        }
        content += "Actual Y\tPredicted Y\r\n";
        
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