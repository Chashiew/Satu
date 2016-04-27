<%-- 
    Document   : SFALSSVR
    Created on : Feb 17, 2016, 3:36:11 PM
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

String sGraphNo = request.getParameter("sGraphNo");
if (sGraphNo == null) {
    sGraphNo = "31";        
};
String sopt = request.getParameter("sopt");
if (sopt == null) {
    sopt = "2";        
};
String sBestFold = request.getParameter("sBestFold");
if (sBestFold == null) {
    sBestFold = "1";        
};
        
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

String sLoadingDataFile = request.getParameter("sLoadingDataFile");
if (sLoadingDataFile == null) {
    sLoadingDataFile = "";        
};
String sSaveDataFile = request.getParameter("sSaveDataFile");
if (sSaveDataFile == null) {
    sSaveDataFile = "";        
};
String sLoadingDataExcel = request.getParameter("sLoadingDataExcel");
if (sLoadingDataExcel == null) {
    sLoadingDataExcel = "";        
};
String sLoadingDataExcelClick = request.getParameter("sLoadingDataExcelClick");
if (sLoadingDataExcelClick == null) {
    sLoadingDataExcelClick = "";        
};

String sImportData = request.getParameter("sImportData");
if (sImportData == null) {
    sImportData = "";        
};

String NormalRadio = request.getParameter("NormalRadio");
if (NormalRadio == null) {
    NormalRadio = "";
}

String sMoveBottom = request.getParameter("sMoveBottom");
if (sMoveBottom == null) {
    sMoveBottom = "";
}

