<%
    String content = "";
    
    String nValueC = request.getParameter("nValueC");
    String nValueS = request.getParameter("nValueS");
    String sNormalRadio = "";
    String NormalRadio = request.getParameter("NormalRadio");
    int iRadio = 0;
    String sPRadio = "";
    String sFileData = request.getParameter("sFileData");
    String sdAttributes = request.getParameter("sdAttributes");
    String sdInstances = request.getParameter("sdInstances");
    String sPFileData = request.getParameter("sPFileData");
    String sdPAttributes = request.getParameter("sdPAttributes");
    String sdPInstances = request.getParameter("sdPInstances");
    String dHoldOut = request.getParameter("dHoldOut");
    String dCrossValidation = request.getParameter("dCrossValidation");
    String sTORadio = "";
    String TORadio = request.getParameter("TORadio");
    String sFileName = request.getParameter("sFileName");
    String nDFAttributes = request.getParameter("nDFAttributes");
    String nDFInstances = request.getParameter("nDFInstances");
    String sTestFileName = request.getParameter("sTestFileName");
    String nTDFAttributes = request.getParameter("nTDFAttributes");
    String nTDFInstances = request.getParameter("nTDFInstances");
    
    content = content + "LSSVR Evaluation Data:\n";
    content = content + "No.\tDescription\tVariable\tValue\tRemark\n";
    content = content + "1\tValue of C\tnValueC\t" + nValueC+"\t-\n";
    content = content + "2\tValue of Sigma\tnValueS\t" + nValueS+"\t-\n";
    
    if (NormalRadio.equals("NormalRadio1")) {
        sNormalRadio = "Original value";
        iRadio=1;
    }
    else if (NormalRadio.equals("NormalRadio2")) {
        sNormalRadio = "Feature scaling";
        iRadio=2;
    }
    content = content + "3\tNormalization Method\tsNormalRadio\t" + iRadio+"\t" +sNormalRadio+"\n";
    
    sPRadio = "Evaluation";
    iRadio=1;
    content = content + "4\tPurpose\tsPRadio\t" + iRadio+"\t" + sPRadio+"\n";
    
    content = content + "5\tHold-Out (%)\tdHoldOut\t" + dHoldOut+"\t-\n";
    content = content + "6\tCross-Validation (%)\tdCrossValidation\t" + dCrossValidation+"\t-\n";

    if (TORadio.equals("TORadio1")) {
        sTORadio = "Use opened dataset";
        iRadio=1;
    }
    else if (TORadio.equals("TORadio4")) {
        sTORadio = "Use test dataset";
        iRadio=4;
    }
    else if (TORadio.equals("TORadio2")) {
        sTORadio = "Hold-out";
        iRadio=2;
    }
    else if (TORadio.equals("TORadio3")) {
        sTORadio = "Cross-validation";
        iRadio=3;
    }
    content = content + "7\tTest Option\tsTORadio\t" + iRadio+"\t" + sTORadio+"\n";
    content = content + "8\tData File\tsDataFile\t" + sFileName+"\t-\n";
    content = content + "9\tNo. of Attributes\tnDFAttributes\t" + nDFAttributes+"\t-\n";
    content = content + "10\tNo. of Instances\tnDFInstances\t" + nDFInstances+"\t-\n";
    content = content + "11\tTest Data File\tsTestDataFile\t" + sTestFileName+"\t-\n";
    content = content + "12\tNo. of Attributes\tnTDFAttributes\t" + nTDFAttributes+"\t-\n";
    content = content + "13\tNo. of Instances\tnTDFInstances\t" + nTDFInstances+"\t-\n";
    content = content + "14\tFirst Data File\tsFileData\t" + sFileData+"\t-\n";
    content = content + "15\tNo. of Attributes\tsdAttributes\t" + sdAttributes+"\t-\n";
    content = content + "16\tNo. of Instances\tsdInstances\t" + sdInstances+"\t-\n";
    content = content + "17\tSecond Data File\tsPFileData\t" + sPFileData+"\t-\n";
    content = content + "18\tNo. of Attributes\tsdPAttributes\t" + sdPAttributes+"\t-\n";
    content = content + "19\tNo. of Instances\tsdPInstances\t" + sdPInstances+"\t-\n";
    
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Data_LSSVR_Evaluation.txt"); // Force "Save As" dialogue.
    response.getWriter().write(content); // Write CSV file to response. This will be saved in the location specified by the user.
%>