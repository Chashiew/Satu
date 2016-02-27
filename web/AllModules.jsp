<%--
    Document   : NiMOPS
    Created on : Sep 11, 2015, 1:13:58 AM
    Author     : JDK
--%>

<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>

<%
    if (session.getAttribute("username") != "PiMLab" && session.getAttribute("username") != "a")
    {
        response.sendRedirect("loginpage.jsp");
        return;
    }
%>

<%--<jsp:useBean id="task" scope="session"
             class="com.devsphere.articles.progressbar.TaskBean"/>--%>

<%--@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*;" --%>

<%
    String params = request.getQueryString();
%>

<%
//todo:
    
//1. replacing RUN with icon NEXT, moving icon bottom next to LOAD - DONE
//2. replicating java script from SFALSSVR to SFALSSVM in AllModules - DONE
//3. replicating java script in AllModulesBaseline - DONE
//4. adding three "Data To Analyze:" - DONE
    
//5. computeatform - twice - to get filenames for three modules - DONE
//6. implementing Button SAVE for three modules - DONE
//7. implementing Button LOAD for three modules - DONE   
//8. checking icon GoToBottom and GoToTop - DONE
    
//9. implementing icon NEXT for three modules - DONE 
    
//10 ... completed.

//1. Changing icons to buttons, icon compute at bottom remains - DONE
//2. Adding icon next at bottom - DONE
//3. Applying context Sensitive for Test Option - DONE    
//   line 54-77, 638-821, 873, 879-909, 2808-2810, 3234, 3240, 3248; 
//   line 3425-3444, 3561-3572, 4435-4441, (+145) 4352-4461, 4477-4487 
//4. Correcting navmenu.jsp to avoid submenu hiding part of form - DONE
//5. Passing filename to matlab - DONE   
    
//6. Debugging    
//7. Debugging    
//8. Debugging    
    
String VarOne = request.getParameter("VarOne");
String VarTwo = request.getParameter("VarTwo");

String sLoadingDefault = request.getParameter("sLoadingDefault");
if (sLoadingDefault == null) {
    sLoadingDefault = "";        
};
    String sLoadingEvaluation = request.getParameter("sLoadingEvaluation");
    if (sLoadingEvaluation == null) {
        sLoadingEvaluation = "";        
    };
        String sLoadingPrediction = request.getParameter("sLoadingPrediction"); 
        if (sLoadingPrediction == null) {
            sLoadingPrediction = "";        
        };
String sLoadingDefaultLSSVM = request.getParameter("sLoadingDefaultLSSVM");
if (sLoadingDefaultLSSVM == null) {
    sLoadingDefaultLSSVM = "";        
};
    String sLoadingEvaluationLSSVM = request.getParameter("sLoadingEvaluationLSSVM");
    if (sLoadingEvaluationLSSVM == null) {
        sLoadingEvaluationLSSVM = "";        
    };
        String sLoadingPredictionLSSVM = request.getParameter("sLoadingPredictionLSSVM"); 
        if (sLoadingPredictionLSSVM == null) {
            sLoadingPredictionLSSVM = "";        
        };

String sLoadingDataFile = request.getParameter("sLoadingDataFile");
if (sLoadingDataFile == null) {
    sLoadingDataFile = "";        
};
String sLoadingDataExcel = request.getParameter("sLoadingDataExcel");
if (sLoadingDataExcel == null) {
    sLoadingDataExcel = "";        
};
String sLoadingDataExcelClick = request.getParameter("sLoadingDataExcelClick");
if (sLoadingDataExcelClick == null) {
    sLoadingDataExcelClick = "";        
};
    String sLoadingDataFileLSSVM = request.getParameter("sLoadingDataFileLSSVM");
    if (sLoadingDataFileLSSVM == null) {
        sLoadingDataFileLSSVM = "";        
    };
    String sLoadingDataExcelLSSVM = request.getParameter("sLoadingDataExcelLSSVM");
    if (sLoadingDataExcelLSSVM == null) {
        sLoadingDataExcelLSSVM = "";        
    };
    String sLoadingDataExcelClickLSSVM = request.getParameter("sLoadingDataExcelClickLSSVM");
    if (sLoadingDataExcelClickLSSVM == null) {
        sLoadingDataExcelClickLSSVM = "";        
    };

String NormalRadio = request.getParameter("NormalRadio");
if (NormalRadio == null) {
    NormalRadio = "";
}
    String NormalRadioLSSVM = request.getParameter("NormalRadioLSSVM");
    if (NormalRadioLSSVM == null) {
        NormalRadioLSSVM = "";
    }

String sMoveBottom = request.getParameter("sMoveBottom");
if (sMoveBottom == null) {
    sMoveBottom = "";
}

String VarNext = request.getParameter("VarNext");
if (VarNext == null) {
    VarNext = "";
}
    String VarNextLSSVM = request.getParameter("VarNextLSSVM");
    if (VarNextLSSVM == null) {
        VarNextLSSVM = "";
    }

String sResult01Name = request.getParameter("sResult01Name");
if (sResult01Name == null) {
    sResult01Name = "";
}
String sResult02Name = request.getParameter("sResult02Name");
if (sResult02Name == null) {
    sResult02Name = "";
}
String sResult03Name = request.getParameter("sResult03Name");
if (sResult03Name == null) {
    sResult03Name = "";
}
String sResult04Name = request.getParameter("sResult04Name");
if (sResult04Name == null) {
    sResult04Name = "";
}
String sResult05Name = request.getParameter("sResult05Name");
if (sResult05Name == null) {
    sResult05Name = "";
}
String sResult06Name = request.getParameter("sResult06Name");
if (sResult06Name == null) {
    sResult06Name = "";
}

/* 
out.println("<p>");
out.println("VarOne = "+VarOne);
out.println("<br>");
out.println("sLoadingDataFile = "+sLoadingDataFile);
out.println("<p>");
out.println("VarTwo = "+VarTwo);
out.println("<br>");
out.println("NormalRadioLSSVM = "+NormalRadioLSSVM);
out.println("<br>");
out.println("sLoadingDataExcelClick = "+sLoadingDataExcelClick);
*/

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
String dHoldOut = request.getParameter("dHoldOut");
String dCrossValidation = request.getParameter("dCrossValidation");

String nDFAttributes = request.getParameter("nDFAttributes");
String nDFInstances = request.getParameter("nDFInstances");
String nTDFAttributes = request.getParameter("nTDFAttributes");
String nTDFInstances = request.getParameter("nTDFInstances");
String nLDFAttributes = request.getParameter("nLDFAttributes");
String nLDFInstances = request.getParameter("nLDFInstances");
String nPDFAttributes = request.getParameter("nPDFAttributes");
String nPDFInstances = request.getParameter("nPDFInstances");

if (nFireFlies == null) {
    nFireFlies = "";        //"50";
};
if (nMaxGeneration == null) {
    nMaxGeneration = "";    //"25";
};
if (dMinBeta == null) {
    dMinBeta = "";          //"0.10";
};
if (dGamma == null) {
    dGamma = "";            //"1.00";
};
if (dAlpha == null) {
    dAlpha = "";            //"0.20";
};
if (dAIWeight == null) {
    dAIWeight = "";         //"0.90";
};
if (dTau == null) {
    dTau = "";              //"1.50";
};
if (dBPotential == null) {
    dBPotential = "";       //"4.00";
};
if (dC1 == null) {
    dC1 = "";               //"1.00E-3";
};
if (dC2 == null) {
    dC2 = "";               //"1.00E12";
};
if (dS1 == null) {
    dS1 = "";               //"1.00E-3";
};
if (dS2 == null) {
    dS2 = "";               //"1.00E3";
};
if (dTrainingPS == null) {
    dTrainingPS = "";        //"70";
};
if (dValidationPS == null) {
    dValidationPS = "";     //"30";
};
if (dTotalSize == null) {
    dTotalSize = "";        //"100";
};
if (nLastChange1 == null) {
    nLastChange1 = "";      //"3";
};
if (nLastChange2 == null) {
    nLastChange2 = "";      //"0.00001";
};
if (dHoldOut == null) {
    dHoldOut = "";          //"20";
};
if (dCrossValidation == null) {
    dCrossValidation = "";  //"10";
};

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
    String dHoldOutLSSVM = request.getParameter("dHoldOutLSSVM");
    String dCrossValidationLSSVM = request.getParameter("dCrossValidationLSSVM");

    String nDFAttributesLSSVM = request.getParameter("nDFAttributesLSSVM");
    String nDFInstancesLSSVM = request.getParameter("nDFInstancesLSSVM");
    String nTDFAttributesLSSVM = request.getParameter("nTDFAttributesLSSVM");
    String nTDFInstancesLSSVM = request.getParameter("nTDFInstancesLSSVM");
    String nLDFAttributesLSSVM = request.getParameter("nLDFAttributesLSSVM");
    String nLDFInstancesLSSVM = request.getParameter("nLDFInstancesLSSVM");
    String nPDFAttributesLSSVM = request.getParameter("nPDFAttributesLSSVM");
    String nPDFInstancesLSSVM = request.getParameter("nPDFInstancesLSSVM");

    if (nFireFliesLSSVM == null) {
        nFireFliesLSSVM = "";        //"50";
    };
    if (nMaxGenerationLSSVM == null) {
        nMaxGenerationLSSVM = "";    //"25";
    };
    if (dMinBetaLSSVM == null) {
        dMinBetaLSSVM = "";          //"0.10";
    };
    if (dGammaLSSVM == null) {
        dGammaLSSVM = "";            //"1.00";
    };
    if (dAlphaLSSVM == null) {
        dAlphaLSSVM = "";            //"0.20";
    };
    if (dAIWeightLSSVM == null) {
        dAIWeightLSSVM = "";         //"0.90";
    };
    if (dTauLSSVM == null) {
        dTauLSSVM = "";              //"1.50";
    };
    if (dBPotentialLSSVM == null) {
        dBPotentialLSSVM = "";       //"4.00";
    };
    if (dC1LSSVM == null) {
        dC1LSSVM = "";               //"1.00E-3";
    };
    if (dC2LSSVM == null) {
        dC2LSSVM = "";               //"1.00E12";
    };
    if (dS1LSSVM == null) {
        dS1LSSVM = "";               //"1.00E-3";
    };
    if (dS2LSSVM == null) {
        dS2LSSVM = "";               //"1.00E3";
    };
    if (dTrainingPSLSSVM == null) {
        dTrainingPSLSSVM = "";        //"70";
    };
    if (dValidationPSLSSVM == null) {
        dValidationPSLSSVM = "";     //"30";
    };
    if (dTotalSizeLSSVM == null) {
        dTotalSizeLSSVM = "";        //"100";
    };
    if (nLastChange1LSSVM == null) {
        nLastChange1LSSVM = "";      //"3";
    };
    if (nLastChange2LSSVM == null) {
        nLastChange2LSSVM = "";      //"0.00001";
    };
    if (dHoldOutLSSVM == null) {
        dHoldOutLSSVM = "";          //"20";
    };
    if (dCrossValidationLSSVM == null) {
        dCrossValidationLSSVM = "";  //"10";
    };

if (nDFAttributes == null) {nDFAttributes = "";};
if (nDFInstances == null) {nDFInstances = "";};
if (nTDFAttributes == null) {nTDFAttributes = "";};
if (nTDFInstances == null) {nTDFInstances = "";};
if (nLDFAttributes == null) {nLDFAttributes = "";};
if (nLDFInstances == null) {nLDFInstances = "";};
if (nPDFAttributes == null) {nPDFAttributes = "";};
if (nPDFInstances == null) {nPDFInstances = "";};
    if (nDFAttributesLSSVM == null) {nDFAttributesLSSVM = "";};
    if (nDFInstancesLSSVM == null) {nDFInstancesLSSVM = "";};
    if (nTDFAttributesLSSVM == null) {nTDFAttributesLSSVM = "";};
    if (nTDFInstancesLSSVM == null) {nTDFInstancesLSSVM = "";};
    if (nLDFAttributesLSSVM == null) {nLDFAttributesLSSVM = "";};
    if (nLDFInstancesLSSVM == null) {nLDFInstancesLSSVM = "";};
    if (nPDFAttributesLSSVM == null) {nPDFAttributesLSSVM = "";};
    if (nPDFInstancesLSSVM == null) {nPDFInstancesLSSVM = "";};

String sDataFile = request.getParameter("sDataFile");
if (sDataFile == null) {
    sDataFile = "";
}
String sTestDataFile = request.getParameter("sTestDataFile");
if (sTestDataFile == null) {
    sTestDataFile = "";
}
String sLearningDataFile = request.getParameter("sLearningDataFile");
if (sLearningDataFile == null) {
    sLearningDataFile = "";
}
String sPredictionDataFile = request.getParameter("sPredictionDataFile");
if (sPredictionDataFile == null) {
    sPredictionDataFile = "";
}
    String sDataFileLSSVM = request.getParameter("sDataFileLSSVM");
    if (sDataFileLSSVM == null) {
        sDataFileLSSVM = "";
    }
    String sTestDataFileLSSVM = request.getParameter("sTestDataFileLSSVM");
    if (sTestDataFileLSSVM == null) {
        sTestDataFileLSSVM = "";
    }
    String sLearningDataFileLSSVM = request.getParameter("sLearningDataFileLSSVM");
    if (sLearningDataFileLSSVM == null) {
        sLearningDataFileLSSVM = "";
    }
    String sPredictionDataFileLSSVM = request.getParameter("sPredictionDataFileLSSVM");
    if (sPredictionDataFileLSSVM == null) {
        sPredictionDataFileLSSVM = "";
    }

String fullPath = request.getParameter("fullPath");
if (fullPath == null) {
    fullPath = "";
}
String fullPathT = request.getParameter("fullPathT");
if (fullPathT == null) {
    fullPathT = "";
}
String fullPathL = request.getParameter("fullPathL");
if (fullPathL == null) {
    fullPathL = "";
}
String fullPathP = request.getParameter("fullPathP");
if (fullPathP == null) {
    fullPathP = "";
}
    String fullPathLSSVM = request.getParameter("fullPathLSSVM");
    if (fullPathLSSVM == null) {
        fullPathLSSVM = "";
    }
    String fullPathTLSSVM = request.getParameter("fullPathTLSSVM");
    if (fullPathTLSSVM == null) {
        fullPathTLSSVM = "";
    }
    String fullPathLLSSVM = request.getParameter("fullPathLLSSVM");
    if (fullPathLLSSVM == null) {
        fullPathLLSSVM = "";
    }
    String fullPathPLSSVM = request.getParameter("fullPathPLSSVM");
    if (fullPathPLSSVM == null) {
        fullPathPLSSVM = "";
    }

String sFileName = request.getParameter("sFileName");
if (sFileName == null) {
    sFileName = "";
}
String sTestFileName = request.getParameter("sTestFileName");
if (sTestFileName == null) {
    sTestFileName = "";
}
String sLearningFileName = request.getParameter("sLearningFileName");
if (sLearningFileName == null) {
    sLearningFileName = "";
}
String sPredictionFileName = request.getParameter("sPredictionFileName");
if (sPredictionFileName == null) {
    sPredictionFileName = "";
}
    String sFileNameLSSVM = request.getParameter("sFileNameLSSVM");
    if (sFileNameLSSVM == null) {
        sFileNameLSSVM = "";
    }
    String sTestFileNameLSSVM = request.getParameter("sTestFileNameLSSVM");
    if (sTestFileNameLSSVM == null) {
        sTestFileNameLSSVM = "";
    }
    String sLearningFileNameLSSVM = request.getParameter("sLearningFileNameLSSVM");
    if (sLearningFileNameLSSVM == null) {
        sLearningFileNameLSSVM = "";
    }
    String sPredictionFileNameLSSVM = request.getParameter("sPredictionFileNameLSSVM");
    if (sPredictionFileNameLSSVM == null) {
        sPredictionFileNameLSSVM = "";
    }

String OptimRadio = request.getParameter("OptimRadio");
String SCRadio = request.getParameter("SCRadio");
String PRadio = request.getParameter("PRadio");
String TORadio = request.getParameter("TORadio");
if (OptimRadio == null) {
    OptimRadio = "";
}
if (SCRadio == null) {
    SCRadio = "";
}
if (PRadio == null) {
    PRadio = "PRadio1";
}
if (TORadio == null) {
    TORadio = "";
}
    String SCRadioLSSVM = request.getParameter("SCRadioLSSVM");
    String PRadioLSSVM = request.getParameter("PRadioLSSVM");
    String TORadioLSSVM = request.getParameter("TORadioLSSVM");
    if (SCRadioLSSVM == null) {
        SCRadioLSSVM = "";
    }
    if (PRadioLSSVM == null) {
        PRadioLSSVM = "PRadio1LSSVM";
    }
    if (TORadioLSSVM == null) {
        TORadioLSSVM = "";
    }

/*
out.println("1. TORadio = "+TORadio);
out.println("<br>");
out.println("TORadioLSSVM = "+TORadioLSSVM);
out.println("<br>");
out.println("<p>");
out.println("nPDFAttributes = "+nPDFAttributes);
out.println("<br>");
out.println("NormalRadio = "+NormalRadio);
out.println("OptimRadio = "+OptimRadio);
out.println("SCRadio = "+SCRadio);
out.println("PRadio = "+PRadio);
out.println("TORadio = "+TORadio);
*/

String sOptimRadio = "...";
double dDummy=1.0;
String sDummy = "...";
String sPDummy = "";
    
String sError = request.getParameter("sError");
if (sError == null) {
    sError = "";
}
    String sErrorLSSVM = request.getParameter("sErrorLSSVM");
    if (sErrorLSSVM == null) {
        sErrorLSSVM = "";
    }

double dAttributes=0;
double dInstances=0;
double dPAttributes=0;
double dPInstances=0;
    double dAttributesLSSVM=0;
    double dInstancesLSSVM=0; 
    double dPAttributesLSSVM=0; 
    double dPInstancesLSSVM=0; 

String sFileData = request.getParameter("sFileData");
if (sFileData == null) {
    sFileData = "";
}
String sdAttributes = request.getParameter("sdAttributes");
if (sdAttributes == null) {
    sdAttributes = "1";
}
String sdInstances = request.getParameter("sdInstances");
if (sdInstances == null) {
    sdInstances = "1";
}
    String sFileDataLSSVM = request.getParameter("sFileDataLSSVM");
    if (sFileDataLSSVM == null) {
        sFileDataLSSVM = "";
    }
    String sdAttributesLSSVM = request.getParameter("sdAttributesLSSVM");
    if (sdAttributesLSSVM == null) {
        sdAttributesLSSVM = "1";
    }
    String sdInstancesLSSVM = request.getParameter("sdInstancesLSSVM");
    if (sdInstancesLSSVM == null) {
        sdInstancesLSSVM = "1";
    }

String sPFileData = request.getParameter("sPFileData");
if (sPFileData == null) {
    sPFileData = "";
}
String sdPAttributes = request.getParameter("sdPAttributes");
if (sdPAttributes == null) {
    sdPAttributes = "1";
}
String sdPInstances = request.getParameter("sdPInstances");
if (sdPInstances == null) {
    sdPInstances = "1";
}
    String sPFileDataLSSVM = request.getParameter("sPFileDataLSSVM");
    if (sPFileDataLSSVM == null) {
        sPFileDataLSSVM = "";
    }
    String sdPAttributesLSSVM = request.getParameter("sdPAttributesLSSVM");
    if (sdPAttributesLSSVM == null) {
        sdPAttributesLSSVM = "1";
    }
    String sdPInstancesLSSVM = request.getParameter("sdPInstancesLSSVM");
    if (sdPInstancesLSSVM == null) {
        sdPInstancesLSSVM = "1";
    }

String ssAttributes = "";
String ssInstances = "";
String ssPAttributes = "";
String ssPInstances = "";
String sVariation = "";
    String ssAttributesLSSVM = "";
    String ssInstancesLSSVM = "";
    String ssPAttributesLSSVM = "";
    String ssPInstancesLSSVM = "";
    String sVariationLSSVM = "";
                
int nrow=0;
int ncol=0;

if (VarOne != null) {
}
else if (VarTwo != null) {
}

NumberFormat nf = NumberFormat.getInstance();
nf.setMaximumFractionDigits(0);
nf.setMinimumFractionDigits(0);
    NumberFormat nf1 = NumberFormat.getInstance();
    nf1.setMaximumFractionDigits(1);
    nf1.setMinimumFractionDigits(1);

    NumberFormat nf2 = NumberFormat.getInstance();
    nf2.setMaximumFractionDigits(2);
    nf2.setMinimumFractionDigits(2);

    NumberFormat nf3 = NumberFormat.getInstance();
    nf3.setMaximumFractionDigits(3);
    nf3.setMinimumFractionDigits(3);

    NumberFormat nf5 = NumberFormat.getInstance();
    nf5.setMaximumFractionDigits(5);
    nf5.setMinimumFractionDigits(5);

