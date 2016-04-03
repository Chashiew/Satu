<%
    String content = "";
    
    String nFireFlies = request.getParameter("nFireFlies");
    String nMaxGeneration = request.getParameter("nMaxGeneration");
    String dMinBeta = request.getParameter("dMinBeta");
    String dGamma = request.getParameter("dGamma");
    String dAlpha = request.getParameter("dAlpha");
    String dAIWeight = request.getParameter("dAIWeight");
    String dTau = request.getParameter("dTau");
    String dBPotential = request.getParameter("dBPotential");
    String dC1 = request.getParameter("dC1");
    String dC2 = request.getParameter("dC2");
    String dS1 = request.getParameter("dS1");
    String dS2 = request.getParameter("dS2");
    String dTrainingPS = request.getParameter("dTrainingPS");
    String dValidationPS = request.getParameter("dValidationPS");
    String dTotalSize = request.getParameter("dTotalSize");
    String nLastChange1 = request.getParameter("nLastChange1");
    String nLastChange2 = request.getParameter("nLastChange2");
    String NormalRadio = request.getParameter("NormalRadio");
    int iRadio = 0;
    String OptimRadio = request.getParameter("OptimRadio");
    String sOptimRadio = "";
    String SCRadio = request.getParameter("SCRadio");
    String PRadio = request.getParameter("PRadio");
    String sLearningFileName = request.getParameter("sLearningFileName");
    String nLDFAttributes = request.getParameter("nLDFAttributes");
    String nLDFInstances = request.getParameter("nLDFInstances");
    String sPredictionFileName = request.getParameter("sPredictionFileName");
    String nPDFAttributes = request.getParameter("nPDFAttributes");
    String sFileData = request.getParameter("sFileData");
    String sdAttributes = request.getParameter("sdAttributes");
    String sdInstances = request.getParameter("sdInstances");
    String sPFileData = request.getParameter("sPFileData");
    String sdPAttributes = request.getParameter("sdPAttributes");
    String sdPInstances = request.getParameter("sdPInstances");
    String dHoldOut = request.getParameter("dHoldOut");
    String dCrossValidation = request.getParameter("dCrossValidation");
    String TORadio = request.getParameter("TORadio");
    String sFileName = request.getParameter("sFileName");
    String nDFAttributes = request.getParameter("nDFAttributes");
    String nDFInstances = request.getParameter("nDFInstances");
    String sTestFileName = request.getParameter("sTestFileName");
    String nTDFAttributes = request.getParameter("nTDFAttributes");
    String nTDFInstances = request.getParameter("nTDFInstances");
        
    content = content + "SFA-LSSVR Evaluation Data:\n";
    content = content + "No.\tDescription\tVariable\tValue\tRemark\n";
    content = content + "1\tNo. of fireflies\tnFireFlies\t" + nFireFlies + "\t-\n";
    content = content + "2\tMax. generation\tnMaxGeneration\t" + nMaxGeneration + "\t-\n";
    content = content + "3\tBeta min.\tdMinBeta\t" + dMinBeta + "\t-\n";
    content = content + "4\tGamma\tdGamma\t" + dGamma+"\t-\n";
    content = content + "5\tAlpha\tdAlpha\t" + dAlpha+"\t-\n";
    content = content + "6\tAdaptive inertia weight\tdAIWeight\t" +dAIWeight+"\t-\n";
    content = content + "7\tTau\tdTau\t" + dTau+"\t-\n";
    content = content + "8\tBiotic potential, a\tdBPotential\t" + dBPotential+"\t-\n";
    content = content + "9\tRange of C1\tdC1\t" + dC1+"\t-\n";
    content = content + "10\tC2\tdC2\t" + dC2+"\t-\n";
    content = content + "11\tRange of Sigma, S1\tdS1\t" + dS1+"\t-\n";
    content = content + "12\tS2\tdS2\t" + dS2+"\t-\n";
    content = content + "13\tTraining partition size (%)\tdTrainingPS\t" + dTrainingPS+"\t-\n";
    content = content + "14\tValidation partition size (%)\tdValidationPS\t" + dValidationPS+"\t-\n";
    content = content + "15\tTotal Size (%)\tdTotalSize\t" + dTotalSize+"\t-\n";
    content = content + "16\tNo. of Last Changes\tnLastChange1\t" + nLastChange1+"\t-\n";
    content = content + "17\tConstant OF Value\tnLastChange2\t" + nLastChange2+"\t-\n";
    
    String temp = "";
    if (NormalRadio.equals("NormalRadio1")) {
        temp = "Original value";
        iRadio=1;
    }
    else if (NormalRadio.equals("NormalRadio2")) {
        temp = "Feature scaling";
        iRadio=2;
    }
    content = content + "18\tNormalization Method\tsNormalRadio\t" + iRadio+"\t" + temp+"\n";
            
    if (OptimRadio.equals("OptimRadio1")) {
        sOptimRadio = "RMSE validation";
        iRadio=1;
    }
    else if (OptimRadio.equals("OptimRadio2")) {
        sOptimRadio = "MAE validation";
        iRadio=2;
    }
    else if (OptimRadio.equals("OptimRadio3")) {
        sOptimRadio = "MAPE validation";
        iRadio=3;
    }
    content = content + "19\tObjective Function\tsOptimRadio\t" + iRadio+"\t" + sOptimRadio+"\n";
    
    temp = "";
    if (SCRadio.equals("SCRadio1")) {
        temp = "Max. generation is reached";
        iRadio=1;
    }
    else if (SCRadio.equals("SCRadio2")) {
        temp = "Pre-condition is reached";
        iRadio=2;
    }
    else if (SCRadio.equals("SCRadio3")) {
        temp = "Either criterion is reached";
        iRadio=3;
    }
    content = content + "20\tStop Criterion\tsSCRadio\t" + iRadio+"\t" + temp+"\n";

    temp = "Evaluation";
    iRadio=1;
    content = content + "21\tPurpose\tsPRadio\t" + iRadio+"\t" + temp+"\n";
    
    content = content + "22\tHold-Out (%)\tdHoldOut\t" + dHoldOut+"\t-\n";
    content = content + "23\tCross-Validation (%)\tdCrossValidation\t" + dCrossValidation+"\t-\n";
    temp = "";
    if (TORadio.equals("TORadio1")) {
        temp = "Use opened dataset";
        iRadio=1;
    }
    else if (TORadio.equals("TORadio2")) {
        temp = "Hold-out";
        iRadio=2;
    }
    else if (TORadio.equals("TORadio3")) {
        temp = "Cross-validation";
        iRadio=3;
    }
    else if (TORadio.equals("TORadio4")) {
        temp = "Use test dataset";
        iRadio=4;
    }
    content = content + "24\tTest Option\tsTORadio\t" + iRadio+"\t" + temp+"\n";
    content = content + "25\tData File\tsDataFile\t" + sFileName+"\t-\n";
    content = content + "26\tNo. of Attributes\tnDFAttributes\t" + nDFAttributes+"\t-\n";
    content = content + "27\tNo. of Instances\tnDFInstances\t" + nDFInstances+"\t-\n";
    content = content + "28\tTest Data File\tsTestDataFile\t" + sTestFileName+"\t-\n";
    content = content + "29\tNo. of Attributes\tnTDFAttributes\t" + nTDFAttributes+"\t-\n";
    content = content + "30\tNo. of Instances\tnTDFInstances\t" + nTDFInstances+"\t-\n";
    content = content + "31\tFirst Data File\tsFileData\t" + sFileData+"\t-\n";
    content = content + "32\tNo. of Attributes\tsdAttributes\t" + sdAttributes+"\t-\n";
    content = content + "33\tNo. of Instances\tsdInstances\t" + sdInstances+"\t-\n";
    content = content + "34\tSecond Data File\tsPFileData\t" + sPFileData+"\t-\n";
    content = content + "35\tNo. of Attributes\tsdPAttributes\t" + sdPAttributes+"\t-\n";
    content = content + "36\tNo. of Instances\tsdPInstances\t" + sdPInstances+"\t-\n";
    
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=Data_SFA_LSSVR_Evaluation.txt"); // Force "Save As" dialogue.
    response.getWriter().write(content); // Write CSV file to response. This will be saved in the location specified by the user.
%>