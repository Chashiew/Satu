<%
    String content = "";
    
    String nValueC = request.getParameter("nValueC");
    String nValueS = request.getParameter("nValueS");
    String sNormalRadio = "";
    String NormalRadio = request.getParameter("NormalRadio");
    int iRadio = 0;
    String sPRadio = "";
    String sLearningFileName = request.getParameter("sLearningFileName");
    String nLDFAttributes = request.getParameter("nLDFAttributes");
    String nLDFInstances = request.getParameter("nLDFInstances");
    String sPredictionFileName = request.getParameter("sPredictionFileName");
    String nPDFAttributes = request.getParameter("nPDFAttributes");
    String nPDFInstances = request.getParameter("nPDFInstances");
    String sFileData = request.getParameter("sFileData");
    String sdAttributes = request.getParameter("sdAttributes");
    String sdInstances = request.getParameter("sdInstances");
    String sPFileData = request.getParameter("sPFileData");
    String sdPAttributes = request.getParameter("sdPAttributes");
    String sdPInstances = request.getParameter("sdPInstances");
    
    content = content + "LSSVR Prediction Data:\n";
    content = content + "No.\tDescription\tVariable\tValue\tRemark\n";
    content = content + "1\tValue of C\tnValueC\t" + nValueC+"\t-\n";
    content = content + "2\tValue of Sigma\tnValueS\t" + nValueS+"\t-\n";
    
    sNormalRadio = "...";
    if (NormalRadio.equals("NormalRadio1")) {
        sNormalRadio = "Original value";
        iRadio=1;
    }
    else if (NormalRadio.equals("NormalRadio2")) {
        sNormalRadio = "Feature scaling";
        iRadio=2;
    }
    content = content + "3\tNormalization Method\tsNormalRadio\t" + iRadio+"\t" +sNormalRadio+"\n";
    
    sPRadio = "Prediction";
    iRadio=2;
    content = content + "4\tPurpose\tsPRadio\t" + iRadio+"\t" + sPRadio+"\n";
    content = content + "5\tLearning Data File\tsLearningFileName\t" + sLearningFileName+"\t-\n";
    content = content + "6\tNo. of Attributes\tnLDFAttributes\t" + nLDFAttributes+"\t-\n";
    content = content + "7\tNo. of Instances\tnLDFInstances\t" + nLDFInstances+"\t-\n";
    content = content + "8\tPrediction Data File\tsPredictionFileName\t" + sPredictionFileName+"\t-\n";
    content = content + "9\tNo. of Attributes\tnPDFAttributes\t" + nPDFAttributes+"\t-\n";
    content = content + "10\tNo. of Instances\tnPDFInstances\t" + nPDFInstances+"\t-\n";
    content = content + "11\tFirst Data File\tsFileData\t" + sFileData+"\t-\n";
    content = content + "12\tNo. of Attributes\tsdAttributes\t" + sdAttributes+"\t-\n";
    content = content + "13\tNo. of Instances\tsdInstances\t" + sdInstances+"\t-\n";
    content = content + "14\tSecond Data File\tsPFileData\t" + sPFileData+"\t-\n";
    content = content + "15\tNo. of Attributes\tsdPAttributes\t" + sdPAttributes+"\t-\n";
    content = content + "16\tNo. of Instances\tsdPInstances\t" + sdPInstances+"\t-\n";

    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Data_LSSVR_Prediction.expresvr"); // Force "Save As" dialogue.
    response.getWriter().write(content); // Write CSV file to response. This will be saved in the location specified by the user.
%>