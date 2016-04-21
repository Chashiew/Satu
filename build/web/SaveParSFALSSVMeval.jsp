<%
    String content = "";
    
    String nFireFliesLSSVM = request.getParameter("nFireFliesLSSVM");
    String nMaxGenerationLSSVM = request.getParameter("nMaxGenerationLSSVM");
    String dMinBetaLSSVM = request.getParameter("dMinBetaLSSVM");
    String dGammaLSSVM = request.getParameter("dGammaLSSVM");
    String dAlphaLSSVM = request.getParameter("dAlphaLSSVM");
    String dAIWeightLSSVM = request.getParameter("dAIWeightLSSVM");
    String dTauLSSVM = request.getParameter("dTauLSSVM");
    String dBPotentialLSSVM = request.getParameter("dBPotentialLSSVM");
    String dC1LSSVM = request.getParameter("dC1LSSVM");
    String dC2LSSVM = request.getParameter("dC2LSSVM");
    String dS1LSSVM = request.getParameter("dS1LSSVM");
    String dS2LSSVM = request.getParameter("dS2LSSVM");
    String dTrainingPSLSSVM = request.getParameter("dTrainingPSLSSVM");
    String dValidationPSLSSVM = request.getParameter("dValidationPSLSSVM");
    String dTotalSizeLSSVM = request.getParameter("dTotalSizeLSSVM");
    String nLastChange1LSSVM = request.getParameter("nLastChange1LSSVM");
    String nLastChange2LSSVM = request.getParameter("nLastChange2LSSVM");
    String NormalRadioLSSVM = request.getParameter("NormalRadioLSSVM");
    int iRadio = 0;
    String SCRadioLSSVM = request.getParameter("SCRadioLSSVM");
    String PRadioLSSVM = request.getParameter("PRadioLSSVM");
    String sLearningFileNameLSSVM = request.getParameter("sLearningFileNameLSSVM");
    String nLDFAttributesLSSVM = request.getParameter("nLDFAttributesLSSVM");
    String nLDFInstancesLSSVM = request.getParameter("nLDFInstancesLSSVM");
    String sPredictionFileNameLSSVM = request.getParameter("sPredictionFileNameLSSVM");
    String nPDFAttributesLSSVM = request.getParameter("nPDFAttributesLSSVM");
    String sFileDataLSSVM = request.getParameter("sFileDataLSSVM");
    String sdAttributesLSSVM = request.getParameter("sdAttributesLSSVM");
    String sdInstancesLSSVM = request.getParameter("sdInstancesLSSVM");
    String sPFileDataLSSVM = request.getParameter("sPFileDataLSSVM");
    String sdPAttributesLSSVM = request.getParameter("sdPAttributesLSSVM");
    String sdPInstancesLSSVM = request.getParameter("sdPInstancesLSSVM");
    String dHoldOutLSSVM = request.getParameter("dHoldOutLSSVM");
    String dCrossValidationLSSVM = request.getParameter("dCrossValidationLSSVM");
    String TORadioLSSVM = request.getParameter("TORadioLSSVM");
    String sFileNameLSSVM = request.getParameter("sFileNameLSSVM");
    String nDFAttributesLSSVM = request.getParameter("nDFAttributesLSSVM");
    String nDFInstancesLSSVM = request.getParameter("nDFInstancesLSSVM");
    String sTestFileNameLSSVM = request.getParameter("sTestFileNameLSSVM");
    String nTDFAttributesLSSVM = request.getParameter("nTDFAttributesLSSVM");
    String nTDFInstancesLSSVM = request.getParameter("nTDFInstancesLSSVM");
    
    content = content + "SFA-LSSVM Evaluation Data:\n";
    content = content + "No.\tDescription\tVariable\tValue\tRemark\n";
    content = content + "1\tNo. of fireflies\tnFireFliesLSSVM\t" + nFireFliesLSSVM+"\t-\n";
    content = content + "2\tMax. generation\tnMaxGenerationLSSVM\t" + nMaxGenerationLSSVM+"\t-\n";
    content = content + "3\tBeta min.\tdMinBetaLSSVM\t" + dMinBetaLSSVM+"\t-\n";
    content = content + "4\tGamma\tdGammaLSSVM\t" + dGammaLSSVM+"\t-\n";
    content = content + "5\tAlpha\tdAlphaLSSVM\t" + dAlphaLSSVM+"\t-\n";
    content = content + "6\tAdaptive inertia weight\tdAIWeightLSSVM\t" + dAIWeightLSSVM+"\t-\n";
    content = content + "7\tTau\tdTauLSSVM\t" + dTauLSSVM+"\t-\n";
    content = content + "8\tBiotic potential, a\tdBPotentialLSSVM\t" + dBPotentialLSSVM+"\t-\n";
    content = content + "9\tRange of C1\tdC1LSSVM\t" + dC1LSSVM+"\t-\n";
    content = content + "10\tC2\tdC2LSSVM\t" + dC2LSSVM+"\t-\n";
    content = content + "11\tRange of Sigma, S1\tdS1LSSVM\t" + dS1LSSVM+"\t-\n";
    content = content + "12\tS2\tdS2LSSVM\t" + dS2LSSVM+"\t-\n";
    content = content + "13\tTraining partition size (%)\tdTrainingPSLSSVM\t" + dTrainingPSLSSVM+"\t-\n";
    content = content + "14\tValidation partition size (%)\tdValidationPSLSSVM\t" + dValidationPSLSSVM+"\t-\n";
    content = content + "15\tTotal Size (%)\tdTotalSizeLSSVM\t" + dTotalSizeLSSVM+"\t-\n";
    content = content + "16\tNo. of Last Changes\tnLastChange1LSSVM\t" + nLastChange1LSSVM+"\t-\n";
    content = content + "17\tConstant OF Value\tnLastChange2LSSVM\t" + nLastChange2LSSVM+"\t-\n";
        
    String temp = "";
    if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
        temp = "Original value";
        iRadio=1;
    }
    else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
        temp = "Feature scaling";
        iRadio=2;
    }
    content = content + "18\tNormalization Method\tsNormalRadioLSSVM\t" + iRadio+"\t" + temp+"\n";
    content = content + "19\tObjective Function\tsOptimRadioLSSVM\t-\tClassification accuracy (validation)\n";
    temp = "";
    if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
        temp = "Max. generation is reached";
        iRadio=1;
    }
    else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
        temp = "Pre-condition is reached";
        iRadio=2;
    }
    else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {
        temp = "Either criterion is reached";
        iRadio=3;
    }
    content = content + "20\tStop Criterion\tsSCRadioLSSVM\t" + iRadio+"\t" + temp+"\n";
    
    temp = "Evaluation";
    iRadio=1;

    content = content + "21\tPurpose\tsPRadioLSSVM\t" + iRadio+"\t" + temp+"\n";
    content = content + "22\tHold-Out (%)\tdHoldOutLSSVM\t" + dHoldOutLSSVM+"\t-\n";
    content = content + "23\tCross-Validation (%)\tdCrossValidationLSSVM\t" + dCrossValidationLSSVM+"\t-\n";
    temp = "";
    if (TORadioLSSVM.equals("TORadio1LSSVM")) {
        temp = "Use opened dataset";
        iRadio=1;
    }
    else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
        temp = "Use test dataset";
        iRadio=4;
    }
    else if (TORadioLSSVM.equals("TORadio2LSSVM")) {
        temp = "Hold-out";
        iRadio=2;
    }
    else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
        temp = "Cross-validation";
        iRadio=3;
    }
    content = content + "24\tTest Option\tsTORadioLSSVM\t" + iRadio+"\t" + temp+"\n";
    content = content + "25\tData File\tsFileNameLSSVM\t" + sFileNameLSSVM+"\t-\n";
    content = content + "26\tNo. of Attributes\tnDFAttributesLSSVM\t" + nDFAttributesLSSVM+"\t-\n";
    content = content + "27\tNo. of Instances\tnDFInstancesLSSVM\t" + nDFInstancesLSSVM+"\t-\n";
    content = content + "28\tTest Data File\tssTestFileNameLSSVM\t" + sTestFileNameLSSVM+"\t-\n";
    content = content + "29\tNo. of Attributes\tnTDFAttributesLSSVM\t" + nTDFAttributesLSSVM+"\t-\n";
    content = content + "30\tNo. of Instances\tnTDFInstancesLSSVM\t" + nTDFInstancesLSSVM+"\t-\n";
    content = content + "31\tFirst Data File\tsFileDataLSSVM\t" + sFileDataLSSVM+"\t-\n";
    content = content + "32\tNo. of Attributes\tsdAttributesLSSVM\t" + sdAttributesLSSVM+"\t-\n";
    content = content + "33\tNo. of Instances\tsdInstancesLSSVM\t" + sdInstancesLSSVM+"\t-\n";
    content = content + "34\tSecond Data File\tsPFileDataLSSVM\t" + sPFileDataLSSVM+"\t-\n";
    content = content + "35\tNo. of Attributes\tsdPAttributesLSSVM\t" + sdPAttributesLSSVM+"\t-\n";
    content = content + "36\tNo. of Instances\tsdPInstancesLSSVM\t" + sdPInstancesLSSVM+"\t-\n";
    
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Data_SFA_LSSVM_Evaluation.exp"); // Force "Save As" dialogue.
    response.getWriter().write(content); // Write CSV file to response. This will be saved in the location specified by the user.
%>