String VarNext = request.getParameter("VarNext");
if (VarNext == null) {
    VarNext = "";
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
String sResult04aName = request.getParameter("sResult04aName");
if (sResult04aName == null) {
    sResult04aName = "";
}
String sResult04bName = request.getParameter("sResult04bName");
if (sResult04bName == null) {
    sResult04bName = "";
}
String sResult04cName = request.getParameter("sResult04cName");
if (sResult04cName == null) {
    sResult04cName = "";
}
String sResult04dName = request.getParameter("sResult04dName");
if (sResult04dName == null) {
    sResult04dName = "";
}
String sResult05Name = request.getParameter("sResult05Name");
if (sResult05Name == null) {
    sResult05Name = "";
}
String sResult06Name = request.getParameter("sResult06Name");
if (sResult06Name == null) {
    sResult06Name = "";
}

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
if (nDFAttributes == null) {
    nDFAttributes = "0";
}
String nDFInstances = request.getParameter("nDFInstances");
if (nDFInstances == null) {
    nDFInstances = "0";
}
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
    dC2 = "";               //"1.00E15";
};
if (dS1 == null) {
    dS1 = "";               //"1.00E-3";
};
if (dS2 == null) {
    dS2 = "";               //"1.00E5";
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

String sOptimRadio = "...";
double dDummy=1.0;
String sDummy = "...";
String sPDummy = "";
    
String sError = request.getParameter("sError");
if (sError == null) {
    sError = "";
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
String sBaseFileName = request.getParameter("sBaseFileName");
if (sBaseFileName == null) {
    sBaseFileName = "";
}

String ssAttributes = "";
String ssInstances = "";
String ssPAttributes = "";
String ssPInstances = "";
String sVariation = "";

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
        <%
        String hdf = request.getParameter("hiddendatafile");
        if (hdf == null) {
            hdf = "0";
        }
        %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            NiMOPS: SFA-LSSVR
        </title> 
        
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <link rel="Stylesheet" type="text/css"
              media=all href="./StyleSheet.css" />
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/bootstrap-filestyle.js"></script>
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
                    
                var sSaveDataFile = document.getElementById("sSaveDataFile");
                sSaveDataFile = "";
                document.getElementById("sSaveDataFile").value = sSaveDataFile;
                
                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
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

                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "SFALSSVR.jsp";  //jsp#title";
                document.getElementById("myform").submit();
                
                return valid;
            }

            function ftestdatasection(val) {
                var valid = false;
                if (val === 1) {
                    document.getElementById("testdatasection").style.display = "block";
                    document.getElementById("hiddendatafile").value = "1";
                } else {
                    document.getElementById("testdatasection").style.display = "none";
                    document.getElementById("hiddendatafile").value = "0";
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
                document.getElementById("dC2").value = "1.00E15" ;
                document.getElementById("dS1").value = "1.00E-3" ;
                document.getElementById("dS2").value = "1.00E5" ;

                if (PRadio.value === "PRadio1") {
                    document.getElementById("sBaseFileName").value = "SFALSSVR_EvaResult";
                } else {
                    document.getElementById("sBaseFileName").value = "SFALSSVR_PreResult";
                }    
                
                document.getElementById("dTrainingPS").value = "70" ;
                document.getElementById("dValidationPS").value = "30" ;
                document.getElementById("dTotalSize").value = "100" ;
                
                document.getElementById("nLastChange1").value = "3" ;
                document.getElementById("nLastChange2").value = "0.00001" ;
                document.getElementById("dHoldOut").value = "20" ;
                document.getElementById("dCrossValidation").value = "10";

                //alert("Aha11 ...!");
                document.getElementById("NormalRadio1").checked = true; //"null" ;
                //alert("Aha12 ...!");
                document.getElementById("OptimRadio1").checked = true;   
                //alert("Aha13 ...!");
                document.getElementById("SCRadio1").checked = true; 
                //alert("Aha14 ...!");
                //document.getElementById("PRadio1").checked = true; 
                //alert("Aha15 ...!");
                document.getElementById("TORadio1").checked = true; 
                
                //alert("Aha21 ...!");
                document.getElementById("sDataFile").value = "";    //"null"; 
                document.getElementById("sTestDataFile").value = ""; 
                document.getElementById("sLearningDataFile").value = ""; 
                document.getElementById("sPredictionDataFile").value = "";
                
                //alert("Aha22 ...!");
                document.getElementById("nDFAttributes").value = "0"; 
                document.getElementById("nDFInstances").value = "0"; 
                document.getElementById("nTDFAttributes").value = "0"; 
                document.getElementById("nTDFInstances").value = "0"; 
                document.getElementById("nLDFAttributes").value = "0"; 
                document.getElementById("nLDFInstances").value = "0"; 
                document.getElementById("nPDFAttributes").value = "0"; 
                document.getElementById("nPDFInstances").value = "0";

                //alert("Aha23 ...!");
                document.getElementById("sFileName").value = "";    //"null"; 
                document.getElementById("sTestFileName").value = ""; 
                document.getElementById("sLearningFileName").value = ""; 
                document.getElementById("sPredictionFileName").value = ""; 
                        
                //alert("Aha24 ...!");
                document.getElementById("sFileData").value = "";
                document.getElementById("sdInstances").value = "";
                document.getElementById("sdAttributes").value = "";
                document.getElementById("sPFileData").value = "";
                document.getElementById("sdPInstances").value = "";
                document.getElementById("sdPAttributes").value = "";

                //document.getElementById("sLoadingDataExcel").value = "";

                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                                    
                var sLoadingDefault = document.getElementById("sLoadingDefault");
                sLoadingDefault = "1";
                document.getElementById("sLoadingDefault").value = sLoadingDefault;

                //alert("Aha25 ...!");
                var sLoadingEvaluation = document.getElementById("sLoadingEvaluation");
                sLoadingEvaluation = "";
                document.getElementById("sLoadingEvaluation").value = sLoadingEvaluation;

                var sLoadingPrediction = document.getElementById("sLoadingPrediction");
                sLoadingPrediction = "";
                document.getElementById("sLoadingPrediction").value = sLoadingPrediction;

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
                var sSaveDataFile = document.getElementById("sSaveDataFile");
                sSaveDataFile = "";
                document.getElementById("sSaveDataFile").value = sSaveDataFile;
                
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;
                
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                if (PRadio.value === "PRadio1") {
                    //alert("Aha1 ...!");
                    document.getElementById("testdatasection").style.display = "none";
                    var hdf = document.getElementById("hdf");
                    hdf = "0";
                    document.getElementById("hdf").value = "0";
                }
                
                //1. these lines to follow are not executed, as the display has been refreshed.
                document.getElementById("myform").action = "SFALSSVR.jsp";
                document.getElementById("myform").submit();
                valid = false;

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

                //alert("Aha1 ...!");
                document.getElementById("NormalRadio1").checked = false; //"null" ;
                document.getElementById("NormalRadio2").checked = false;
                document.getElementById("OptimRadio1").checked = false;  
                document.getElementById("OptimRadio2").checked = false; 
                document.getElementById("OptimRadio3").checked = false; 
                document.getElementById("SCRadio1").checked = false; 
                document.getElementById("SCRadio2").checked = false;
                document.getElementById("SCRadio3").checked = false;
                //document.getElementById("PRadio1").checked = false; 
                if (PRadio.value === "PRadio1") {
                    document.getElementById("TORadio1").checked = false; 
                    document.getElementById("TORadio2").checked = false;
                    document.getElementById("TORadio3").checked = false;
                    document.getElementById("TORadio4").checked = false;
                }
                
                //alert("Aha21 ...!");
                document.getElementById("sDataFile").value = "";    //"null"; 
                //alert("Aha22 ...!");
                document.getElementById("sTestDataFile").value = ""; 
                //alert("Aha23 ...!");
                document.getElementById("sLearningDataFile").value = ""; 
                //alert("Aha24 ...!");
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
                document.getElementById("sBaseFileName").value = ""; 

                //alert("Aha4 ...!");
                document.getElementById("sFileName").value = "";    //"null"; 
                document.getElementById("sTestFileName").value = ""; 
                document.getElementById("sLearningFileName").value = ""; 
                document.getElementById("sPredictionFileName").value = ""; 
                        
                //alert("Aha5 ...!");
                document.getElementById("sFileData").value = "";
                document.getElementById("sdInstances").value = "";
                document.getElementById("sdAttributes").value = "";
                document.getElementById("sPFileData").value = "";
                document.getElementById("sdPInstances").value = "";
                document.getElementById("sdPAttributes").value = "";

                //document.getElementById("sLoadingDataExcel").value = "";

                //alert("Aha51 ...!");
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                                    
                //alert("Aha52 ...!");
                var sLoadingDefault = document.getElementById("sLoadingDefault");
                sLoadingDefault = "1";
                document.getElementById("sLoadingDefault").value = sLoadingDefault;

                //alert("Aha53 ...!");
                var sLoadingEvaluation = document.getElementById("sLoadingEvaluation");
                sLoadingEvaluation = "";
                document.getElementById("sLoadingEvaluation").value = sLoadingEvaluation;

                //alert("Aha54 ...!");
                var sLoadingPrediction = document.getElementById("sLoadingPrediction");
                sLoadingPrediction = "";
                document.getElementById("sLoadingPrediction").value = sLoadingPrediction;

                //alert("Aha55 ...!");
                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
                //alert("Aha56 ...!");
                var sSaveDataFile = document.getElementById("sSaveDataFile");
                sSaveDataFile = "";
                document.getElementById("sSaveDataFile").value = sSaveDataFile;
                
                //alert("Aha57 ...!");
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;
                
                //alert("Aha58 ...!");
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                //this line refresh the screen - no submission made
                document.getElementById("testdatasection").style.display = "none"; //none, kalo mw diilangin
                hdf = "0";
                document.getElementById("hdf").value = "0"; //"0", kalo mw diilangin
                
                //alert("Aha6 ...!");
                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "SFALSSVR.jsp";
                document.getElementById("myform").submit();
                valid = false;

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
                document.getElementById("myform").action = "SFALSSVR.jsp";
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
                document.getElementById("myform").action = "SFALSSVR.jsp";
                document.getElementById("myform").submit();
                valid = false;
                //bottompage.focus();
                
                return valid;
            }

            function checkdata(val) {
                var valid = true;
                var nFireFlies = document.getElementById("nFireFlies");
                
                var sFileName = document.getElementById("sFileName");
                var sTestFileName = document.getElementById("sTestFileName");
                var sLearningFileName = document.getElementById("sLearningFileName");
                var sPredictionFileName = document.getElementById("sPredictionFileName");
                
                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");
                var sPFileData = document.getElementById("sPFileData");
                var sdPInstances = document.getElementById("sdPInstances");
                var sdPAttributes = document.getElementById("sdPAttributes");

                var PRadio = document.getElementById("PRadio");
                var TORadio = document.getElementById("TORadio");

                if (nFireFlies.value === "") {
                    alert("Load default values ...!");
                    nFireFlies.focus();
                    valid = false;
                } else {
                    //alert("Aha1 ...!");
                    if (PRadio.value === "PRadio1") {
                        if (sFileName.value === "") {
                            //alert("Aha12 ...!");
                            valid = false;
                        }
                        else {
                            /*
                            alert("Aha2 ...!");
                            if (TORadio.value === "TORadio4") {
                                alert("Aha13 ...!");
                                if (sTestFileName.value === "") {
                                    alert("Aha14 ...!");
                                    valid = false;
                                }
                            }
                            */
                        }
                    }
                    else {
                        if (sLearningFileName.value === "") {
                            valid = false;
                        }
                        else if (sPredictionFileName.value === "") {
                            valid = false;
                        }
                    }
                    
                    /*
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
                    } else {
                    }
                    */
                }
                //alert("Aha3 ...!");

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

                    document.getElementById("sRunReportTable").value = "1";
                    
                    var VarNext = document.getElementById("VarNext");
                    document.getElementById("VarNext").value = val;
                    
                    var sBestFold = document.getElementById("sBestFold");
                    var sopt = document.getElementById("sopt");
                    var sGraphNo = document.getElementById("sGraphNo");
                    
                    var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                    sLoadingDataExcel = "";
                    document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                    var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                    sLoadingDataExcelClick = "";
                    document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                    //alert("Aha1 ...!");
                    //sFileName.value = "E://00 Swarm Optimization/NiMOPSJava/build/web/" + sFileName.value;
                    //sFileData.value = "E://00 Swarm Optimization/NiMOPSJava/build/web/" + sFileData.value;
                    fullPath.value = sFileName.value;
                    document.getElementById("myform").action = "ModuleSFALSSVR.jsp";   //#A of 1 //"SFALSSVR.jsp"; (To Result Form) //"SFALSSVRServlet"; (To Data Form)
                    document.getElementById("myform").submit();
                    nFireFlies.focus();

                    valid = false;
                }
                else {
                    alert("Data file not yet selected ...!");
                    if (PRadio.value === "PRadio1") {
                        //alert("Aha4 ...!");
                        sDataFile.focus();
                    }
                    else {
                        //alert("Aha5 ...!");
                        sPredictionDataFile.focus();
                    }
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
                    document.getElementById("myform").action = "SFALSSVR.jsp";   //#A of 1 //"SFALSSVR.jsp"; (To Result Form) //"SFALSSVRServlet"; (To Data Form)
                    document.getElementById("myform").submit();
                    nFireFlies.focus();
                    
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
                    alert("Biotic potential cannot be empty!");
                    dBPotential.focus();
                    valid = false;
                } else if (isNaN(dBPotential.value)) {
                    alert("Biotic potential, a = ... - ... (4.00)");
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
                    alert("End value of C = ... - ... (1.00E15)");
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
                    alert("End value of sigma = ... - ... (1.00E5)");
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

                    var sSaveDataFile = document.getElementById("sSaveDataFile");
                    sSaveDataFile = "";
                    document.getElementById("sSaveDataFile").value = sSaveDataFile;
                
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
                                                        document.getElementById("myform").action = "SFALSSVR.jsp";
                                                        document.getElementById("myform").submit();
                                                    }
                                                } else {
                                                    fullPathL.value = sLearningDataFile.value;
                                                    document.getElementById("myform").action = "SFALSSVR.jsp";
                                                    document.getElementById("myform").submit();
                                                }
                                            } else {
                                                fullPathT.value = sTestDataFile.value;
                                                document.getElementById("myform").action = "SFALSSVR.jsp";
                                                document.getElementById("myform").submit();
                                            }
                                        } else {
                                            fullPath.value = sDataFile.value;
                                            document.getElementById("myform").action = "SFALSSVR.jsp";
                                            document.getElementById("myform").submit();
                                        }
                                    } else {
                                        fullPathP.value = sPredictionFileName.value;
                                        document.getElementById("myform").action = "SFALSSVR.jsp";
                                        document.getElementById("myform").submit();
                                    }
                                } else {
                                    fullPathL.value = sLearningFileName.value;
                                    document.getElementById("myform").action = "SFALSSVR.jsp";
                                    document.getElementById("myform").submit();
                                }
                            } else {
                                fullPathT.value = sTestFileName.value;
                                document.getElementById("myform").action = "SFALSSVR.jsp";
                                document.getElementById("myform").submit();
                            }
                        } else {
                            fullPath.value = sFileName.value;
                            document.getElementById("myform").action = "SFALSSVR.jsp";
                            document.getElementById("myform").submit();
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

                var valid = true;
                
                //alert("Aha1 ...!");

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
                    alert("Biotic potential cannot be empty!");
                    dBPotential.focus();
                    valid = false;
                } else if (isNaN(dBPotential.value)) {
                    alert("Biotic potential, a = ... - ... (4.00)");
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
                    alert("End value of C = ... - ... (1.00E15)");
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
                    alert("End value of sigma = ... - ... (1.00E5)");
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
                } else if (dHoldOut.value.length <= 0 && PRadio.value === "PRadio1") {
                    alert("Hold-Out (%) cannot be empty ...!");
                    dHoldOut.focus();
                    valid = false;
                } else if (isNaN(dHoldOut.value) && PRadio.value === "PRadio1") {
                    alert("Hold-Out (%) = ... - ... (20)");
                    dHoldOut.focus();
                    dHoldOut.select();
                    valid = false;
                } else if (dCrossValidation.value.length <= 0 && PRadio.value === "PRadio1") {
                    alert("Cross-Validation (%) cannot be empty ...!");
                    dCrossValidation.focus();
                    valid = false;
                } else if (isNaN(dCrossValidation.value) && PRadio.value === "PRadio1") {
                    alert("Cross-Validation (%) = ... - ... (10)");
                    dCrossValidation.focus();
                    dCrossValidation.select();
                    valid = false;
                } else {
                }

                //alert("Aha4 ...!");

                var VarOne = document.getElementById("VarOne");

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";  //1";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
                var sSaveDataFile = document.getElementById("sSaveDataFile");
                if (valid === true) {
                    sSaveDataFile = "1";
                    document.getElementById("sSaveDataFile").value = sSaveDataFile;
                }
                
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = "";
                
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = "";
                
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;

                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "SFALSSVR.jsp";
                document.getElementById("myform").submit();
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

                sSaveDataFile = "";
                document.getElementById("sSaveDataFile").value = "";

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "1";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = "";
                
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = "";
                
                //var sMoveBottom = document.getElementById("sMoveBottom");
                //sMoveBottom.value = val;
                //document.getElementById("sMoveBottom").value = val;

                fullPath.value = sFileName.value;
                if (PRadio.value === "PRadio1") {
                    document.getElementById("sBaseFileName").value = "SFALSSVR_EvaResult";
                } else {
                    document.getElementById("sBaseFileName").value = "SFALSSVR_PreResult";
                }    
                document.getElementById("myform").action = "SFALSSVR.jsp";
                document.getElementById("myform").submit();
                //alert("Data file already loaded ...!");
                //nFireFlies.focus();
                //valid = false;
                
                return valid;
            }

            function MoveBottom() {
                var sMoveBottom = document.getElementById("sMoveBottom");
                if (sMoveBottom.value === "1") {
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
            
            function exportparameters() {
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

                var fullPath = document.getElementById("fullPath");

                var sFileName = document.getElementById("sFileName");

                var valid = true;
                
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
                    alert("Biotic potential cannot be empty!");
                    dBPotential.focus();
                    valid = false;
                } else if (isNaN(dBPotential.value)) {
                    alert("Biotic potential, a = ... - ... (4.00)");
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
                    alert("End value of C = ... - ... (1.00E15)");
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
                    alert("End value of sigma = ... - ... (1.00E5)");
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
                } else if (dHoldOut.value.length <= 0 && PRadio.value === "PRadio1") {
                    alert("Hold-Out (%) cannot be empty ...!");
                    dHoldOut.focus();
                    valid = false;
                } else if (isNaN(dHoldOut.value) && PRadio.value === "PRadio1") {
                    alert("Hold-Out (%) = ... - ... (20)");
                    dHoldOut.focus();
                    dHoldOut.select();
                    valid = false;
                } else if (dCrossValidation.value.length <= 0 && PRadio.value === "PRadio1") {
                    alert("Cross-Validation (%) cannot be empty ...!");
                    dCrossValidation.focus();
                    valid = false;
                } else if (isNaN(dCrossValidation.value) && PRadio.value === "PRadio1") {
                    alert("Cross-Validation (%) = ... - ... (10)");
                    dCrossValidation.focus();
                    dCrossValidation.select();
                    valid = false;
                }

                fullPath.value = sFileName.value;
                var saveaction;
                if (document.getElementById("PRadio").value === "PRadio1")
                {
                    saveaction = "SaveParSFALSSVReval.jsp";
                }
                else
                {
                    saveaction = "SaveParSFALSSVRpre.jsp";
                }
                
                document.getElementById("myform").action = saveaction;
                document.getElementById("myform").method = "POST";
                document.getElementById("myform").submit();
                
                return valid;
            }
            
            function importfilefunc()
            {
                var elem = document.getElementById("importfile");
                if(elem && document.createEvent) {
                    var evt = document.createEvent("MouseEvents");
                    evt.initEvent("click", true, false);
                    elem.dispatchEvent(evt);
                }
            }
            
            function sendfile()
            {
                document.getElementById("myform").enctype = "multipart/form-data";
                document.getElementById("myform").method = "POST";
                document.getElementById("myform").action = "ScanDataFileSFALSSVR";
                document.getElementById("myform").submit();
            }
        </script>
    </head>
        
    <body onload="MoveBottom()">
        <center>
            <img src="headhomepagesub.jpg" alt="Image Not Found ..." width="1000">
        </center>
        <%@include file="navmenu.jsp" %>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        
        <div class="sfawrap">
            <form action="ModuleSFALSSVR.jsp" name="myform" id="myform" >
                <input type="hidden" name="VarOne" id="VarOne" value="<%=VarOne%>"/>
                <input type="hidden" name="sLoadingDataFile" id="sLoadingDataFile" value="<%=sLoadingDataFile%>"/>
                <input type="hidden" name="sLoadingDataExcel" id="sLoadingDataExcel" value="<%=sLoadingDataExcel%>"/>
                <input type="hidden" name="sLoadingDataExcelClick" id="sLoadingDataExcelClick" value="<%=sLoadingDataExcelClick%>"/>
                
                <input type="hidden" name="sSaveDataFile" id="sSaveDataFile" value="<%=sSaveDataFile%>"/>
                <input type="hidden" name="sMoveBottom" id="sMoveBottom" value="<%=sMoveBottom%>"/>
                <input type="hidden" name="VarNext" id="VarNext" value="<%=VarNext%>"/>
                <input type="hidden" name="sError" id="sError" value="<%=sError%>"/>
                
                <div style="display:none;"><input type="file" id="importfile" name="importfile"/></div>
                
                <% if (hdf.equals("1")) { %>
                    <input type="hidden" name="hiddendatafile" id="hiddendatafile" value="1">
                <% } else { %>
                    <input type="hidden" name="hiddendatafile" id="hiddendatafile" value="0">
                <% } %>
                
                <!--<input type="hidden" name="sResult01Name" id="sResult01Name" value="<%--=sResult01Name%>" />
                <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%=sResult02Name%>" />
                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%=sResult03Name%>" />
                <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%=sResult04Name%>" />
                <input type="hidden" name="sResult04aName" id="sResult04aName" value="<%=sResult04aName%>">
                <input type="hidden" name="sResult04bName" id="sResult04bName" value="<%=sResult04bName%>">
                <input type="hidden" name="sResult04cName" id="sResult04cName" value="<%=sResult04cName%>">
                <input type="hidden" name="sResult04dName" id="sResult04dName" value="<%=sResult04dName%>">
                <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%=sResult05Name%>" />
                <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%=sResult06Name--%>" />-->
                
                <input type="hidden" name="sRunReportTable" id="sRunReportTable" value="" />
                                
                <input type="hidden" name="sLoadingDefault" id="sLoadingDefault" value="<%=sLoadingDefault%>" />
                <input type="hidden" name="sLoadingEvaluation" id="sLoadingEvaluation" value="<%=sLoadingEvaluation%>" />
                <input type="hidden" name="sLoadingPrediction" id="sLoadingPrediction" value="<%=sLoadingPrediction%>" />
                
                <input type="hidden" name="sFileData" id="sFileData" value="<%=sFileData%>" /> 
                <input type="hidden" name="sdInstances" id="sdInstances" value="<%=sdInstances%>" /> 
                <input type="hidden" name="sdAttributes" id="sdAttributes" value="<%=sdAttributes%>" /> 
                <input type="hidden" name="sPFileData" id="sPFileData" value="<%=sPFileData%>" /> 
                <input type="hidden" name="sdPInstances" id="sdPInstances" value="<%=sdPInstances%>" /> 
                <input type="hidden" name="sdPAttributes" id="sdPAttributes" value="<%=sdPAttributes%>" /> 
                
                <input type="hidden" name="sopt" id="sopt" value="<%=sopt%>" /> 
                <input type="hidden" name="sGraphNo" id="sGraphNo" value="<%=sGraphNo%>" /> 
                <input type="hidden" name="sBestFold" id="sBestFold" value="<%=sBestFold%>" /> 
                <br>
                <br>
                
                <center id="title">
                    <font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt" color="#2F4F4F">
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
                            <script>
                                document.getElementById("TORadio1").checked = false; 
                                document.getElementById("TORadio2").checked = false; 
                                document.getElementById("TORadio3").checked = false; 
                                document.getElementById("TORadio4").checked = false; 
                            </script>
                            
                            <% if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script>
                            <% } else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script>
                            <% } else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script>
                            <% } else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script>
                            <% } %>
                        </div>
                        <div id="prediction" class="tab-pane fade">
                            <%--><input type="hidden" name="dHoldOut" id="dHoldOut" value="<%=dHoldOut%>"/>
                            <input type="hidden" name="dCrossValidation" id="dCrossValidation" value="<%=dCrossValidation%>"/><--%>
                        </div>
                    </div>
                </div>
                    
                <table>
                    <tr>
                        <td>
                            <div class="container boundary">
                                <h2><font face="Palatino Linotype, Book Antiqua, Palatino, serif" size="6">Model Settings</font></h2>
                                <button type="button" onclick="return writedefaultsfalssvr(0)" class="btn btn-primary">Default</button>
                                <%--><button type="button" onclick="return loadingdataform(1);" class="btn btn-primary">Import</button><--%>
                                <button type="button" onclick="return importfilefunc();" id="importbutton" class="btn btn-primary">Import</button>
                                <button type="button" name="VarSaveData" value="SAVE" onclick="return exportparameters();" class="btn btn-primary">Export</button>
                                <%--><input type="submit" name="VarSaveData" value="SAVE" onclick="return savingdata(0);"/><--%>
                                <button type="button" onclick="return cleardefaultsfalssvr(0);" class="btn btn-primary">Clear</button>
                            </div>
                        </td>
                        <a href="#bottomform">
                            <img src="Arrow bottom.png" alt="..." width="18" style="float:right">
                        </a>
                        
                        <!--<td style="width:64%">
                            <%-- if (sLoadingDataExcel != "") {--%>
                                <a href="#bottompage">
                                    <img src="arrowbottom.JPG" alt="..." width="15" style="float:right">
                                </a>
                            <%-- } else { --%>
                                <a href="#bottomform">
                                    <img src="arrowbottom.JPG" alt="..." width="15" style="float:right">
                                </a>
                            <%-- } --%>
                        </td>-->
                    </tr>
                </table>
                
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <!--<div class="container visible-lg-block wdetail">-->
                            <div class="container wdetail">
                                <h2>Parameter</h2>
                                <p>Input data and system parameters.</p>
                                <div class="row">
                                    <div class="col-md-4">Swarm and evolutionary parameters:</div>
                                    <div class="col-md-2">No. of fireflies</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nFireFlies" id="nFireFlies" size="5" value="<%=nFireFlies%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-2">Max. generation</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nMaxGeneration" id="nMaxGeneration" size="5" value="<%=nMaxGeneration%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4">Attractiveness:</div>
                                    <div class="col-md-2">Beta min.</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dMinBeta" id="dMinBeta" size="5" value="<%=dMinBeta%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-2">Gamma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dGamma" id="dGamma" size="5" value="<%=dGamma%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4">Random movement:</div>
                                    <div class="col-md-2">Alpha</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dAlpha" id="dAlpha" size="5" value="<%=dAlpha%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-2">Adaptive inertia weight</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dAIWeight" name="dAIWeight" size="5" value="<%=dAIWeight%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-2">Tau</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dTau" name="dTau" size="5" value="<%=dTau%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4">Logistic map:</div>
                                    <div class="col-md-2">Biotic potential, a</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dBPotential" id="dBPotential" size="5" value="<%=dBPotential%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4">Hyperparameters:</div>
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
                                    <div class="col-md-4"></div>
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
                        </div>
                    </div>
                </div>
                                    
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container boundary">
                                <h2>Normalization</h2>
                                <p>User can decide whether or not to normalize each independent variable of the dataset to (0 - 1) scale.</p> 
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
                                <!--<p>The system will use learning data to train and validate an optimized prediction model.</p>-->
                                <p>The system will use learning data to validate an optimized prediction model using the following objective function:</p>
                                <div class="radio">
                                    <label><input type="radio" name="OptimRadio" id="OptimRadio1" value="OptimRadio1">RMSEvalidate_data</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="OptimRadio" id="OptimRadio2" value="OptimRadio2">MAEvalidate_data</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="OptimRadio" id="OptimRadio3" value="OptimRadio3">MAPEvalidate_data</label>
                                </div>
                            </div>        
                
                            <div class="container boundary">
                                <h3>Learning Option</h3>
                                <p>Set the partition size for training data and validation data.</p>
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
                                            <input type="text" class="form-control" id="dValidationPS" name="dValidationPS" value="<%=dValidationPS%>" readonly="readonly">
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
                                <div class="radio">
                                    <label><input type="radio" name="SCRadio" id="SCRadio1" value="SCRadio1">Max. generation is reached</label>
                                </div>
                                <div class="form-inline">
                                <div class="radio">
                                        <input type="radio" name="SCRadio" id="SCRadio2" value="SCRadio2">
                                        <div class="input-group col-md-2">
                                            <input type="text" class="form-control" name="nLastChange1" id="nLastChange1" value="<%=nLastChange1%>">
                                        </div>
                                            consecutive rates of change in OF values <
                                        <div class="input-group col-md-2">
                                            <input type="text" class="form-control" name="nLastChange2" id="nLastChange2" value="<%=nLastChange2%>">
                                        </div>
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
                                        
                <table>
                    <tr>
                        <td>
                            <div id="dataset" class="container boundary">
                                <h2><font face="Palatino Linotype, Book Antiqua, Palatino, serif" size="6">Dataset</font></h2>
                            </div>
                        </td>
                    </tr>
                </table>
                
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <input type="hidden" name="PRadio" id="PRadio" value="<%=PRadio%>"/>
                            <% if (PRadio.equals("PRadio1")) { 
                                    
                                if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                                else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script><%}
                                else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script><%}
                                else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script><%}
                                %>        
                                <div class="container boundary">
                                    <h3>Data File</h3>
                                    <div class="row">
                                        <div class="col-md-2">
                                            <input type="hidden" name="fullPath" id="fullPath" value=""/>
                                            <input type="file" class="filestyle" name="sDataFile" id="sDataFile" accept=".csv,.txt" data-input="false"/>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 4px">
                                            <a onclick="return sendfile();">
                                                <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                            </a>
                                        </div>
                                        <div class="col-md-2  col-sm-1" style="margin-top : 7px">File name</div>
                                        <div class="col-md-4 col-sm-1">
                                            <input type="text" name="sFileName" id="sFileName" size="45" value="<%=sFileName%>" readonly/>
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
                                        
                                <div class="bs-example">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="container boundary">
                                                <%--><h3>Choose for Test Option</h3><--%>
                                                <h3>Test Option</h3>
                                                <div class="boundary">
                                                    <div class="row form-inline">
                                                        <div class="radio col-md-3">
                                                            <label><input type="radio" name="TORadio" id="TORadio1" value="TORadio1" onclick="ftestdatasection(0);">&nbsp;Use opened dataset</label>
                                                        </div>
                                                        <div class="radio col-md-3">
                                                            <label>
                                                                <input type="radio" name="TORadio" id="TORadio2" value="TORadio2" onclick="ftestdatasection(0);">&nbsp;Hold-out
                                                                <input type="text" class="form-control" name="dHoldOut" id = "dHoldOut" size="3" value="<%=dHoldOut%>">
                                                            </label>
                                                        </div>
                                                        <div class="radio col-md-3">
                                                            <label>
                                                                <input type="radio" name="TORadio" id="TORadio3" value="TORadio3" onclick="ftestdatasection(0);">&nbsp;Cross-validation
                                                                <input type="text" class="form-control" name="dCrossValidation" id = "dCrossValidation" size="3" value="<%=dCrossValidation%>"> 
                                                            </label>
                                                        </div>
                                                    </div><br>
                                                    <div class="row container">
                                                        <i><p>If you want to use test dataset, select the option below!</p></i>
                                                    </div>
                                                    <div class="row">
                                                        <div class="radio col-md-3">
                                                            <label><input type="radio" name="TORadio" id="TORadio4" value="TORadio4" onclick="ftestdatasection(1);">&nbsp;Use test dataset</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                        
                                            <div class="container boundary">
                                                <% if (hdf.equals("1")) { %>
                                                    <div id="testdatasection" style="display: block !important;">
                                                        <h3>Test Data File</h3>
                                                        <div class="row">
                                                            <div class="col-md-2">
                                                                    <input type="hidden" name="fullPathT" id="fullPathT" value=""/>
                                                                    <!--<input type="file" name="sDataFile" id="sDataFile"/>-->
                                                                    <input type="file" class="filestyle" name="sTestDataFile" id="sTestDataFile" accept=".csv,.txt" data-input="false"/>
                                                            </div>
                                                            <div class="col-md-2" style="margin-top : 4px">
                                                                <a onclick="return sendfile();">
                                                                    <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                                                </a>
                                                            </div>
                                                            <div class="col-md-2" style="margin-top : 7px">File name</div>
                                                            <div class="col-md-4">
                                                                <input type="text" name="sTestFileName" id="sTestFileName" size="38" value="<%=sTestFileName%>" readonly/>
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
                                                <% } else { %>
                                                    <div id="testdatasection" style="display: none !important;">
                                                        <h3>Test Data File</h3>
                                                        <div class="row">
                                                            <div class="col-md-2">
                                                                    <input type="hidden" name="fullPathT" id="fullPathT" value=""/>
                                                                    <!--<input type="file" name="sDataFile" id="sDataFile"/>-->
                                                                    <input type="file" class="filestyle" name="sTestDataFile" id="sTestDataFile" accept=".csv,.txt" data-input="false"/>
                                                            </div>
                                                            <div class="col-md-2" style="margin-top : 4px">
                                                                <a onclick="return sendfile();">
                                                                    <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                                                </a>
                                                            </div>
                                                            <div class="col-md-2" style="margin-top : 7px">File name</div>
                                                            <div class="col-md-4">
                                                                <input type="text" name="sTestFileName" id="sTestFileName" size="38" value="<%=sTestFileName%>" readonly/>
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
                                                <% } %>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <% 
                                sFileData=sFileName;
                                sdInstances=nDFInstances;
                                sdAttributes=nDFAttributes;
                                sPFileData=sTestFileName;
                                sdPInstances=nTDFInstances;
                                sdPAttributes=nTDFAttributes;
                                %>
                            
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
                                
                            <% } else if (PRadio.equals("PRadio2")) { %> 
                            
                                <div class="container boundary">
                                    <h3>Learning Data File</h3>
                                    <div class="row">
                                        <div class="col-md-2">
                                            <input type="hidden" name="fullPathL" id="fullPathL" value=""/>
                                            <input type="file" class="filestyle" name="sLearningDataFile" id="sLearningDataFile" accept=".csv,.txt" data-input="false"/>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 4px">
                                            <a onclick="return sendfile();">
                                                <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                            </a>
                                        </div>
                                        <div class="col-md-2 col-sm-1" style="margin-top : 7px">File name</div>
                                        <div class="col-md-4 col-sm-1">
                                            <input type="text" name="sLearningFileName" id="sLearningFileName" size="45" value="<%=sLearningFileName%>" readonly/>
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
                                    <h3>Prediction Data File: Make Predictions for New Data</h3>
                                    <div class="row">
                                        <div class="col-md-2">
                                            <input type="hidden" name="fullPathP" id="fullPathP" value=""/>
                                            <input type="file" class="filestyle"  name="sPredictionDataFile" id="sPredictionDataFile" accept=".csv,.txt" data-input="false"/>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 4px">
                                            <a onclick="return sendfile()">
                                                <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                            </a>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 7px">File name</div>
                                        <div class="col-md-4">
                                            <input type="text" name="sPredictionFileName" id="sPredictionFileName" size="45" value="<%=sPredictionFileName%>" readonly/>
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
                                            <input type="text" name="nPDFInstances" id="nPDFInstances" size="5" value="<%=nPDFInstances%>" readonly/>
                                        </div>
                                    </div>
                                </div>

                                <script>
                                    document.getElementById("sFileData").value = "<%=sLearningFileName%>";
                                    document.getElementById("sdInstances").value = "<%=nLDFInstances%>";
                                    document.getElementById("sdAttributes").value = "<%=nLDFAttributes%>";
                                    document.getElementById("sPFileData").value = "<%=sPredictionFileName%>";
                                    document.getElementById("sdPInstances").value = "<%=nPDFInstances%>";
                                    document.getElementById("sdPAttributes").value = "<%=nPDFAttributes%>";
                                </script>
                                
                                <% 
                                sFileData=sLearningFileName;
                                sdInstances=nLDFInstances;
                                sdAttributes=nLDFAttributes;
                                sPFileData=sPredictionFileName;
                                sdPInstances=nPDFInstances;
                                sdPAttributes=nPDFAttributes;
                                %>
                                
                                <input type="hidden" name="TORadio" id="TORadio" value="<%=TORadio%>"/>
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
                        </div>
                    </div>
                </div>
                
                <%-- if (PRadio.equals("PRadio1")) { %>            
                    <div class="bs-example">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="container boundary">
                                    <h3>Test Option</h3>
                                    <div class="boundary">
                                    <div class="row form-inline">
                                        <div class="radio col-md-2">
                                            <label><input type="radio" name="TORadio" id="TORadio1" value="TORadio1" onclick="ftestdatasection(0);">&nbsp;Use opened dataset</label>
                                        </div>
                                        <div class="radio col-md-3">
                                            <label><input type="radio" name="TORadio" id="TORadio4" value="TORadio4" onclick="ftestdatasection(1);">&nbsp;Use test dataset</label>
                                        </div>
                                        <div class="radio col-md-3">
                                            <label>
                                                <input type="radio" name="TORadio" id="TORadio2" value="TORadio2" onclick="ftestdatasection(0);">&nbsp;Hold-out
                                                <input type="text" class="form-control" name="dHoldOut" id = "dHoldOut" size="3" value="<%=dHoldOut%>">
                                            </label>
                                        </div>
                                        <div class="radio col-md-3">
                                            <label>
                                                <input type="radio" name="TORadio" id="TORadio3" value="TORadio3" onclick="ftestdatasection(0);">&nbsp;Cross-validation
                                                <input type="text" class="form-control" name="dCrossValidation" id = "dCrossValidation" size="3" value="<%=dCrossValidation%>"> 
                                            </label>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <% } --%>        
                        
                <table>
                    <tr>
                        <td>
                            <div class="container boundary" id="bottomform">
                                <h2><font face="Palatino Linotype, Book Antiqua, Palatino, serif" size="6">Output File Name</font></h2>
                            </div>
                        </td>
                    </tr>
                </table>
                
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container boundary">
                                <b>Base output file name:</b>&nbsp;&nbsp;&nbsp;
                                <!--<font color="teal" face="tahoma" size="2"> Base output file name</font>-->
                                <input type="text" name="sBaseFileName" id="sBaseFileName" size="30" value="<%=sBaseFileName%>">
                                <!--<font color="teal" face="tahoma" size="2">order number and .txt will be automatically added. </font>-->
                            </div>
                        </div>
                    </div>
                </div>
            
                <!--<h6 class="sfawrap" id="bottomform">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    &nbsp;. . . [END OF DATA FORM] &nbsp;&nbsp;&nbsp;
                </h6>-->
                <%-- if (sLoadingDataExcel != "") { --%>
                <%-- } else { --%>
                <!--<div class="scrollToTop">
                    <img src="arrowup.JPG" alt="..." width="18">  
                </div>-->
                
                <br>                
                <center>
                    <a onclick="return checkdata(1);">
                        <font color="blue" face="agency FB" size="3">
                            <b><u>SUBMIT >></u></b>
                        </font>
                    </a>

                    <a href="#title">
                        <img src="Arrow top.png" alt="..." width="18" style="float:right">
                    </a>

                    <table>
                        <tr>
                            <td><img src="Logo-Space.png" alt=""></td>
                        </tr>
                    </table>
                </center>
            <% 
            if (!sLoadingDataExcel.equals("")) {
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

                //if (PRadio.equals("PRadio1")) {<script>document.getElementById("PRadio1").checked = true; </script>%><%//}
                //else if (PRadio.equals("PRadio2")) {<script>document.getElementById("PRadio2").checked = true; </script>%><%//}

                if (PRadio.equals("PRadio1")) {
                    if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                    else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script><%}
                    else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script><%}
                    else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script><%}
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
                        sTORadio = "Use opened dataset";
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
                        sTORadio = "Use test dataset";
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
                %>

                <%--<% if (sLoadingDataExcelClick != "") { %>
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
                            5. Hyper-parameters:
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
                                        sTORadio = "Use opened dataset"; 
                                    }
                                    else if (PRadio.equals("PRadio2")) {
                                        sTORadio = "-"; 
                                    }
                                }
                                else if (TORadio.equals("TORadio4")) {
                                    if (PRadio.equals("PRadio1")) {
                                        sTORadio = "Use test dataset"; 
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
                        </td>
                    </tr>
                </table>
                <% } %>
                <BR>--%>
                
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;
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
            <% } else if (sImportData.equals("1")) {
                if (NormalRadio.equals("NormalRadio2")) { %>
                    <script>document.getElementById("NormalRadio2").checked = true;</script>
                <% } else { %>
                    <script>document.getElementById("NormalRadio1").checked = true;</script>
                <% }
                
                if (OptimRadio.equals("OptimRadio3")) { %>
                    <script>document.getElementById("OptimRadio3").checked = true;</script>
                <% } else if (OptimRadio.equals("OptimRadio2")){ %>
                    <script>document.getElementById("OptimRadio2").checked = true;</script>
                <% } else { %>
                    <script>document.getElementById("OptimRadio1").checked = true;</script>
                <% }
                
                if (SCRadio.equals("SCRadio3")) { %>
                    <script>document.getElementById("SCRadio3").checked = true;</script>
                <% } else if (SCRadio.equals("SCRadio2")){ %>
                    <script>document.getElementById("SCRadio2").checked = true;</script>
                <% } else { %>
                    <script>document.getElementById("SCRadio1").checked = true;</script>
                <% }
                
                if (TORadio.equals("TORadio4")) { %>
                    <script>document.getElementById("TORadio4").checked = true;</script>
                <% } else if (TORadio.equals("TORadio3")){ %>
                    <script>document.getElementById("TORadio3").checked = true;</script>
                <% } else if (TORadio.equals("TORadio2")){ %>
                    <script>document.getElementById("TORadio2").checked = true;</script>
                <% } else { %>
                    <script>document.getElementById("TORadio1").checked = true;</script>
                <% }
            
            } else if (!sLoadingDataFile.equals("")) {     
                
                String datafile = request.getParameter("importfile");
                
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
                    <!--<script>
                        document.getElementById("nDFInstances").value = "0";
                        document.getElementById("nDFAttributes").value = "0";
                        document.getElementById("nDTFInstances").value = "0";
                        document.getElementById("nDTFAttributes").value = "0";
                        document.getElementById("nDLFInstances").value = "0";
                        document.getElementById("nDLFAttributes").value = "0";
                        document.getElementById("nDPFInstances").value = "0";
                        document.getElementById("nDPFAttributes").value = "0";
                    </script>-->
                    <%

                    // third line and so on: data ... last column = dependent variable  
                    line = br.readLine();
                    while (line != null) {
                        j = j + 1;
                        cols = line.split("\t");
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
                                //<script>document.getElementById("PRadio1").checked = true; 
                                //</script>%><%
                            }
                            else {
                                //<script>document.getElementById("PRadio2").checked = true; 
                                //</script>%><%
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
                                    document.getElementById("testdatasection").style.display = "none";
                                    var hiddendatafile = document.getElementById("hiddendatafile");
                                    hiddendatafile = "0";
                                    document.getElementById("hiddendatafile").value = "0";
                                    </script><%
                                }
                                else if (iDummy == 2) {
                                    %><script>document.getElementById("TORadio2").checked = true; 
                                    document.getElementById("testdatasection").style.display = "none";
                                    var hiddendatafile = document.getElementById("hiddendatafile");
                                    hiddendatafile = "0";
                                    document.getElementById("hiddendatafile").value = "0";
                                    </script><%
                                }
                                else if (iDummy == 3) {
                                    %><script>document.getElementById("TORadio3").checked = true; 
                                    document.getElementById("testdatasection").style.display = "none";
                                    var hiddendatafile = document.getElementById("hiddendatafile");
                                    hiddendatafile = "0";
                                    document.getElementById("hiddendatafile").value = "0";
                                    </script><%
                                }
                                else {
                                    %><script>document.getElementById("TORadio4").checked = true; 
                                    document.getElementById("testdatasection").style.display = "block";
                                    var hiddendatafile = document.getElementById("hiddendatafile");
                                    hiddendatafile = "1";
                                    document.getElementById("hiddendatafile").value = "1";
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
            else if (!sSaveDataFile.equals("")) {                
                /*
                String snFireFlies = request.getParameter("nFireFlies");
                String snMaxGeneration = request.getParameter("nMaxGeneration");
                String sdMinBeta = request.getParameter("dMinBeta");
                String sdGamma = request.getParameter("dGamma");
                String sdAlpha = request.getParameter("dAlpha");
                String sdAIWeight = request.getParameter("dAIWeight");
                String sdTau = request.getParameter("dTau");
                String sdBPotential = request.getParameter("dBPotential");
                String sdC1 = request.getParameter("dC1");
                String sdC2 = request.getParameter("dC2");
                String sdS1 = request.getParameter("dS1");
                String sdS2 = request.getParameter("dS2");
                String sdTrainingPS = request.getParameter("dTrainingPS");
                String sdValidationPS = request.getParameter("dValidationPS");
                String sdTotalSize = request.getParameter("dTotalSize");
                String snLastChange1 = request.getParameter("nLastChange1");
                String snLastChange2 = request.getParameter("nLastChange2");
                String sdHoldOut = request.getParameter("dHoldOut");
                String sdCrossValidation = request.getParameter("dCrossValidation");

                String snDFAttributes = request.getParameter("nDFAttributes");
                String snDFInstances = request.getParameter("nDFInstances");
                String snTDFAttributes = request.getParameter("nTDFAttributes");
                String snTDFInstances = request.getParameter("nTDFInstances");
                String snLDFAttributes = request.getParameter("nLDFAttributes");
                String snLDFInstances = request.getParameter("nLDFInstances");
                String snPDFAttributes = request.getParameter("nPDFAttributes");
                String snPDFInstances = request.getParameter("nPDFInstances");
                */

                String filename;
                if (PRadio.equals("PRadio2")) {
                    filename = "Data_SFA_LSSVR_Prediction.txt";
                }
                else {
                    filename = "Data_SFA_LSSVR_Evaluation.txt";
                }
                String file = application.getRealPath("/") + filename;
                FileWriter filewriter = new FileWriter(file, false);
                int iRadio = 0;
                
                /*nFireFlies = Float.parseFloat(nFireFlies);
                nMaxGeneration = Float.parseFloat(snMaxGeneration);
                dMinBeta = Float.parseFloat(sdMinBeta);
                dGamma = Float.parseFloat(sdGamma);
                dAlpha = Float.parseFloat(sdAlpha);
                dAIWeight = Float.parseFloat(sdAIWeight);
                dTau = Float.parseFloat(sdTau);
                dBPotential = Float.parseFloat(sdBPotential);
                dC1 = Float.parseFloat(sdC1);
                dC2 = Float.parseFloat(sdC2);
                dS1 = Float.parseFloat(sdS1);
                dS2 = Float.parseFloat(sdS2);
                dTrainingPS = Float.parseFloat(sdTrainingPS);
                dValidationPS = Float.parseFloat(sdValidationPS);
                dTotalSize = Float.parseFloat(sdTotalSize);
                nLastChange1 = Float.parseFloat(snLastChange1);
                nLastChange2 = Float.parseFloat(snLastChange2);
                dHoldOut = Float.parseFloat(sdHoldOut);
                dCrossValidation = Float.parseFloat(sdCrossValidation);
                
                nDFAttributes = Float.parseFloat(snDFAttributes);
                nDFInstances = Float.parseFloat(snDFInstances);
                nTDFAttributes = Float.parseFloat(snTDFAttributes);
                nTDFInstances = Float.parseFloat(snTDFInstances);
                nLDFAttributes = Float.parseFloat(snLDFAttributes);
                nLDFInstances = Float.parseFloat(snLDFInstances);
                nPDFAttributes = Float.parseFloat(snPDFAttributes);
                nPDFInstances = Float.parseFloat(snPDFInstances);
                */
                
                /*
                nDFAttributes = Integer.parseInt(snDFAttributes);
                nDFInstances = Integer.parseInt(snDFInstances);
                nTDFAttributes = Integer.parseInt(snTDFAttributes);
                nTDFInstances = Integer.parseInt(snTDFInstances);
                nLDFAttributes = Integer.parseInt(snLDFAttributes);
                nLDFInstances = Integer.parseInt(snLDFInstances);
                nPDFAttributes = Integer.parseInt(snPDFAttributes);
                nPDFInstances = Integer.parseInt(snPDFInstances);
                */
                
                // title
                filewriter.write("SFA-LSSVR Data:\n");
            
                // column header
                filewriter.write("No.\t");
                filewriter.write("Description\t");
                filewriter.write("Variable\t");
                filewriter.write("Value\t");
                filewriter.write("Remark\n");

                // data rows
                filewriter.write("1\t");
                filewriter.write("No. of fireflies\t");
                filewriter.write("nFireFlies\t");
                filewriter.write(nFireFlies+"\t");
                filewriter.write("-\n");
                
                filewriter.write("2\t");
                filewriter.write("Max. generation\t");
                filewriter.write("nMaxGeneration\t");
                filewriter.write(nMaxGeneration+"\t");
                filewriter.write("-\n");
                
                filewriter.write("3\t");
                filewriter.write("Beta min.\t");
                filewriter.write("dMinBeta\t");
                filewriter.write(dMinBeta+"\t");
                filewriter.write("-\n");
                
                filewriter.write("4\t");
                filewriter.write("Gamma\t");
                filewriter.write("dGamma\t");
                filewriter.write(dGamma+"\t");
                filewriter.write("-\n");
                
                filewriter.write("5\t");
                filewriter.write("Alpha\t");
                filewriter.write("dAlpha\t");
                filewriter.write(dAlpha+"\t");
                filewriter.write("-\n");
                
                filewriter.write("6\t");
                filewriter.write("Adaptive inertia weight\t");
                filewriter.write("dAIWeight\t");
                filewriter.write(dAIWeight+"\t");
                filewriter.write("-\n");
                
                filewriter.write("7\t");
                filewriter.write("Tau\t");
                filewriter.write("dTau\t");
                filewriter.write(dTau+"\t");
                filewriter.write("-\n");
                
                filewriter.write("8\t");
                filewriter.write("Biotic potential, a\t");
                filewriter.write("dBPotential\t");
                filewriter.write(dBPotential+"\t");
                filewriter.write("-\n");
                
                filewriter.write("9\t");
                filewriter.write("Range of C1\t");
                filewriter.write("dC1\t");
                filewriter.write(dC1+"\t");
                filewriter.write("-\n");
                
                filewriter.write("10\t");
                filewriter.write("C2\t");
                filewriter.write("dC2\t");
                filewriter.write(dC2+"\t");
                filewriter.write("-\n");
                
                filewriter.write("11\t");
                filewriter.write("Range of Sigma, S1\t");
                filewriter.write("dS1\t");
                filewriter.write(dS1+"\t");
                filewriter.write("-\n");
                
                filewriter.write("12\t");
                filewriter.write("S2\t");
                filewriter.write("dS2\t");
                filewriter.write(dS2+"\t");
                filewriter.write("-\n");
                
                filewriter.write("13\t");
                filewriter.write("Training partition size (%)\t");
                filewriter.write("dTrainingPS\t");
                filewriter.write(dTrainingPS+"\t");
                filewriter.write("-\n");
                
                filewriter.write("14\t");
                filewriter.write("Validation partition size (%)\t");
                filewriter.write("dValidationPS\t");
                filewriter.write(dValidationPS+"\t");
                filewriter.write("-\n");
                
                filewriter.write("15\t");
                filewriter.write("Total Size (%)\t");
                filewriter.write("dTotalSize\t");
                filewriter.write(dTotalSize+"\t");
                filewriter.write("-\n");
                
                filewriter.write("16\t");
                filewriter.write("No. of Last Changes\t");
                filewriter.write("nLastChange1\t");
                filewriter.write(nLastChange1+"\t");
                filewriter.write("-\n");
                
                filewriter.write("17\t");
                filewriter.write("Constant OF Value\t");
                filewriter.write("nLastChange2\t");
                filewriter.write(nLastChange2+"\t");
                filewriter.write("-\n");

                String temp = "";
                //NormalRadio = "...";
                if (NormalRadio.equals("NormalRadio1")) {
                    temp = "Original value";
                    iRadio=1;
                }
                else if (NormalRadio.equals("NormalRadio2")) {
                    temp = "Feature scaling";
                    iRadio=2;
                }

                filewriter.write("18\t");
                filewriter.write("Normalization Method\t");
                filewriter.write("sNormalRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(temp+"\n");

                //sOptimRadio = "...";
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
                
                filewriter.write("19\t");
                filewriter.write("Objective Function\t");
                filewriter.write("sOptimRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sOptimRadio+"\n");
                
                //SCRadio = "...";
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

                filewriter.write("20\t");
                filewriter.write("Stop Criterion\t");
                filewriter.write("sSCRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(temp+"\n");
                
                //PRadio = "...";
                temp = "";
                if (PRadio.equals("PRadio1")) {
                    temp = "Evaluation";
                    iRadio=1;
                }
                else if (PRadio.equals("PRadio2")) {
                    temp = "Prediction";
                    iRadio=2;
                }
                    
                filewriter.write("21\t");
                filewriter.write("Purpose\t");
                filewriter.write("sPRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(temp+"\n");
                
                if (PRadio.equals("PRadio2")) {
                    filewriter.write("22\t");
                    filewriter.write("Learning Data File\t");
                    filewriter.write("sLearningDataFile\t");
                    filewriter.write(sLearningFileName+"\t");
                    filewriter.write("-\n");

                    filewriter.write("23\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nLDFAttributes\t");
                    filewriter.write(nLDFAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("24\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nLDFInstances\t");
                    filewriter.write(nLDFInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("25\t");
                    filewriter.write("Prediction Data File\t");
                    filewriter.write("sPredictionDataFile\t");
                    filewriter.write(sPredictionFileName+"\t");
                    filewriter.write("-\n");

                    filewriter.write("26\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nPDFAttributes\t");
                    filewriter.write(nPDFAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("27\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nPDFInstances\t");
                    filewriter.write(nPDFInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("28\t");
                    filewriter.write("First Data File\t");
                    filewriter.write("sFileData\t");
                    filewriter.write(sFileData+"\t");
                    filewriter.write("-\n");

                    filewriter.write("29\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdAttributes\t");
                    filewriter.write(sdAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("30\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdInstances\t");
                    filewriter.write(sdInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("31\t");
                    filewriter.write("Second Data File\t");
                    filewriter.write("sPFileData\t");
                    filewriter.write(sPFileData+"\t");
                    filewriter.write("-\n");

                    filewriter.write("32\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdPAttributes\t");
                    filewriter.write(sdPAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("33\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdPInstances\t");
                    filewriter.write(sdPInstances+"\t");
                    filewriter.write("-\n");
                }
                else {
                    filewriter.write("22\t");
                    filewriter.write("Hold-Out (%)\t");
                    filewriter.write("dHoldOut\t");
                    filewriter.write(dHoldOut+"\t");
                    filewriter.write("-\n");

                    filewriter.write("23\t");
                    filewriter.write("Cross-Validation (%)\t");
                    filewriter.write("dCrossValidation\t");
                    filewriter.write(dCrossValidation+"\t");
                    filewriter.write("-\n");

                    //TORadio = "...";
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

                    filewriter.write("24\t");
                    filewriter.write("Test Option\t");
                    filewriter.write("sTORadio\t");
                    filewriter.write(iRadio+"\t");
                    filewriter.write(temp+"\n");

                    filewriter.write("25\t");
                    filewriter.write("Data File\t");
                    filewriter.write("sDataFile\t");
                    filewriter.write(sFileName+"\t");
                    filewriter.write("-\n");

                    filewriter.write("26\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nDFAttributes\t");
                    filewriter.write(nDFAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("27\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nDFInstances\t");
                    filewriter.write(nDFInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("28\t");
                    filewriter.write("Test Data File\t");
                    filewriter.write("sTestDataFile\t");
                    filewriter.write(sTestFileName+"\t");
                    filewriter.write("-\n");

                    filewriter.write("29\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nTDFAttributes\t");
                    filewriter.write(nTDFAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("30\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nTDFInstances\t");
                    filewriter.write(nTDFInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("31\t");
                    filewriter.write("First Data File\t");
                    filewriter.write("sFileData\t");
                    filewriter.write(sFileData+"\t");
                    filewriter.write("-\n");

                    filewriter.write("32\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdAttributes\t");
                    filewriter.write(sdAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("33\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdInstances\t");
                    filewriter.write(sdInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("34\t");
                    filewriter.write("Second Data File\t");
                    filewriter.write("sPFileData\t");
                    filewriter.write(sPFileData+"\t");
                    filewriter.write("-\n");

                    filewriter.write("35\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdPAttributes\t");
                    filewriter.write(sdPAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("36\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdPInstances\t");
                    filewriter.write(sdPInstances+"\t");
                    filewriter.write("-\n");
                }
                filewriter.close();
                
                %><script>alert('Your input form has been saved on the server');</script><%
                
                if (NormalRadio.equals("NormalRadio1")) {%><script>document.getElementById("NormalRadio1").checked = true; </script><%}
                else if (NormalRadio.equals("NormalRadio2")) {%><script>document.getElementById("NormalRadio2").checked = true; </script><%}
            
                if (OptimRadio.equals("OptimRadio1")) {%><script>document.getElementById("OptimRadio1").checked = true; </script><%}
                else if (OptimRadio.equals("OptimRadio2")) {%><script>document.getElementById("OptimRadio2").checked = true; </script><%}
                else if (OptimRadio.equals("OptimRadio3")) {%><script>document.getElementById("OptimRadio3").checked = true; </script><%}
            
                if (SCRadio.equals("SCRadio1")) {%><script>document.getElementById("SCRadio1").checked = true; </script><%}
                else if (SCRadio.equals("SCRadio2")) {%><script>document.getElementById("SCRadio2").checked = true; </script><%}
                else if (SCRadio.equals("SCRadio3")) {%><script>document.getElementById("SCRadio3").checked = true; </script><%}

                if (PRadio.equals("PRadio1")) { 
                    if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                    else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script><%}
                    else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script><%}
                    else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script><%}
                }
            } else {
                if (sLoadingDefault != "") {}
                
                if (sLoadingEvaluation != "") {  
                    if (sTestFileName != "") {
                        %><script>document.getElementById("TORadio4").checked = true; 
                                  document.getElementById("TORadio").value = "<%=TORadio%>";
                          </script>
                        <% 
                    }
                } 

                if (sLoadingPrediction != "") {} 
                
                if (NormalRadio.equals("NormalRadio1")) {%><script>document.getElementById("NormalRadio1").checked = true; </script><%}
                else if (NormalRadio.equals("NormalRadio2")) {%><script>document.getElementById("NormalRadio2").checked = true; </script><%}
            
                if (OptimRadio.equals("OptimRadio1")) {%><script>document.getElementById("OptimRadio1").checked = true; </script><%}
                else if (OptimRadio.equals("OptimRadio2")) {%><script>document.getElementById("OptimRadio2").checked = true; </script><%}
                else if (OptimRadio.equals("OptimRadio3")) {%><script>document.getElementById("OptimRadio3").checked = true; </script><%}
            
                if (SCRadio.equals("SCRadio1")) {%><script>document.getElementById("SCRadio1").checked = true; </script><%}
                else if (SCRadio.equals("SCRadio2")) {%><script>document.getElementById("SCRadio2").checked = true; </script><%}
                else if (SCRadio.equals("SCRadio3")) {%><script>document.getElementById("SCRadio3").checked = true; </script><%}

                //if (PRadio.equals("PRadio1")) {<script>document.getElementById("PRadio1").checked = true; </script>%><%//}
                //else if (PRadio.equals("PRadio2")) {<script>document.getElementById("PRadio2").checked = true; </script>%><%//}

                if (PRadio.equals("PRadio1")) { 
                    if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                    else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script><%}
                    else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script><%}
                    else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script><%}
                }
                
                // compute nLDFAttributes and nLDFInstances 
                int iDFInstances = 0;
                int iDFAttributes = 0;
                %>
                <%--<script>
                    document.getElementById("nDFInstances").value = "<%=iDFInstances%>";
                    document.getElementById("nDFAttributes").value = "<%=iDFAttributes%>";
                </script>--%>
                <%
                
                if (sDataFile != "") {
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
                    //String file = "E:/00 Swarm Optimization/NiMOPSJava/build/web/" + sFileName;
                    String file = sFileName;
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
                    //String file = application.getRealPath("/") + sTestFileName;
                    String file = sTestFileName;
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

                        line = br.readLine();
                        headers = line.split("\\t");

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
                            i = i + 1;
                            line = br.readLine();
                        }
                        br.close();
                    }
                }
                else if (sLearningFileName != "") {
                    //String file = application.getRealPath("/") + sLearningFileName;
                    String file = sLearningFileName;
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
                    //String file = application.getRealPath("/") + sPredictionFileName;
                    String file = sPredictionFileName;
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
            
            var importedfile = document.getElementById("importfile");
            $(importedfile).change(function(event) {
                
                document.getElementById("sSaveDataFile").value = "";
                document.getElementById("sLoadingDataExcel").value = "";
                document.getElementById("sLoadingDataExcelClick").value = "";
                document.getElementById("sLoadingDataFile").value = "1";
                
                //document.getElementById("myform").enctype = "text/html";
                document.getElementById("myform").enctype = "multipart/form-data";
                document.getElementById("myform").method = "POST";
                document.getElementById("myform").action = "ImportSFARParamServlet";
                document.getElementById("myform").submit();
            });
        </script>
    </body>    
</html>
