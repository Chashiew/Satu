<%
    String content = "";
    
    String nValueCLSSVM = request.getParameter("nValueCLSSVM");
    String nValueSLSSVM = request.getParameter("nValueSLSSVM");
    String sNormalRadioLSSVM = "";
    String NormalRadioLSSVM = request.getParameter("NormalRadioLSSVM");
    int iRadio = 0;
    String sPRadioLSSVM = "";
    String sFileDataLSSVM = request.getParameter("sFileDataLSSVM");
    String sdAttributesLSSVM = request.getParameter("sdAttributesLSSVM");
    String sdInstancesLSSVM = request.getParameter("sdInstancesLSSVM");
    String sPFileDataLSSVM = request.getParameter("sPFileDataLSSVM");
    String sdPAttributesLSSVM = request.getParameter("sdPAttributesLSSVM");
    String sdPInstancesLSSVM = request.getParameter("sdPInstancesLSSVM");
    String dHoldOutLSSVM = request.getParameter("dHoldOutLSSVM");
    String dCrossValidationLSSVM = request.getParameter("dCrossValidationLSSVM");
    String sTORadioLSSVM = "";
    String TORadioLSSVM = request.getParameter("TORadioLSSVM");
    String sFileNameLSSVM = request.getParameter("sFileNameLSSVM");
    String nDFAttributesLSSVM = request.getParameter("nDFAttributesLSSVM");
    String nDFInstancesLSSVM = request.getParameter("nDFInstancesLSSVM");
    String sTestFileNameLSSVM = request.getParameter("sTestFileNameLSSVM");
    String nTDFAttributesLSSVM = request.getParameter("nTDFAttributesLSSVM");
    String nTDFInstancesLSSVM = request.getParameter("nTDFInstancesLSSVM");
    
    content = content + "LSSVM Evaluation Data:\n";
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
    
    sPRadioLSSVM = "Evaluation";
    iRadio=1;
    content = content + "4\tPurpose\tsPRadioLSSVM\t" + iRadio+"\t" + sPRadioLSSVM+"\n";
    
    content = content + "5\tHold-Out (%)\tdHoldOutLSSVM\t" + dHoldOutLSSVM+"\t-\n";
    content = content + "6\tCross-Validation (%)\tdCrossValidationLSSVM\t" + dCrossValidationLSSVM+"\t-\n";

    if (TORadioLSSVM.equals("TORadio1LSSVM")) {
        sTORadioLSSVM = "Use opened dataset";
        iRadio=1;
    }
    else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
        sTORadioLSSVM = "Use test dataset";
        iRadio=4;
    }
    else if (TORadioLSSVM.equals("TORadio2LSSVM")) {
        sTORadioLSSVM = "Hold-out";
        iRadio=2;
    }
    else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
        sTORadioLSSVM = "Cross-validation";
        iRadio=3;
    }
    content = content + "7\tTest Option\tsTORadioLSSVM\t" + iRadio+"\t" + sTORadioLSSVM+"\n";
    content = content + "8\tData File\tsFileNameLSSVM\t" + sFileNameLSSVM+"\t-\n";
    content = content + "9\tNo. of Attributes\tnDFAttributesLSSVM\t" + nDFAttributesLSSVM+"\t-\n";
    content = content + "10\tNo. of Instances\tnDFInstancesLSSVM\t" + nDFInstancesLSSVM+"\t-\n";
    content = content + "11\tTest Data File\tsTestFileNameLSSVM\t" + sTestFileNameLSSVM+"\t-\n";
    content = content + "12\tNo. of Attributes\tnTDFAttributesLSSVM\t" + nTDFAttributesLSSVM+"\t-\n";
    content = content + "13\tNo. of Instances\tnTDFInstancesLSSVM\t" + nTDFInstancesLSSVM+"\t-\n";
    content = content + "14\tFirst Data File\tsFileDataLSSVM\t" + sFileDataLSSVM+"\t-\n";
    content = content + "15\tNo. of Attributes\tsdAttributesLSSVM\t" + sdAttributesLSSVM+"\t-\n";
    content = content + "16\tNo. of Instances\tsdInstancesLSSVM\t" + sdInstancesLSSVM+"\t-\n";
    content = content + "17\tSecond Data File\tsPFileDataLSSVM\t" + sPFileDataLSSVM+"\t-\n";
    content = content + "18\tNo. of Attributes\tsdPAttributesLSSVM\t" + sdPAttributesLSSVM+"\t-\n";
    content = content + "19\tNo. of Instances\tsdPInstancesLSSVM\t" + sdPInstancesLSSVM+"\t-\n";
    
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Data_LSSVM_Evaluation.txt"); // Force "Save As" dialogue.
    response.getWriter().write(content); // Write CSV file to response. This will be saved in the location specified by the user.
%>