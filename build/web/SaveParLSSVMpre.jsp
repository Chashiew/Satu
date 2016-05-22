<%
    String content = "";
    
    String nValueCLSSVM = request.getParameter("nValueCLSSVM");
    String nValueSLSSVM = request.getParameter("nValueSLSSVM");
    String sNormalRadioLSSVM = "";
    String NormalRadioLSSVM = request.getParameter("NormalRadioLSSVM");
    int iRadio = 0;
    String sPRadioLSSVM = "";
    String sLearningFileNameLSSVM = request.getParameter("sLearningFileNameLSSVM");
    String nLDFAttributesLSSVM = request.getParameter("nLDFAttributesLSSVM");
    String nLDFInstancesLSSVM = request.getParameter("nLDFInstancesLSSVM");
    String sPredictionFileNameLSSVM = request.getParameter("sPredictionFileNameLSSVM");
    String nPDFAttributesLSSVM = request.getParameter("nPDFAttributesLSSVM");
    String nPDFInstancesLSSVM = request.getParameter("nPDFInstancesLSSVM");
    String sFileDataLSSVM = request.getParameter("sFileDataLSSVM");
    String sdAttributesLSSVM = request.getParameter("sdAttributesLSSVM");
    String sdInstancesLSSVM = request.getParameter("sdInstancesLSSVM");
    String sPFileDataLSSVM = request.getParameter("sPFileDataLSSVM");
    String sdPAttributesLSSVM = request.getParameter("sdPAttributesLSSVM");
    String sdPInstancesLSSVM = request.getParameter("sdPInstancesLSSVM");
    
    content = content + "LSSVM Data:\n";
    content = content + "No.\tDescription\tVariable\tValue\tRemark\n";
    content = content + "1\tValue of C\tnValueCLSSVM\t" + nValueCLSSVM+"\t-\n";
    content = content + "2\tValue of Sigma\tnValueSLSSVM\t" + nValueSLSSVM+"\t-\n";
    
    if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
        sNormalRadioLSSVM = "Original value";
        iRadio=1;
    }
    else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
        sNormalRadioLSSVM = "Feature scaling";
        iRadio=2;
    }
    content = content + "3\tNormalization Method\tsNormalRadioLSSVM\t" + iRadio+"\t" + sNormalRadioLSSVM+"\n";
    
    sPRadioLSSVM = "Prediction";
    iRadio=2;
    content = content + "4\tPurpose\tsPRadioLSSVM\t" + iRadio+"\t" + sPRadioLSSVM+"\n";
    
    content = content + "5\tLearning Data File\tsLearningFileNameLSSVM\t" + sLearningFileNameLSSVM+"\t-\n";
    content = content + "6\tNo. of Attributes\tnLDFAttributesLSSVM\t" + nLDFAttributesLSSVM+"\t-\n";
    content = content + "7\tNo. of Instances\tnLDFInstancesLSSVM\t" + nLDFInstancesLSSVM+"\t-\n";
    content = content + "8\tPrediction Data File\tsPredictionFileNameLSSVM\t" + sPredictionFileNameLSSVM+"\t-\n";
    content = content + "9\tNo. of Attributes\tnPDFAttributesLSSVM\t" + nPDFAttributesLSSVM+"\t-\n";
    content = content + "10\tNo. of Instances\tnPDFInstancesLSSVM\t" + nPDFInstancesLSSVM+"\t-\n";
    content = content + "11\tFirst Data File\tsFileDataLSSVM\t" + sFileDataLSSVM+"\t-\n";
    content = content + "12\tNo. of Attributes\tsdAttributesLSSVM\t" + sdAttributesLSSVM+"\t-\n";
    content = content + "13\tNo. of Instances\tsdInstancesLSSVM\t" + sdInstancesLSSVM+"\t-\n";
    content = content + "14\tSecond Data File\tsPFileDataLSSVM\t" + sPFileDataLSSVM+"\t-\n";
    content = content + "15\tNo. of Attributes\tsdPAttributesLSSVM\t" + sdPAttributesLSSVM+"\t-\n";
    content = content + "16\tNo. of Instances\tsdPInstancesLSSVM\t" + sdPInstancesLSSVM+"\t-\n";

    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Data_LSSVM_Prediction.expresvm"); // Force "Save As" dialogue.
    response.getWriter().write(content); // Write CSV file to response. This will be saved in the location specified by the user.
%>