NumberFormat ndf = new DecimalFormat("0.00E0");
%>
   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <% if (VarOne != null) { %>
                NiMOPS: SFA-LSSVR
            <% } else if (VarTwo != null) { %>
                NiMOPS: SFA-LSSVM
            <% } %>
        </title> 
        
        <%--> #1 
        <% if (task.isRunning()) {%>
        <SCRIPT LANGUAGE="JavaScript">
            <!-- refresh every 1 second (1000 ms) -->
            setTimeout("location='AllModules.jsp?<%=params%>'", 1000);
        </SCRIPT>
        <% } %>
        <--%>

        <link rel="stylesheet" type="text/css" href="mystyle.css">
        
        <link rel="Stylesheet" type="text/css"
              media=all href="./StyleSheet.css" />
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        <link href="bootstrap.css" rel="stylesheet">
        <script src="jquery.min.js"></script>
        <script src="bootstrap.js"></script>
        <script src="bootstrap-filestyle.js"></script>
        <style type="text/css">
            .bs-example{
                margin: 20px;
            }
        </style>
        
        <script type="text/javascript">
            function refreshform(val) {
                var valid = false;
                
                var nFireFlies = document.getElementById("nFireFlies");
                var nMaxGeneration = document.getElementById("nMaxGeneration");
                var dMinBeta = document.getElementById("dMinBeta");
                var dGamma = document.getElementById("dGamma");
                var dAlpha = document.getElementById("dAlpha");
                var dAIWeight = document.getElementById("dAIWeight");
                var dTau = document.getElementById("dTau");
                var dBPotential = document.getElementById("dBPotential");
                var dC1 = document.getElementById("dC1");
                var dC2 = document.getElementById("dC2");
                var dS1 = document.getElementById("dS1");
                var dS2 = document.getElementById("dS2");
                var dTrainingPS = document.getElementById("dTrainingPS");
                var dValidationPS = document.getElementById("dValidationPS");
                var dTotalSize = document.getElementById("dTotalSize");
                var nLastChange1 = document.getElementById("nLastChange1");
                var nLastChange2 = document.getElementById("nLastChange2");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var NormalRadio = document.getElementById("NormalRadio");
                var OptimRadio = document.getElementById("OptimRadio");
                var SCRadio = document.getElementById("SCRadio");
                var PRadio = document.getElementById("PRadio");
                var TORadio = document.getElementById("TORadio");

                var sDataFile = document.getElementById("sDataFile");
                var nDFInstances = document.getElementById("nDFInstances");
                var nDFAttributes = document.getElementById("nDFAttributes");
                var sTestDataFile = document.getElementById("sTestDataFile");
                var nTDFInstances = document.getElementById("nTDFInstances");
                var nTDFAttributes = document.getElementById("nTDFAttributes");
                var sLearningDataFile = document.getElementById("sLearningDataFile");
                var nLDFInstances = document.getElementById("nLDFInstances");
                var nLDFAttributes = document.getElementById("nLDFAttributes");
                var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                var nPDFInstances = document.getElementById("nPDFInstances");
                var nPDFAttributes = document.getElementById("nPDFAttributes");
                var fullPath = document.getElementById("fullPath");
                var fullPathT = document.getElementById("fullPathT");
                var fullPathL = document.getElementById("fullPathL");
                var fullPathP = document.getElementById("fullPathP");

                var sFileName = document.getElementById("sFileName");
                var sTestFileName = document.getElementById("sTestFileName");
                var sLearningFileName = document.getElementById("sLearningFileName");
                var sPredictionFileName = document.getElementById("sPredictionFileName");

                var VarOne = document.getElementById("VarOne");
                    
                var sLoadingDefault = document.getElementById("sLoadingDefault");
                sLoadingDefault = "";
                document.getElementById("sLoadingDefault").value = sLoadingDefault;

                var sLoadingEvaluation = document.getElementById("sLoadingEvaluation");
                if (val===1) {
                    sLoadingEvaluation = val;
                } else {
                    sLoadingEvaluation = "";
                }
                document.getElementById("sLoadingEvaluation").value = sLoadingEvaluation;

                var sLoadingPrediction = document.getElementById("sLoadingPrediction");
                if (val===2) {
                    sLoadingPrediction = val;
                } else {
                    sLoadingPrediction = "";
                }
                document.getElementById("sLoadingPrediction").value = sLoadingPrediction;

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "AllModules.jsp#title";
                document.getElementById("myform").submit();
                valid = false;
                
                return valid;
            }
            
            function refreshformLSSVM(val) {
                var valid = false;
                
                var nFireFliesLSSVM = document.getElementById("nFireFliesLSSVM");
                var nMaxGenerationLSSVM = document.getElementById("nMaxGenerationLSSVM");
                var dMinBetaLSSVM = document.getElementById("dMinBetaLSSVM");
                var dGammaLSSVM = document.getElementById("dGammaLSSVM");
                var dAlphaLSSVM = document.getElementById("dAlphaLSSVM");
                var dAIWeightLSSVM = document.getElementById("dAIWeightLSSVM");
                var dTauLSSVM = document.getElementById("dTauLSSVM");
                var dBPotentialLSSVM = document.getElementById("dBPotentialLSSVM");
                var dC1LSSVM = document.getElementById("dC1LSSVM");
                var dC2LSSVM = document.getElementById("dC2LSSVM");
                var dS1LSSVM = document.getElementById("dS1LSSVM");
                var dS2LSSVM = document.getElementById("dS2LSSVM");
                var dTrainingPSLSSVM = document.getElementById("dTrainingPSLSSVM");
                var dValidationPSLSSVM = document.getElementById("dValidationPSLSSVM");
                var dTotalSizeLSSVM = document.getElementById("dTotalSizeLSSVM");
                var nLastChange1LSSVM = document.getElementById("nLastChange1LSSVM");
                var nLastChange2LSSVM = document.getElementById("nLastChange2LSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
                var SCRadioLSSVM = document.getElementById("SCRadioLSSVM");
                var PRadioLSSVM = document.getElementById("PRadioLSSVM");
                var TORadioLSSVM = document.getElementById("TORadioLSSVM");

                var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                var nDFInstancesLSSVM = document.getElementById("nDFInstancesLSSVM");
                var nDFAttributesLSSVM = document.getElementById("nDFAttributesLSSVM");
                var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                var nTDFInstancesLSSVM = document.getElementById("nTDFInstancesLSSVM");
                var nTDFAttributesLSSVM = document.getElementById("nTDFAttributesLSSVM");
                var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                var nLDFInstancesLSSVM = document.getElementById("nLDFInstancesLSSVM");
                var nLDFAttributesLSSVM = document.getElementById("nLDFAttributesLSSVM");
                var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                var nPDFInstancesLSSVM = document.getElementById("nPDFInstancesLSSVM");
                var nPDFAttributesLSSVM = document.getElementById("nPDFAttributesLSSVM");
                var fullPathLSSVM = document.getElementById("fullPathLSSVM");
                var fullPathTLSSVM = document.getElementById("fullPathTLSSVM");
                var fullPathLLSSVM = document.getElementById("fullPathLLSSVM");
                var fullPathPLSSVM = document.getElementById("fullPathPLSSVM");

                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");

                var VarTwo = document.getElementById("VarTwo");

                var sLoadingDefaultLSSVM = document.getElementById("sLoadingDefaultLSSVM");
                sLoadingDefaultLSSVM = "";
                document.getElementById("sLoadingDefaultLSSVM").value = sLoadingDefaultLSSVM;

                var sLoadingEvaluationLSSVM = document.getElementById("sLoadingEvaluationLSSVM");
                if (val===1) {
                    sLoadingEvaluationLSSVM = val;
                } else {
                    sLoadingEvaluationLSSVM = "";
                }
                document.getElementById("sLoadingEvaluationLSSVM").value = sLoadingEvaluationLSSVM;

                var sLoadingPredictionLSSVM = document.getElementById("sLoadingPredictionLSSVM");
                if (val===2) {
                    sLoadingPredictionLSSVM = val;
                } else {
                    sLoadingPredictionLSSVM = "";
                }
                document.getElementById("sLoadingPredictionLSSVM").value = sLoadingPredictionLSSVM;

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM="";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";
                
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                
                fullPathLSSVM.value = sFileNameLSSVM.value;
                document.getElementById("myformLSSVM").action = "AllModules.jsp#title";
                document.getElementById("myformLSSVM").submit();
                valid = false;
                
                return valid;
            }
            
            function testdatasection(val) {
                var valid = false;
                
                if (document.getElementById("testdatasection").style.display === "none")
                {
                    document.getElementById("testdatasection").style.display = "block";
                }
                else
                {
                    document.getElementById("testdatasection").style.display = "none";
                }
                
                return valid;
            }
            
            function writedefaultsfalssvr(val) {
                var valid = false;
                document.getElementById("nFireFlies").value = "50";
                document.getElementById("nMaxGeneration").value = "25";
                document.getElementById("dMinBeta").value = "0.10";
                document.getElementById("dGamma").value = "1.00" ;
                document.getElementById("dAlpha").value = "0.20" ;
                document.getElementById("dAIWeight").value = "0.90";
                document.getElementById("dTau").value = "1.50";
                document.getElementById("dBPotential").value = "4.00";
                document.getElementById("dC1").value = "1.00E-3" ;
                document.getElementById("dC2").value = "1.00E12" ;
                document.getElementById("dS1").value = "1.00E-3" ;
                document.getElementById("dS2").value = "1.00E3" ;

                document.getElementById("dTrainingPS").value = "70" ;
                document.getElementById("dValidationPS").value = "30" ;
                document.getElementById("dTotalSize").value = "100" ;
                
                document.getElementById("nLastChange1").value = "3" ;
                document.getElementById("nLastChange2").value = "0.00001" ;
                document.getElementById("dHoldOut").value = "20" ;
                document.getElementById("dCrossValidation").value = "10";

                document.getElementById("NormalRadio1").checked = true; //"null" ;
                document.getElementById("OptimRadio1").checked = true;   
                document.getElementById("SCRadio1").checked = true; 
                document.getElementById("PRadio1").checked = true; 
                document.getElementById("TORadio1").checked = true; 
                
                document.getElementById("sDataFile").value = "";    //"null"; 
                document.getElementById("sTestDataFile").value = ""; 
                document.getElementById("sLearningDataFile").value = ""; 
                document.getElementById("sPredictionDataFile").value = ""; 
                
                //alert("Aha3 ...!");
                document.getElementById("nDFAttributes").value = "0"; 
                document.getElementById("nDFInstances").value = "0"; 
                document.getElementById("nTDFAttributes").value = "0"; 
                document.getElementById("nTDFInstances").value = "0"; 
                document.getElementById("nLDFAttributes").value = "0"; 
                document.getElementById("nLDFInstances").value = "0"; 
                document.getElementById("nPDFAttributes").value = "0"; 
                document.getElementById("nPDFInstances").value = "0"; 

                document.getElementById("sFileName").value = "";    //"null"; 
                document.getElementById("sTestFileName").value = ""; 
                document.getElementById("sLearningFileName").value = ""; 
                document.getElementById("sPredictionFileName").value = ""; 
                        
                //document.getElementById("sLoadingDataExcel").value = "";

                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                
                var VarOne = document.getElementById("VarOne");
                    
                var sLoadingDefault = document.getElementById("sLoadingDefault");
                sLoadingDefault = "1";
                document.getElementById("sLoadingDefault").value = sLoadingDefault;

                var sLoadingEvaluation = document.getElementById("sLoadingEvaluation");
                sLoadingEvaluation = "";
                document.getElementById("sLoadingEvaluation").value = sLoadingEvaluation;

                var sLoadingPrediction = document.getElementById("sLoadingPrediction");
                sLoadingPrediction = "";
                document.getElementById("sLoadingPrediction").value = sLoadingPrediction;

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;
                
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                //alert("Aha2 ...!");
                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "AllModules.jsp";
                document.getElementById("myform").submit();
                valid = false;

                return valid;
            }
            
            function writedefaultsfalssvm(val) {
                var valid = false;
                document.getElementById("nFireFliesLSSVM").value = "50";
                document.getElementById("nMaxGenerationLSSVM").value = "25";
                document.getElementById("dMinBetaLSSVM").value = "0.10";
                document.getElementById("dGammaLSSVM").value = "1.00" ;
                document.getElementById("dAlphaLSSVM").value = "0.20" ;
                document.getElementById("dAIWeightLSSVM").value = "0.90";
                document.getElementById("dTauLSSVM").value = "1.50";
                document.getElementById("dBPotentialLSSVM").value = "4.00";
                document.getElementById("dC1LSSVM").value = "1.00E-3" ;
                document.getElementById("dC2LSSVM").value = "1.00E12" ;
                document.getElementById("dS1LSSVM").value = "1.00E-3" ;
                document.getElementById("dS2LSSVM").value = "1.00E3" ;

                document.getElementById("dTrainingPSLSSVM").value = "70" ;
                document.getElementById("dValidationPSLSSVM").value = "30" ;
                document.getElementById("dTotalSizeLSSVM").value = "100" ;
                
                document.getElementById("nLastChange1LSSVM").value = "3" ;
                document.getElementById("nLastChange2LSSVM").value = "0.00001" ;
                document.getElementById("dHoldOutLSSVM").value = "20" ;
                document.getElementById("dCrossValidationLSSVM").value = "10";

                document.getElementById("NormalRadio1LSSVM").checked = true; //"null" ;
                document.getElementById("SCRadio1LSSVM").checked = true; 
                document.getElementById("PRadio1LSSVM").checked = true; 
                document.getElementById("TORadio1LSSVM").checked = true; 
            
                //document.getElementById("Classaccuracy").value="Classification accuracy (validation)" ;
                
                document.getElementById("sDataFileLSSVM").value = "";    //"null"; 
                document.getElementById("sTestDataFileLSSVM").value = ""; 
                document.getElementById("sLearningDataFileLSSVM").value = ""; 
                document.getElementById("sPredictionDataFileLSSVM").value = ""; 
                
                document.getElementById("nDFAttributesLSSVM").value = "0"; 
                document.getElementById("nDFInstancesLSSVM").value = "0"; 
                document.getElementById("nTDFAttributesLSSVM").value = "0"; 
                document.getElementById("nTDFInstancesLSSVM").value = "0"; 
                document.getElementById("nLDFAttributesLSSVM").value = "0"; 
                document.getElementById("nLDFInstancesLSSVM").value = "0"; 
                document.getElementById("nPDFAttributesLSSVM").value = "0"; 
                document.getElementById("nPDFInstancesLSSVM").value = "0"; 

                document.getElementById("sFileNameLSSVM").value = "";    //"null"; 
                document.getElementById("sTestFileNameLSSVM").value = ""; 
                document.getElementById("sLearningFileNameLSSVM").value = ""; 
                document.getElementById("sPredictionFileNameLSSVM").value = ""; 
                
                //document.getElementById("sLoadingDataExcelLSSVM").value = ""; 

                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                
                var VarTwo = document.getElementById("VarTwo");
                    
                var sLoadingDefaultLSSVM = document.getElementById("sLoadingDefaultLSSVM");
                sLoadingDefaultLSSVM = "1";
                document.getElementById("sLoadingDefaultLSSVM").value = sLoadingDefaultLSSVM;

                var sLoadingEvaluationLSSVM = document.getElementById("sLoadingEvaluationLSSVM");
                sLoadingEvaluationLSSVM = "";
                document.getElementById("sLoadingEvaluationLSSVM").value = sLoadingEvaluationLSSVM;

                var sLoadingPredictionLSSVM = document.getElementById("sLoadingPredictionLSSVM");
                sLoadingPredictionLSSVM = "";
                document.getElementById("sLoadingPredictionLSSVM").value = sLoadingPredictionLSSVM;

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM = "";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;
                
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                //alert("Aha2 ...!");
                fullPathLSSVM.value = sFileNameLSSVM.value;
                document.getElementById("myformLSSVM").action = "AllModules.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;

                //alert("Aha4 ...!");
                //document.getElementById("TORadio1").checked = true; 
                
                return valid;
            }

            function cleardefaultsfalssvr(val) {
                var valid = false;
                document.getElementById("nFireFlies").value = "";
                document.getElementById("nMaxGeneration").value = "";
                document.getElementById("dMinBeta").value = "";
                document.getElementById("dGamma").value = "" ;
                document.getElementById("dAlpha").value = "" ;
                document.getElementById("dAIWeight").value = "";
                document.getElementById("dTau").value = "";
                document.getElementById("dBPotential").value = "";
                document.getElementById("dC1").value = "" ;
                document.getElementById("dC2").value = "" ;
                document.getElementById("dS1").value = "" ;
                document.getElementById("dS2").value = "" ;

                document.getElementById("dTrainingPS").value = "" ;
                document.getElementById("dValidationPS").value = "" ;
                document.getElementById("dTotalSize").value = "" ;
                
                document.getElementById("nLastChange1").value = "" ;
                document.getElementById("nLastChange2").value = "" ;
                document.getElementById("dHoldOut").value = "" ;
                document.getElementById("dCrossValidation").value = "";

                document.getElementById("NormalRadio1").checked = false; //"null" ;
                document.getElementById("OptimRadio1").checked = false;   
                document.getElementById("SCRadio1").checked = false; 
                document.getElementById("PRadio1").checked = false; 
                document.getElementById("TORadio1").checked = false; 
                
                document.getElementById("sDataFile").value = "";    //"null"; 
                document.getElementById("sTestDataFile").value = ""; 
                document.getElementById("sLearningDataFile").value = ""; 
                document.getElementById("sPredictionDataFile").value = ""; 
                
                //alert("Aha3 ...!");
                document.getElementById("nDFAttributes").value = "0"; 
                document.getElementById("nDFInstances").value = "0"; 
                document.getElementById("nTDFAttributes").value = "0"; 
                document.getElementById("nTDFInstances").value = "0"; 
                document.getElementById("nLDFAttributes").value = "0"; 
                document.getElementById("nLDFInstances").value = "0"; 
                document.getElementById("nPDFAttributes").value = "0"; 
                document.getElementById("nPDFInstances").value = "0"; 

                document.getElementById("sFileName").value = "";    //"null"; 
                document.getElementById("sTestFileName").value = ""; 
                document.getElementById("sLearningFileName").value = ""; 
                document.getElementById("sPredictionFileName").value = ""; 
                        
                //document.getElementById("sLoadingDataExcel").value = "";

                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                
                var VarOne = document.getElementById("VarOne");
                    
                var sLoadingDefault = document.getElementById("sLoadingDefault");
                sLoadingDefault = "1";
                document.getElementById("sLoadingDefault").value = sLoadingDefault;

                var sLoadingEvaluation = document.getElementById("sLoadingEvaluation");
                sLoadingEvaluation = "";
                document.getElementById("sLoadingEvaluation").value = sLoadingEvaluation;

                var sLoadingPrediction = document.getElementById("sLoadingPrediction");
                sLoadingPrediction = "";
                document.getElementById("sLoadingPrediction").value = sLoadingPrediction;

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;
                
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                //alert("Aha2 ...!");
                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "AllModules.jsp";
                document.getElementById("myform").submit();
                valid = false;

                return valid;
            }
            
            function cleardefaultsfalssvm(val) {
                var valid = false;
                document.getElementById("nFireFliesLSSVM").value = "";
                document.getElementById("nMaxGenerationLSSVM").value = "";
                document.getElementById("dMinBetaLSSVM").value = "";
                document.getElementById("dGammaLSSVM").value = "" ;
                document.getElementById("dAlphaLSSVM").value = "" ;
                document.getElementById("dAIWeightLSSVM").value = "";
                document.getElementById("dTauLSSVM").value = "";
                document.getElementById("dBPotentialLSSVM").value = "";
                document.getElementById("dC1LSSVM").value = "" ;
                document.getElementById("dC2LSSVM").value = "" ;
                document.getElementById("dS1LSSVM").value = "" ;
                document.getElementById("dS2LSSVM").value = "" ;

                document.getElementById("dTrainingPSLSSVM").value = "" ;
                document.getElementById("dValidationPSLSSVM").value = "" ;
                document.getElementById("dTotalSizeLSSVM").value = "" ;
                
                document.getElementById("nLastChange1LSSVM").value = "" ;
                document.getElementById("nLastChange2LSSVM").value = "" ;
                document.getElementById("dHoldOutLSSVM").value = "" ;
                document.getElementById("dCrossValidationLSSVM").value = "";

                document.getElementById("NormalRadio1LSSVM").checked = false; //"null" ;
                document.getElementById("SCRadio1LSSVM").checked = false; 
                document.getElementById("PRadio1LSSVM").checked = false; 
                document.getElementById("TORadio1LSSVM").checked = false; 
            
                //document.getElementById("Classaccuracy").value="Classification accuracy (validation)" ;
                
                document.getElementById("sDataFileLSSVM").value = "";    //"null"; 
                document.getElementById("sTestDataFileLSSVM").value = ""; 
                document.getElementById("sLearningDataFileLSSVM").value = ""; 
                document.getElementById("sPredictionDataFileLSSVM").value = ""; 
                
                document.getElementById("nDFAttributesLSSVM").value = "0"; 
                document.getElementById("nDFInstancesLSSVM").value = "0"; 
                document.getElementById("nTDFAttributesLSSVM").value = "0"; 
                document.getElementById("nTDFInstancesLSSVM").value = "0"; 
                document.getElementById("nLDFAttributesLSSVM").value = "0"; 
                document.getElementById("nLDFInstancesLSSVM").value = "0"; 
                document.getElementById("nPDFAttributesLSSVM").value = "0"; 
                document.getElementById("nPDFInstancesLSSVM").value = "0"; 

                document.getElementById("sFileNameLSSVM").value = "";    //"null"; 
                document.getElementById("sTestFileNameLSSVM").value = ""; 
                document.getElementById("sLearningFileNameLSSVM").value = ""; 
                document.getElementById("sPredictionFileNameLSSVM").value = ""; 
                
                //document.getElementById("sLoadingDataExcelLSSVM").value = ""; 

                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                
                var VarTwo = document.getElementById("VarTwo");
                    
                var sLoadingDefaultLSSVM = document.getElementById("sLoadingDefaultLSSVM");
                sLoadingDefaultLSSVM = "1";
                document.getElementById("sLoadingDefaultLSSVM").value = sLoadingDefaultLSSVM;

                var sLoadingEvaluationLSSVM = document.getElementById("sLoadingEvaluationLSSVM");
                sLoadingEvaluationLSSVM = "";
                document.getElementById("sLoadingEvaluationLSSVM").value = sLoadingEvaluationLSSVM;

                var sLoadingPredictionLSSVM = document.getElementById("sLoadingPredictionLSSVM");
                sLoadingPredictionLSSVM = "";
                document.getElementById("sLoadingPredictionLSSVM").value = sLoadingPredictionLSSVM;

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM = "";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;
                
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                //alert("Aha2 ...!");
                fullPathLSSVM.value = sFileNameLSSVM.value;
                document.getElementById("myformLSSVM").action = "AllModules.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;

                //alert("Aha4 ...!");
                //document.getElementById("TORadio1").checked = true; 
                
                return valid;
            }

            function viewsummarydata() {
                var nFireFlies = document.getElementById("nFireFlies");
                var nMaxGeneration = document.getElementById("nMaxGeneration");
                var dMinBeta = document.getElementById("dMinBeta");
                var dGamma = document.getElementById("dGamma");
                var dAlpha = document.getElementById("dAlpha");
                var dAIWeight = document.getElementById("dAIWeight");
                var dTau = document.getElementById("dTau");
                var dBPotential = document.getElementById("dBPotential");
                var dC1 = document.getElementById("dC1");
                var dC2 = document.getElementById("dC2");
                var dS1 = document.getElementById("dS1");
                var dS2 = document.getElementById("dS2");
                var dTrainingPS = document.getElementById("dTrainingPS");
                var dValidationPS = document.getElementById("dValidationPS");
                var dTotalSize = document.getElementById("dTotalSize");
                var nLastChange1 = document.getElementById("nLastChange1");
                var nLastChange2 = document.getElementById("nLastChange2");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var NormalRadio = document.getElementById("NormalRadio");
                var OptimRadio = document.getElementById("OptimRadio");
                var SCRadio = document.getElementById("SCRadio");
                var PRadio = document.getElementById("PRadio");
                var TORadio = document.getElementById("TORadio");

                var sDataFile = document.getElementById("sDataFile");
                var nDFInstances = document.getElementById("nDFInstances");
                var nDFAttributes = document.getElementById("nDFAttributes");
                var sTestDataFile = document.getElementById("sTestDataFile");
                var nTDFInstances = document.getElementById("nTDFInstances");
                var nTDFAttributes = document.getElementById("nTDFAttributes");
                var sLearningDataFile = document.getElementById("sLearningDataFile");
                var nLDFInstances = document.getElementById("nLDFInstances");
                var nLDFAttributes = document.getElementById("nLDFAttributes");
                var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                var nPDFInstances = document.getElementById("nPDFInstances");
                var nPDFAttributes = document.getElementById("nPDFAttributes");
                var fullPath = document.getElementById("fullPath");
                var fullPathT = document.getElementById("fullPathT");
                var fullPathL = document.getElementById("fullPathL");
                var fullPathP = document.getElementById("fullPathP");

                var sFileName = document.getElementById("sFileName");
                var sTestFileName = document.getElementById("sTestFileName");
                var sLearningFileName = document.getElementById("sLearningFileName");
                var sPredictionFileName = document.getElementById("sPredictionFileName");

                var VarOne = document.getElementById("VarOne");
                    
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "1";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "1";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "AllModules.jsp";
                document.getElementById("myform").submit();
                valid = false;
                //bottomform.focus();

                return valid;
            }

            function closesummarydata() {
                var nFireFlies = document.getElementById("nFireFlies");
                var nMaxGeneration = document.getElementById("nMaxGeneration");
                var dMinBeta = document.getElementById("dMinBeta");
                var dGamma = document.getElementById("dGamma");
                var dAlpha = document.getElementById("dAlpha");
                var dAIWeight = document.getElementById("dAIWeight");
                var dTau = document.getElementById("dTau");
                var dBPotential = document.getElementById("dBPotential");
                var dC1 = document.getElementById("dC1");
                var dC2 = document.getElementById("dC2");
                var dS1 = document.getElementById("dS1");
                var dS2 = document.getElementById("dS2");
                var dTrainingPS = document.getElementById("dTrainingPS");
                var dValidationPS = document.getElementById("dValidationPS");
                var dTotalSize = document.getElementById("dTotalSize");
                var nLastChange1 = document.getElementById("nLastChange1");
                var nLastChange2 = document.getElementById("nLastChange2");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var NormalRadio = document.getElementById("NormalRadio");
                var OptimRadio = document.getElementById("OptimRadio");
                var SCRadio = document.getElementById("SCRadio");
                var PRadio = document.getElementById("PRadio");
                var TORadio = document.getElementById("TORadio");

                var sDataFile = document.getElementById("sDataFile");
                var nDFInstances = document.getElementById("nDFInstances");
                var nDFAttributes = document.getElementById("nDFAttributes");
                var sTestDataFile = document.getElementById("sTestDataFile");
                var nTDFInstances = document.getElementById("nTDFInstances");
                var nTDFAttributes = document.getElementById("nTDFAttributes");
                var sLearningDataFile = document.getElementById("sLearningDataFile");
                var nLDFInstances = document.getElementById("nLDFInstances");
                var nLDFAttributes = document.getElementById("nLDFAttributes");
                var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                var nPDFInstances = document.getElementById("nPDFInstances");
                var nPDFAttributes = document.getElementById("nPDFAttributes");
                var fullPath = document.getElementById("fullPath");
                var fullPathT = document.getElementById("fullPathT");
                var fullPathL = document.getElementById("fullPathL");
                var fullPathP = document.getElementById("fullPathP");

                var sFileName = document.getElementById("sFileName");
                var sTestFileName = document.getElementById("sTestFileName");
                var sLearningFileName = document.getElementById("sLearningFileName");
                var sPredictionFileName = document.getElementById("sPredictionFileName");

                var VarOne = document.getElementById("VarOne");
                    
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "1";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "AllModules.jsp";
                document.getElementById("myform").submit();
                valid = false;
                //bottompage.focus();
                
                return valid;
            }

            function viewsummarydataLSSVM() {
                var nFireFliesLSSVM = document.getElementById("nFireFliesLSSVM");
                var nMaxGenerationLSSVM = document.getElementById("nMaxGenerationLSSVM");
                var dMinBetaLSSVM = document.getElementById("dMinBetaLSSVM");
                var dGammaLSSVM = document.getElementById("dGammaLSSVM");
                var dAlphaLSSVM = document.getElementById("dAlphaLSSVM");
                var dAIWeightLSSVM = document.getElementById("dAIWeightLSSVM");
                var dTauLSSVM = document.getElementById("dTauLSSVM");
                var dBPotentialLSSVM = document.getElementById("dBPotentialLSSVM");
                var dC1LSSVM = document.getElementById("dC1LSSVM");
                var dC2LSSVM = document.getElementById("dC2LSSVM");
                var dS1LSSVM = document.getElementById("dS1LSSVM");
                var dS2LSSVM = document.getElementById("dS2LSSVM");
                var dTrainingPSLSSVM = document.getElementById("dTrainingPSLSSVM");
                var dValidationPSLSSVM = document.getElementById("dValidationPSLSSVM");
                var dTotalSizeLSSVM = document.getElementById("dTotalSizeLSSVM");
                var nLastChange1LSSVM = document.getElementById("nLastChange1LSSVM");
                var nLastChange2LSSVM = document.getElementById("nLastChange2LSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
                var SCRadioLSSVM = document.getElementById("SCRadioLSSVM");
                var PRadioLSSVM = document.getElementById("PRadioLSSVM");
                var TORadioLSSVM = document.getElementById("TORadioLSSVM");

                var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                var nDFInstancesLSSVM = document.getElementById("nDFInstancesLSSVM");
                var nDFAttributesLSSVM = document.getElementById("nDFAttributesLSSVM");
                var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                var nTDFInstancesLSSVM = document.getElementById("nTDFInstancesLSSVM");
                var nTDFAttributesLSSVM = document.getElementById("nTDFAttributesLSSVM");
                var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                var nLDFInstancesLSSVM = document.getElementById("nLDFInstancesLSSVM");
                var nLDFAttributesLSSVM = document.getElementById("nLDFAttributesLSSVM");
                var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                var nPDFInstancesLSSVM = document.getElementById("nPDFInstancesLSSVM");
                var nPDFAttributesLSSVM = document.getElementById("nPDFAttributesLSSVM");
                var fullPathLSSVM = document.getElementById("fullPathLSSVM");
                var fullPathTLSSVM = document.getElementById("fullPathTLSSVM");
                var fullPathLLSSVM = document.getElementById("fullPathLLSSVM");
                var fullPathPLSSVM = document.getElementById("fullPathPLSSVM");

                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");

                var VarTwo = document.getElementById("VarTwo");

                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "2";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "2";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                fullPathLSSVM.value = sFileNameLSSVM.value; 
                document.getElementById("myformLSSVM").action = "AllModules.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;
                //bottomformLSSVM.focus(); 
                
                return valid;
            }

            function closesummarydataLSSVM() {
                var nFireFliesLSSVM = document.getElementById("nFireFliesLSSVM");
                var nMaxGenerationLSSVM = document.getElementById("nMaxGenerationLSSVM");
                var dMinBetaLSSVM = document.getElementById("dMinBetaLSSVM");
                var dGammaLSSVM = document.getElementById("dGammaLSSVM");
                var dAlphaLSSVM = document.getElementById("dAlphaLSSVM");
                var dAIWeightLSSVM = document.getElementById("dAIWeightLSSVM");
                var dTauLSSVM = document.getElementById("dTauLSSVM");
                var dBPotentialLSSVM = document.getElementById("dBPotentialLSSVM");
                var dC1LSSVM = document.getElementById("dC1LSSVM");
                var dC2LSSVM = document.getElementById("dC2LSSVM");
                var dS1LSSVM = document.getElementById("dS1LSSVM");
                var dS2LSSVM = document.getElementById("dS2LSSVM");
                var dTrainingPSLSSVM = document.getElementById("dTrainingPSLSSVM");
                var dValidationPSLSSVM = document.getElementById("dValidationPSLSSVM");
                var dTotalSizeLSSVM = document.getElementById("dTotalSizeLSSVM");
                var nLastChange1LSSVM = document.getElementById("nLastChange1LSSVM");
                var nLastChange2LSSVM = document.getElementById("nLastChange2LSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
                var SCRadioLSSVM = document.getElementById("SCRadioLSSVM");
                var PRadioLSSVM = document.getElementById("PRadioLSSVM");
                var TORadioLSSVM = document.getElementById("TORadioLSSVM");

                var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                var nDFInstancesLSSVM = document.getElementById("nDFInstancesLSSVM");
                var nDFAttributesLSSVM = document.getElementById("nDFAttributesLSSVM");
                var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                var nTDFInstancesLSSVM = document.getElementById("nTDFInstancesLSSVM");
                var nTDFAttributesLSSVM = document.getElementById("nTDFAttributesLSSVM");
                var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                var nLDFInstancesLSSVM = document.getElementById("nLDFInstancesLSSVM");
                var nLDFAttributesLSSVM = document.getElementById("nLDFAttributesLSSVM");
                var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                var nPDFInstancesLSSVM = document.getElementById("nPDFInstancesLSSVM");
                var nPDFAttributesLSSVM = document.getElementById("nPDFAttributesLSSVM");
                var fullPathLSSVM = document.getElementById("fullPathLSSVM");
                var fullPathTLSSVM = document.getElementById("fullPathTLSSVM");
                var fullPathLLSSVM = document.getElementById("fullPathLLSSVM");
                var fullPathPLSSVM = document.getElementById("fullPathPLSSVM");

                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");

                var VarTwo = document.getElementById("VarTwo");

                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "2";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                fullPathLSSVM.value = sFileNameLSSVM.value; 
                document.getElementById("myformLSSVM").action = "AllModules.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;
                //bottompageLSSVM.focus(); 
                
                return valid;
            }

            function checkdata(val) {
                var nFireFlies = document.getElementById("nFireFlies");
                var sDataFile = document.getElementById("sDataFile");
                var sTestDataFile = document.getElementById("sTestDataFile");
                var sLearningDataFile = document.getElementById("sLearningDataFile");
                var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                var valid = true;

                var sFileName = document.getElementById("sFileName");
                var sTestFileName = document.getElementById("sTestFileName");
                var sLearningFileName = document.getElementById("sLearningFileName");
                var sPredictionFileName = document.getElementById("sPredictionFileName");
                
                if (nFireFlies.value === "") {
                    alert("Load default values and calculate first ...!");
                    nFireFlies.focus();
                    valid = false;
                } else {
                    if (sFileName.value === "") {
                        if (sTestFileName.value === "") {
                            if (sLearningFileName.value === "") {
                                if (sPredictionFileName.value === "") {
                                    if (sDataFile.value === "") {
                                        if (sTestDataFile.value === "") {
                                            if (sLearningDataFile.value === "") {
                                                if (sPredictionDataFile.value === "") {
                                                    alert("Data file not yet selected ...!");
                                                    sPredictionDataFile.focus();
                                                    valid = false;
                                                } else {
                                                }
                                            } else {
                                            }
                                        } else {
                                        }
                                    } else {
                                    }
                                } else {
                                }
                            } else {
                            }
                        } else {
                        }
                    }
                }


                //reading data - running
                if (valid === true) {
                    var NormalRadio = document.getElementById("NormalRadio");
                    var OptimRadio = document.getElementById("OptimRadio");
                    var SCRadio = document.getElementById("SCRadio");
                    var PRadio = document.getElementById("PRadio");
                    var TORadio = document.getElementById("TORadio");

                    var sDataFile = document.getElementById("sDataFile");
                    var nDFInstances = document.getElementById("nDFInstances");
                    var nDFAttributes = document.getElementById("nDFAttributes");
                    var sTestDataFile = document.getElementById("sTestDataFile");
                    var nTDFInstances = document.getElementById("nTDFInstances");
                    var nTDFAttributes = document.getElementById("nTDFAttributes");
                    var sLearningDataFile = document.getElementById("sLearningDataFile");
                    var nLDFInstances = document.getElementById("nLDFInstances");
                    var nLDFAttributes = document.getElementById("nLDFAttributes");
                    var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                    var nPDFInstances = document.getElementById("nPDFInstances");
                    var nPDFAttributes = document.getElementById("nPDFAttributes");
                    var fullPath = document.getElementById("fullPath");
                    var fullPathT = document.getElementById("fullPathT");
                    var fullPathL = document.getElementById("fullPathL");
                    var fullPathP = document.getElementById("fullPathP");

                    var sFileName = document.getElementById("sFileName");
                    var sTestFileName = document.getElementById("sTestFileName");
                    var sLearningFileName = document.getElementById("sLearningFileName");
                    var sPredictionFileName = document.getElementById("sPredictionFileName");
                   
                    var sResult01Name = document.getElementById("sResult01Name");
                    var sResult02Name = document.getElementById("sResult02Name");
                    var sResult03Name = document.getElementById("sResult03Name");
                    var sResult04Name = document.getElementById("sResult04Name");
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");

                    var VarNext = document.getElementById("VarNext");
                    document.getElementById("VarNext").value = val;
                    
                    var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                    sLoadingDataExcel = "";
                    document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                    var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                    sLoadingDataExcelClick = "";
                    document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                    //alert("Aha1 ...!");
                    fullPath.value = sFileName.value;
                    document.getElementById("myform").action = "ModuleSFALSSVR.jsp";   //#A of 1 //"AllModules.jsp"; (To Result Form) //"SFALSSVRServlet"; (To Data Form)
                    document.getElementById("myform").submit();
                    nFireFlies.focus();

                    valid = false;
                }    
                return valid;
            }

            function checkdataLSSVM(val) {
                var nFireFliesLSSVM = document.getElementById("nFireFliesLSSVM");
                var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                var valid = true;

                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");
                
                if (nFireFliesLSSVM.value === "") {
                    alert("Load default values and calculate first ...!");
                    nFireFliesLSSVM.focus();
                    valid = false;
                } else {
                    if (sFileNameLSSVM.value === "") {
                        if (sTestFileNameLSSVM.value === "") {
                            if (sLearningFileNameLSSVM.value === "") {
                                if (sPredictionFileNameLSSVM.value === "") {
                                    if (sDataFileLSSVM.value === "") {
                                        if (sTestDataFileLSSVM.value === "") {
                                            if (sLearningDataFileLSSVM.value === "") {
                                                if (sPredictionDataFileLSSVM.value === "") {
                                                    alert("Data file not yet selected ...!");
                                                    sPredictionDataFileLSSVM.focus();
                                                    valid = false;
                                                } else {
                                                }
                                            } else {
                                            }
                                        } else {
                                        }
                                    } else {
                                    }
                                } else {
                                }
                            } else {
                            }
                        } else {
                        }
                    }
                }

                //reading data - running
                if (valid === true) {
                    var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
                    var SCRadioLSSVM = document.getElementById("SCRadioLSSVM");
                    var PRadioLSSVM = document.getElementById("PRadioLSSVM");
                    var TORadioLSSVM = document.getElementById("TORadioLSSVM");

                    var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                    var nDFInstancesLSSVM = document.getElementById("nDFInstancesLSSVM");
                    var nDFAttributesLSSVM = document.getElementById("nDFAttributesLSSVM");
                    var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                    var nTDFInstancesLSSVM = document.getElementById("nTDFInstancesLSSVM");
                    var nTDFAttributesLSSVM = document.getElementById("nTDFAttributesLSSVM");
                    var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                    var nLDFInstancesLSSVM = document.getElementById("nLDFInstancesLSSVM");
                    var nLDFAttributesLSSVM = document.getElementById("nLDFAttributesLSSVM");
                    var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                    var nPDFInstancesLSSVM = document.getElementById("nPDFInstancesLSSVM");
                    var nPDFAttributesLSSVM = document.getElementById("nPDFAttributesLSSVM");
                    var fullPathLSSVM = document.getElementById("fullPathLSSVM");
                    var fullPathTLSSVM = document.getElementById("fullPathTLSSVM");
                    var fullPathLLSSVM = document.getElementById("fullPathLLSSVM");
                    var fullPathPLSSVM = document.getElementById("fullPathPLSSVM");

                    var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                    var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                    var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                    var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");

                    var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                    document.getElementById("VarNextLSSVM").value = val;

                    var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                    sLoadingDataExcelLSSVM = "2";
                    document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                    var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                    sLoadingDataExcelClickLSSVM = "";
                    document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                    valid = false;
                    fullPathLSSVM.value = sFileNameLSSVM.value;
                    document.getElementById("myformLSSVM").action = "ModuleSFALSSVM.jsp";
                    document.getElementById("myformLSSVM").submit();
                    nFireFliesLSSVM.focus();
                }    
                return valid;
            }

            function checkoutput(val) {
                var nFireFlies = document.getElementById("nFireFlies");
                var sDataFile = document.getElementById("sDataFile");
                var sTestDataFile = document.getElementById("sTestDataFile");
                var sLearningDataFile = document.getElementById("sLearningDataFile");
                var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                var valid = true;

                var sFileName = document.getElementById("sFileName");
                var sTestFileName = document.getElementById("sTestFileName");
                var sLearningFileName = document.getElementById("sLearningFileName");
                var sPredictionFileName = document.getElementById("sPredictionFileName");
                
                if (nFireFlies.value === "") {
                    alert("Load default values and calculate first ...!");
                    nFireFlies.focus();
                    valid = false;
                } else {
                    if (sFileName.value === "") {
                        if (sTestFileName.value === "") {
                            if (sLearningFileName.value === "") {
                                if (sPredictionFileName.value === "") {
                                    if (sDataFile.value === "") {
                                        if (sTestDataFile.value === "") {
                                            if (sLearningDataFile.value === "") {
                                                if (sPredictionDataFile.value === "") {
                                                    alert("Data file not yet selected ...!");
                                                    sPredictionDataFile.focus();
                                                    valid = false;
                                                } else {
                                                }
                                            } else {
                                            }
                                        } else {
                                        }
                                    } else {
                                    }
                                } else {
                                }
                            } else {
                            }
                        } else {
                        }
                    }
                }

                //reading data - running
                if (valid === true) {
                    var NormalRadio = document.getElementById("NormalRadio");
                    var OptimRadio = document.getElementById("OptimRadio");
                    var SCRadio = document.getElementById("SCRadio");
                    var PRadio = document.getElementById("PRadio");
                    var TORadio = document.getElementById("TORadio");

                    var sDataFile = document.getElementById("sDataFile");
                    var nDFInstances = document.getElementById("nDFInstances");
                    var nDFAttributes = document.getElementById("nDFAttributes");
                    var sTestDataFile = document.getElementById("sTestDataFile");
                    var nTDFInstances = document.getElementById("nTDFInstances");
                    var nTDFAttributes = document.getElementById("nTDFAttributes");
                    var sLearningDataFile = document.getElementById("sLearningDataFile");
                    var nLDFInstances = document.getElementById("nLDFInstances");
                    var nLDFAttributes = document.getElementById("nLDFAttributes");
                    var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                    var nPDFInstances = document.getElementById("nPDFInstances");
                    var nPDFAttributes = document.getElementById("nPDFAttributes");
                    var fullPath = document.getElementById("fullPath");
                    var fullPathT = document.getElementById("fullPathT");
                    var fullPathL = document.getElementById("fullPathL");
                    var fullPathP = document.getElementById("fullPathP");

                    var sFileName = document.getElementById("sFileName");
                    var sTestFileName = document.getElementById("sTestFileName");
                    var sLearningFileName = document.getElementById("sLearningFileName");
                    var sPredictionFileName = document.getElementById("sPredictionFileName");

                    var VarOne = document.getElementById("VarOne");
                    
                    var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                    sLoadingDataExcel = "1";
                    document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                    var sMoveBottom = document.getElementById("sMoveBottom");
                    sMoveBottom.value = val;
                    document.getElementById("sMoveBottom").value = val;

                    //var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                    //sLoadingDataExcelClick = "1";
                    //document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                    //var r = confirm("Continue running SFA-LSSVR ...?");
                    //if (r === true) {
                    //}
                    
                    fullPath.value = sFileName.value;
                    document.getElementById("myform").action = "AllModules.jsp";   //#A of 1 //"AllModules.jsp"; (To Result Form) //"SFALSSVRServlet"; (To Data Form)
                    document.getElementById("myform").submit();
                    nFireFlies.focus();
                    
                    valid = false;
                }
                return valid;
            }

            function checkoutputLSSVM(val) {
                var nFireFliesLSSVM = document.getElementById("nFireFliesLSSVM");
                var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                var valid = true;

                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");
                
                if (nFireFliesLSSVM.value === "") {
                    alert("Load default values and calculate first ...!");
                    nFireFliesLSSVM.focus();
                    valid = false;
                } else {
                    if (sFileNameLSSVM.value === "") {
                        if (sTestFileNameLSSVM.value === "") {
                            if (sLearningFileNameLSSVM.value === "") {
                                if (sPredictionFileNameLSSVM.value === "") {
                                    if (sDataFileLSSVM.value === "") {
                                        if (sTestDataFileLSSVM.value === "") {
                                            if (sLearningDataFileLSSVM.value === "") {
                                                if (sPredictionDataFileLSSVM.value === "") {
                                                    alert("Data file not yet selected ...!");
                                                    sPredictionDataFileLSSVM.focus();
                                                    valid = false;
                                                } else {
                                                }
                                            } else {
                                            }
                                        } else {
                                        }
                                    } else {
                                    }
                                } else {
                                }
                            } else {
                            }
                        } else {
                        }
                    }
                }

                //reading data - running
                if (valid === true) {
                    var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
                    var SCRadioLSSVM = document.getElementById("SCRadioLSSVM");
                    var PRadioLSSVM = document.getElementById("PRadioLSSVM");
                    var TORadioLSSVM = document.getElementById("TORadioLSSVM");

                    var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                    var nDFInstancesLSSVM = document.getElementById("nDFInstancesLSSVM");
                    var nDFAttributesLSSVM = document.getElementById("nDFAttributesLSSVM");
                    var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                    var nTDFInstancesLSSVM = document.getElementById("nTDFInstancesLSSVM");
                    var nTDFAttributesLSSVM = document.getElementById("nTDFAttributesLSSVM");
                    var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                    var nLDFInstancesLSSVM = document.getElementById("nLDFInstancesLSSVM");
                    var nLDFAttributesLSSVM = document.getElementById("nLDFAttributesLSSVM");
                    var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                    var nPDFInstancesLSSVM = document.getElementById("nPDFInstancesLSSVM");
                    var nPDFAttributesLSSVM = document.getElementById("nPDFAttributesLSSVM");
                    var fullPathLSSVM = document.getElementById("fullPathLSSVM");
                    var fullPathTLSSVM = document.getElementById("fullPathTLSSVM");
                    var fullPathLLSSVM = document.getElementById("fullPathLLSSVM");
                    var fullPathPLSSVM = document.getElementById("fullPathPLSSVM");

                    var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                    var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                    var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                    var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");

                    var sError = document.getElementById("sError");

                    var VarTwo = document.getElementById("VarTwo");

                    var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                    sLoadingDataExcelLSSVM = "2";
                    document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                    var sMoveBottom = document.getElementById("sMoveBottom");
                    sMoveBottom.value = val;
                    document.getElementById("sMoveBottom").value = val;

                    //var r = confirm("Continue running SFA-LSSVM ...?");
                    //if (r === true) {
                    //}
                    
                    fullPathLSSVM.value = sFileNameLSSVM.value;
                    document.getElementById("myformLSSVM").action = "AllModules.jsp";
                    document.getElementById("myformLSSVM").submit();
                    nFireFliesLSSVM.focus();
                    
                    valid = false;
                }
                return valid;
            }

            function computeatform(val) {
                var nFireFlies = document.getElementById("nFireFlies");
                var nMaxGeneration = document.getElementById("nMaxGeneration");
                var dMinBeta = document.getElementById("dMinBeta");
                var dGamma = document.getElementById("dGamma");
                var dAlpha = document.getElementById("dAlpha");
                var dAIWeight = document.getElementById("dAIWeight");
                var dTau = document.getElementById("dTau");
                var dBPotential = document.getElementById("dBPotential");
                var dC1 = document.getElementById("dC1");
                var dC2 = document.getElementById("dC2");
                var dS1 = document.getElementById("dS1");
                var dS2 = document.getElementById("dS2");
                var dTrainingPS = document.getElementById("dTrainingPS");
                var dValidationPS = document.getElementById("dValidationPS");
                var dTotalSize = document.getElementById("dTotalSize");
                var nLastChange1 = document.getElementById("nLastChange1");
                var nLastChange2 = document.getElementById("nLastChange2");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var valid = true;

                //compute dValidationPS
                //document.getElementById("dTotalSize").value = 100;
                //document.getElementById("dValidationPS").value = document.getElementById("dTotalSize").value - document.getElementById("dTrainingPS").value;

                //validation
                if (nFireFlies.value === "") {
                    alert("No. of FireFlies cannot be empty!");
                    nFireFlies.focus();
                    valid = false;
                } else if (isNaN(nFireFlies.value)) {
                    alert("No. of FireFlies = 10 - 100 (50)");
                    nFireFlies.focus();
                    nFireFlies.select();
                    valid = false;
                } else if (nMaxGeneration.value.length <= 0) {
                    alert("Max. generation cannot be empty!");
                    nMaxGeneration.focus();
                    valid = false;
                } else if (isNaN(nMaxGeneration.value)) {
                    alert("Max. generation = 10 - 100 (25)");
                    nMaxGeneration.focus();
                    nMaxGeneration.select();
                    valid = false;
                } else if (dMinBeta.value.length <= 0) {
                    alert("Beta min. cannot be empty!");
                    dMinBeta.focus();
                    valid = false;
                } else if (isNaN(dMinBeta.value)) {
                    alert("Beta min. = ... - ... (0.10)");
                    dMinBeta.focus();
                    dMinBeta.select();
                    valid = false;
                } else if (dGamma.value.length <= 0) {
                    alert("Gamma cannot be empty!");
                    dGamma.focus();
                    valid = false;
                } else if (isNaN(dGamma.value)) {
                    alert("Gamma = ... - ... (1.00)");
                    dGamma.focus();
                    dGamma.select();
                    valid = false;
                } else if (dAlpha.value.length <= 0) {
                    alert("Alpha cannot be empty!");
                    dAlpha.focus();
                    valid = false;
                } else if (isNaN(dAlpha.value)) {
                    alert("Alpha = ... - ... (0.20)");
                    dAlpha.focus();
                    dAlpha.select();
                    valid = false;
                } else if (dAIWeight.value.length <= 0) {
                    alert("Adaptive inertia weight cannot be empty!");
                    dAIWeight.focus();
                    valid = false;
                } else if (isNaN(dAIWeight.value)) {
                    alert("Adaptive inertia weight = ... - ... (0.90)");
                    dAIWeight.focus();
                    dAIWeight.select();
                    valid = false;
                } else if (dTau.value.length <= 0) {
                    alert("Tau cannot be empty!");
                    dTau.focus();
                    valid = false;
                } else if (isNaN(dTau.value)) {
                    alert("Tau = ... - ... (1.50)");
                    dTau.focus();
                    dTau.select();
                    valid = false;
                } else if (dBPotential.value.length <= 0) {
                    alert("Biotic potential (a)cannot be empty!");
                    dBPotential.focus();
                    valid = false;
                } else if (isNaN(dBPotential.value)) {
                    alert("Biotic potential (a)= ... - ... (4.00)");
                    dBPotential.focus();
                    dBPotential.select();
                    valid = false;
                } else if (dC1.value.length <= 0) {
                    alert("Start value of C cannot be empty!");
                    dC1.focus();
                    valid = false;
                } else if (isNaN(dC1.value)) {
                    alert("Start value of C = ... - ... (1.00E-3)");
                    dC1.focus();
                    dC1.select();
                    valid = false;
                } else if (dC2.value.length <= 0) {
                    alert("End value of C cannot be empty!");
                    dC2.focus();
                    valid = false;
                } else if (isNaN(dC2.value)) {
                    alert("End value of C = ... - ... (1.00E12)");
                    dC2.focus();
                    dC2.select();
                    valid = false;
                } else if (dS1.value.length <= 0) {
                    alert("Start value of sigma cannot be empty!");
                    dS1.focus();
                    valid = false;
                } else if (isNaN(dS1.value)) {
                    alert("Start value of sigma = ... - ... (1.00E-3)");
                    dS1.focus();
                    dS1.select();
                    valid = false;
                } else if (dS2.value.length <= 0) {
                    alert("End value of sigma cannot be empty!");
                    dS2.focus();
                    valid = false;
                } else if (isNaN(dS2.value)) {
                    alert("End value of sigma = ... - ... (1.00E3)");
                    dS2.focus();
                    dS2.select();
                    valid = false;
                } else if (dTrainingPS.value.length <= 0) {
                    alert("Training partition size (%) cannot be empty!");
                    dTrainingPS.focus();
                    valid = false;
                } else if (isNaN(dTrainingPS.value)) {
                    alert("Training partition size (%) = ... - ... (70)");
                    dTrainingPS.focus();
                    dTrainingPS.select();
                    valid = false;
                } else if (nLastChange1.value.length <= 0) {
                    alert("No. of Last Changes cannot be empty!");
                    nLastChange1.focus();
                    valid = false;
                } else if (isNaN(nLastChange1.value)) {
                    alert("No. of Last Changes = ... - ... (3)");
                    nLastChange1.focus();
                    nLastChange1.select();
                    valid = false;
                } else if (nLastChange2.value.length <= 0) {
                    alert("Constant OF Value cannot be empty!");
                    nLastChange2.focus();
                    valid = false;
                } else if (isNaN(nLastChange2.value)) {
                    alert("Constant OF Value = ... - ... (0.00001)");
                    nLastChange2.focus();
                    nLastChange2.select();
                    valid = false;
                } else if (dHoldOut.value.length <= 0) {
                    alert("Hold-Out (%) cannot be empty ...!");
                    dHoldOut.focus();
                    valid = false;
                } else if (isNaN(dHoldOut.value)) {
                    alert("Hold-Out (%) = ... - ... (20)");
                    dHoldOut.focus();
                    dHoldOut.select();
                    valid = false;
                } else if (dCrossValidation.value.length <= 0) {
                    alert("Cross-Validation (%) cannot be empty ...!");
                    dCrossValidation.focus();
                    valid = false;
                } else if (isNaN(dCrossValidation.value)) {
                    alert("Cross-Validation (%) = ... - ... (10)");
                    dCrossValidation.focus();
                    dCrossValidation.select();
                    valid = false;
                } else {
                }
                
                //var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                //sLoadingDataExcel = "";
                //document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                //analyze data files
                /**/
                if (valid === true) {
                    var sDataFile = document.getElementById("sDataFile");
                    var nDFInstances = document.getElementById("nDFInstances");
                    var nDFAttributes = document.getElementById("nDFAttributes");
                    var sTestDataFile = document.getElementById("sTestDataFile");
                    var nTDFInstances = document.getElementById("nTDFInstances");
                    var nTDFAttributes = document.getElementById("nTDFAttributes");
                    var sLearningDataFile = document.getElementById("sLearningDataFile");
                    var nLDFInstances = document.getElementById("nLDFInstances");
                    var nLDFAttributes = document.getElementById("nLDFAttributes");
                    var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                    var nPDFInstances = document.getElementById("nPDFInstances");
                    var nPDFAttributes = document.getElementById("nPDFAttributes");
                    var fullPath = document.getElementById("fullPath");
                    var fullPathT = document.getElementById("fullPathT");
                    var fullPathL = document.getElementById("fullPathL");
                    var fullPathP = document.getElementById("fullPathP");

                    var sFileName = document.getElementById("sFileName");
                    var sTestFileName = document.getElementById("sTestFileName");
                    var sLearningFileName = document.getElementById("sLearningFileName");
                    var sPredictionFileName = document.getElementById("sPredictionFileName");

                    var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                    sLoadingDataFile = "";
                    document.getElementById("sLoadingDataFile").value = sLoadingDataFile;

                    var VarOne = document.getElementById("VarOne");
                    
                    var sMoveBottom = document.getElementById("sMoveBottom");
                    sMoveBottom.value = val;
                    document.getElementById("sMoveBottom").value = val;

                    if (VarOne !== null) {
                        if (sFileName.value === "") {
                            if (sTestFileName.value === "") {
                                if (sLearningFileName.value === "") {
                                    if (sPredictionFileName.value === "") {
                                        if (sDataFile.value === "") {
                                            if (sTestDataFile.value === "") {
                                                if (sLearningDataFile.value === "") {
                                                    if (sPredictionDataFile.value === "") {
                                                        //alert("Data file not yet selected ...!");
                                                        //sPredictionDataFile.focus();
                                                        valid = false;
                                                    } else {
                                                        fullPathP.value = sPredictionDataFile.value;
                                                        document.getElementById("myform").action = "AllModules.jsp";
                                                        document.getElementById("myform").submit();
                                                    }
                                                } else {
                                                    fullPathL.value = sLearningDataFile.value;
                                                    document.getElementById("myform").action = "AllModules.jsp";
                                                    document.getElementById("myform").submit();
                                                }
                                            } else {
                                                fullPathT.value = sTestDataFile.value;
                                                document.getElementById("myform").action = "AllModules.jsp";
                                                document.getElementById("myform").submit();
                                            }
                                        } else {
                                            fullPath.value = sDataFile.value;
                                            document.getElementById("myform").action = "AllModules.jsp";
                                            document.getElementById("myform").submit();
                                        }
                                    } else {
                                        fullPathP.value = sPredictionFileName.value;
                                        document.getElementById("myform").action = "AllModules.jsp";
                                        document.getElementById("myform").submit();
                                    }
                                } else {
                                    fullPathL.value = sLearningFileName.value;
                                    document.getElementById("myform").action = "AllModules.jsp";
                                    document.getElementById("myform").submit();
                                }
                            } else {
                                fullPathT.value = sTestFileName.value;
                                document.getElementById("myform").action = "AllModules.jsp";
                                document.getElementById("myform").submit();
                            }
                        } else {
                            fullPath.value = sFileName.value;
                            document.getElementById("myform").action = "AllModules.jsp";
                            document.getElementById("myform").submit();
                        }
                    }
                }
                /**/
                
                return valid;
            }

            function computeatformLSSVM(val) {
                var nFireFliesLSSVM = document.getElementById("nFireFliesLSSVM");
                var nMaxGenerationLSSVM = document.getElementById("nMaxGenerationLSSVM");
                var dMinBetaLSSVM = document.getElementById("dMinBetaLSSVM");
                var dGammaLSSVM = document.getElementById("dGammaLSSVM");
                var dAlphaLSSVM = document.getElementById("dAlphaLSSVM");
                var dAIWeightLSSVM = document.getElementById("dAIWeightLSSVM");
                var dTauLSSVM = document.getElementById("dTauLSSVM");
                var dBPotentialLSSVM = document.getElementById("dBPotentialLSSVM");
                var dC1LSSVM = document.getElementById("dC1LSSVM");
                var dC2LSSVM = document.getElementById("dC2LSSVM");
                var dS1LSSVM = document.getElementById("dS1LSSVM");
                var dS2LSSVM = document.getElementById("dS2LSSVM");
                var dTrainingPSLSSVM = document.getElementById("dTrainingPSLSSVM");
                var dValidationPSLSSVM = document.getElementById("dValidationPSLSSVM");
                var dTotalSizeLSSVM = document.getElementById("dTotalSizeLSSVM");
                var nLastChange1LSSVM = document.getElementById("nLastChange1LSSVM");
                var nLastChange2LSSVM = document.getElementById("nLastChange2LSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var valid = true;

                //compute dValidationPS
                document.getElementById("dTotalSizeLSSVM").value = 100;
                document.getElementById("dValidationPSLSSVM").value = document.getElementById("dTotalSizeLSSVM").value - document.getElementById("dTrainingPSLSSVM").value;

                //validation
                if (nFireFliesLSSVM.value === "") {
                    alert("No. of FireFlies cannot be empty!");
                    nFireFliesLSSVM.focus();
                    valid = false;
                } else if (isNaN(nFireFliesLSSVM.value)) {
                    alert("No. of FireFlies = 10 - 100 (50)");
                    nFireFliesLSSVM.focus();
                    nFireFliesLSSVM.select();
                    valid = false;
                } else if (nMaxGenerationLSSVM.value.length <= 0) {
                    alert("Max. generation cannot be empty!");
                    nMaxGenerationLSSVM.focus();
                    valid = false;
                } else if (isNaN(nMaxGenerationLSSVM.value)) {
                    alert("Max. generation = 10 - 100 (25)");
                    nMaxGenerationLSSVM.focus();
                    nMaxGenerationLSSVM.select();
                    valid = false;
                } else if (dMinBetaLSSVM.value.length <= 0) {
                    alert("Beta min. cannot be empty!");
                    dMinBetaLSSVM.focus();
                    valid = false;
                } else if (isNaN(dMinBetaLSSVM.value)) {
                    alert("Beta min. = ... - ... (0.10)");
                    dMinBetaLSSVM.focus();
                    dMinBetaLSSVM.select();
                    valid = false;
                } else if (dGammaLSSVM.value.length <= 0) {
                    alert("Gamma cannot be empty!");
                    dGammaLSSVM.focus();
                    valid = false;
                } else if (isNaN(dGammaLSSVM.value)) {
                    alert("Gamma = ... - ... (1.00)");
                    dGammaLSSVM.focus();
                    dGammaLSSVM.select();
                    valid = false;
                } else if (dAlphaLSSVM.value.length <= 0) {
                    alert("Alpha cannot be empty!");
                    dAlphaLSSVM.focus();
                    valid = false;
                } else if (isNaN(dAlphaLSSVM.value)) {
                    alert("Alpha = ... - ... (0.20)");
                    dAlphaLSSVM.focus();
                    dAlphaLSSVM.select();
                    valid = false;
                } else if (dAIWeightLSSVM.value.length <= 0) {
                    alert("Adaptive inertia weight cannot be empty!");
                    dAIWeightLSSVM.focus();
                    valid = false;
                } else if (isNaN(dAIWeightLSSVM.value)) {
                    alert("Adaptive inertia weight = ... - ... (0.90)");
                    dAIWeightLSSVM.focus();
                    dAIWeightLSSVM.select();
                    valid = false;
                } else if (dTauLSSVM.value.length <= 0) {
                    alert("Tau cannot be empty!");
                    dTauLSSVM.focus();
                    valid = false;
                } else if (isNaN(dTauLSSVM.value)) {
                    alert("Tau = ... - ... (1.50)");
                    dTauLSSVM.focus();
                    dTauLSSVM.select();
                    valid = false;
                } else if (dBPotentialLSSVM.value.length <= 0) {
                    alert("Biotic potential (a)cannot be empty!");
                    dBPotentialLSSVM.focus();
                    valid = false;
                } else if (isNaN(dBPotentialLSSVM.value)) {
                    alert("Biotic potential (a)= ... - ... (4.00)");
                    dBPotentialLSSVM.focus();
                    dBPotentialLSSVM.select();
                    valid = false;
                } else if (dC1LSSVM.value.length <= 0) {
                    alert("Start value of C cannot be empty!");
                    dC1LSSVM.focus();
                    valid = false;
                } else if (isNaN(dC1LSSVM.value)) {
                    alert("Start value of C = ... - ... (1.00E-3)");
                    dC1LSSVM.focus();
                    dC1LSSVM.select();
                    valid = false;
                } else if (dC2LSSVM.value.length <= 0) {
                    alert("End value of C cannot be empty!");
                    dC2LSSVM.focus();
                    valid = false;
                } else if (isNaN(dC2LSSVM.value)) {
                    alert("End value of C = ... - ... (1.00E12)");
                    dC2LSSVM.focus();
                    dC2LSSVM.select();
                    valid = false;
                } else if (dS1LSSVM.value.length <= 0) {
                    alert("Start value of sigma cannot be empty!");
                    dS1LSSVM.focus();
                    valid = false;
                } else if (isNaN(dS1LSSVM.value)) {
                    alert("Start value of sigma = ... - ... (1.00E-3)");
                    dS1LSSVM.focus();
                    dS1LSSVM.select();
                    valid = false;
                } else if (dS2LSSVM.value.length <= 0) {
                    alert("End value of sigma cannot be empty!");
                    dS2LSSVM.focus();
                    valid = false;
                } else if (isNaN(dS2LSSVM.value)) {
                    alert("End value of sigma = ... - ... (1.00E3)");
                    dS2LSSVM.focus();
                    dS2LSSVM.select();
                    valid = false;
                } else if (dTrainingPSLSSVM.value.length <= 0) {
                    alert("Training partition size (%) cannot be empty!");
                    dTrainingPSLSSVM.focus();
                    valid = false;
                } else if (isNaN(dTrainingPSLSSVM.value)) {
                    alert("Training partition size (%) = ... - ... (70)");
                    dTrainingPSLSSVM.focus();
                    dTrainingPSLSSVM.select();
                    valid = false;
                } else if (nLastChange1LSSVM.value.length <= 0) {
                    alert("No. of Last Changes cannot be empty!");
                    nLastChange1LSSVM.focus();
                    valid = false;
                } else if (isNaN(nLastChange1LSSVM.value)) {
                    alert("No. of Last Changes = ... - ... (3)");
                    nLastChange1LSSVM.focus();
                    nLastChange1LSSVM.select();
                    valid = false;
                } else if (nLastChange2LSSVM.value.length <= 0) {
                    alert("Constant OF Value cannot be empty!");
                    nLastChange2LSSVM.focus();
                    valid = false;
                } else if (isNaN(nLastChange2LSSVM.value)) {
                    alert("Constant OF Value = ... - ... (0.00001)");
                    nLastChange2LSSVM.focus();
                    nLastChange2LSSVM.select();
                    valid = false;
                } else if (dHoldOutLSSVM.value.length <= 0) {
                    alert("Hold-Out (%) cannot be empty ...!");
                    dHoldOutLSSVM.focus();
                    valid = false;
                } else if (isNaN(dHoldOutLSSVM.value)) {
                    alert("Hold-Out (%) = ... - ... (20)");
                    dHoldOutLSSVM.focus();
                    dHoldOutLSSVM.select();
                    valid = false;
                } else if (dCrossValidationLSSVM.value.length <= 0) {
                    alert("Cross-Validation (%) cannot be empty ...!");
                    dCrossValidationLSSVM.focus();
                    valid = false;
                } else if (isNaN(dCrossValidationLSSVM.value)) {
                    alert("Cross-Validation (%) = ... - ... (10)");
                    dCrossValidationLSSVM.focus();
                    dCrossValidationLSSVM.select();
                    valid = false;
                } else {
                }
                
                //var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                //sLoadingDataExcelLSSVM = "";
                //document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                //analyze data files
                /**/
                if (valid === true) {
                    var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                    var nDFInstancesLSSVM = document.getElementById("nDFInstancesLSSVM");
                    var nDFAttributesLSSVM = document.getElementById("nDFAttributesLSSVM");
                    var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                    var nTDFInstancesLSSVM = document.getElementById("nTDFInstancesLSSVM");
                    var nTDFAttributesLSSVM = document.getElementById("nTDFAttributesLSSVM");
                    var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                    var nLDFInstancesLSSVM = document.getElementById("nLDFInstancesLSSVM");
                    var nLDFAttributesLSSVM = document.getElementById("nLDFAttributesLSSVM");
                    var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                    var nPDFInstancesLSSVM = document.getElementById("nPDFInstancesLSSVM");
                    var nPDFAttributesLSSVM = document.getElementById("nPDFAttributesLSSVM");
                    var fullPathLSSVM = document.getElementById("fullPathLSSVM");
                    var fullPathTLSSVM = document.getElementById("fullPathTLSSVM");
                    var fullPathLLSSVM = document.getElementById("fullPathLLSSVM");
                    var fullPathPLSSVM = document.getElementById("fullPathPLSSVM");

                    var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                    var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                    var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                    var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");

                    var sMoveBottom = document.getElementById("sMoveBottom");
                    sMoveBottom.value = val;
                    document.getElementById("sMoveBottom").value = val;

                    var VarTwo = document.getElementById("VarTwo");
                    
                    if (VarTwo !== null) {
                        if (sFileNameLSSVM.value === "") {
                            if (sTestFileNameLSSVM.value === "") {
                                if (sLearningFileNameLSSVM.value === "") {
                                    if (sPredictionFileNameLSSVM.value === "") {
                                        if (sDataFileLSSVM.value === "") {
                                            if (sTestDataFileLSSVM.value === "") {
                                                if (sLearningDataFileLSSVM.value === "") {
                                                    if (sPredictionDataFileLSSVM.value === "") {
                                                        //alert("Data file not yet selected ...!");
                                                        //sPredictionDataFileLSSVM.focus();
                                                        valid = false;
                                                    } else {
                                                        fullPathPLSSVM.value = sPredictionDataFileLSSVM.value;
                                                        document.getElementById("myformLSSVM").action = "AllModules.jsp";
                                                        document.getElementById("myformLSSVM").submit();
                                                    }
                                                } else {
                                                    fullPathLLSSVM.value = sLearningDataFileLSSVM.value;
                                                    document.getElementById("myformLSSVM").action = "AllModules.jsp";
                                                    document.getElementById("myformLSSVM").submit();
                                                }
                                            } else {
                                                fullPathTLSSVM.value = sTestDataFileLSSVM.value;
                                                document.getElementById("myformLSSVM").action = "AllModules.jsp";
                                                document.getElementById("myformLSSVM").submit();
                                            }
                                        } else {
                                            fullPathLSSVM.value = sDataFileLSSVM.value;
                                            document.getElementById("myformLSSVM").action = "AllModules.jsp";
                                            document.getElementById("myformLSSVM").submit();
                                        }
                                    } else {
                                        fullPathPLSSVM.value = sPredictionFileNameLSSVM.value;
                                        document.getElementById("myformLSSVM").action = "AllModules.jsp";
                                        document.getElementById("myformLSSVM").submit();
                                    }
                                } else {
                                    fullPathLLSSVM.value = sLearningFileNameLSSVM.value;
                                    document.getElementById("myformLSSVM").action = "AllModules.jsp";
                                    document.getElementById("myformLSSVM").submit();
                                }
                            } else {
                                fullPathTLSSVM.value = sTestFileNameLSSVM.value;
                                document.getElementById("myformLSSVM").action = "AllModules.jsp";
                                document.getElementById("myformLSSVM").submit();
                            }
                        } else {
                            fullPathLSSVM.value = sFileNameLSSVM.value;
                            document.getElementById("myformLSSVM").action = "AllModules.jsp";
                            document.getElementById("myformLSSVM").submit();
                        }
                    }
                }
                /**/
                return valid;
            }

            function savingdata(val) {
                var nFireFlies = document.getElementById("nFireFlies");
                var nMaxGeneration = document.getElementById("nMaxGeneration");
                var dMinBeta = document.getElementById("dMinBeta");
                var dGamma = document.getElementById("dGamma");
                var dAlpha = document.getElementById("dAlpha");
                var dAIWeight = document.getElementById("dAIWeight");
                var dTau = document.getElementById("dTau");
                var dBPotential = document.getElementById("dBPotential");
                var dC1 = document.getElementById("dC1");
                var dC2 = document.getElementById("dC2");
                var dS1 = document.getElementById("dS1");
                var dS2 = document.getElementById("dS2");
                var dTrainingPS = document.getElementById("dTrainingPS");
                var dValidationPS = document.getElementById("dValidationPS");
                var dTotalSize = document.getElementById("dTotalSize");
                var nLastChange1 = document.getElementById("nLastChange1");
                var nLastChange2 = document.getElementById("nLastChange2");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var valid = true;

                //compute dValidationPS
                document.getElementById("dTotalSize").value = 100;
                document.getElementById("dValidationPS").value = document.getElementById("dTotalSize").value - document.getElementById("dTrainingPS").value;

                //validation
                if (nFireFlies.value === "") {
                    alert("No. of FireFlies cannot be empty!");
                    nFireFlies.focus();
                    valid = false;
                } else if (isNaN(nFireFlies.value)) {
                    alert("No. of FireFlies = 10 - 100 (50)");
                    nFireFlies.focus();
                    nFireFlies.select();
                    valid = false;
                } else if (nMaxGeneration.value.length <= 0) {
                    alert("Max. generation cannot be empty!");
                    nMaxGeneration.focus();
                    valid = false;
                } else if (isNaN(nMaxGeneration.value)) {
                    alert("Max. generation = 10 - 100 (25)");
                    nMaxGeneration.focus();
                    nMaxGeneration.select();
                    valid = false;
                } else if (dMinBeta.value.length <= 0) {
                    alert("Beta min. cannot be empty!");
                    dMinBeta.focus();
                    valid = false;
                } else if (isNaN(dMinBeta.value)) {
                    alert("Beta min. = ... - ... (0.10)");
                    dMinBeta.focus();
                    dMinBeta.select();
                    valid = false;
                } else if (dGamma.value.length <= 0) {
                    alert("Gamma cannot be empty!");
                    dGamma.focus();
                    valid = false;
                } else if (isNaN(dGamma.value)) {
                    alert("Gamma = ... - ... (1.00)");
                    dGamma.focus();
                    dGamma.select();
                    valid = false;
                } else if (dAlpha.value.length <= 0) {
                    alert("Alpha cannot be empty!");
                    dAlpha.focus();
                    valid = false;
                } else if (isNaN(dAlpha.value)) {
                    alert("Alpha = ... - ... (0.20)");
                    dAlpha.focus();
                    dAlpha.select();
                    valid = false;
                } else if (dAIWeight.value.length <= 0) {
                    alert("Adaptive inertia weight cannot be empty!");
                    dAIWeight.focus();
                    valid = false;
                } else if (isNaN(dAIWeight.value)) {
                    alert("Adaptive inertia weight = ... - ... (0.90)");
                    dAIWeight.focus();
                    dAIWeight.select();
                    valid = false;
                } else if (dTau.value.length <= 0) {
                    alert("Tau cannot be empty!");
                    dTau.focus();
                    valid = false;
                } else if (isNaN(dTau.value)) {
                    alert("Tau = ... - ... (1.50)");
                    dTau.focus();
                    dTau.select();
                    valid = false;
                } else if (dBPotential.value.length <= 0) {
                    alert("Biotic potential (a)cannot be empty!");
                    dBPotential.focus();
                    valid = false;
                } else if (isNaN(dBPotential.value)) {
                    alert("Biotic potential (a)= ... - ... (4.00)");
                    dBPotential.focus();
                    dBPotential.select();
                    valid = false;
                } else if (dC1.value.length <= 0) {
                    alert("Start value of C cannot be empty!");
                    dC1.focus();
                    valid = false;
                } else if (isNaN(dC1.value)) {
                    alert("Start value of C = ... - ... (1.00E-3)");
                    dC1.focus();
                    dC1.select();
                    valid = false;
                } else if (dC2.value.length <= 0) {
                    alert("End value of C cannot be empty!");
                    dC2.focus();
                    valid = false;
                } else if (isNaN(dC2.value)) {
                    alert("End value of C = ... - ... (1.00E12)");
                    dC2.focus();
                    dC2.select();
                    valid = false;
                } else if (dS1.value.length <= 0) {
                    alert("Start value of sigma cannot be empty!");
                    dS1.focus();
                    valid = false;
                } else if (isNaN(dS1.value)) {
                    alert("Start value of sigma = ... - ... (1.00E-3)");
                    dS1.focus();
                    dS1.select();
                    valid = false;
                } else if (dS2.value.length <= 0) {
                    alert("End value of sigma cannot be empty!");
                    dS2.focus();
                    valid = false;
                } else if (isNaN(dS2.value)) {
                    alert("End value of sigma = ... - ... (1.00E3)");
                    dS2.focus();
                    dS2.select();
                    valid = false;
                } else if (dTrainingPS.value.length <= 0) {
                    alert("Training partition size (%) cannot be empty!");
                    dTrainingPS.focus();
                    valid = false;
                } else if (isNaN(dTrainingPS.value)) {
                    alert("Training partition size (%) = ... - ... (70)");
                    dTrainingPS.focus();
                    dTrainingPS.select();
                    valid = false;
                } else if (nLastChange1.value.length <= 0) {
                    alert("No. of Last Changes cannot be empty!");
                    nLastChange1.focus();
                    valid = false;
                } else if (isNaN(nLastChange1.value)) {
                    alert("No. of Last Changes = ... - ... (3)");
                    nLastChange1.focus();
                    nLastChange1.select();
                    valid = false;
                } else if (nLastChange2.value.length <= 0) {
                    alert("Constant OF Value cannot be empty!");
                    nLastChange2.focus();
                    valid = false;
                } else if (isNaN(nLastChange2.value)) {
                    alert("Constant OF Value = ... - ... (0.00001)");
                    nLastChange2.focus();
                    nLastChange2.select();
                    valid = false;
                } else if (dHoldOut.value.length <= 0) {
                    alert("Hold-Out (%) cannot be empty ...!");
                    dHoldOut.focus();
                    valid = false;
                } else if (isNaN(dHoldOut.value)) {
                    alert("Hold-Out (%) = ... - ... (20)");
                    dHoldOut.focus();
                    dHoldOut.select();
                    valid = false;
                } else if (dCrossValidation.value.length <= 0) {
                    alert("Cross-Validation (%) cannot be empty ...!");
                    dCrossValidation.focus();
                    valid = false;
                } else if (isNaN(dCrossValidation.value)) {
                    alert("Cross-Validation (%) = ... - ... (10)");
                    dCrossValidation.focus();
                    dCrossValidation.select();
                    valid = false;
                } else {
                }

                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                
                return valid;
            }
                
            function savingdataLSSVM(val) {
                var nFireFliesLSSVM = document.getElementById("nFireFliesLSSVM");
                var nMaxGenerationLSSVM = document.getElementById("nMaxGenerationLSSVM");
                var dMinBetaLSSVM = document.getElementById("dMinBetaLSSVM");
                var dGammaLSSVM = document.getElementById("dGammaLSSVM");
                var dAlphaLSSVM = document.getElementById("dAlphaLSSVM");
                var dAIWeightLSSVM = document.getElementById("dAIWeightLSSVM");
                var dTauLSSVM = document.getElementById("dTauLSSVM");
                var dBPotentialLSSVM = document.getElementById("dBPotentialLSSVM");
                var dC1LSSVM = document.getElementById("dC1LSSVM");
                var dC2LSSVM = document.getElementById("dC2LSSVM");
                var dS1LSSVM = document.getElementById("dS1LSSVM");
                var dS2LSSVM = document.getElementById("dS2LSSVM");
                var dTrainingPSLSSVM = document.getElementById("dTrainingPSLSSVM");
                var dValidationPSLSSVM = document.getElementById("dValidationPSLSSVM");
                var dTotalSizeLSSVM = document.getElementById("dTotalSizeLSSVM");
                var nLastChange1LSSVM = document.getElementById("nLastChange1LSSVM");
                var nLastChange2LSSVM = document.getElementById("nLastChange2LSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var valid = true;

                //compute dValidationPS
                document.getElementById("dTotalSizeLSSVM").value = 100;
                document.getElementById("dValidationPSLSSVM").value = document.getElementById("dTotalSizeLSSVM").value - document.getElementById("dTrainingPSLSSVM").value;

                //validation
                if (nFireFliesLSSVM.value === "") {
                    alert("No. of FireFlies cannot be empty!");
                    nFireFliesLSSVM.focus();
                    valid = false;
                } else if (isNaN(nFireFliesLSSVM.value)) {
                    alert("No. of FireFlies = 10 - 100 (50)");
                    nFireFliesLSSVM.focus();
                    nFireFliesLSSVM.select();
                    valid = false;
                } else if (nMaxGenerationLSSVM.value.length <= 0) {
                    alert("Max. generation cannot be empty!");
                    nMaxGenerationLSSVM.focus();
                    valid = false;
                } else if (isNaN(nMaxGenerationLSSVM.value)) {
                    alert("Max. generation = 10 - 100 (25)");
                    nMaxGenerationLSSVM.focus();
                    nMaxGenerationLSSVM.select();
                    valid = false;
                } else if (dMinBetaLSSVM.value.length <= 0) {
                    alert("Beta min. cannot be empty!");
                    dMinBetaLSSVM.focus();
                    valid = false;
                } else if (isNaN(dMinBetaLSSVM.value)) {
                    alert("Beta min. = ... - ... (0.10)");
                    dMinBetaLSSVM.focus();
                    dMinBetaLSSVM.select();
                    valid = false;
                } else if (dGammaLSSVM.value.length <= 0) {
                    alert("Gamma cannot be empty!");
                    dGammaLSSVM.focus();
                    valid = false;
                } else if (isNaN(dGammaLSSVM.value)) {
                    alert("Gamma = ... - ... (1.00)");
                    dGammaLSSVM.focus();
                    dGammaLSSVM.select();
                    valid = false;
                } else if (dAlphaLSSVM.value.length <= 0) {
                    alert("Alpha cannot be empty!");
                    dAlphaLSSVM.focus();
                    valid = false;
                } else if (isNaN(dAlphaLSSVM.value)) {
                    alert("Alpha = ... - ... (0.20)");
                    dAlphaLSSVM.focus();
                    dAlphaLSSVM.select();
                    valid = false;
                } else if (dAIWeightLSSVM.value.length <= 0) {
                    alert("Adaptive inertia weight cannot be empty!");
                    dAIWeightLSSVM.focus();
                    valid = false;
                } else if (isNaN(dAIWeightLSSVM.value)) {
                    alert("Adaptive inertia weight = ... - ... (0.90)");
                    dAIWeightLSSVM.focus();
                    dAIWeightLSSVM.select();
                    valid = false;
                } else if (dTauLSSVM.value.length <= 0) {
                    alert("Tau cannot be empty!");
                    dTauLSSVM.focus();
                    valid = false;
                } else if (isNaN(dTauLSSVM.value)) {
                    alert("Tau = ... - ... (1.50)");
                    dTauLSSVM.focus();
                    dTauLSSVM.select();
                    valid = false;
                } else if (dBPotentialLSSVM.value.length <= 0) {
                    alert("Biotic potential (a)cannot be empty!");
                    dBPotentialLSSVM.focus();
                    valid = false;
                } else if (isNaN(dBPotentialLSSVM.value)) {
                    alert("Biotic potential (a)= ... - ... (4.00)");
                    dBPotentialLSSVM.focus();
                    dBPotentialLSSVM.select();
                    valid = false;
                } else if (dC1LSSVM.value.length <= 0) {
                    alert("Start value of C cannot be empty!");
                    dC1LSSVM.focus();
                    valid = false;
                } else if (isNaN(dC1LSSVM.value)) {
                    alert("Start value of C = ... - ... (1.00E-3)");
                    dC1LSSVM.focus();
                    dC1LSSVM.select();
                    valid = false;
                } else if (dC2LSSVM.value.length <= 0) {
                    alert("End value of C cannot be empty!");
                    dC2LSSVM.focus();
                    valid = false;
                } else if (isNaN(dC2LSSVM.value)) {
                    alert("End value of C = ... - ... (1.00E12)");
                    dC2LSSVM.focus();
                    dC2LSSVM.select();
                    valid = false;
                } else if (dS1LSSVM.value.length <= 0) {
                    alert("Start value of sigma cannot be empty!");
                    dS1LSSVM.focus();
                    valid = false;
                } else if (isNaN(dS1LSSVM.value)) {
                    alert("Start value of sigma = ... - ... (1.00E-3)");
                    dS1LSSVM.focus();
                    dS1LSSVM.select();
                    valid = false;
                } else if (dS2LSSVM.value.length <= 0) {
                    alert("End value of sigma cannot be empty!");
                    dS2LSSVM.focus();
                    valid = false;
                } else if (isNaN(dS2LSSVM.value)) {
                    alert("End value of sigma = ... - ... (1.00E3)");
                    dS2LSSVM.focus();
                    dS2LSSVM.select();
                    valid = false;
                } else if (dTrainingPSLSSVM.value.length <= 0) {
                    alert("Training partition size (%) cannot be empty!");
                    dTrainingPSLSSVM.focus();
                    valid = false;
                } else if (isNaN(dTrainingPSLSSVM.value)) {
                    alert("Training partition size (%) = ... - ... (70)");
                    dTrainingPSLSSVM.focus();
                    dTrainingPSLSSVM.select();
                    valid = false;
                } else if (nLastChange1LSSVM.value.length <= 0) {
                    alert("No. of Last Changes cannot be empty!");
                    nLastChange1LSSVM.focus();
                    valid = false;
                } else if (isNaN(nLastChange1LSSVM.value)) {
                    alert("No. of Last Changes = ... - ... (3)");
                    nLastChange1LSSVM.focus();
                    nLastChange1LSSVM.select();
                    valid = false;
                } else if (nLastChange2LSSVM.value.length <= 0) {
                    alert("Constant OF Value cannot be empty!");
                    nLastChange2LSSVM.focus();
                    valid = false;
                } else if (isNaN(nLastChange2LSSVM.value)) {
                    alert("Constant OF Value = ... - ... (0.00001)");
                    nLastChange2LSSVM.focus();
                    nLastChange2LSSVM.select();
                    valid = false;
                } else if (dHoldOutLSSVM.value.length <= 0) {
                    alert("Hold-Out (%) cannot be empty ...!");
                    dHoldOutLSSVM.focus();
                    valid = false;
                } else if (isNaN(dHoldOutLSSVM.value)) {
                    alert("Hold-Out (%) = ... - ... (20)");
                    dHoldOutLSSVM.focus();
                    dHoldOutLSSVM.select();
                    valid = false;
                } else if (dCrossValidationLSSVM.value.length <= 0) {
                    alert("Cross-Validation (%) cannot be empty ...!");
                    dCrossValidationLSSVM.focus();
                    valid = false;
                } else if (isNaN(dCrossValidationLSSVM.value)) {
                    alert("Cross-Validation (%) = ... - ... (10)");
                    dCrossValidationLSSVM.focus();
                    dCrossValidationLSSVM.select();
                    valid = false;
                } else {
                }

                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                
                return valid;
            }
                
            function loadingdataform(val) {
                var nFireFlies = document.getElementById("nFireFlies");
                var nMaxGeneration = document.getElementById("nMaxGeneration");
                var dMinBeta = document.getElementById("dMinBeta");
                var dGamma = document.getElementById("dGamma");
                var dAlpha = document.getElementById("dAlpha");
                var dAIWeight = document.getElementById("dAIWeight");
                var dTau = document.getElementById("dTau");
                var dBPotential = document.getElementById("dBPotential");
                var dC1 = document.getElementById("dC1");
                var dC2 = document.getElementById("dC2");
                var dS1 = document.getElementById("dS1");
                var dS2 = document.getElementById("dS2");
                var dTrainingPS = document.getElementById("dTrainingPS");
                var dValidationPS = document.getElementById("dValidationPS");
                var dTotalSize = document.getElementById("dTotalSize");
                var nLastChange1 = document.getElementById("nLastChange1");
                var nLastChange2 = document.getElementById("nLastChange2");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var sDataFile = document.getElementById("sDataFile");
                var nDFInstances = document.getElementById("nDFInstances");
                var nDFAttributes = document.getElementById("nDFAttributes");
                var sTestDataFile = document.getElementById("sTestDataFile");
                var nTDFInstances = document.getElementById("nTDFInstances");
                var nTDFAttributes = document.getElementById("nTDFAttributes");
                var sLearningDataFile = document.getElementById("sLearningDataFile");
                var nLDFInstances = document.getElementById("nLDFInstances");
                var nLDFAttributes = document.getElementById("nLDFAttributes");
                var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                var nPDFInstances = document.getElementById("nPDFInstances");
                var nPDFAttributes = document.getElementById("nPDFAttributes");
                var fullPath = document.getElementById("fullPath");
                var fullPathT = document.getElementById("fullPathT");
                var fullPathL = document.getElementById("fullPathL");
                var fullPathP = document.getElementById("fullPathP");

                var sFileName = document.getElementById("sFileName");
                var sTestFileName = document.getElementById("sTestFileName");
                var sLearningFileName = document.getElementById("sLearningFileName");
                var sPredictionFileName = document.getElementById("sPredictionFileName");

                var VarOne = document.getElementById("VarOne");

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "1";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = "";
                
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = "";
                
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;

                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "AllModules.jsp";
                document.getElementById("myform").submit();
                alert("Data file already loaded ...!");
                nFireFlies.focus();
                valid = false;
                
                return valid;
            }
            
            function loadingdataformLSSVM(val) {
                var nFireFliesLSSVM = document.getElementById("nFireFliesLSSVM");
                var nMaxGenerationLSSVM = document.getElementById("nMaxGenerationLSSVM");
                var dMinBetaLSSVM = document.getElementById("dMinBetaLSSVM");
                var dGammaLSSVM = document.getElementById("dGammaLSSVM");
                var dAlphaLSSVM = document.getElementById("dAlphaLSSVM");
                var dAIWeightLSSVM = document.getElementById("dAIWeightLSSVM");
                var dTauLSSVM = document.getElementById("dTauLSSVM");
                var dBPotentialLSSVM = document.getElementById("dBPotentialLSSVM");
                var dC1LSSVM = document.getElementById("dC1LSSVM");
                var dC2LSSVM = document.getElementById("dC2LSSVM");
                var dS1LSSVM = document.getElementById("dS1LSSVM");
                var dS2LSSVM = document.getElementById("dS2LSSVM");
                var dTrainingPSLSSVM = document.getElementById("dTrainingPSLSSVM");
                var dValidationPSLSSVM = document.getElementById("dValidationPSLSSVM");
                var dTotalSizeLSSVM = document.getElementById("dTotalSizeLSSVM");
                var nLastChange1LSSVM = document.getElementById("nLastChange1LSSVM");
                var nLastChange2LSSVM = document.getElementById("nLastChange2LSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                var nDFInstancesLSSVM = document.getElementById("nDFInstancesLSSVM");
                var nDFAttributesLSSVM = document.getElementById("nDFAttributesLSSVM");
                var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                var nTDFInstancesLSSVM = document.getElementById("nTDFInstancesLSSVM");
                var nTDFAttributesLSSVM = document.getElementById("nTDFAttributesLSSVM");
                var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                var nLDFInstancesLSSVM = document.getElementById("nLDFInstancesLSSVM");
                var nLDFAttributesLSSVM = document.getElementById("nLDFAttributesLSSVM");
                var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                var nPDFInstancesLSSVM = document.getElementById("nPDFInstancesLSSVM");
                var nPDFAttributesLSSVM = document.getElementById("nPDFAttributesLSSVM");
                var fullPathLSSVM = document.getElementById("fullPathLSSVM");
                var fullPathTLSSVM = document.getElementById("fullPathTLSSVM");
                var fullPathLLSSVM = document.getElementById("fullPathLLSSVM");
                var fullPathPLSSVM = document.getElementById("fullPathPLSSVM");

                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");

                var VarTwo = document.getElementById("VarTwo");

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM="2";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";
                
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;

                fullPathLSSVM.value = sFileNameLSSVM.value;
                document.getElementById("myformLSSVM").action = "AllModules.jsp";
                document.getElementById("myformLSSVM").submit();
                alert("Data file already loaded ...!");
                nFireFliesLSSVM.focus();
                valid = false;
                
                return valid;
            }
            
            function MoveBottom() {
                var sMoveBottom = document.getElementById("sMoveBottom");
                if (sMoveBottom.value == "1") {
                    window.scrollTo(0,document.body.scrollHeight);
                } else {
                    window.null;
                }
            }
            
            function changepurpose(val) {
                if (val === 1)
                {
                    document.getElementById("PRadio").value = "PRadio1";
                }
                else if (val === 2)
                {
                    document.getElementById("PRadio").value = "PRadio2";
                }
                return refreshform(val);
            }
            
            function changepurposeSVM(val) {
                if (val === 1)
                {
                    document.getElementById("PRadioLSSVM").value = "PRadio1LSSVM";
                }
                else if (val === 2)
                {
                    document.getElementById("PRadioLSSVM").value = "PRadio2LSSVM";
                }
                return refreshformLSSVM(val);
            }
        </script>
    </head>
    
    <%--> 
    <body> 
    <body onload="window.scrollTo(0,document.body.scrollHeight);">
    <--%>
    
    <body onload="MoveBottom()">
    
        <%@include file="navmenu.jsp" %>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;

        <div class="sfawrap">

        <%--> 
        <%                
            out.println("<p>");
            out.println("sMoveBottom = " + sMoveBottom);
            out.println("<br>");
        %>
        <--%>
               
        <% if (VarOne != null) { %>
            <form action="ModuleSFALSSVR.jsp" name="myform" id="myform" >
                <input type="hidden" name="VarOne" id="VarOne" value="<%=VarOne%>"/>
                <input type="hidden" name="sLoadingDataFile" id="sLoadingDataFile" value="<%=sLoadingDataFile%>"/>
                <input type="hidden" name="sLoadingDataExcel" id="sLoadingDataExcel" value="<%=sLoadingDataExcel%>"/>
                <input type="hidden" name="sLoadingDataExcelClick" id="sLoadingDataExcelClick" value="<%=sLoadingDataExcelClick%>"/>
                <input type="hidden" name="sMoveBottom" id="sMoveBottom" value="<%=sMoveBottom%>"/>
                <input type="hidden" name="VarNext" id="VarNext" value="<%=VarNext%>"/>
                <input type="hidden" name="sError" id="sError" value="<%=sError%>"/>
                
                <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%=sResult01Name%>" />
                <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%=sResult02Name%>" />
                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%=sResult03Name%>" />
                <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%=sResult04Name%>" />
                <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%=sResult05Name%>" />
                <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%=sResult06Name%>" />
                                
                <input type="hidden" name="sLoadingDefault" id="sLoadingDefault" value="<%=sLoadingDefault%>" />
                <input type="hidden" name="sLoadingEvaluation" id="sLoadingEvaluation" value="<%=sLoadingEvaluation%>" />
                <input type="hidden" name="sLoadingPrediction" id="sLoadingPrediction" value="<%=sLoadingPrediction%>" />
                
                <br>
                <br>
                <center id="title">
                    <font style="font-family: Georgia; font-size: 24pt" color="#2F4F4F">
                        <b>NiMOPS for Regression</b>
                    </font>
                </center>
                <br>
                <div class="container boundary">
                    <ul class="nav nav-tabs">
                        <% if (PRadio.equals("PRadio1")) { %>
                            <li class="active"><a data-toggle="tab" href="#evaluation" onclick="return changepurpose(1);">Evaluation</a></li>
                            <li><a data-toggle="tab" href="#prediction" onclick="return changepurpose(2);">Prediction</a></li>
                        <% } else if (PRadio.equals("PRadio2")) { %>
                            <li><a data-toggle="tab" href="#evaluation" onclick="return changepurpose(1);">Evaluation</a></li>
                            <li class="active"><a data-toggle="tab" href="#prediction" onclick="return changepurpose(2);">Prediction</a></li>
                        <% } %>
                    </ul>

                    <div class="tab-content">
                        <div id="evaluation" class="tab-pane fade in active">
                        </div>
                        <div id="prediction" class="tab-pane fade">
                        </div>
                    </div>
                </div>
                <br>
                <table>
                    <tr>
                        <td>
                            <div class="container boundary">
                                <h2>Model Setting</h2>
                                <button type="button" onclick="return writedefaultsfalssvr(0)" class="btn btn-primary">Default</button>
                                <button type="button" onclick="return loadingdataform(1);" class="btn btn-primary">Import</button>
                                <button type="button" onclick="return savingdata(0);" class="btn btn-primary">Export</button>
                                <button type="button" onclick="return cleardefaultsfalssvr(0);" class="btn btn-primary">Clear</button>
                            </div>
                        </td>
                        <td style="width:64%">
                            <% if (sLoadingDataExcel != "") { %>
                                <a href="#bottompage">
                                    <img src="arrowbottom.JPG" alt="..." width="15" style="float:right">
                                </a>
                            <% } else { %>
                                <a href="#bottomform">
                                    <img src="arrowbottom.JPG" alt="..." width="15" style="float:right">
                                </a>
                            <% } %>
                        </td>
                    </tr>
                </table>

                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <!--<div class="container visible-lg-block wdetail">-->
                            <div class="container wdetail">
                                <h2>Parameter</h2>
                                <p>Input data and system parameters. The system then initialized the search parameters via chaotic map operator (Logistic map).</p>
                                <div class="row">
                                    <div class="col-md-3">Swarm and evolutionary parameters:</div>
                                    <div class="col-md-2">No. of fireflies</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nFireFlies" id="nFireFlies" size="5" value="<%=nFireFlies%>"/>
                                    </div>
                                    <div class="col-md-2">Max. generation</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nMaxGeneration" id="nMaxGeneration" size="5" value="<%=nMaxGeneration%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Attractiveness:</div>
                                    <div class="col-md-2">Beta min.</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dMinBeta" id="dMinBeta" size="5" value="<%=dMinBeta%>"/>
                                    </div>
                                    <div class="col-md-2">Gamma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dGamma" id="dGamma" size="5" value="<%=dGamma%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Random movement:</div>
                                    <div class="col-md-2">Alpha</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dAlpha" id="dAlpha" size="5" value="<%=dAlpha%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Adaptive inertia weight</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dAIWeight" name="dAIWeight" size="5" value="<%=dAIWeight%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Tau</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dTau" name="dTau" size="5" value="<%=dTau%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Logistic map:</div>
                                    <div class="col-md-2">Biotic potential (a)</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dBPotential" id="dBPotential" size="5" value="<%=dBPotential%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Hyperparameters:</div>
                                    <div class="col-md-2">Range of C</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dC1" name="dC1" size="5" value="<%=dC1%>"/>
                                    </div>
                                    <div class="col-md-1">to</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dC2" id="dC2" size="5" value="<%=dC2%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Range of sigma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dS1" id="dS1" size="5" value="<%=dS1%>"/>
                                    </div>
                                    <div class="col-md-1">to</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dS2" name="dS2" size="5" value="<%=dS2%>"/>
                                    </div>
                                </div>
                            </div>
                            <!--<div class="container visible-sm-block wdetailsm">
                                <h2>Parameter</h2>
                                <p>Input data and system parameters. The system then initialized the search parameters via chaotic map operator (Logistic map).</p>
                                <div class="row">
                                    <div class="col-sm-4">Swarm and evolutionary parameters:</div></div>
                                <div class="row">
                                    <div class="col-sm-2">No. of fireflies</div>
                                    <div class="col-sm-1">
                                        <input type="text" name="nFireFlies" id="nFireFlies" size="5" value="<%=nFireFlies%>"/>
                                    </div>
                                    <div class="col-sm-3">Max. generation</div>
                                    <div class="col-sm-1">
                                        <input type="text" name="nMaxGeneration" id="nMaxGeneration" size="5" value="<%=nMaxGeneration%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Attractiveness:</div>
                                    <div class="col-md-2">Beta min.</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dMinBeta" id="dMinBeta" size="5" value="<%=dMinBeta%>"/>
                                    </div>
                                    <div class="col-md-2">Gamma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dGamma" id="dGamma" size="5" value="<%=dGamma%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Random movement:</div>
                                    <div class="col-md-2">Alpha</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dAlpha" id="dAlpha" size="5" value="<%=dAlpha%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Adaptive inertia weight</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dAIWeight" name="dAIWeight" size="5" value="<%=dAIWeight%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Tau</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dTau" name="dTau" size="5" value="<%=dTau%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Logistic map:</div>
                                    <div class="col-md-2">Biotic potential (a)</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dBPotential" id="dBPotential" size="5" value="<%=dBPotential%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Hyperparameters:</div>
                                    <div class="col-md-2">Range of C</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dC1" name="dC1" size="5" value="<%=dC1%>"/>
                                    </div>
                                    <div class="col-md-1">to</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dC2" id="dC2" size="5" value="<%=dC2%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Range of sigma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dS1" id="dS1" size="5" value="<%=dS1%>"/>
                                    </div>
                                    <div class="col-md-1">to</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dS2" name="dS2" size="5" value="<%=dS2%>"/>
                                    </div>
                                </div>
                            </div><-->
                        </div>
                    </div>
                </div>
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container boundary">
                                <h2>Normalization</h2>
                                <p>Data preprocessing is considered a crucial step in data anlytics that performs data cleansing and transforming to improve the respective results.</p>
                                <p>User can decide whether or not to normalize the data to (0, 1) scale.</p>
                                <div class="radio">
                                    <label><input type="radio" name="NormalRadio" id="NormalRadio1" value="NormalRadio1">Original value</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="NormalRadio" id="NormalRadio2" value="NormalRadio2">Feature scaling</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container boundary">
                                <h2>Optimization</h2>
                                <h3>Objective Function</h3> 
                                <p>Calculate accuracy of training model. The system used learning data to train and validate an optimized prediction model.</p>
                                <div class="radio">
                                    <label><input type="radio" name="OptimRadio" id="OptimRadio1" value="OptimRadio1">RMSE validation</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="OptimRadio" id="OptimRadio2" value="OptimRadio2">MAE validation</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="OptimRadio" id="OptimRadio3" value="OptimRadio3">MAPE validation</label>
                                </div>
                            </div>        
                
                            <div class="container boundary">
                                <h3>Learning Option</h3>
                                <p>Set the partition size for Train Data and Validation Data</p>
                                    <!-- <form oninput="dTotalSize.value=parseInt(dTrainingPS.value)+parseInt(dValidationPS.value)"> -->
                                <div oninput="dValidationPS.value=100-parseInt(dTrainingPS.value); dTotalSize.value=100;">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Training partition size</label>
                                        <div class="input-group col-md-2">
                                            <input type="number" class="form-control" id="dTrainingPS" name="dTrainingPS" value="<%=dTrainingPS%>" onKeyDown="if(this.value.length===2 && event.keyCode!==8) return false;">
                                            <span class="input-group-addon">(%)</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3">Validation partition size</label>
                                        <div class="input-group col-md-2">
                                            <input type="number" class="form-control" id="dValidationPS" name="dValidationPS" value="<%=dValidationPS%>" readonly="readonly">
                                            <span class="input-group-addon">(%)</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Total size</label>
                                        <div class="input-group col-md-2">
                                            <input class="form-control" name="dTotalSize" id="dTotalSize" for="dTrainingPS dValidationPS" value="<%=dTotalSize%>"/>
                                            <span class="input-group-addon">(%)</span>
                                        </div>
                                    </div>
                                </div>        
                            </div>
                        
                            <div class="container boundary">
                                <h3>Stop Criterion</h3>
                                <p>Stopping condition. End the optimization process if the generation number (MaxGen) has achieved the maximum number of fitness function f(m)</p>
                                <p> with the minimum f(m) values.</p>
                                <div class="radio">
                                    <label><input type="radio" name="SCRadio" id="SCRadio1" value="SCRadio1">Max. generation is reached</label>
                                </div>
                                <div class="form-inline">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="SCRadio" id="SCRadio2" value="SCRadio2">
                                        <div class="input-group col-md-2">
                                            <input type="text" class="form-control" name="nLastChange1" id="nLastChange1" value="<%=nLastChange1%>">
                                        </div>
                                            last changes in OF value <
                                        <div class="input-group col-md-2">
                                            <input type="text" class="form-control" name="nLastChange2" id="nLastChange2" value="<%=nLastChange2%>">
                                        </div>
                                    </label>
                                </div>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="SCRadio" id="SCRadio3" value="SCRadio3">Either of the above</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% if (PRadio.equals("PRadio1")) { %>            
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container boundary">
                                <h2>Test Option</h2>
                                <p>The test data file used to evaluate the optimized model again. Output phase: calculate performance measures (i.e., RMSE, MAE, MAPE, R)</p>
                                <p>to find the prediction accuracy.</p>
                                <div class="container boundary">
                                    <div class="form-inline">
                                        <div class="radio col-md-2">
                                            <label><input type="radio" name="TORadio" id="TORadio1" value="TORadio1">&nbsp;Use data file</label>
                                        </div>
                                        <div class="radio col-md-3">
                                            <label>
                                                <input type="radio" name="TORadio" id="TORadio2" value="TORadio2">&nbsp;Hold-out
                                                <input type="text" class="form-control" name="dHoldOut" id = "dHoldOut" size="3" value="<%=dHoldOut%>">
                                            </label>
                                        </div>
                                        <div class="radio col-md-3">
                                            <label>
                                                <input type="radio" name="TORadio" id="TORadio3" value="TORadio3">&nbsp;Cross-validation
                                                <input type="text" class="form-control" name="dCrossValidation" id = "dCrossValidation" size="3" value="<%=dCrossValidation%>"> 
                                            </label>
                                        </div>
                                        <div class="radio col-md-2">
                                            <label><input type="radio" name="TORadio" id="TORadio4" value="TORadio4" onclick="return testdatasection(1);">&nbsp;Use test data file</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %>
                <table>
                    <tr>
                        <td>
                            <div class="container boundary">
                                <h2>Dataset</h2>
                            </div>
                        </td>
                    </tr>
                </table>
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <input type="hidden" name="PRadio" id="PRadio" value="<%=PRadio%>"/>
                            <% if (PRadio.equals("PRadio1")) { %>        
                            <div class="container boundary">
                                <h3>Data File</h3>
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="hidden" name="fullPath" id="fullPath" value=""/>
                                        <input type="file" class="filestyle" name="sDataFile" id="sDataFile" accept=".csv,.txt" data-input="false"/>
                                    </div>
                                    <div class="col-md-2" style="margin-top : 4px">
                                        <a onclick="return computeatform(1);">
                                            <span class="glyphicon glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                        </a>
                                    </div>
                                    <div class="col-md-2  col-sm-1" style="margin-top : 7px">File Name</div>
                                    <div class="col-md-4 col-sm-1">
                                        <input type="text" name="sFileName" id="sFileName" size="60" value="<%=sFileName%>" readonly/>
                                    </div>
                                </div>
                                <div class="row" style="margin-bottom : 8px">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of attributes</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nDFAttributes" id="nDFAttributes" size="5" value="<%=nDFAttributes%>" readonly/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of instances</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nDFInstances" id="nDFInstances" size="5" value="<%=nDFInstances%>" readonly/>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <% if (PRadio.equals("PRadio1")) { %>        
                            <div class="container boundary">
                                <div id="testdatasection" class="container boundary" style="display: none !important;">
                                    <h3>Test Data File</h3>
                                    <div class="row">
                                        <div class="col-md-2">
                                                <input type="hidden" name="fullPathT" id="fullPathT" value=""/>
                                                <!--<input type="file" name="sDataFile" id="sDataFile"/>-->
                                                <input type="file" class="filestyle" name="sTestDataFile" id="sTestDataFile" accept=".csv,.txt" data-input="false"/>
                                            </label>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 4px">
                                            <a onclick="return computeatform(1);">
                                                <span class="glyphicon glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                            </a>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 7px">File Name</div>
                                        <div class="col-md-4">
                                            <input type="text" name="sTestFileName" id="sTestFileName" size="60" value="<%=sTestFileName%>" readonly/>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom : 8px">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-2">No. of attributes</div>
                                        <div class="col-md-3">
                                            <input type="text" name="nTDFAttributes" id="nTDFAttributes" size="5" value="<%=nTDFAttributes%>" readonly/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-2">No. of instances</div>
                                        <div class="col-md-3">
                                                <input type="text" name="nTDFInstances" id="nTDFInstances" size="5" value="<%=nTDFInstances%>" readonly/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% } %>
                            
                            <% } else { %>
                                <input type="hidden" name="TORadio" id="TORadio1"> 
                                <input type="hidden" name="TORadio" id="TORadio2"> 
                                <input type="hidden" name="TORadio" id="TORadio3"> 
                                <input type="hidden" name="TORadio" id="TORadio4"> 
                                <input type="hidden" name="dHoldOut" id = "dHoldOut" value="<%=dHoldOut%>">
                                <input type="hidden" name="dCrossValidation" id = "dCrossValidation" value="<%=dCrossValidation%>"> 
                                <input type="hidden" name="fullPath" id="fullPath" value="<%=fullPath%>">
                                <input type="hidden" name="sDataFile" id="sDataFile" value="<%=sDataFile%>">
                                <input type="hidden" name="sFileName" id="sFileName" value="<%=sFileName%>">
                                <input type="hidden" name="nDFAttributes" id="nDFAttributes" value="<%=nDFAttributes%>">
                                <input type="hidden" name="nDFInstances" id="nDFInstances" value="<%=nDFInstances%>">
                                <input type="hidden" name="fullPathT" id="fullPathT" value="<%=fullPathT%>">
                                <input type="hidden" name="sTestDataFile" id="sTestDataFile" value="<%=sTestDataFile%>">
                                <input type="hidden" name="sTestFileName" id="sTestFileName" value="<%=sTestFileName%>">
                                <input type="hidden" name="nTDFAttributes" id="nTDFAttributes" value="<%=nTDFAttributes%>">
                                <input type="hidden" name="nTDFInstances" id="nTDFInstances" value="<%=nTDFInstances%>">
                            <% } %>

                            <% if (PRadio.equals("PRadio2")) { %>        
                            <div class="container boundary">
                                <h3>Data File: Learning</h3>
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="hidden" name="fullPathL" id="fullPathL" value=""/>
                                        <input type="file" class="filestyle" name="sLearningDataFile" id="sLearningDataFile" accept=".csv,.txt" data-input="false"/>
                                    </div>
                                    <div class="col-md-2" style="margin-top : 4px">
                                        <a onclick="return computeatform(1);">
                                            <span class="glyphicon glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                        </a>
                                    </div>
                                    <div class="col-md-2  col-sm-1" style="margin-top : 7px">Learning File Name</div>
                                    <div class="col-md-4 col-sm-1">
                                        <input type="text" name="sLearningFileName" id="sLearningFileName" size="60" value="<%=sLearningFileName%>" readonly/>
                                    </div>
                                </div>
                                <div class="row" style="margin-bottom : 8px">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of attributes</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nLDFAttributes" id="nLDFAttributes" size="5" value="<%=nLDFAttributes%>" readonly/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of instances</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nLDFInstances" id="nLDFInstances" size="5" value="<%=nLDFInstances%>" readonly/>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="container boundary">
                                <h3>Data File: Prediction</h3>
                                <div class="row">
                                    <div class="col-md-2">
                                            <input type="hidden" name="fullPathP" id="fullPathP" value=""/>
                                            <input type="file" class="filestyle"  name="sPredictionDataFile" id="sPredictionDataFile" accept=".csv,.txt" data-input="false"/>
                                        </label>
                                    </div>
                                    <div class="col-md-2" style="margin-top : 4px">
                                        <a onclick="return computeatform(1);">
                                            <span class="glyphicon glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                        </a>
                                    </div>
                                    <div class="col-md-2" style="margin-top : 7px">Prediction File Name</div>
                                    <div class="col-md-4">
                                        <input type="text" name="sPredictionFileName" id="sPredictionFileName" size="60" value="<%=sPredictionFileName%>" readonly/>
                                    </div>
                                </div>
                                <div class="row" style="margin-bottom : 8px">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of attributes</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nPDFAttributes" id="nPDFAttributes" size="5" value="<%=nPDFAttributes%>" readonly/>
                                </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of instances</div>
                                    <div class="col-md-3">
                                            <input type="text" name="nPDFAttributes" id="nPDFAttributes" size="5" value="<%=nPDFAttributes%>" readonly/>
                                    </div>
                                </div>
                            </div>
                            
                            <% } else { %>
                                <input type="hidden" name="fullPathL" id="fullPathL" value="<%=fullPathL%>">
                                <input type="hidden" name="sLearningDataFile" id="sLearningDataFile" value="<%=sLearningDataFile%>">
                                <input type="hidden" name="sLearningFileName" id="sLearningFileName" value="<%=sLearningFileName%>">
                                <input type="hidden" name="nLDFAttributes" id="nLDFAttributes" value="<%=nLDFAttributes%>">
                                <input type="hidden" name="nLDFInstances" id="nLDFInstances" value="<%=nLDFInstances%>">
                                <input type="hidden" name="fullPathP" id="fullPathP" value="<%=fullPathP%>">
                                <input type="hidden" name="sPredictionDataFile" id="sPredictionDataFile" value="<%=sPredictionDataFile%>">
                                <input type="hidden" name="sPredictionFileName" id="sPredictionFileName" value="<%=sPredictionFileName%>">
                                <input type="hidden" name="nPDFAttributes" id="nPDFAttributes" value="<%=nPDFAttributes%>">
                                <input type="hidden" name="nPDFInstances" id="nPDFInstances" value="<%=nPDFInstances%>">
                            <% } %>
                        </div>
                    </div>
                </div>
                <table>    
                    <tr>
                        <input type="hidden" name="fullPath" id="fullPath" value=""/>
                        <input type="hidden" name="sFileData" id="sFileData" size="50" value="<%=sFileData%>" readonly/>
                        <input type="hidden" name="sdAttributes" id="sdAttributes" size="4" value="<%=sdAttributes%>" readonly/>
                        <input type="hidden" name="sdInstances" id="sdInstances" size="4" value="<%=sdInstances%>" readonly/>
                        <input type="hidden" name="fullPath" id="fullPath" value=""/>
                        <input type="hidden" name="sPFileData" id="sPFileData" size="50" value="<%=sPFileData%>" readonly/>
                        <input type="hidden" name="sdPAttributes" id="sdPAttributes" size="4" value="<%=sdPAttributes%>" readonly/>
                        <input type="hidden" name="sdPInstances" id="sdPInstances" size="4" value="<%=sdPInstances%>" readonly/>
                    </tr>
                </table>
                <br>
            
                <h6 id="bottomform">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    &nbsp;. . . [END OF DATA FORM] &nbsp;&nbsp;&nbsp;
                    
                    <% if (sLoadingDataExcel != "") { %>
                    <% } else { %>
                    <div class="scrollToTop">
                        <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                    <% } %>
                </h6>

                <br>
                <center>
                <a onclick="return checkdata(1);">
                    <font color="blue" face="agency FB" size="3">
                        <b><u>SUBMIT >></u></b>
                    </font>
                </a>
                    <table>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </center>

                <%--> <% } else { %> 
                    <BR>
                    <input type="hidden" name="nFireFlies" id="nFireFlies" size="4" value="<%=nFireFlies%>">
                    <input type="hidden" name="nMaxGeneration" id="nMaxGeneration" size="4" value="<%=nMaxGeneration%>">
                    <input type="hidden" name="dMinBeta" id="dMinBeta" size="4" value="<%=dMinBeta%>">
                    <input type="hidden" name="dGamma" id="dGamma" size="4" value="<%=dGamma%>">
                    <input type="hidden" name="dAlpha" id="dAlpha" size="4" value="<%=dAlpha%>">
                    <input type="hidden" id="dAIWeight" name="dAIWeight" size="4" value="<%=dAIWeight%>">
                    <input type="hidden" id="dTau" name="dTau" size="4" value="<%=dTau%>">
                    <input type="hidden" name="dBPotential" id="dBPotential" size="4" value="<%=dBPotential%>">
                    <input type="hidden" id="dC1" name="dC1" size="4" value="<%=dC1%>">
                    <input type="hidden" name="dC2" id="dC2" size="4" value="<%=dC2%>">
                    <input type="hidden" name="dS1" id="dS1" size="4" value="<%=dS1%>">
                    <input type="hidden" id="dS2" name="dS2" size="4" value="<%=dS2%>">
                    <input type="radio" name="NormalRadio" id="NormalRadio1" value="NormalRadio1"> 
                    <input type="radio" name="NormalRadio" id="NormalRadio2" value="NormalRadio2"> 
                <% } %> <--%>

            <% 
            //String NormalRadio = request.getParameter("NormalRadio");
            //String OptimRadio = request.getParameter("OptimRadio");
            //String SCRadio = request.getParameter("SCRadio");
            //String PRadio = request.getParameter("PRadio");
            //String TORadio = request.getParameter("TORadio");
            
            //String sLoadingDataFile = request.getParameter("sLoadingDataFile");

            /*
            out.println("<p>");
            out.println("sLoadingDataExcel = "+sLoadingDataExcel);
            out.println("<br>");
            out.println("sLoadingDataFile = "+sLoadingDataFile);
            out.println("<br>");
            out.println("PRadio = "+PRadio);
            out.println("<br>");
            out.println("sFileName = "+sFileName);
            out.println("sFileData = "+sFileData);
            out.println("<br>");
            out.println("nDFAttributes = "+nDFAttributes);
            out.println("sdAttributes = "+sdAttributes);
            out.println("<br>");
            out.println("nDFInstances = "+nDFInstances);
            out.println("sdInstances = "+sdInstances);
            out.println("<br>");
            */
                    
            if (sLoadingDataExcel != "") {
                /*
                out.println("<p>");
                out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                out.println("sLoadingDataFile = " + sLoadingDataFile);
                out.println("<br>");
                */
                
                //running

                /*
                out.println("<p>");
                out.println("nPDFAttributes = "+nPDFAttributes);
                out.println("<br>");
                out.println("NormalRadio = "+NormalRadio);
                out.println("OptimRadio = "+OptimRadio);
                out.println("SCRadio = "+SCRadio);
                out.println("PRadio = "+PRadio);
                out.println("TORadio = "+TORadio);
                */

                if (NormalRadio.equals("NormalRadio1")) {%><script>document.getElementById("NormalRadio1").checked = true; </script><%} 
                else if (NormalRadio.equals("NormalRadio2")) {%><script>document.getElementById("NormalRadio2").checked = true; </script><%} 
                else {
                }
            
                if (OptimRadio.equals("OptimRadio1")) {%><script>document.getElementById("OptimRadio1").checked = true; </script><%}
                else if (OptimRadio.equals("OptimRadio2")) {%><script>document.getElementById("OptimRadio2").checked = true; </script><%}
                else if (OptimRadio.equals("OptimRadio3")) {%><script>document.getElementById("OptimRadio3").checked = true; </script><%}
            
                if (SCRadio.equals("SCRadio1")) {%><script>document.getElementById("SCRadio1").checked = true; </script><%}
                else if (SCRadio.equals("SCRadio2")) {%><script>document.getElementById("SCRadio2").checked = true; </script><%}
                else if (SCRadio.equals("SCRadio3")) {%><script>document.getElementById("SCRadio3").checked = true; </script><%}

                if (PRadio.equals("PRadio1")) {%><script>document.getElementById("PRadio1").checked = true; </script><%}
                else if (PRadio.equals("PRadio2")) {%><script>document.getElementById("PRadio2").checked = true; </script><%}

                if (PRadio.equals("PRadio1")) {
                    if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                    else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script><%}
                    else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script><%}
                    else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script><%}
                    else { %> <script>document.getElementById("TORadio1").checked = true; </script> <%}
                }
                
                String sPRadio = "...";
                if (PRadio.equals("PRadio1")) {
                    sPRadio = "Evaluation";
                    sDummy = "Data File : ";
                }
                else if (PRadio.equals("PRadio2")) {
                    sPRadio = "Prediction";
                    sDummy = "Learning Data File : ";
                    sFileData = sLearningFileName;
                    dAttributes = Double.parseDouble(nLDFAttributes); 
                    dInstances = Float.parseFloat(nLDFInstances); 
                    sPDummy = "Prediction Data File : ";
                    sPFileData = sPredictionFileName;
                    dPAttributes = Double.parseDouble(nPDFAttributes); 
                    dPInstances = Double.parseDouble(nPDFInstances); 
                    sVariation = "5";
                }

                //if (PRadio.equals("PRadio1")) {
                String sTORadio = "...";
                    if (TORadio.equals("TORadio1")) {
                        sTORadio = "Use data file";
                        if (PRadio.equals("PRadio1")) {
                            sDummy = "Data File : ";
                            sFileData = sFileName;
                            dAttributes = Double.parseDouble(nDFAttributes);
                            dInstances = Double.parseDouble(nDFInstances);
                            sVariation = "1";
                        }
                        else if (PRadio.equals("PRadio2")) {
                            sTORadio = "-";
                        }
                    }
                    else if (TORadio.equals("TORadio2")) {
                        //sTORadio = "Hold-out "+nf.format(dHoldOut)+" (%)";
                        if (PRadio.equals("PRadio1")) {
                            sDummy = "Data File : ";
                            sFileData = sFileName;
                            dAttributes = Double.parseDouble(nDFAttributes);
                            dInstances = Double.parseDouble(nDFInstances);
                            sVariation = "2";
                        }
                        else if (PRadio.equals("PRadio2")) {
                            sTORadio = "-";
                        }
                    }
                    else if (TORadio.equals("TORadio3")) {
                        //sTORadio = "Cross-validation "+nf.format(dCrossValidation)+" (folds)";
                        if (PRadio.equals("PRadio1")) {
                            sDummy = "Data File : ";
                            sFileData = sFileName;
                            dAttributes = Double.parseDouble(nDFAttributes);
                            dInstances = Double.parseDouble(nDFInstances);
                            sVariation = "3";
                        }
                        else if (PRadio.equals("PRadio2")) {
                            sTORadio = "-";
                        }
                    }
                    else if (TORadio.equals("TORadio4")) {
                        sTORadio = "Use test data file";
                        if (PRadio.equals("PRadio1")) {
                            sDummy = "Data File : ";
                            sFileData = sFileName;
                            dAttributes = Double.parseDouble(nDFAttributes);
                            dInstances = Double.parseDouble(nDFInstances);
                            sPDummy = "Test Data File : ";
                            sPFileData = sTestFileName;
                            dPAttributes = Double.parseDouble(nTDFAttributes);
                            dPInstances = Double.parseDouble(nTDFInstances);
                            sVariation = "4";
                        }
                        else if (PRadio.equals("PRadio2")) {
                            sTORadio = "-";
                        }
                    } 

                    /*
                    out.println("<p>");
                    out.println("nPDFAttributes = "+nPDFAttributes);
                    out.println("<br>");
                    out.println("NormalRadio = "+NormalRadio);
                    out.println("OptimRadio = "+OptimRadio);
                    out.println("SCRadio = "+SCRadio);
                    out.println("PRadio = "+PRadio);
                    out.println("TORadio = "+TORadio);
                    */
                //}
                %>

                <% if (sLoadingDataExcelClick != "") { %>
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <b> Run Data: </b>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <a onclick="return closesummarydata();">
                                <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                            </a>
                        </td>
                        <td>
                            1. Swarm and evolutionary parameters:&nbsp;&nbsp;
                        </td>
                        <td>
                            No. of fireflies = <%=nf.format(Double.parseDouble(nFireFlies))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Max. generation = <%=nf.format(Double.parseDouble(nMaxGeneration))%>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            2. Attractiveness:
                        </td>
                        <td>
                            Beta min. = <%=nf2.format(Double.parseDouble(dMinBeta))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Gamma = <%=nf2.format(Double.parseDouble(dGamma))%>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            3. Random movement:
                        </td>
                        <td>
                            Alpha = <%=nf2.format(Double.parseDouble(dAlpha))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Adaptive inertia weight = <%=nf2.format(Double.parseDouble(dAIWeight))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Tau = <%=nf2.format(Double.parseDouble(dTau))%>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            4. Logistic map:
                        </td>
                        <td>
                            Biotic potential, a = <%=nf2.format(Double.parseDouble(dBPotential))%>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            5. Hyperparameters:
                        </td>
                        <td>
                            Range of C = <%=ndf.format(Double.parseDouble(dC1))%> to
                            <%=ndf.format(Double.parseDouble(dC2))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Range of sigma = <%=ndf.format(Double.parseDouble(dS1))%> to
                            <%=ndf.format(Double.parseDouble(dS2))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            6. Learning Option:
                        </td>
                        <td>
                            Training partition size = <%=nf.format(Double.parseDouble(dTrainingPS))%> (%)&nbsp;&nbsp;
                        </td>
                        <td>
                            Validation partition size = <%=nf.format(Double.parseDouble(dValidationPS))%> (%)
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            7. Normalization Method:
                        </td>
                        <td>
                            <%
                            String sNormalRadio = "...";
                            if (NormalRadio.equals("NormalRadio1")) {
                                sNormalRadio = "Original value";
                            }
                            else if (NormalRadio.equals("NormalRadio2")) {
                                sNormalRadio = "Feature scaling";
                            }
                            %>
                             <%=sNormalRadio%>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            8. Objective Function (OF): 
                        </td>
                        <td>
                            <%
                            if (OptimRadio.equals("OptimRadio1")) {
                                sOptimRadio = "RMSE validation";
                            }
                            else if (OptimRadio.equals("OptimRadio2")) {
                                sOptimRadio = "MAE validation";
                            }
                            else if (OptimRadio.equals("OptimRadio3")) {
                                sOptimRadio = "MAPE validation";
                            }
                            %>
                             <%=sOptimRadio%>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            9. Stop Criterion:
                        </td>
                        <td>
                            <%
                            String sSCRadio = "...";
                            if (SCRadio.equals("SCRadio1")) {
                                sSCRadio = "Max. generation is reached";
                                %> 
                                <%=sSCRadio%>
                                <%
                            }
                            else if (SCRadio.equals("SCRadio2")) {
                                sSCRadio = "last changes in OF value <";
                                %> 
                                <%=nf.format(Double.parseDouble(nLastChange1))%> <%=sSCRadio%> <%=nf5.format(Double.parseDouble(nLastChange2))%>
                                <%
                            }
                            else if (SCRadio.equals("SCRadio3")) {
                                sSCRadio = "Either criterion is reached";
                                %> 
                                <%=sSCRadio%>
                                <%
                            }
                            %>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            10. Purpose:
                        </td>
                        <td>
                            <%
                            sPRadio = "...";
                            if (PRadio.equals("PRadio1")) {
                                sPRadio = "Evaluation";
                            }
                            else if (PRadio.equals("PRadio2")) {
                                sPRadio = "Prediction";
                            }
                            %>
                             <%=sPRadio%>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            11. Test Option: 
                        </td>
                        <td>
                            <%
                            sTORadio = "...";
                            if (TORadio.equals("TORadio2")) { 
                                if (PRadio.equals("PRadio1")) { %>
                                    Hold-out = <%=nf.format(Double.parseDouble(dHoldOut))%> (%) 
                                <% }
                                else if (PRadio.equals("PRadio2")) { %>
                                    -
                                <% }
                            }
                            else if (TORadio.equals("TORadio3")) {
                                if (PRadio.equals("PRadio1")) { %>
                                    Cross-validation = <%=nf.format(Double.parseDouble(dCrossValidation))%> (folds)
                                <% }
                                else if (PRadio.equals("PRadio2")) { %>
                                    -
                                <% }
                            }
                            else {
                                if (TORadio.equals("TORadio1")) {
                                    if (PRadio.equals("PRadio1")) {
                                        sTORadio = "Use data file"; 
                                    }
                                    else if (PRadio.equals("PRadio2")) {
                                        sTORadio = "-"; 
                                    }
                                }
                                else if (TORadio.equals("TORadio4")) {
                                    if (PRadio.equals("PRadio1")) {
                                        sTORadio = "Use test data file"; 
                                    }
                                    else if (PRadio.equals("PRadio2")) {
                                        sTORadio = "-"; 
                                    }
                                } %>
                            
                                <%=sTORadio%> 
                            
                            <% } %>

                        </td>
                        <td colspan="2">
                            <b> Run variation # <%=sVariation%> </b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="8">&nbsp;</td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            <%=sDummy%> <%=sFileData%> 
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            No. of Attributes = <%=nf.format(dAttributes)%>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                             No. of Instances = <%=nf.format(dInstances)%>
                        </td>
                    </tr>
                    <tr>
                        <%if (sVariation == "4" || sVariation == "5") {%>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>
                                <%=sPDummy%> <%=sPFileData%> 
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                No. of Attributes = <%=nf.format(dPAttributes)%>  
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                 No. of Instances = <%=nf.format(dPInstances)%>  
                            </td>
                        <%}%>
                    </tr>
                </table>
                <% } else { %>
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <b> Run Data: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <a onclick="return viewsummarydata();">
                                <img src="Icon-2ArrowRight.png" alt="..." width="11" height="17">
                            </a>
                        </td>

                        <%-->
                        <td>
                            <%=sDummy%> <%=sFileData%> 
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            No. of Attributes = <%=nf.format(dAttributes)%>  
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                             No. of Instances = <%=nf.format(dInstances)%>  
                        </td>
                        <--%>
                        
                        <td>
                            <font color="black" face="tahoma" size="2">
                            Click 
                            </font>
                            <a onclick="return viewsummarydata();">
                                <font color="blue">
                                <u>here</u>
                                </font>
                            </a> 
                            <font color="black" face="tahoma" size="2">
                            to view the summary data ...
                            </font>
                            
                            <%-->
                            <font color="black" face="tahoma" size="2">
                            Click 
                            <a href="AllModules.jsp?VarOne=1&nFireFlies=<%=nFireFlies%>&nMaxGeneration=<%=nMaxGeneration%>
                               &dMinBeta=<%=dMinBeta%>&dGamma=<%=dGamma%>&dAlpha=<%=dAlpha%>
                               &dAIWeight=<%=dAIWeight%>&dTau=<%=dTau%>&dBPotential=<%=dBPotential%>
                               &dC1=<%=dC1%>&dC2=<%=dC2%>&dS1=<%=dS1%>&dS2=<%=dS2%>
                               &dTrainingPS=<%=dTrainingPS%>&dValidationPS=<%=dValidationPS%>&dTotalSize=<%=dTotalSize%>
                               &nLastChange1=<%=nLastChange1%>&nLastChange2=<%=nLastChange2%>
                               &dHoldOut=<%=dHoldOut%>&dCrossValidation=<%=dCrossValidation%>
                               &sFileName=<%=sFileName%>&nDFInstances=<%=nDFInstances%>&nDFAttributes=<%=nDFAttributes%>
                               &sTestFileName=<%=sTestFileName%>&nTDFInstances=<%=nTDFInstances%>&nTDFAttributes=<%=nTDFAttributes%>
                               &sLearningFileName=<%=sLearningFileName%>&nLDFInstances=<%=nLDFInstances%>&nLDFAttributes=<%=nLDFAttributes%>
                               &sPredictionFileName=<%=sPredictionFileName%>&nPDFInstances=<%=nPDFInstances%>&nPDFAttributes=<%=nPDFAttributes%>
                               &NormalRadio=<%=NormalRadio%>
                               &OptimRadio=<%=OptimRadio%>
                               &SCRadio=<%=SCRadio%>
                               &PRadio=<%=PRadio%>
                               &TORadio=<%=TORadio%>
                               &sLoadingDataExcel=1&sLoadingDataExcelClick=1
                               &VarTwo=<%=VarTwo%>
                               ">
                                here
                            </a> 
                            to view the summary data ...
                            </font>
                            <--%>
                        </td>
                    </tr>
                    
                    <%-->
                    <tr>
                        <%if (sVariation == "4" || sVariation == "5") {%>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>
                                <%=sPDummy%> <%=sPFileData%> 
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                No. of Attributes = <%=nf.format(dPAttributes)%>  
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                 No. of Instances = <%=nf.format(dPInstances)%>  
                            </td>
                            <td>&nbsp;&nbsp;</td>
                        <%}%>
                    </tr>
                    <--%>
                    
                </table>
                <% } %>

                <BR>
                
                <%--> #2 
                <h3 id="bottompage">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    <b> Output: &nbsp;&nbsp;&nbsp;&nbsp;</b>
                    <a href="#top">
                        <img src="Icon-Top.png" alt="..." width="13" height="17">
                    </a>
                </h3>
                
                <H2 ALIGN="CENTER">
                    <% int percent = task.getPercent();%>
                    <%= percent%>%
                </H2>

                <TABLE WIDTH="60%" ALIGN="CENTER"
                       BORDER=1 CELLPADDING=0 CELLSPACING=2>
                    <TR>
                        <% for (int i = 10; i <= percent; i += 10) { %>
                            <TD WIDTH="10%" BGCOLOR="#000080">&nbsp;</TD>
                        <% } %>
                        <% for (int i = 100; i > percent; i -= 10) { %>
                            <TD WIDTH="10%">&nbsp;</TD>
                        <% } %>
                    </TR>
                </TABLE>

                <TABLE WIDTH="100%" BORDER=0 CELLPADDING=0 CELLSPACING=0>
                <TR>
                    <TD ALIGN="CENTER">
                        <% if (task.isRunning()) { %>
                        Running
                        <% } else { %>
                        <% if (task.isCompleted()) { %>
                        Completed
                        <% } else if (!task.isStarted()) { %>
                        Not Started
                        <% } else { %>
                        Stopped
                        <% } %>
                        <% } %>
                    </TD>
                </TR>

                <TR>
                    <TD ALIGN="CENTER">
                        <BR>
                        <% if (task.isRunning()) {%>
                        <!--
                        <FORM METHOD="GET" ACTION="stop.jsp">
                            <INPUT TYPE="SUBMIT" VALUE="Stop">
                        </FORM>
                        -->
                        <a href="stop.jsp?<%=params%>">Stop</a>
                        <% } else {%>
                        <!--
                        <FORM METHOD="GET" ACTION="start.jsp">
                            <INPUT TYPE="SUBMIT" VALUE="Start">
                        </FORM>
                        -->
                        <a href="start.jsp?<%=params%>">Start</a>
                        <% }%>
                    </TD>
                </TR>
                </TABLE>

                <% if (task.isCompleted()) {%>
                <BR>
                <--%>
            
                <%
                    /*
                    out.println("<p>");
                    out.println("nFireFlies = " + nFireFlies);
                    out.println("nMaxGeneration = " + nMaxGeneration);
                    out.println("dMinBeta = " + dMinBeta);
                    out.println("dGamma = " + dGamma);
                    out.println("dAlpha = " + dAlpha);
                    */
                %>
                
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;
            
                            <%
                            /*
                            out.println("<p>");
                            out.println("nFireFlies = " + nFireFlies);
                            out.println("nFireFlies = " + nFireFlies);
                            out.println("<br>");
                            */
                            %>
                    
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <jsp:include page="SFALSSVRServlet">
                                <jsp:param name="nFireFlies" value="<%=nFireFlies%>" />
                                <jsp:param name="nMaxGeneration" value="<%=nMaxGeneration%>" />
                                <jsp:param name="dMinBeta" value="<%=dMinBeta%>" />
                                <jsp:param name="dGamma" value="<%=dGamma%>" />
                                <jsp:param name="dAlpha" value="<%=dAlpha%>" />
                                <jsp:param name="dAIWeight" value="<%=dAIWeight%>" />
                                <jsp:param name="dTau" value="<%=dTau%>" />
                                <jsp:param name="dBPotential" value="<%=dBPotential%>" />
                                <jsp:param name="dC1" value="<%=dC1%>" />
                                <jsp:param name="dC2" value="<%=dC2%>" />
                                <jsp:param name="dS1" value="<%=dS1%>" />
                                <jsp:param name="dS2" value="<%=dS2%>" />
                                <jsp:param name="dTrainingPS" value="<%=dTrainingPS%>" />
                                <jsp:param name="dValidationPS" value="<%=dValidationPS%>" />
                                <jsp:param name="dTotalSize" value="<%=dTotalSize%>" />
                                <jsp:param name="nLastChange1" value="<%=nLastChange1%>" />
                                <jsp:param name="nLastChange2" value="<%=nLastChange2%>" />
                                <jsp:param name="dHoldOut" value="<%=dHoldOut%>" />
                                <jsp:param name="dCrossValidation" value="<%=dCrossValidation%>" />
                            </jsp:include> 	
                        </td>
                    </tr>
                </table>

                <%
                /*
                out.println("<p>");
                out.println("nFireFlies = " + nFireFlies);
                out.println("nFireFlies = " + nFireFlies);
                out.println("<br>");
                */
                %>
                    
                <%--> #3 
                <% } %>
                <--%>
                
                <%
            }
            else if (sLoadingDataFile != "") {
                /*
                out.println("<p>");
                out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                out.println("sLoadingDataFile = " + sLoadingDataFile);
                out.println("sLoadingDataFile = " + sLoadingDataFile);
                out.println("<br>");
                */
                
                //reading data from file
                String filename;
                if (PRadio.equals("PRadio2")) {
                    filename = "Data_SFA_LSSVR_Prediction.txt";
                }
                else {
                    filename = "Data_SFA_LSSVR_Evaluation.txt";
                }
                String file = application.getRealPath("/") + filename;
                BufferedReader br = new BufferedReader(new FileReader(file));
                String line = null;
                String[] headers;
                String[] cols;
                int j = 0;
                
                // first line: title
                line = br.readLine();
                if (line == null) {
                    out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                } else {
                    cols = line.split("\\t");

                    // second line: column header
                    line = br.readLine();
                    headers = line.split("\\t");

                    //zero to avoid null
                    %>
                    <script>
                        document.getElementById("nDFInstances").value = "0";
                        document.getElementById("nDFAttributes").value = "0";
                        document.getElementById("nDTFInstances").value = "0";
                        document.getElementById("nDTFAttributes").value = "0";
                        document.getElementById("nDLFInstances").value = "0";
                        document.getElementById("nDLFAttributes").value = "0";
                        document.getElementById("nDPFInstances").value = "0";
                        document.getElementById("nDPFAttributes").value = "0";
                    </script>
                    <%

                    // third line and so on: data ... last column = dependent variable  
                    line = br.readLine();
                    while (line != null) {
                        j = j + 1;
                        cols = line.split("\\t");
                        if (j==1) {%><script>document.getElementById("nFireFlies").value = "<%=cols[3]%>";</script><%}
                        else if (j==2) {%><script>document.getElementById("nMaxGeneration").value = "<%=cols[3]%>";</script><%} 
                        else if (j==3) {%><script>document.getElementById("dMinBeta").value = "<%=cols[3]%>";</script><%}
                        else if (j==4) {%><script>document.getElementById("dGamma").value = "<%=cols[3]%>";</script><%}
                        else if (j==5) {%><script>document.getElementById("dAlpha").value = "<%=cols[3]%>";</script><%}
                        else if (j==6) {%><script>document.getElementById("dAIWeight").value = "<%=cols[3]%>";</script><%}
                        else if (j==7) {%><script>document.getElementById("dTau").value = "<%=cols[3]%>";</script><%}
                        else if (j==8) {%><script>document.getElementById("dBPotential").value = "<%=cols[3]%>";</script><%}
                        else if (j==9) {%><script>document.getElementById("dC1").value = "<%=cols[3]%>";</script><%}
                        else if (j==10) {%><script>document.getElementById("dC2").value = "<%=cols[3]%>";</script><%}
                        else if (j==11) {%><script>document.getElementById("dS1").value = "<%=cols[3]%>";</script><%}
                        else if (j==12) {%><script>document.getElementById("dS2").value = "<%=cols[3]%>";</script><%}
                        else if (j==13) {%><script>document.getElementById("dTrainingPS").value = "<%=cols[3]%>";</script><%}
                        else if (j==14) {%><script>document.getElementById("dValidationPS").value = "<%=cols[3]%>";</script><%}
                        else if (j==15) {%><script>document.getElementById("dTotalSize").value = "<%=cols[3]%>";</script><%}
                        else if (j==16) {%><script>document.getElementById("nLastChange1").value = "<%=cols[3]%>";</script><%}
                        else if (j==17) {%><script>document.getElementById("nLastChange2").value = "<%=cols[3]%>";</script><%}
                        
                        else if (j==18) {
                            sDummy = cols[3];
                            int iDummy=Integer.parseInt(sDummy);
                            if (iDummy == 1) {
                                %><script>document.getElementById("NormalRadio1").checked = true; 
                                </script><%
                            }
                            else {
                                %><script>document.getElementById("NormalRadio2").checked = true; 
                                </script><%
                            }
                        }
                        else if (j==19) {
                            sDummy = cols[3];
                            int iDummy=Integer.parseInt(sDummy);
                            if (iDummy == 1) {
                                %><script>document.getElementById("OptimRadio1").checked = true; 
                                </script><%
                            }
                            else if (iDummy == 2) {
                                %><script>document.getElementById("OptimRadio2").checked = true; 
                                </script><%
                            }
                            else {
                                %><script>document.getElementById("OptimRadio3").checked = true; 
                                </script><%
                            }
                        }
                        else if (j==20) {
                            sDummy = cols[3];
                            int iDummy=Integer.parseInt(sDummy);
                            if (iDummy == 1) {
                                %><script>document.getElementById("SCRadio1").checked = true; 
                                </script><%
                            }
                            else if (iDummy == 2) {
                                %><script>document.getElementById("SCRadio2").checked = true; 
                                </script><%
                            }
                            else {
                                %><script>document.getElementById("SCRadio3").checked = true; 
                                </script><%
                            }
                        }
                        else if (j==21) {
                            sDummy = cols[3];
                            int iDummy=Integer.parseInt(sDummy);
                            if (iDummy == 1) {
                                %><script>document.getElementById("PRadio1").checked = true; 
                                </script><%
                            }
                            else {
                                %><script>document.getElementById("PRadio2").checked = true; 
                                </script><%
                            }
                        }

                        if (PRadio.equals("PRadio2")) {
                            if (j==22) {%><script>document.getElementById("sLearningFileName").value = "<%=cols[3]%>";</script><%}
                            else if (j==24) {%><script>document.getElementById("nLDFInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==23) {%><script>document.getElementById("nLDFAttributes").value = "<%=cols[3]%>";</script><%}
                            else if (j==25) {%><script>document.getElementById("sPredictionFileName").value = "<%=cols[3]%>";</script><%}
                            else if (j==27) {%><script>document.getElementById("nPDFInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==26) {%><script>document.getElementById("nPDFAttributes").value = "<%=cols[3]%>";</script><%}
                            
                            else if (j==28) {%><script>document.getElementById("sFileData").value = "<%=cols[3]%>";</script><%}
                            else if (j==30) {%><script>document.getElementById("sdInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==29) {%><script>document.getElementById("sdAttributes").value = "<%=cols[3]%>";</script><%}
                            else if (j==31) {%><script>document.getElementById("sPFileData").value = "<%=cols[3]%>";</script><%}
                            else if (j==33) {%><script>document.getElementById("sdPInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==32) {%><script>document.getElementById("sdPAttributes").value = "<%=cols[3]%>";</script><%}
                        } else {    
                            if (j==22) {%><script>document.getElementById("dHoldOut").value = "<%=cols[3]%>";</script><%}
                            else if (j==23) {%><script>document.getElementById("dCrossValidation").value = "<%=cols[3]%>";</script><%}

                            else if (j==24) {
                                sDummy = cols[3];
                                int iDummy=Integer.parseInt(sDummy);
                                if (iDummy == 1) {
                                    %><script>document.getElementById("TORadio1").checked = true; 
                                    </script><%
                                }
                                else if (iDummy == 2) {
                                    %><script>document.getElementById("TORadio2").checked = true; 
                                    </script><%
                                }
                                else if (iDummy == 3) {
                                    %><script>document.getElementById("TORadio3").checked = true; 
                                    </script><%
                                }
                                else {
                                    %><script>document.getElementById("TORadio4").checked = true; 
                                    </script><%
                                }
                            }

                            else if (j==25) {%><script>document.getElementById("sFileName").value = "<%=cols[3]%>";</script><%}
                            else if (j==27) {%><script>document.getElementById("nDFInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==26) {%><script>document.getElementById("nDFAttributes").value = "<%=cols[3]%>";</script><%}
                            else if (j==28) {%><script>document.getElementById("sTestFileName").value = "<%=cols[3]%>";</script><%}
                            else if (j==30) {%><script>document.getElementById("nTDFInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==29) {%><script>document.getElementById("nTDFAttributes").value = "<%=cols[3]%>";</script><%}

                            else if (j==31) {%><script>document.getElementById("sFileData").value = "<%=cols[3]%>";</script><%}
                            else if (j==33) {%><script>document.getElementById("sdInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==32) {%><script>document.getElementById("sdAttributes").value = "<%=cols[3]%>";</script><%}
                            else if (j==34) {%><script>document.getElementById("sPFileData").value = "<%=cols[3]%>";</script><%}
                            else if (j==36) {%><script>document.getElementById("sdPInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==35) {%><script>document.getElementById("sdPAttributes").value = "<%=cols[3]%>";</script><%}
                        }     

                        line = br.readLine();
                    }
                }
                br.close(); 
            }
            else {
                /*
                out.println("<p>");
                out.println("sLoadingDefault = " + sLoadingDefault);
                out.println("sLoadingEvaluation = " + sLoadingEvaluation);
                out.println("sLoadingPrediction = " + sLoadingPrediction);
                out.println("<br>");
                */
                
                if (sLoadingDefault != "") { 
                    %><script>document.getElementById("TORadio1").checked = true; </script>
                <% } 
                
                if (sLoadingEvaluation != "") {  
                    %><script>document.getElementById("TORadio1").checked = true; </script>
                    <% 
                    if (sTestFileName != "") {
                        %><script>document.getElementById("TORadio4").checked = true; 
                                  document.getElementById("TORadio").value = "<%=TORadio%>";
                          </script>
                        <% 
                    }
                } 

                if (sLoadingPrediction != "") {  
                    %><script>document.getElementById("TORadio1").checked = true; </script>
                <% } 
/*
out.println("2. TORadio = "+TORadio);
out.println("<br>");
out.println("TORadioLSSVM = "+TORadioLSSVM);
out.println("<br>");
*/                
                if (NormalRadio.equals("NormalRadio1")) {%><script>document.getElementById("NormalRadio1").checked = true; </script><%}
                else if (NormalRadio.equals("NormalRadio2")) {%><script>document.getElementById("NormalRadio2").checked = true; </script><%}
            
                if (OptimRadio.equals("OptimRadio1")) {%><script>document.getElementById("OptimRadio1").checked = true; </script><%}
                else if (OptimRadio.equals("OptimRadio2")) {%><script>document.getElementById("OptimRadio2").checked = true; </script><%}
                else if (OptimRadio.equals("OptimRadio3")) {%><script>document.getElementById("OptimRadio3").checked = true; </script><%}
            
                if (SCRadio.equals("SCRadio1")) {%><script>document.getElementById("SCRadio1").checked = true; </script><%}
                else if (SCRadio.equals("SCRadio2")) {%><script>document.getElementById("SCRadio2").checked = true; </script><%}
                else if (SCRadio.equals("SCRadio3")) {%><script>document.getElementById("SCRadio3").checked = true; </script><%}

                if (PRadio.equals("PRadio1")) {%><script>document.getElementById("PRadio1").checked = true; </script><%}
                else if (PRadio.equals("PRadio2")) {%><script>document.getElementById("PRadio2").checked = true; </script><%}

                if (PRadio.equals("PRadio1")) { 
                    if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                    else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script><%}
                    else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script><%}
                    else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script><%}
                    else {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                }
                
                // compute nLDFAttributes and nLDFInstances 
                int iDFInstances = 0;
                int iDFAttributes = 0;
                %>
                <script>
                    document.getElementById("nDFInstances").value = "<%=iDFInstances%>";
                    document.getElementById("nDFAttributes").value = "<%=iDFAttributes%>";
                </script>
                <%
                
                if (sDataFile != "") {
                    /*
                    out.println("<p>");
                    out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                    out.println("sLoadingDataFile = " + sLoadingDataFile);
                    out.println("sDataFile = " + sDataFile);
                    out.println("<br>");
                    */
                
                    String file = application.getRealPath("/") + sDataFile;
                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iDFAttributes = cols.length; 
                        iDFAttributes = iDFAttributes - 0; 
                        %>
                        <script>
                            document.getElementById("nDFAttributes").value = "<%=iDFAttributes%>";
                            document.getElementById("sFileName").value = "<%=sDataFile%>";
                        </script>
                        <%

                        iDFInstances = 0; 
                        while (line != null) {
                            iDFInstances = iDFInstances +1; 
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nDFInstances").value = "<%=iDFInstances%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                else if (sFileName != "") { 
                    /*
                    out.println("<p>");
                    out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                    out.println("sLoadingDataFile = " + sLoadingDataFile);
                    out.println("sFileName = " + sFileName);
                    out.println("<br>");
                    */
                
                    String file = application.getRealPath("/") + sFileName;
                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iDFAttributes = cols.length; 
                        iDFAttributes = iDFAttributes - 0; 
                        %>
                        <script>
                            document.getElementById("nDFAttributes").value = "<%=iDFAttributes%>";
                        </script>
                        <%

                        iDFInstances = 0; 
                        while (line != null) {
                            iDFInstances = iDFInstances +1; 
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nDFInstances").value = "<%=iDFInstances%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                
                if (sFileName != "") {
                    if (PRadio.equals("PRadio1")) {
                    %>
                        <script>
                            //alert("Aha ...!");
                            document.getElementById("sFileData").value = "<%=sFileName%>";
                            document.getElementById("sdInstances").value = "<%=nDFInstances%>";
                            document.getElementById("sdAttributes").value = "<%=nDFAttributes%>";
                        </script>
                    <%
                    }
                }
            
                int iTDFInstances = 0;
                int iTDFAttributes = 0;
                %>
                <script>
                    document.getElementById("nTDFInstances").value = "<%=iTDFInstances%>";
                    document.getElementById("nTDFAttributes").value = "<%=iTDFAttributes%>";
                </script>
                <%
                if (sTestDataFile != "") {
                    /*
                    out.println("<p>");
                    out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                    out.println("sLoadingDataFile = " + sLoadingDataFile);
                    out.println("sTestDataFile = " + sTestDataFile);
                    out.println("<br>");
                    */
                
                    String file = application.getRealPath("/") + sTestDataFile;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iTDFAttributes = cols.length;
                        iTDFAttributes = iTDFAttributes - 0;
                        %>
                        <script>
                            document.getElementById("nTDFAttributes").value = "<%=iTDFAttributes%>";
                            document.getElementById("sTestFileName").value = "<%=sTestDataFile%>";
                        </script>
                        <%

                        iTDFInstances = 0;
                        while (line != null) {
                            iTDFInstances = iTDFInstances +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nTDFInstances").value = "<%=iTDFInstances%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                else if (sTestFileName != "") {
                    /*
                    out.println("<p>");
                    out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                    out.println("sLoadingDataFile = " + sLoadingDataFile);
                    out.println("sTestFileName = " + sTestFileName);
                    out.println("<br>");
                    */
                
                    String file = application.getRealPath("/") + sTestFileName;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iTDFAttributes = cols.length;
                        iTDFAttributes = iTDFAttributes - 0;
                        %>
                        <script>
                            document.getElementById("nTDFAttributes").value = "<%=iTDFAttributes%>";
                        </script>
                        <%

                        iTDFInstances = 0;
                        while (line != null) {
                            iTDFInstances = iTDFInstances +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nTDFInstances").value = "<%=iTDFInstances%>";
                        </script>
                        <%
                    }
                    br.close();
                }
            
                if (PRadio.equals("PRadio1")) {
                    //if (TORadio.equals("TORadio4")) {
                        if (sTestFileName!="") {
                        %>
                        <script>
                            document.getElementById("sPFileData").value = "<%=sTestFileName%>";
                            document.getElementById("sdPInstances").value = "<%=nTDFInstances%>";
                            document.getElementById("sdPAttributes").value = "<%=nTDFAttributes%>";
                        </script>
                        <%
                        } else {
                        %>
                        <script>
                            document.getElementById("sPFileData").value = "";
                            document.getElementById("sdPInstances").value = "1";
                            document.getElementById("sdPAttributes").value = "1";
                        </script>
                        <%
                        }
                        /*
                        } else {
                    
                            document.getElementById("sPFileData").value = "";
                            document.getElementById("sdPInstances").value = "1";
                            document.getElementById("sdPAttributes").value = "1";
                        */
                    //}
                }
                
                int iLDFAttributes = 0;
                int iLDFInstances = 0;
                %>
                <script>
                    document.getElementById("nLDFInstances").value = "<%=iLDFInstances%>";
                    document.getElementById("nLDFAttributes").value = "<%=iLDFAttributes%>";
                </script>
                <%
                
                if (sLearningDataFile != "") {
                    /*
                    out.println("<p>");
                    out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                    out.println("sLoadingDataFile = " + sLoadingDataFile);
                    out.println("sLearningDataFile = " + sLearningDataFile);
                    out.println("sPredictionDataFile = " + sPredictionDataFile);
                    out.println("<br>");
                    */
                
                    String file = application.getRealPath("/") + sLearningDataFile;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int i;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");
                        ncol = headers.length;
                        
                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        ncol = cols.length;
                        iLDFAttributes = cols.length;
                        iLDFAttributes = iLDFAttributes - 0;
                        %>
                        <script>
                            document.getElementById("nLDFAttributes").value = "<%=iLDFAttributes%>";
                            document.getElementById("sLearningFileName").value = "<%=sLearningDataFile%>";
                        </script>
                        <%

                        iLDFInstances = 0;
                        while (line != null) {
                            iLDFInstances = iLDFInstances +1;
                            line = br.readLine();
                        }
                        
                        nrow=iLDFInstances;
                        String[][] Datatrrain = new String[nrow][ncol];
                        
                        %>
                        <script>
                            document.getElementById("nLDFInstances").value = "<%=iLDFInstances%>";
                        </script>
                        <%
                        
                        br.close(); 
                        br = new BufferedReader(new FileReader(file));
                        line = br.readLine();
                        cols = line.split("\\t");
                        /*
                        out.println("<p>");
                        out.println("line = " + line);
                        out.println("<br>");
                        */

                        line = br.readLine();
                        headers = line.split("\\t");
                        /*
                        out.println("<p>");
                        out.println("line = " + line);
                        out.println("line = " + line);
                        out.println("<br>");
                        */

                        nrow = 0;
                        i = 0;
                        line = br.readLine();
                        /*
                        out.println("<p>");
                        out.println("line = " + line);
                        out.println("line = " + line);
                        out.println("line = " + line);
                        out.println("<br>");
                        */
                        while (line != null) {
                            cols = line.split("[,\\t]+");
                            for (j=0; j<ncol; j++) {
                                //Datatrain[i][j] = cols[j]; 
                                if (j==ncol-1) {
                                    /*
                                    out.println("<p>");
                                    out.println("ncol = " + ncol);
                                    out.println("cols[ncol-1] = " + cols[ncol-1]);
                                    out.println("<br>");
                                    */
                    
                                    sDummy = cols[ncol-1];
                                    dDummy=Double.parseDouble(sDummy);
                                    if (dDummy == 0) {
                                        if (sError=="") {
                                            sError="1";
                                        }
                                    }
                                }
                            }
                            i = i + 1;
                            line = br.readLine();
                        }
                        br.close();

                        /*
                        out.println("<p>");
                        out.println("sPredictionDataFile = " + sPredictionDataFile);
                        out.println("sPredictionDataFile = " + sPredictionDataFile);
                        out.println("<br>");
                        */
                    }
                }
                else if (sLearningFileName != "") {
                    /*
                    out.println("<p>");
                    out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                    out.println("sLoadingDataFile = " + sLoadingDataFile);
                    out.println("sLearningFileName = " + sLearningFileName);
                    out.println("<br>");
                    */
                
                    String file = application.getRealPath("/") + sLearningFileName;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int i;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");
                        ncol = headers.length;
                        
                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iLDFAttributes = cols.length;
                        iLDFAttributes = iLDFAttributes - 0;
                        %>
                        <script>
                            document.getElementById("nLDFAttributes").value = "<%=iLDFAttributes%>";
                        </script>
                        <%

                        iLDFInstances = 0;
                        while (line != null) {
                            iLDFInstances = iLDFInstances +1;
                            line = br.readLine();
                        }

                        nrow=iLDFInstances;
                        String[][] Datatrain = new String[nrow][ncol];
                        
                        %>
                        <script>
                            document.getElementById("nLDFInstances").value = "<%=iLDFInstances%>";
                        </script>
                        <%
                        
                        /*
                        out.println("<p>");
                        out.println("sPredictionDataFile = " + sPredictionDataFile);
                        out.println("<br>");
                        */
                    
                        br.close(); 
                        br = new BufferedReader(new FileReader(file));
                        line = br.readLine();
                        line = br.readLine();
                        nrow = 0;
                        i = 0; 
                        line = br.readLine();
                        while (line != null) {
                            cols = line.split("[,\\t]+");
                            for (j=0; j<ncol; j++) {
                                //Datatrain[i][j] = cols[j]; 
                                if (j==ncol-1) {
                                    sDummy = cols[ncol-1];
                                    dDummy=Double.parseDouble(sDummy);
                                    if (dDummy == 0) {
                                        if (sError=="") {
                                            sError="1";
                                        }
                                    }
                                }
                            }
                            i = i +1;
                            line = br.readLine();
                        }
                        br.close();

                        /*
                        out.println("<p>");
                        out.println("sPredictionDataFile = " + sPredictionDataFile);
                        out.println("sPredictionDataFile = " + sPredictionDataFile);
                        out.println("<br>");
                        */
                    }
                }
            
                if (sLearningFileName != "") {
                    if (PRadio.equals("PRadio2")) {
                    %>
                        <script>
                            //alert("Aha ...!");
                            document.getElementById("sFileData").value = "<%=sLearningFileName%>";
                            document.getElementById("sdInstances").value = "<%=nLDFInstances%>";
                            document.getElementById("sdAttributes").value = "<%=nLDFAttributes%>";
                        </script>
                    <%
                    }
                }

                /**/
                if (sError!="") {
                    if (OptimRadio.equals("OptimRadio3")) {
                        out.println("<h4><font color='red'>&nbsp;&nbsp;&nbsp;"
                            + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                            + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                            + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                            + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                            + "&nbsp;&nbsp;&nbsp;&nbsp;" 
                            + "Zero Y value observed in 'Learning Data File', MAPE cannot be chosen as an objective function ... !</font></h4>");
                    }
                }
                
                if (sError!="") {
                    %>
                    <script>
                        document.getElementById("sError").value = "<%=sError%>";
                    </script>
                    <%                
                }
                /**/
                
                int iPDFInstances = 0; 
                int iPDFAttributes = 0;
                %>
                <script>
                    document.getElementById("nPDFInstances").value = "<%=iPDFInstances%>";
                    document.getElementById("nPDFAttributes").value = "<%=iPDFAttributes%>";
                </script>
                <%
                if (sPredictionDataFile != "") {
                    /*
                    out.println("<p>");
                    out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                    out.println("sLoadingDataFile = " + sLoadingDataFile);
                    out.println("sPredictionDataFile = " + sPredictionDataFile);
                    out.println("<br>");
                    */
                
                    String file = application.getRealPath("/") + sPredictionDataFile;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iPDFAttributes = cols.length;
                        iPDFAttributes = iPDFAttributes - 0;
                        %>
                        <script>
                            document.getElementById("nPDFAttributes").value = "<%=iPDFAttributes%>";
                            document.getElementById("sPredictionFileName").value = "<%=sPredictionDataFile%>";
                        </script>
                        <%

                        iPDFInstances = 0;
                        while (line != null) {
                            iPDFInstances = iPDFInstances +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nPDFInstances").value = "<%=iPDFInstances%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                else if (sPredictionFileName != "") {
                    /*
                    out.println("<p>");
                    out.println("sLoadingDataExcel = " + sLoadingDataExcel);
                    out.println("sLoadingDataFile = " + sLoadingDataFile);
                    out.println("sPredictionFileName = " + sPredictionFileName);
                    out.println("<br>");
                    */
                
                    String file = application.getRealPath("/") + sPredictionFileName;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iPDFAttributes = cols.length;
                        iPDFAttributes = iPDFAttributes - 0;
                        %>
                        <script>
                            document.getElementById("nPDFAttributes").value = "<%=iPDFAttributes%>";
                        </script>
                        <%

                        iPDFInstances = 0;
                        while (line != null) {
                            iPDFInstances = iPDFInstances +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nPDFInstances").value = "<%=iPDFInstances%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                if (PRadio.equals("PRadio2")) {
                    if (sPredictionFileName!="") {
                        %>
                        <script>
                            //alert("Aha ...!");
                            document.getElementById("sPFileData").value = "<%=sPredictionFileName%>";
                            document.getElementById("sdPInstances").value = "<%=nPDFInstances%>";
                            document.getElementById("sdPAttributes").value = "<%=nPDFAttributes%>";
                        </script>
                        <%
                    } else {
                        %>
                        <script>
                            //alert("Aha ...!");
                            document.getElementById("sPFileData").value = "";
                            document.getElementById("sdPInstances").value = "1";
                            document.getElementById("sdPAttributes").value = "1";
                        </script>
                        <%
                    }
                } 
            }
            %>
            </form>
        
        <% } else if (VarTwo != null) { %>
            <form action="ModuleSFALSSVM.jsp" name="myformLSSVM" id="myformLSSVM" >
                <input type="hidden" name="VarTwo" id="VarTwo" value="<%=VarTwo%>"/> 
                <input type="hidden" name="sLoadingDataFileLSSVM" id="sLoadingDataFileLSSVM" value="<%=sLoadingDataFileLSSVM%>"/> 
                <input type="hidden" name="sLoadingDataExcelLSSVM" id="sLoadingDataExcelLSSVM" value="<%=sLoadingDataExcelLSSVM%>"/> 
                <input type="hidden" name="sLoadingDataExcelClickLSSVM" id="sLoadingDataExcelClickLSSVM" value="<%=sLoadingDataExcelClickLSSVM%>"/> 

                <input type="hidden" name="sMoveBottom" id="sMoveBottom" value="<%=sMoveBottom%>"/>
                <input type="hidden" name="VarNextLSSVM" id="VarNextLSSVM" value="<%=VarNextLSSVM%>"/> 
                <input type="hidden" name="sErrorLSSVM" id="sErrorLSSVM" value="<%=sErrorLSSVM%>"/> 
                <%-->
                <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%=sResult01Name%>" />
                <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%=sResult02Name%>" />
                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%=sResult03Name%>" />
                <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%=sResult04Name%>" />
                <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%=sResult05Name%>" />
                <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%=sResult06Name%>" />
                <--%>
                
                <input type="hidden" name="sLoadingDefaultLSSVM" id="sLoadingDefaultLSSVM" value="<%=sLoadingDefaultLSSVM%>" /> 
                <input type="hidden" name="sLoadingEvaluationLSSVM" id="sLoadingEvaluationLSSVM" value="<%=sLoadingEvaluationLSSVM%>" /> 
                <input type="hidden" name="sLoadingPredictionLSSVM" id="sLoadingPredictionLSSVM" value="<%=sLoadingPredictionLSSVM%>" /> 
                
                <br>
                <br>
                <center id="title">
                    <font style="font-family: Georgia; font-size: 24pt" color="#2F4F4F">
                        <b>NiMOPS for Binary Classification</b>
                    </font>
                </center>
                <br>
                <div class="container boundary">
                    <ul class="nav nav-tabs">
                        <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                            <li class="active"><a data-toggle="tab" href="#evaluation" onclick="return changepurposeSVM(1);">Evaluation</a></li>
                            <li><a data-toggle="tab" href="#prediction" onclick="return changepurposeSVM(2);">Prediction</a></li>
                        <% } else if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>
                            <li><a data-toggle="tab" href="#evaluation" onclick="return changepurposeSVM(1);">Evaluation</a></li>
                            <li class="active"><a data-toggle="tab" href="#prediction" onclick="return changepurposeSVM(2);">Prediction</a></li>
                        <% } %>
                    </ul>

                    <div class="tab-content">
                        <div id="evaluation" class="tab-pane fade in active">
                        </div>
                        <div id="prediction" class="tab-pane fade">
                        </div>
                    </div>
                </div>
                <br>
                <table>
                    <tr>
                        <td>
                            <div class="container boundary">
                                <h2>Model Setting</h2>
                                <button type="button" onclick="return writedefaultsfalssvm(0)" class="btn btn-primary">Default</button>
                                <button type="button" onclick="return loadingdataformLSSVM(1);" class="btn btn-primary">Import</button>
                                <button type="button" onclick="return savingdataLSSVM(0);" class="btn btn-primary">Export</button>
                                <button type="button" onclick="return cleardefaultsfalssvm(0);" class="btn btn-primary">Clear</button>
                            </div>
                        </td>
                        <td style="width:64%">
                            <% if (sLoadingDataExcelLSSVM != "") { %>
                                <a href="#bottompageLSSVM">
                                    <img src="arrowbottom.JPG" alt="..." width="15" style="float:right">
                                </a>
                            <% } else { %>
                                <a href="#bottomformLSSVM">
                                    <img src="arrowbottom.JPG" alt="..." width="15" style="float:right">
                                </a>
                            <% } %>
                        </td>
                    </tr>
                </table>
                
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <!--<div class="container visible-lg-block wdetail">-->
                            <div class="container wdetail">
                                <h2>Parameter</h2>
                                <p>Input data and system parameters. The system then initialized the search parameters via chaotic map operator (Logistic map).</p>
                                <div class="row">
                                    <div class="col-md-3">Swarm and evolutionary parameters:</div>
                                    <div class="col-md-2">No. of fireflies</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nFireFliesLSSVM" id="nFireFliesLSSVM" size="5" value="<%=nFireFliesLSSVM%>"> 
                                    </div>
                                    <div class="col-md-2">Max. generation</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nMaxGenerationLSSVM" id="nMaxGenerationLSSVM" size="5" value="<%=nMaxGenerationLSSVM%>"> 
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Attractiveness:</div>
                                    <div class="col-md-2">Beta min.</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dMinBetaLSSVM" id="dMinBetaLSSVM" size="5" value="<%=dMinBetaLSSVM%>"> 
                                    </div>
                                    <div class="col-md-2">Gamma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dGammaLSSVM" id="dGammaLSSVM" size="5" value="<%=dGammaLSSVM%>">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Random movement:</div>
                                    <div class="col-md-2">Alpha</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dAlphaLSSVM" id="dAlphaLSSVM" size="5" value="<%=dAlphaLSSVM%>">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Adaptive inertia weight</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dAIWeightLSSVM" name="dAIWeightLSSVM" size="5" value="<%=dAIWeightLSSVM%>">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Tau</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dTauLSSVM" name="dTauLSSVM" size="5" value="<%=dTauLSSVM%>"> 
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Logistic map:</div>
                                    <div class="col-md-2">Biotic potential (a)</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dBPotentialLSSVM" id="dBPotentialLSSVM" size="5" value="<%=dBPotentialLSSVM%>">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3">Hyperparameters:</div>
                                    <div class="col-md-2">Range of C</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dC1LSSVM" name="dC1LSSVM" size="5" value="<%=dC1LSSVM%>"> 
                                    </div>
                                    <div class="col-md-1">to</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dC2LSSVM" id="dC2LSSVM" size="5" value="<%=dC2LSSVM%>">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Range of sigma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dS1LSSVM" id="dS1LSSVM" size="5" value="<%=dS1LSSVM%>">
                                    </div>
                                    <div class="col-md-1">to</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dS2LSSVM" name="dS2LSSVM" size="5" value="<%=dS2LSSVM%>">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container boundary">
                                <h2>Normalization</h2>
                                <p>Data preprocessing is considered a crucial step in data anlytics that performs data cleansing and transforming to improve the respective results.</p>
                                <p>User can decide whether or not to normalize the data to (0, 1) scale.</p>
                                <div class="radio">
                                    <label><input type="radio" name="NormalRadioLSSVM" id="NormalRadio1LSSVM" value="NormalRadio1LSSVM">Original value</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="NormalRadioLSSVM" id="NormalRadio2LSSVM" value="NormalRadio2LSSVM">Feature scaling</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container boundary">
                                <h2>Optimization</h2>
                                <h3>Objective Function: Classification accuracy (validation)</h3> 
                                <p>Calculate accuracy of training model. The system used learning data to train and validate an optimized prediction model.</p>
                            </div>     
                            
                            <div class="container boundary">
                                <h3>Learning Option</h3>
                                <p>Set the partition size for Train Data and Validation Data</p>
                                    <!-- <form oninput="dTotalSize.value=parseInt(dTrainingPS.value)+parseInt(dValidationPS.value)"> -->
                                <div oninput="dValidationPSLSSVM.value=100-parseInt(dTrainingPSLSSVM.value); dTotalSizeLSSVM.value=100;">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Training partition size</label>
                                        <div class="input-group col-md-2">
                                            <input type="number" class="form-control" id="dTrainingPSLSSVM" name="dTrainingPSLSSVM" value="<%=dTrainingPSLSSVM%>" onKeyDown="if(this.value.length===2 && event.keyCode!==8) return false;">
                                            <span class="input-group-addon">(%)</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3">Validation partition size</label>
                                        <div class="input-group col-md-2">
                                            <input type="number" class="form-control" id="dValidationPSLSSVM" name="dValidationPSLSSVM" value="<%=dValidationPSLSSVM%>" readonly="readonly">
                                            <span class="input-group-addon">(%)</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Total size</label>
                                        <div class="input-group col-md-2">
                                            <input class="form-control" id="dTotalSizeLSSVM" name="dTotalSizeLSSVM" for="dTrainingPS dValidationPS" value="<%=dTotalSizeLSSVM%>"/>
                                            <span class="input-group-addon">(%)</span>
                                        </div>
                                    </div>
                                </div>        
                            </div>
                        
                            <div class="container boundary">
                                <h3>Stop Criterion</h3>
                                <p>Stopping condition. End the optimization process if the generation number (MaxGen) has achieved the maximum number of fitness function f(m)</p>
                                <p> with the minimum f(m) values.</p>
                                <div class="radio">
                                    <label><input type="radio" name="SCRadioLSSVM" id="SCRadio1LSSVM" value="SCRadio1LSSVM">Max. generation is reached</label>
                                </div>
                                <div class="form-inline">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="SCRadioLSSVM" id="SCRadio2LSSVM" value="SCRadio2LSSVM">
                                        <div class="input-group col-md-2">
                                            <input type="text" class="form-control" name="nLastChange1LSSVM" id = "nLastChange1LSSVM" value="<%=nLastChange1LSSVM%>">
                                        </div>
                                            last changes in OF value <
                                        <div class="input-group col-md-2">
                                            <input type="text" class="form-control" name="nLastChange2LSSVM" id = "nLastChange2LSSVM" value="<%=nLastChange2LSSVM%>" >
                                        </div>
                                    </label>
                                </div>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="SCRadioLSSVM" id="SCRadio3LSSVM" value="SCRadio3LSSVM">Either of the above</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>            
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container boundary">
                                <h3>Test Option</h3>
                                <p>The test data file used to evaluate the optimized model again. Output phase: calculate performance measures (i.e., RMSE, MAE, MAPE, R)</p>
                                <p>to find the prediction accuracy.</p>
                                <div class="form-inline">
                                    <div class="radio col-md-2">
                                        <label><input type="radio" name="TORadioLSSVM" id="TORadio1LSSVM" value="TORadio1LSSVM">&nbsp;Use data file</label>
                                    </div>
                                    <div class="radio col-md-3">
                                        <label>
                                            <input type="radio" name="TORadioLSSVM" id="TORadio2LSSVM" value="TORadio2LSSVM">&nbsp;Hold-out
                                            <input type="text" class="form-control" name="dHoldOutLSSVM" id = "dHoldOutLSSVM" size="3" value="<%=dHoldOutLSSVM%>">
                                        </label>
                                    </div>
                                    <div class="radio col-md-3">
                                        <label>
                                            <input type="radio" name="TORadioLSSVM" id="TORadio3LSSVM" value="TORadio3LSSVM">&nbsp;Cross-validation
                                            <input type="text" class="form-control" name="dCrossValidationLSSVM" id = "dCrossValidationLSSVM" size="3" value="<%=dCrossValidationLSSVM%>"> 
                                        </label>
                                    </div>
                                    <div class="radio col-md-2">
                                        <label><input type="radio" name="TORadioLSSVM" id="TORadio4LSSVM" value="TORadio4LSSVM" onclick="return testdatasection(1);">&nbsp;Use test data file</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %>
                <table>
                    <tr>
                        <td>
                            <div class="container boundary">
                                <h2>Dataset</h2>
                            </div>
                        </td>
                    </tr>
                </table>
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <input type="hidden" name="PRadioLSSVM" id="PRadioLSSVM" value="<%=PRadioLSSVM%>"/>
                            <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>        
                            <div class="container boundary">
                                <h3>Data File</h3>
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="hidden" name="fullPathLSSVM" id="fullPathLSSVM" value=""/>
                                        <input type="file" class="filestyle" name="sDataFileLSSVM" id="sDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                    </div>
                                    <div class="col-md-2" style="margin-top : 4px">
                                        <a onclick="return computeatformLSSVM(1);">
                                            <span class="glyphicon glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                        </a>
                                    </div>
                                    <div class="col-md-2  col-sm-1" style="margin-top : 7px">File Name</div>
                                    <div class="col-md-4 col-sm-1">
                                        <input type="text" name="sFileNameLSSVM" id="sFileNameLSSVM" size="60" value="<%=sFileNameLSSVM%>" readonly/>
                                    </div>
                                </div>
                                <div class="row" style="margin-bottom : 8px">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of attributes</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nDFAttributesLSSVM" id="nDFAttributesLSSVM" size="5" value="<%=nDFAttributesLSSVM%>"  readonly/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of instances</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nDFInstancesLSSVM" id="nDFInstancesLSSVM" size="5" value="<%=nDFInstancesLSSVM%>" readonly/>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="container boundary">
                                <div id="testdatasection" class="container boundary" style="display: none !important;">
                                    <h3>Test Data File</h3>
                                    <div class="row">
                                        <div class="col-md-2">
                                                <input type="hidden" name="fullPathTLSSVM" id="fullPathTLSSVM" value=""/>
                                                <input type="file" class="filestyle" name="sTestDataFileLSSVM" id="sTestDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                            </label>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 4px">
                                            <a onclick="return computeatformLSSVM(1);">
                                                <span class="glyphicon glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                            </a>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 7px">File Name</div>
                                        <div class="col-md-4">
                                            <input type="text" name="sTestFileNameLSSVM" id="sTestFileNameLSSVM" size="60" value="<%=sTestFileNameLSSVM%>" readonly/>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom : 8px">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-2">No. of attributes</div>
                                        <div class="col-md-3">
                                            <input type="text" name="nTDFAttributesLSSVM" id="nTDFAttributesLSSVM" size="5" value="<%=nTDFAttributesLSSVM%>" readonly/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-2">No. of instances</div>
                                        <div class="col-md-3">
                                                <input type="text" name="nTDFInstancesLSSVM" id="nTDFInstancesLSSVM" size="5" value="<%=nTDFInstancesLSSVM%>" readonly/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <% } else { %>
                                <input type="hidden" name="TORadioLSSVM" id="TORadio1LSSVM"> 
                                <input type="hidden" name="TORadioLSSVM" id="TORadio2LSSVM"> 
                                <input type="hidden" name="TORadioLSSVM" id="TORadio3LSSVM"> 
                                <input type="hidden" name="TORadioLSSVM" id="TORadio4LSSVM"> 
                                <input type="hidden" name="dHoldOutLSSVM" id = "dHoldOutLSSVM" value="<%=dHoldOutLSSVM%>"> 
                                <input type="hidden" name="dCrossValidationLSSVM" id = "dCrossValidationLSSVM" value="<%=dCrossValidationLSSVM%>">
                                <input type="hidden" name="fullPathLSSVM" id="fullPathLSSVM" value="<%=fullPathLSSVM%>"> 
                                <input type="hidden" name="sDataFileLSSVM" id="sDataFileLSSVM" value="<%=sDataFileLSSVM%>"> 
                                <input type="hidden" name="sFileNameLSSVM" id="sFileNameLSSVM" value="<%=sFileNameLSSVM%>"> 
                                <input type="hidden" name="nDFAttributesLSSVM" id="nDFAttributesLSSVM" value="<%=nDFAttributesLSSVM%>"> 
                                <input type="hidden" name="nDFInstancesLSSVM" id="nDFInstancesLSSVM" value="<%=nDFInstancesLSSVM%>"> 
                                <input type="hidden" name="fullPathTLSSVM" id="fullPathTLSSVM" value="<%=fullPathTLSSVM%>"> 
                                <input type="hidden" name="sTestDataFileLSSVM" id="sTestDataFileLSSVM" value="<%=sTestDataFileLSSVM%>"> 
                                <input type="hidden" name="sTestFileNameLSSVM" id="sTestFileNameLSSVM" value="<%=sTestFileNameLSSVM%>"> 
                                <input type="hidden" name="nTDFAttributesLSSVM" id="nTDFAttributesLSSVM" value="<%=nTDFAttributesLSSVM%>"> 
                                <input type="hidden" name="nTDFInstancesLSSVM" id="nTDFInstancesLSSVM" value="<%=nTDFInstancesLSSVM%>"> 
                            <% } %>

                            <% if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>        
                            <div class="container boundary">
                                <h3>Data File: Learning</h3>
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="hidden" name="fullPathLLSSVM" id="fullPathLLSSVM" value=""/>
                                        <input type="file" class="filestyle" name="sLearningDataFileLSSVM" id="sLearningDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                    </div>
                                    <div class="col-md-2" style="margin-top : 4px">
                                        <a onclick="return computeatformLSSVM(1);">
                                            <span class="glyphicon glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                        </a>
                                    </div>
                                    <div class="col-md-2  col-sm-1" style="margin-top : 7px">Learning File Name</div>
                                    <div class="col-md-4 col-sm-1">
                                        <input type="text" name="sLearningFileNameLSSVM" id="sLearningFileNameLSSVM" size="60" value="<%=sLearningFileNameLSSVM%>" readonly/>
                                    </div>
                                </div>
                                <div class="row" style="margin-bottom : 8px">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of attributes</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nLDFAttributesLSSVM" id="nLDFAttributesLSSVM" size="5" value="<%=nLDFAttributesLSSVM%>" readonly/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of instances</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nLDFInstancesLSSVM" id="nLDFInstancesLSSVM" size="5" value="<%=nLDFInstancesLSSVM%>" readonly/>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="container boundary">
                                <h3>Data File: Prediction</h3>
                                <div class="row">
                                    <div class="col-md-2">
                                            <input type="hidden" name="fullPathPLSSVM" id="fullPathPLSSVM" value=""/>
                                            <input type="file" class="filestyle"  name="sPredictionDataFileLSSVM" id="sPredictionDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                        </label>
                                    </div>
                                    <div class="col-md-2" style="margin-top : 4px">
                                        <a onclick="return computeatformLSSVM(1);">
                                            <span class="glyphicon glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                        </a>
                                    </div>
                                    <div class="col-md-2" style="margin-top : 7px">Prediction File Name</div>
                                    <div class="col-md-4">
                                        <input type="text" name="sPredictionFileNameLSSVM" id="sPredictionFileNameLSSVM" size="60" value="<%=sPredictionFileNameLSSVM%>" readonly/>
                                    </div>
                                </div>
                                <div class="row" style="margin-bottom : 8px">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of attributes</div>
                                    <div class="col-md-3">
                                        <input type="text" name="nPDFAttributesLSSVM" id="nPDFAttributesLSSVM" size="5" value="<%=nPDFAttributesLSSVM%>" readonly/>
                                </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">No. of instances</div>
                                    <div class="col-md-3">
                                            <input type="text" name="nPDFInstancesLSSVM" id="nPDFInstancesLSSVM" size="5" value="<%=nPDFInstancesLSSVM%>" readonly/>
                                    </div>
                                </div>
                            </div>
                            
                            <% } else { %>
                                <input type="hidden" name="fullPathLLSSVM" id="fullPathLLSSVM" value="<%=fullPathLLSSVM%>">
                                <input type="hidden" name="sLearningDataFileLSSVM" id="sLearningDataFileLSSVM" value="<%=sLearningDataFileLSSVM%>">
                                <input type="hidden" name="sLearningFileNameLSSVM" id="sLearningFileNameLSSVM" value="<%=sLearningFileNameLSSVM%>">
                                <input type="hidden" name="nLDFAttributesLSSVM" id="nLDFAttributesLSSVM" value="<%=nLDFAttributesLSSVM%>">
                                <input type="hidden" name="nLDFInstancesLSSVM" id="nLDFInstancesLSSVM" value="<%=nLDFInstancesLSSVM%>">
                                <input type="hidden" name="fullPathPLSSVM" id="fullPathPLSSVM" value="<%=fullPathPLSSVM%>">
                                <input type="hidden" name="sPredictionDataFileLSSVM" id="sPredictionDataFileLSSVM" value="<%=sPredictionDataFileLSSVM%>">
                                <input type="hidden" name="sPredictionFileNameLSSVM" id="sPredictionFileNameLSSVM" value="<%=sPredictionFileNameLSSVM%>">
                                <input type="hidden" name="nPDFAttributesLSSVM" id="nPDFAttributesLSSVM" value="<%=nPDFAttributesLSSVM%>">
                                <input type="hidden" name="nPDFInstancesLSSVM" id="nPDFInstancesLSSVM" value="<%=nPDFInstancesLSSVM%>">
                            <% } %>
                        </div>
                    </div>
                </div>
            <br>
            <h6 id="bottomformLSSVM">
                <img src="Logo-Space.png" alt="     " width="4" height="5">
                &nbsp;. . . [END OF DATA FORM] &nbsp;&nbsp;&nbsp;
                    
                <% if (sLoadingDataExcelLSSVM != "") { %>
                <% } else { %>
                <%--<a href="#top">
                        <img src="Icon-Top.png" alt="..." width="13" height="17" style="float:right">
                    </a>--%>
                    <div class="scrollToTop">
                      <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                <% } %>
            </h6>
            <br>
            <center>
                <a onclick="return checkdataLSSVM(1);">
                    <font color="blue" face="agency FB" size="3">
                        <b><u>SUBMIT >></u></b>
                    </font>
                </a>
                <table>
                    <tr>
                        <td></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td></td>
                    </tr>
                </table>
            </center>
            <%
            if (sLoadingDataExcelLSSVM != "") {
                //running
                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {%><script>document.getElementById("NormalRadio1LSSVM").checked = true; </script><%}
                else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {%><script>document.getElementById("NormalRadio2LSSVM").checked = true; </script><%}
            
                if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
                    %>
                    <script>
                        document.getElementById("SCRadio1LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
                    %>
                    <script>
                        document.getElementById("SCRadio2LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {
                    %>
                    <script>
                        document.getElementById("SCRadio3LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                
                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                    %>
                    <script>
                        document.getElementById("PRadio1LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    %>
                    <script>
                        document.getElementById("PRadio2LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }

                if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                    %>
                    <script>
                        document.getElementById("TORadio1LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadioLSSVM.equals("TORadio2LSSVM")) {
                    %>
                    <script>
                        document.getElementById("TORadio2LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                    %>
                    <script>
                        document.getElementById("TORadio3LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                    %>
                    <script>
                        document.getElementById("TORadio4LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }

                String sPRadioLSSVM = "...";
                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                    sPRadioLSSVM = "Evaluation"; 
                    sDummy = "Data File : ";
                }
                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    sPRadioLSSVM = "Prediction";
                    sDummy = "Learning Data File : ";
                    sFileDataLSSVM = sLearningFileNameLSSVM;
                    dAttributesLSSVM = Double.parseDouble(nLDFAttributesLSSVM);
                    dInstancesLSSVM = Float.parseFloat(nLDFInstancesLSSVM);
                    sPDummy = "Prediction Data File : ";
                    sPFileDataLSSVM = sPredictionFileNameLSSVM;
                    dPAttributesLSSVM = Double.parseDouble(nPDFAttributesLSSVM);
                    dPInstancesLSSVM = Double.parseDouble(nPDFInstancesLSSVM);
                    sVariationLSSVM = "5";
                }

                String sTORadioLSSVM = "...";
                    if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                        sTORadioLSSVM = "Use data file";
                        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                            sDummy = "Data File : ";
                            sFileDataLSSVM = sFileNameLSSVM;
                            dAttributesLSSVM = Double.parseDouble(nDFAttributesLSSVM); 
                            dInstancesLSSVM = Double.parseDouble(nDFInstancesLSSVM);
                            sVariationLSSVM = "1";
                        }
                        else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                            sTORadioLSSVM = "-";
                        }
                    }
                    else if (TORadioLSSVM.equals("TORadio2LSSVM")) {
                        //sTORadioLSSVM = "Hold-out "+nf.format(dHoldOutLSSVM)+" (%)";
                        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                            sDummy = "Data File : ";
                            sFileDataLSSVM = sFileNameLSSVM;
                            dAttributesLSSVM = Double.parseDouble(nDFAttributesLSSVM);
                            dInstancesLSSVM = Double.parseDouble(nDFInstancesLSSVM);
                            sVariationLSSVM = "2";
                        }
                        else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                            sTORadioLSSVM = "-";
                        }
                    }
                    else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                        //sTORadioLSSVM = "Cross-validation "+nf.format(dCrossValidationLSSVM)+" (folds)";
                        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                            sDummy = "Data File : ";
                            sFileDataLSSVM = sFileNameLSSVM;
                            dAttributesLSSVM = Double.parseDouble(nDFAttributesLSSVM);
                            dInstancesLSSVM = Double.parseDouble(nDFInstancesLSSVM);
                            sVariationLSSVM = "3";
                        }
                        else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                            sTORadioLSSVM = "-";
                        }
                    }
                    else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                        sTORadioLSSVM = "Use test data file";
                        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                            sDummy = "Data File : ";
                            sFileDataLSSVM = sFileNameLSSVM;
                            dAttributesLSSVM = Double.parseDouble(nDFAttributesLSSVM);
                            dInstancesLSSVM = Double.parseDouble(nDFInstancesLSSVM);
                            sPDummy = "Test Data File : ";
                            sPFileDataLSSVM = sTestFileNameLSSVM;
                            dPAttributesLSSVM = Double.parseDouble(nTDFAttributesLSSVM);
                            dPInstancesLSSVM = Double.parseDouble(nTDFInstancesLSSVM);
                            sVariationLSSVM = "4";
                        }
                        else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                            sTORadioLSSVM= "-";
                        }
                    }
                %>
                    
                <% if (sLoadingDataExcelClickLSSVM != "") { %>
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <b> Run Data: </b>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <a onclick="return closesummarydataLSSVM();">
                                <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                            </a>
                        </td>
                        <td>
                            1. Swarm and evolutionary parameters:&nbsp;&nbsp;
                        </td>
                        <td>
                            No. of fireflies = <%=nf.format(Double.parseDouble(nFireFliesLSSVM))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Max. generation = <%=nf.format(Double.parseDouble(nMaxGenerationLSSVM))%>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            2. Attractiveness:
                        </td>
                        <td>
                            Beta min. = <%=nf2.format(Double.parseDouble(dMinBetaLSSVM))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Gamma = <%=nf2.format(Double.parseDouble(dGammaLSSVM))%>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            3. Random movement:
                        </td>
                        <td>
                            Alpha = <%=nf2.format(Double.parseDouble(dAlphaLSSVM))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Adaptive inertia weight = <%=nf2.format(Double.parseDouble(dAIWeightLSSVM))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Tau = <%=nf2.format(Double.parseDouble(dTauLSSVM))%>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            4. Logistic map:
                        </td>
                        <td>
                            Biotic potential, a = <%=nf2.format(Double.parseDouble(dBPotentialLSSVM))%>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            5. Hyperparameters:
                        </td>
                        <td>
                            Range of C = <%=ndf.format(Double.parseDouble(dC1LSSVM))%> to
                            <%=ndf.format(Double.parseDouble(dC2LSSVM))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Range of sigma = <%=ndf.format(Double.parseDouble(dS1LSSVM))%> to
                            <%=ndf.format(Double.parseDouble(dS2LSSVM))%>&nbsp;&nbsp;
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            6. Learning Option:
                        </td>
                        <td>
                            Training partition size = <%=nf.format(Double.parseDouble(dTrainingPSLSSVM))%> (%)&nbsp;&nbsp;
                        </td>
                        <td>
                            Validation partition size = <%=nf.format(Double.parseDouble(dValidationPSLSSVM))%> (%)
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            7. Normalization Method:
                        </td>
                        <td>
                            <%
                            String sNormalRadioLSSVM = "...";
                            if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                                sNormalRadioLSSVM = "Original value";
                            }
                            else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                                sNormalRadioLSSVM = "Feature scaling";
                            }
                            %>
                             <%=sNormalRadioLSSVM%>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            8. Objective Function (OF): 
                        </td>
                        <td>
                            Classification accuracy (validation)
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            9. Stop Criterion:
                        </td>
                        <td>
                            <%
                            String sSCRadioLSSVM = "...";
                            if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
                                sSCRadioLSSVM = "Max. generation is reached";
                                %> 
                                <%=sSCRadioLSSVM%>
                                <%
                            }
                            else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
                                sSCRadioLSSVM = "last changes in OF value <";
                                %> 
                                <%=nf.format(Double.parseDouble(nLastChange1LSSVM))%> <%=sSCRadioLSSVM%> <%=nf5.format(Double.parseDouble(nLastChange2LSSVM))%>
                                <%
                            }
                            else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {
                                sSCRadioLSSVM = "Either criterion is reached";
                                %> 
                                <%=sSCRadioLSSVM%>
                                <%
                            }
                            %>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            10. Purpose:
                        </td>
                        <td>
                            <%
                            sPRadioLSSVM = "...";
                            if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                sPRadioLSSVM = "Evaluation";
                            }
                            else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                sPRadioLSSVM = "Prediction";
                            }
                            %>
                             <%=sPRadioLSSVM%>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            11. Test Option: 
                        </td>
                        <td>
                            <%
                            sTORadioLSSVM = "...";
                            if (TORadioLSSVM.equals("TORadio2LSSVM")) { 
                                if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                                    Hold-out = <%=nf.format(Double.parseDouble(dHoldOutLSSVM))%> (%) &nbsp;&nbsp;&nbsp;&nbsp;
                                <% }
                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>
                                    -
                                <% }
                            }
                            else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                                if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                                    Cross-validation = <%=nf.format(Double.parseDouble(dCrossValidationLSSVM))%> (folds) &nbsp;&nbsp;&nbsp;&nbsp;
                                <% }
                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>
                                    -
                                <% }
                            }
                            else {
                                if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                        sTORadioLSSVM = "Use data file";
                                    }
                                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                        sTORadioLSSVM = "-";
                                    }
                                }
                                else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                        sTORadioLSSVM = "Use test data file";
                                    }
                                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                        sTORadioLSSVM = "-";
                                    }
                                } %>
                            
                                <%=sTORadioLSSVM%>
                            
                            <% } %>
                        </td>
                        <td colspan="2">
                            <b> Run variation # <%=sVariationLSSVM%> </b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="8">&nbsp;</td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            <%=sDummy%> <%=sFileDataLSSVM%> 
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            No. of Attributes = <%=nf.format(dAttributesLSSVM)%>  
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                             No. of Instances = <%=nf.format(dInstancesLSSVM)%>  
                        </td>
                    </tr>
                    <tr>
                        <%if (sVariationLSSVM == "4" || sVariationLSSVM == "5") {%>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>
                                <%=sPDummy%> <%=sPFileDataLSSVM%> 
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                No. of Attributes = <%=nf.format(dPAttributesLSSVM)%>  
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                 No. of Instances = <%=nf.format(dPInstancesLSSVM)%>  
                            </td>
                        <%}%>
                    </tr>
                </table>
                <% } else { %>
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <b> Run Data: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <a onclick="return viewsummarydataLSSVM();">
                                <img src="Icon-2ArrowRight.png" alt="..." width="11" height="17">
                            </a>
                        </td>
                        <td>
                            <font color="black" face="tahoma" size="2">
                            Click 
                            </font>
                            <a onclick="return viewsummarydataLSSVM();">
                                <font color="blue">
                                <u>here</u>
                                </font>
                            </a> 
                            <font color="black" face="tahoma" size="2">
                            to view the summary data ...
                            </font>
                        </td>
                    </tr>
                </table>
                <% } %> 
                
                <BR>
            
                <h6 id="bottompageLSSVM">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    <b> [&nbsp;RUNNING] . . . &nbsp;&nbsp;&nbsp;</b>
                    <%--<a href="#top">
                        <img src="Icon-Top.png" alt="..." width="13" height="17" style="float:right">
                    </a>--%>
                    <div class="scrollToTop">
                      <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                </h6>
                <%
            }
            else if (sLoadingDataFileLSSVM != "") {
                //reading data from file
                String filenameLSSVM;
                if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    filenameLSSVM = "Data_SFA_LSSVM_Prediction.txt";
                }
                else {
                    filenameLSSVM = "Data_SFA_LSSVM_Evaluation.txt";
                }
                String file = application.getRealPath("/") + filenameLSSVM; 
                BufferedReader br = new BufferedReader(new FileReader(file));
                String line = null;
                String[] headers;
                String[] cols;
                //String sDummy="";
                int j = 0;
                
                // first line: title
                line = br.readLine();
                if (line == null) {
                    out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                } else {
                    cols = line.split("\\t");

                    // second line: column header
                    line = br.readLine();
                    headers = line.split("\\t");

                    //zero to avoid null
                    %>
                    <script>
                        document.getElementById("nDFInstancesLSSVM").value = "0";
                        document.getElementById("nDFAttributesLSSVM").value = "0";
                        document.getElementById("nDTFInstancesLSSVM").value = "0";
                        document.getElementById("nDTFAttributesLSSVM").value = "0";
                        document.getElementById("nDLFInstancesLSSVM").value = "0";
                        document.getElementById("nDLFAttributesLSSVM").value = "0";
                        document.getElementById("nDPFInstancesLSSVM").value = "0";
                        document.getElementById("nDPFAttributesLSSVM").value = "0";
                    </script>
                    <%

                    // third line and so on: data ... last column = dependent variable  
                    line = br.readLine();
                    while (line != null) {
                        j = j + 1;
                        cols = line.split("\\t");
                        if (j==1) {%><script>document.getElementById("nFireFliesLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==2) {%><script>document.getElementById("nMaxGenerationLSSVM").value = "<%=cols[3]%>";</script><%} 
                        else if (j==3) {%><script>document.getElementById("dMinBetaLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==4) {%><script>document.getElementById("dGammaLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==5) {%><script>document.getElementById("dAlphaLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==6) {%><script>document.getElementById("dAIWeightLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==7) {%><script>document.getElementById("dTauLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==8) {%><script>document.getElementById("dBPotentialLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==9) {%><script>document.getElementById("dC1LSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==10) {%><script>document.getElementById("dC2LSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==11) {%><script>document.getElementById("dS1LSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==12) {%><script>document.getElementById("dS2LSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==13) {%><script>document.getElementById("dTrainingPSLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==14) {%><script>document.getElementById("dValidationPSLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==15) {%><script>document.getElementById("dTotalSizeLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==16) {%><script>document.getElementById("nLastChange1LSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==17) {%><script>document.getElementById("nLastChange2LSSVM").value = "<%=cols[3]%>";</script><%}
                        
                        else if (j==18) {
                            sDummy = cols[3];
                            int iDummy=Integer.parseInt(sDummy);
                            if (iDummy == 1) {
                                %><script>document.getElementById("NormalRadio1LSSVM").checked = true; 
                                </script><%
                            }
                            else {
                                %><script>document.getElementById("NormalRadio2LSSVM").checked = true; 
                                </script><%
                            }
                        }
                        else if (j==20) {
                            sDummy = cols[3];
                            int iDummy=Integer.parseInt(sDummy);
                            if (iDummy == 1) {
                                %><script>document.getElementById("SCRadio1LSSVM").checked = true; 
                                </script><%
                            }
                            else if (iDummy == 2) {
                                %><script>document.getElementById("SCRadio2LSSVM").checked = true; 
                                </script><%
                            }
                            else {
                                %><script>document.getElementById("SCRadio3LSSVM").checked = true; 
                                </script><%
                            }
                        }
                        else if (j==21) {
                            sDummy = cols[3];
                            int iDummy=Integer.parseInt(sDummy);
                            if (iDummy == 1) {
                                %><script>document.getElementById("PRadio1LSSVM").checked = true; 
                                </script><%
                            }
                            else {
                                %><script>document.getElementById("PRadio2LSSVM").checked = true; 
                                </script><%
                            }
                        }
                        if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                            if (j==22) {%><script>document.getElementById("sLearningFileNameLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==24) {%><script>document.getElementById("nLDFInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==23) {%><script>document.getElementById("nLDFAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==25) {%><script>document.getElementById("sPredictionFileNameLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==27) {%><script>document.getElementById("nPDFInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==26) {%><script>document.getElementById("nPDFAttributesLSSVM").value = "<%=cols[3]%>";</script><%}

                            else if (j==28) {%><script>document.getElementById("sFileDataLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==30) {%><script>document.getElementById("sdInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==29) {%><script>document.getElementById("sdAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==31) {%><script>document.getElementById("sPFileDataLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==33) {%><script>document.getElementById("sdPInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==32) {%><script>document.getElementById("sdPAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                        } else {                        
                            if (j==22) {%><script>document.getElementById("dHoldOutLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==23) {%><script>document.getElementById("dCrossValidationLSSVM").value = "<%=cols[3]%>";</script><%}

                            else if (j==24) {
                                sDummy = cols[3];
                                int iDummy=Integer.parseInt(sDummy);
                                if (iDummy == 1) {
                                    %><script>document.getElementById("TORadio1LSSVM").checked = true; 
                                    </script><%
                                }
                                else if (iDummy == 2) {
                                    %><script>document.getElementById("TORadio2LSSVM").checked = true; 
                                    </script><%
                                }
                                else if (iDummy == 3) {
                                    %><script>document.getElementById("TORadio3LSSVM").checked = true; 
                                    </script><%
                                }
                                else {
                                    %><script>document.getElementById("TORadio4LSSVM").checked = true; 
                                    </script><%
                                }
                            }
                            else if (j==25) {%><script>document.getElementById("sFileNameLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==27) {%><script>document.getElementById("nDFInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==26) {%><script>document.getElementById("nDFAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==28) {%><script>document.getElementById("sTestFileNameLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==30) {%><script>document.getElementById("nTDFInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==29) {%><script>document.getElementById("nTDFAttributesLSSVM").value = "<%=cols[3]%>";</script><%}

                            else if (j==31) {%><script>document.getElementById("sFileDataLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==33) {%><script>document.getElementById("sdInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==32) {%><script>document.getElementById("sdAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==34) {%><script>document.getElementById("sPFileDataLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==36) {%><script>document.getElementById("sdPInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==35) {%><script>document.getElementById("sdPAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                        }
                        line = br.readLine(); 
                    }
                }
                br.close();
            }
            else { 
                if (sLoadingDefaultLSSVM != "") {
                    %><script>document.getElementById("TORadio1LSSVM").checked = true; </script>
                <% } 
                
                if (sLoadingEvaluationLSSVM != "") { 
                    %><script>document.getElementById("TORadio1LSSVM").checked = true; </script>
                    <% 
                    if (sTestFileNameLSSVM != "") {
                        %><script>document.getElementById("TORadio4LSSVM").checked = true; 
                                  document.getElementById("TORadioLSSVM").value = "<%=TORadioLSSVM%>";
                        </script>
                        <% 
                    }
                } 

                if (sLoadingPredictionLSSVM != "") { 
                    %><script>document.getElementById("TORadio1LSSVM").checked = true; 
                      </script>
                <% } 
/*
out.println("3. TORadio = "+TORadio); 
out.println("<br>"); 
out.println("TORadioLSSVM = "+TORadioLSSVM); 
out.println("<br>"); 
*/
                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) { 
                    %>
                    <script>
                        document.getElementById("NormalRadio1LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                    }
                else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) { 
                    %>
                    <script>
                        document.getElementById("NormalRadio2LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
            
                if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
                    %>
                    <script>
                        document.getElementById("SCRadio1LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
                    %>
                    <script>
                        document.getElementById("SCRadio2LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {
                    %>
                    <script>
                        document.getElementById("SCRadio3LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                
                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                    %>
                    <script>
                        document.getElementById("PRadio1LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    %>
                    <script>
                        document.getElementById("PRadio2LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }

                if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                    %>
                    <script>
                        document.getElementById("TORadio1LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadioLSSVM.equals("TORadio2LSSVM")) {
                    %>
                    <script>
                        document.getElementById("TORadio2LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                    %>
                    <script>
                        document.getElementById("TORadio3LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                    %>
                    <script>
                        document.getElementById("TORadio4LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
            
                // compute nLDFAttributes and nLDFInstances 
                int iDFInstancesLSSVM = 0;
                int iDFAttributesLSSVM = 0;
                %>
                    <script>
                        document.getElementById("nDFInstancesLSSVM").value = "<%=iDFInstancesLSSVM%>";
                        document.getElementById("nDFAttributesLSSVM").value = "<%=iDFAttributesLSSVM%>";
                    </script>
                <%
                if (sDataFileLSSVM != "") {
                    String file = application.getRealPath("/") + sDataFileLSSVM;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iDFAttributesLSSVM = cols.length;
                        iDFAttributesLSSVM = iDFAttributesLSSVM - 0;
                        %>
                        <script>
                            document.getElementById("nDFAttributesLSSVM").value = "<%=iDFAttributesLSSVM%>";
                            document.getElementById("sFileNameLSSVM").value = "<%=sDataFileLSSVM%>";
                        </script>
                        <%

                        iDFInstancesLSSVM = 0;
                        while (line != null) {
                            iDFInstancesLSSVM = iDFInstancesLSSVM +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nDFInstancesLSSVM").value = "<%=iDFInstancesLSSVM%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                else if (sFileNameLSSVM != "") {
                    String file = application.getRealPath("/") + sFileNameLSSVM;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iDFAttributesLSSVM = cols.length;
                        iDFAttributesLSSVM = iDFAttributesLSSVM - 0;
                        %>
                        <script>
                            document.getElementById("nDFAttributesLSSVM").value = "<%=iDFAttributesLSSVM%>";
                        </script>
                        <%

                        iDFInstancesLSSVM = 0;
                        while (line != null) {
                            iDFInstancesLSSVM = iDFInstancesLSSVM +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nDFInstancesLSSVM").value = "<%=iDFInstancesLSSVM%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                
                if (sFileNameLSSVM != "") {
                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                    %>
                        <script>
                            //alert("Aha ...!");
                            document.getElementById("sFileDataLSSVM").value = "<%=sFileNameLSSVM%>";
                            document.getElementById("sdInstancesLSSVM").value = "<%=nDFInstancesLSSVM%>";
                            document.getElementById("sdAttributesLSSVM").value = "<%=nDFAttributesLSSVM%>";
                        </script>
                    <%
                    }
                }
            
                int iTDFInstancesLSSVM = 0;
                int iTDFAttributesLSSVM = 0;
                %>
                    <script>
                        document.getElementById("nTDFInstancesLSSVM").value = "<%=iTDFInstancesLSSVM%>";
                        document.getElementById("nTDFAttributesLSSVM").value = "<%=iTDFAttributesLSSVM%>";
                    </script>
                <%
                if (sTestDataFileLSSVM != "") {
                    String file = application.getRealPath("/") + sTestDataFileLSSVM;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iTDFAttributesLSSVM = cols.length;
                        iTDFAttributesLSSVM = iTDFAttributesLSSVM - 0;
                        %>
                        <script>
                            document.getElementById("nTDFAttributesLSSVM").value = "<%=iTDFAttributesLSSVM%>";
                            document.getElementById("sTestFileNameLSSVM").value = "<%=sTestDataFileLSSVM%>";
                        </script>
                        <%

                        iTDFInstancesLSSVM = 0;
                        while (line != null) {
                            iTDFInstancesLSSVM = iTDFInstancesLSSVM +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nTDFInstancesLSSVM").value = "<%=iTDFInstancesLSSVM%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                else if (sTestFileNameLSSVM != "") {
                    String file = application.getRealPath("/") + sTestFileNameLSSVM;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iTDFAttributesLSSVM = cols.length;
                        iTDFAttributesLSSVM = iTDFAttributesLSSVM - 0;
                        %>
                        <script>
                            document.getElementById("nTDFAttributesLSSVM").value = "<%=iTDFAttributesLSSVM%>";
                        </script>
                        <%

                        iTDFInstancesLSSVM = 0;
                        while (line != null) {
                            iTDFInstancesLSSVM = iTDFInstancesLSSVM +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nTDFInstancesLSSVM").value = "<%=iTDFInstancesLSSVM%>";
                        </script>
                        <%
                    }
                    br.close();
                }
/*
out.println("PRadioLSSVM = "+PRadioLSSVM); 
out.println("<br>");
out.println("TORadioLSSVM = "+TORadioLSSVM); 
out.println("<br>");
out.println("sTestFileNameLSSVM = "+sTestFileNameLSSVM); 
out.println("<br>");
*/
                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                    //if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                        if (sTestFileNameLSSVM!="") {
                        %>
                        <script>
                            document.getElementById("sPFileDataLSSVM").value = "<%=sTestFileNameLSSVM%>";
                            document.getElementById("sdPInstancesLSSVM").value = "<%=nTDFInstancesLSSVM%>";
                            document.getElementById("sdPAttributesLSSVM").value = "<%=nTDFAttributesLSSVM%>";
                        </script>
                        <%
                        } else {
                        %>
                        <script>
                            document.getElementById("sPFileDataLSSVM").value = "";
                            document.getElementById("sdPInstancesLSSVM").value = "1";
                            document.getElementById("sdPAttributesLSSVM").value = "1";
                        </script>
                        <%
                        }
                        /*
                        } else {
                        
                            document.getElementById("sPFileDataLSSVM").value = ""; 
                            document.getElementById("sdPInstancesLSSVM").value = "1"; 
                            document.getElementById("sdPAttributesLSSVM").value = "1"; 
                        */
                    //}
                }
            
                int iLDFAttributesLSSVM = 0;
                int iLDFInstancesLSSVM = 0;
                %>
                    <script>
                        document.getElementById("nLDFInstancesLSSVM").value = "<%=iLDFInstancesLSSVM%>";
                        document.getElementById("nLDFAttributesLSSVM").value = "<%=iLDFAttributesLSSVM%>";
                    </script>
                <%
                if (sLearningDataFileLSSVM != "") {
                    String file = application.getRealPath("/") + sLearningDataFileLSSVM;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");
                        
                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");
                        
                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iLDFAttributesLSSVM = cols.length;
                        iLDFAttributesLSSVM = iLDFAttributesLSSVM - 0;
                        %>
                        <script>
                            document.getElementById("nLDFAttributesLSSVM").value = "<%=iLDFAttributesLSSVM%>";
                            document.getElementById("sLearningFileNameLSSVM").value = "<%=sLearningDataFileLSSVM%>";
                        </script>
                        <%

                        iLDFInstancesLSSVM = 0;
                        while (line != null) {
                            iLDFInstancesLSSVM = iLDFInstancesLSSVM +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nLDFInstancesLSSVM").value = "<%=iLDFInstancesLSSVM%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                else if (sLearningFileNameLSSVM != "") {
                    String file = application.getRealPath("/") + sLearningFileNameLSSVM;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");
                        
                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");
                        
                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iLDFAttributesLSSVM = cols.length;
                        iLDFAttributesLSSVM = iLDFAttributesLSSVM - 0;
                        %>
                        <script>
                            document.getElementById("nLDFAttributesLSSVM").value = "<%=iLDFAttributesLSSVM%>";
                        </script>
                        <%

                        iLDFInstancesLSSVM = 0;
                        while (line != null) {
                            iLDFInstancesLSSVM = iLDFInstancesLSSVM +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nLDFInstancesLSSVM").value = "<%=iLDFInstancesLSSVM%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                
                if (sLearningFileNameLSSVM != "") {
                    if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    %>
                        <script>
                            //alert("Aha ...!");
                            document.getElementById("sFileDataLSSVM").value = "<%=sLearningFileNameLSSVM%>";
                            document.getElementById("sdInstancesLSSVM").value = "<%=nLDFInstancesLSSVM%>";
                            document.getElementById("sdAttributesLSSVM").value = "<%=nLDFAttributesLSSVM%>";
                        </script>
                    <%
                    }
                }
            
                int iPDFInstancesLSSVM = 0;
                int iPDFAttributesLSSVM = 0;
                %>
                    <script>
                        document.getElementById("nPDFInstancesLSSVM").value = "<%=iPDFInstancesLSSVM%>";
                        document.getElementById("nPDFAttributesLSSVM").value = "<%=iPDFAttributesLSSVM%>";
                    </script>
                <%
                if (sPredictionDataFileLSSVM != "") {
                    String file = application.getRealPath("/") + sPredictionDataFileLSSVM;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    String[] headers;
                    String[] cols;
                    int j;
                    
                    // first line: title
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iPDFAttributesLSSVM = cols.length;
                        iPDFAttributesLSSVM = iPDFAttributesLSSVM - 0;
                        %>
                        <script>
                            document.getElementById("nPDFAttributesLSSVM").value = "<%=iPDFAttributesLSSVM%>";
                            document.getElementById("sPredictionFileNameLSSVM").value = "<%=sPredictionDataFileLSSVM%>";
                        </script>
                        <%
                        
                        iPDFInstancesLSSVM = 0;
                        while (line != null) {
                            iPDFInstancesLSSVM = iPDFInstancesLSSVM +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nPDFInstancesLSSVM").value = "<%=iPDFInstancesLSSVM%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                else if (sPredictionFileNameLSSVM != "") { 
                    String file = application.getRealPath("/") + sPredictionFileNameLSSVM; 
                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                    String line = null;
                    String[] headers; 
                    String[] cols; 
                    int j;
                     
                    // first line: title 
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");

                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        cols = line.split("\\t");
                        iPDFAttributesLSSVM = cols.length;
                        iPDFAttributesLSSVM = iPDFAttributesLSSVM - 0;
                        %>
                        <script>
                            document.getElementById("nPDFAttributesLSSVM").value = "<%=iPDFAttributesLSSVM%>";
                        </script>
                        <%
                        
                        iPDFInstancesLSSVM = 0;
                        while (line != null) {
                            iPDFInstancesLSSVM = iPDFInstancesLSSVM +1;
                            line = br.readLine();
                        }
                        %>
                        <script>
                            document.getElementById("nPDFInstancesLSSVM").value = "<%=iPDFInstancesLSSVM%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                
                if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    if (sPredictionFileNameLSSVM!="") {
                        %>
                        <script>
                            //alert("Aha ...!");
                            document.getElementById("sPFileDataLSSVM").value = "<%=sPredictionFileNameLSSVM%>";
                            document.getElementById("sdPInstancesLSSVM").value = "<%=nPDFInstancesLSSVM%>";
                            document.getElementById("sdPAttributesLSSVM").value = "<%=nPDFAttributesLSSVM%>";
                        </script>
                        <%
                    } else {
                        %>
                        <script>
                            //alert("Aha ...!");
                            document.getElementById("sPFileDataLSSVM").value = "";
                            document.getElementById("sdPInstancesLSSVM").value = "1";
                            document.getElementById("sdPAttributesLSSVM").value = "1";
                        </script>
                        <%
                    }
                } 
/*
out.println("4. TORadio = "+TORadio);
out.println("<br>");
out.println("TORadioLSSVM = "+TORadioLSSVM);
out.println("<br>");
*/
            }
            %>
            
            </form>

        <% } %>
        </div>
        
        <script>
            $(":file").filestyle({input: false});
            
            $(document).ready(function(){

                //Check to see if the window is top if not then display button
                $(window).scroll(function(){
                        if ($(this).scrollTop() > 100) {
                                $('.scrollToTop').fadeIn();
                        } else {
                                $('.scrollToTop').fadeOut();
                        }
                });

                //Click event to scroll to top
                $('.scrollToTop').click(function(){
                        $('html, body').animate({scrollTop : 0},800);
                        return false;
                });

            });
        </script>
        
    </body>
</html>
