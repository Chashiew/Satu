<%-- 
    Document   : SFALSSVM
    Created on : Feb 17, 2016, 3:36:41 PM
    Author     : Asus
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
    sopt = "3";        
};
String sBestFold = request.getParameter("sBestFold");
if (sBestFold == null) {
    sBestFold = "1";        
};
String sGraphType = request.getParameter("sGraphType");
if (sGraphType == null) {
    sGraphType = "2";        
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

String sLoadingDataFileLSSVM = request.getParameter("sLoadingDataFileLSSVM");
if (sLoadingDataFileLSSVM == null) {
    sLoadingDataFileLSSVM = "";        
};
String sSaveDataFileLSSVM = request.getParameter("sSaveDataFileLSSVM");
if (sSaveDataFileLSSVM == null) {
    sSaveDataFileLSSVM = "";       
};
String sLoadingDataExcelLSSVM = request.getParameter("sLoadingDataExcelLSSVM");
if (sLoadingDataExcelLSSVM == null) {
    sLoadingDataExcelLSSVM = "";        
};
String sLoadingDataExcelClickLSSVM = request.getParameter("sLoadingDataExcelClickLSSVM");
if (sLoadingDataExcelClickLSSVM == null) {
    sLoadingDataExcelClickLSSVM = "";        
};

String sImportDataLSSVM = request.getParameter("sImportDataLSSVM");
if (sImportDataLSSVM == null) {
    sImportDataLSSVM = "";        
};

String NormalRadioLSSVM = request.getParameter("NormalRadioLSSVM");
if (NormalRadioLSSVM == null) {
    NormalRadioLSSVM = "";
}

String sMoveBottom = request.getParameter("sMoveBottom");
if (sMoveBottom == null) {
    sMoveBottom = "";
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

if (nDFAttributesLSSVM == null) {nDFAttributesLSSVM = "";};
if (nDFInstancesLSSVM == null) {nDFInstancesLSSVM = "";};
if (nTDFAttributesLSSVM == null) {nTDFAttributesLSSVM = "";};
if (nTDFInstancesLSSVM == null) {nTDFInstancesLSSVM = "";};
if (nLDFAttributesLSSVM == null) {nLDFAttributesLSSVM = "";};
if (nLDFInstancesLSSVM == null) {nLDFInstancesLSSVM = "";};
if (nPDFAttributesLSSVM == null) {nPDFAttributesLSSVM = "";};
if (nPDFInstancesLSSVM == null) {nPDFInstancesLSSVM = "";};

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
    dC2LSSVM = "";               //"1.00E15";
};
if (dS1LSSVM == null) {
    dS1LSSVM = "";               //"1.00E-3";
};
if (dS2LSSVM == null) {
    dS2LSSVM = "";               //"1.00E5";
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

double dDummy=1.0;
String sDummy = "...";
String sPDummy = "";
    
String sErrorLSSVM = request.getParameter("sErrorLSSVM");
if (sErrorLSSVM == null) {
    sErrorLSSVM = "";
}

double dAttributesLSSVM=0;
double dInstancesLSSVM=0; 
double dPAttributesLSSVM=0; 
double dPInstancesLSSVM=0; 

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

String sBaseFileName = request.getParameter("sBaseFileName");
if (sBaseFileName == null) {
    sBaseFileName = "";
}

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
        <%
        String hdf = request.getParameter("hiddendatafile");
        if (hdf == null) {
            hdf = "0";
        }
        %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            NiMOPS: SFA-LSSVM
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
             function refreshformLSSVM(val) {
                var valid = false;
                
                //alert("Aha1 ...!");
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

                //alert("Aha11 ...!");
                var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
                var SCRadioLSSVM = document.getElementById("SCRadioLSSVM");
                var PRadioLSSVM = document.getElementById("PRadioLSSVM");
                var TORadioLSSVM = document.getElementById("TORadioLSSVM");

                //alert("Aha12 ...!");
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

                var sSaveDataFileLSSVM = document.getElementById("sSaveDataFileLSSVM");
                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = sSaveDataFileLSSVM;
                
                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM = "";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                //alert("Aha13 ...!");
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
                
                var sSaveDataFileLSSVM = document.getElementById("sSaveDataFileLSSVM");
                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = sSaveDataFileLSSVM;
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";
                
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                
                //alert("Aha14 ...!");
                fullPathLSSVM.value = sFileNameLSSVM.value;
                fullPathLSSVM.value = nDFInstancesLSSVM.value;
                fullPathLSSVM.value = nDFAttributesLSSVM.value;
                document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";  //jsp#title";
                document.getElementById("myformLSSVM").submit();
                valid = false;
                
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
                document.getElementById("dC2LSSVM").value = "1.00E15" ;
                document.getElementById("dS1LSSVM").value = "1.00E-3" ;
                document.getElementById("dS2LSSVM").value = "1.00E5" ;

                var date = new Date();
                var strdatetime = "" + date.getFullYear() + (date.getMonth() + 1) + date.getDate() + date.getHours() + date.getMinutes() + date.getSeconds();
                if (PRadioLSSVM.value === "PRadio1LSSVM") {
                    document.getElementById("sBaseFileName").value = "SFALSSVM_EvaResult" + strdatetime;
                } else {
                    document.getElementById("sBaseFileName").value = "SFALSSVM_PreResult" + strdatetime;
                }    
                
                document.getElementById("dTrainingPSLSSVM").value = "70" ;
                document.getElementById("dValidationPSLSSVM").value = "30" ;
                document.getElementById("dTotalSizeLSSVM").value = "100" ;
                
                document.getElementById("nLastChange1LSSVM").value = "3" ;
                document.getElementById("nLastChange2LSSVM").value = "0.00001" ;
                document.getElementById("dHoldOutLSSVM").value = "20" ;
                document.getElementById("dCrossValidationLSSVM").value = "10";

                document.getElementById("NormalRadio1LSSVM").checked = true; //"null" ;
                document.getElementById("SCRadio3LSSVM").checked = true; 
                //document.getElementById("PRadio1LSSVM").checked = true; 
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
                
                document.getElementById("sFileDataLSSVM").value = "";
                document.getElementById("sdInstancesLSSVM").value = "";
                document.getElementById("sdAttributesLSSVM").value = "";
                document.getElementById("sPFileDataLSSVM").value = "";
                document.getElementById("sdPInstancesLSSVM").value = "";
                document.getElementById("sdPAttributesLSSVM").value = "";

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
                
                var sSaveDataFileLSSVM = document.getElementById("sSaveDataFileLSSVM");
                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = sSaveDataFileLSSVM;
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;
                
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                if (PRadioLSSVM.value === "PRadio1LSSVM") {
                    document.getElementById("testdatasection").style.display = "none";
                    var hdf = document.getElementById("hdf");
                    hdf = "0";
                    document.getElementById("hdf").value = "0";
                }
                
                //1. these lines to follow are not executed, as the display has been refreshed.
                document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                document.getElementById("myformLSSVM").submit();
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
                document.getElementById("NormalRadio2LSSVM").checked = false; //"null" ;
                document.getElementById("SCRadio1LSSVM").checked = false; 
                document.getElementById("SCRadio2LSSVM").checked = false; 
                document.getElementById("SCRadio3LSSVM").checked = false; 
                //document.getElementById("PRadio1LSSVM").checked = false; 
                if (PRadioLSSVM.value === "PRadio1LSSVM") {
                    document.getElementById("TORadio1LSSVM").checked = false; 
                    document.getElementById("TORadio2LSSVM").checked = false; 
                    document.getElementById("TORadio3LSSVM").checked = false; 
                    document.getElementById("TORadio4LSSVM").checked = false; 
                }
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
                document.getElementById("sBaseFileName").value = ""; 

                document.getElementById("sFileNameLSSVM").value = "";    //"null"; 
                document.getElementById("sTestFileNameLSSVM").value = ""; 
                document.getElementById("sLearningFileNameLSSVM").value = ""; 
                document.getElementById("sPredictionFileNameLSSVM").value = ""; 
                
                document.getElementById("sFileDataLSSVM").value = "";
                document.getElementById("sdInstancesLSSVM").value = "";
                document.getElementById("sdAttributesLSSVM").value = "";
                document.getElementById("sPFileDataLSSVM").value = "";
                document.getElementById("sdPInstancesLSSVM").value = "";
                document.getElementById("sdPAttributesLSSVM").value = "";

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
                
                var sSaveDataFileLSSVM = document.getElementById("sSaveDataFileLSSVM");
                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = sSaveDataFileLSSVM;
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;
                
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                document.getElementById("testdatasection").style.display = "none";
                var hdf = document.getElementById("hdf");
                hdf = "0";
                document.getElementById("hdf").value = "0";

                fullPathLSSVM.value = sFileNameLSSVM.value;
                document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;

                return valid;
        
                //window.location = "SFALSSVM.jsp"
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
                document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
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
                document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;
                //bottompageLSSVM.focus(); 
                
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
                
                var sFileDataLSSVM = document.getElementById("sFileDataLSSVM");
                var sdInstancesLSSVM = document.getElementById("sdInstancesLSSVM");
                var sdAttributesLSSVM = document.getElementById("sdAttributesLSSVM");
                var sPFileDataLSSVM = document.getElementById("sPFileDataLSSVM");
                var sdPInstancesLSSVM = document.getElementById("sdPInstancesLSSVM");
                var sdPAttributesLSSVM = document.getElementById("sdPAttributesLSSVM");

                var PRadioLSSVM = document.getElementById("PRadioLSSVM");
                var TORadioLSSVM = document.getElementById("TORadioLSSVM");
                
                if (nFireFliesLSSVM.value === "") {
                    alert("Load default values and calculate first ...!");
                    nFireFliesLSSVM.focus();
                    valid = false;
                } else {
                    if (PRadioLSSVM.value === "PRadio1LSSVM") {
                        if (sFileNameLSSVM.value === "") {
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
                        if (sLearningFileNameLSSVM.value === "") {
                            valid = false;
                        }
                        else if (sPredictionFileNameLSSVM.value === "") {
                            valid = false;
                        }
                    }
                    
                    /*
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
                    */
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

                    var sResult01Name = document.getElementById("sResult01Name");
                    var sResult02Name = document.getElementById("sResult02Name");
                    var sResult03Name = document.getElementById("sResult03Name");
                    var sResult04Name = document.getElementById("sResult04Name");
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");

                    document.getElementById("sHasil").value = "2";
                    document.getElementById("sRunReportTable").value = "1";
                    
                    var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                    document.getElementById("VarNextLSSVM").value = val;

                    var sBestFold = document.getElementById("sBestFold");
                    var sopt = document.getElementById("sopt");
                    var sGraphNo = document.getElementById("sGraphNo");
                    var sGraphType = document.getElementById("sGraphType");
                    
                    var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                    sLoadingDataExcelLSSVM = "2";
                    document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                    var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                    sLoadingDataExcelClickLSSVM = "";
                    document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                    var sMoveBottom = document.getElementById("sMoveBottom");
                    sMoveBottom.value = "1";
                    document.getElementById("sMoveBottom").value = "1";

                    valid = false;
                    fullPathLSSVM.value = sFileNameLSSVM.value;
                    document.getElementById("myformLSSVM").action = "ModuleSFALSSVM.jsp";
                    document.getElementById("myformLSSVM").submit();
                    nFireFliesLSSVM.focus();
                }    
                else {
                    alert("Data file not yet selected ...!");
                    if (PRadioLSSVM.value === "PRadio1LSSVM") {
                        //alert("Aha4 ...!");
                        sDataFileLSSVM.focus();
                    }
                    else {
                        //alert("Aha5 ...!");
                        sPredictionDataFileLSSVM.focus();
                    }
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
                    document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                    document.getElementById("myformLSSVM").submit();
                    nFireFliesLSSVM.focus();
                    
                    valid = false;
                }
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
                //document.getElementById("dTotalSizeLSSVM").value = 100;
                //document.getElementById("dValidationPSLSSVM").value = document.getElementById("dTotalSizeLSSVM").value - document.getElementById("dTrainingPSLSSVM").value;

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
                    alert("Biotic potential cannot be empty!");
                    dBPotentialLSSVM.focus();
                    valid = false;
                } else if (isNaN(dBPotentialLSSVM.value)) {
                    alert("Biotic potential, a = ... - ... (4.00)");
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
                    alert("End value of C = ... - ... (1.00E15)");
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
                    alert("End value of sigma = ... - ... (1.00E5)");
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

                    var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                    sLoadingDataFileLSSVM = "";
                    document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;

                    var sSaveDataFileLSSVM = document.getElementById("sSaveDataFileLSSVM");
                    sSaveDataFileLSSVM = "";
                    document.getElementById("sSaveDataFileLSSVM").value = sSaveDataFileLSSVM;

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
                                                        document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                                                        document.getElementById("myformLSSVM").submit();
                                                    }
                                                } else {
                                                    fullPathLLSSVM.value = sLearningDataFileLSSVM.value;
                                                    document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                                                    document.getElementById("myformLSSVM").submit();
                                                }
                                            } else {
                                                fullPathTLSSVM.value = sTestDataFileLSSVM.value;
                                                document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                                                document.getElementById("myformLSSVM").submit();
                                            }
                                        } else {
                                            fullPathLSSVM.value = sDataFileLSSVM.value;
                                            document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                                            document.getElementById("myformLSSVM").submit();
                                        }
                                    } else {
                                        fullPathPLSSVM.value = sPredictionFileNameLSSVM.value;
                                        document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                                        document.getElementById("myformLSSVM").submit();
                                    }
                                } else {
                                    fullPathLLSSVM.value = sLearningFileNameLSSVM.value;
                                    document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                                    document.getElementById("myformLSSVM").submit();
                                }
                            } else {
                                fullPathTLSSVM.value = sTestFileNameLSSVM.value;
                                document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                                document.getElementById("myformLSSVM").submit();
                            }
                        } else {
                            fullPathLSSVM.value = sFileNameLSSVM.value;
                            document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                            document.getElementById("myformLSSVM").submit();
                        }
                    }
                }
                /**/
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
                    alert("Biotic potential cannot be empty!");
                    dBPotentialLSSVM.focus();
                    valid = false;
                } else if (isNaN(dBPotentialLSSVM.value)) {
                    alert("Biotic potential, a = ... - ... (4.00)");
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
                    alert("End value of C = ... - ... (1.00E15)");
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
                    alert("End value of sigma = ... - ... (1.00E5)");
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
                } else if (dHoldOutLSSVM.value.length <= 0 && PRadioLSSVM.value === "PRadio1LSSVM") {
                    alert("Hold-Out (%) cannot be empty ...!");
                    dHoldOutLSSVM.focus();
                    valid = false;
                } else if (isNaN(dHoldOutLSSVM.value) && PRadioLSSVM.value === "PRadio1LSSVM") {
                    alert("Hold-Out (%) = ... - ... (20)");
                    dHoldOutLSSVM.focus();
                    dHoldOutLSSVM.select();
                    valid = false;
                } else if (dCrossValidationLSSVM.value.length <= 0 && PRadioLSSVM.value === "PRadio1LSSVM") {
                    alert("Cross-Validation (%) cannot be empty ...!");
                    dCrossValidationLSSVM.focus();
                    valid = false;
                } else if (isNaN(dCrossValidationLSSVM.value) && PRadioLSSVM.value === "PRadio1LSSVM") {
                    alert("Cross-Validation (%) = ... - ... (10)");
                    dCrossValidationLSSVM.focus();
                    dCrossValidationLSSVM.select();
                    valid = false;
                } else {
                }

                var VarTwo = document.getElementById("VarTwo");
                
                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM="";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                var sSaveDataFileLSSVM = document.getElementById("sSaveDataFileLSSVM");
                if (valid === true) {
                    sSaveDataFileLSSVM = "1";
                    document.getElementById("sSaveDataFileLSSVM").value = sSaveDataFileLSSVM;
                }
                
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";
                
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                
                fullPathLSSVM.value = sFileNameLSSVM.value;
                document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                document.getElementById("myformLSSVM").submit();

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

                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = "";

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM="2";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";
                
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                
                //var sMoveBottom = document.getElementById("sMoveBottom");
                //sMoveBottom.value = val;
                //document.getElementById("sMoveBottom").value = val;

                fullPathLSSVM.value = sFileNameLSSVM.value;
                if (PRadioLSSVM.value === "PRadio1LSSVM") {
                    document.getElementById("sBaseFileName").value = "SFALSSVM_EvaResult";
                } else {
                    document.getElementById("sBaseFileName").value = "SFALSSVM_PreResult";
                }document.getElementById("myformLSSVM").action = "SFALSSVM.jsp";
                document.getElementById("myformLSSVM").submit();
                //alert("Data file already loaded ...!");
                //nFireFliesLSSVM.focus();
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
            
            function exportparameters()
            {
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
                var nLastChange1LSSVM = document.getElementById("nLastChange1LSSVM");
                var nLastChange2LSSVM = document.getElementById("nLastChange2LSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var fullPathLSSVM = document.getElementById("fullPathLSSVM");
                
                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                var valid = true;

                document.getElementById("dTotalSizeLSSVM").value = 100;
                document.getElementById("dValidationPSLSSVM").value = document.getElementById("dTotalSizeLSSVM").value - document.getElementById("dTrainingPSLSSVM").value;

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
                    alert("Biotic potential cannot be empty!");
                    dBPotentialLSSVM.focus();
                    valid = false;
                } else if (isNaN(dBPotentialLSSVM.value)) {
                    alert("Biotic potential, a = ... - ... (4.00)");
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
                    alert("End value of C = ... - ... (1.00E15)");
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
                    alert("End value of sigma = ... - ... (1.00E5)");
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
                } else if (dHoldOutLSSVM.value.length <= 0 && PRadioLSSVM.value === "PRadio1LSSVM") {
                    alert("Hold-Out (%) cannot be empty ...!");
                    dHoldOutLSSVM.focus();
                    valid = false;
                } else if (isNaN(dHoldOutLSSVM.value) && PRadioLSSVM.value === "PRadio1LSSVM") {
                    alert("Hold-Out (%) = ... - ... (20)");
                    dHoldOutLSSVM.focus();
                    dHoldOutLSSVM.select();
                    valid = false;
                } else if (dCrossValidationLSSVM.value.length <= 0 && PRadioLSSVM.value === "PRadio1LSSVM") {
                    alert("Cross-Validation (%) cannot be empty ...!");
                    dCrossValidationLSSVM.focus();
                    valid = false;
                } else if (isNaN(dCrossValidationLSSVM.value) && PRadioLSSVM.value === "PRadio1LSSVM") {
                    alert("Cross-Validation (%) = ... - ... (10)");
                    dCrossValidationLSSVM.focus();
                    dCrossValidationLSSVM.select();
                    valid = false;
                } else {
                }

                fullPathLSSVM.value = sFileNameLSSVM.value;
                var saveaction;
                if (document.getElementById("PRadioLSSVM").value === "PRadio1LSSVM")
                {
                    saveaction = "SaveParSFALSSVMeval.jsp";
                }
                else
                {
                    saveaction = "SaveParSFALSSVMpre.jsp";
                }
                
                document.getElementById("myformLSSVM").action = saveaction;
                document.getElementById("myformLSSVM").method = "POST";
                document.getElementById("myformLSSVM").submit();
                
                return valid;
            }
            
            function importSVMfilefunc()
            {
                var elem = document.getElementById("importfileLSSVM");
                if(elem && document.createEvent) {
                    var evt = document.createEvent("MouseEvents");
                    evt.initEvent("click", true, false);
                    elem.dispatchEvent(evt);
                }
            }
            
            function sendfileSVM()
            {
                document.getElementById("myformLSSVM").enctype = "multipart/form-data";
                document.getElementById("myformLSSVM").method = "POST";
                document.getElementById("myformLSSVM").action = "ScanDataFileSFALSSVM";
                document.getElementById("myformLSSVM").submit();
            }
        </script>
    </head>
        
    <body onload="MoveBottom()">
        <center>
            <%-->
            <img src="headhomepage2.jpg" alt="Image Not Found ..." width="1000">
            <--%>
            <img src="headhomepagesub.jpg" alt="Image Not Found ..." width="1000">
        </center>
        <%@include file="navmenu.jsp" %>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;

        <div class="sfawrap">
            <form action="ModuleSFALSSVM.jsp" name="myformLSSVM" id="myformLSSVM" >
                <input type="hidden" name="VarTwo" id="VarTwo" value="<%=VarTwo%>"/> 
                <input type="hidden" name="sLoadingDataFileLSSVM" id="sLoadingDataFileLSSVM" value="<%=sLoadingDataFileLSSVM%>"/> 
                <input type="hidden" name="sLoadingDataExcelLSSVM" id="sLoadingDataExcelLSSVM" value="<%=sLoadingDataExcelLSSVM%>"/> 
                <input type="hidden" name="sLoadingDataExcelClickLSSVM" id="sLoadingDataExcelClickLSSVM" value="<%=sLoadingDataExcelClickLSSVM%>"/> 

                <input type="hidden" name="sSaveDataFileLSSVM" id="sSaveDataFileLSSVM" value="<%=sSaveDataFileLSSVM%>"/>
                <input type="hidden" name="sMoveBottom" id="sMoveBottom" value="<%=sMoveBottom%>"/>
                <input type="hidden" name="VarNextLSSVM" id="VarNextLSSVM" value="<%=VarNextLSSVM%>"/> 
                <input type="hidden" name="sErrorLSSVM" id="sErrorLSSVM" value="<%=sErrorLSSVM%>"/> 

                <div style="display:none;"><input type="file" id="importfileLSSVM" name="importfileLSSVM"/></div>
                
                <% if (hdf.equals("1")) { %>
                    <input type="hidden" name="hiddendatafile" id="hiddendatafile" value="1">
                <% } else { %>
                    <input type="hidden" name="hiddendatafile" id="hiddendatafile" value="0">
                <% } %>
                
                <%--
                <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%=sResult01Name%>" />
                <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%=sResult02Name%>" />
                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%=sResult03Name%>" />
                <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%=sResult04Name%>" />
                <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%=sResult05Name%>" />
                <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%=sResult06Name%>" />
                --%>
                
                <input type="hidden" name="sRunReportTable" id="sRunReportTable" value="" />
                <input type="hidden" name="sHasil" id="sHasil" value="" />
                                
                <input type="hidden" name="sLoadingDefaultLSSVM" id="sLoadingDefaultLSSVM" value="<%=sLoadingDefaultLSSVM%>" /> 
                <input type="hidden" name="sLoadingEvaluationLSSVM" id="sLoadingEvaluationLSSVM" value="<%=sLoadingEvaluationLSSVM%>" /> 
                <input type="hidden" name="sLoadingPredictionLSSVM" id="sLoadingPredictionLSSVM" value="<%=sLoadingPredictionLSSVM%>" /> 
                
                <input type="hidden" name="sFileDataLSSVM" id="sFileDataLSSVM" value="<%=sFileDataLSSVM%>" /> 
                <input type="hidden" name="sdInstancesLSSVM" id="sdInstancesLSSVM" value="<%=sdInstancesLSSVM%>" /> 
                <input type="hidden" name="sdAttributesLSSVM" id="sdAttributesLSSVM" value="<%=sdAttributesLSSVM%>" /> 
                <input type="hidden" name="sPFileDataLSSVM" id="sPFileDataLSSVM" value="<%=sPFileDataLSSVM%>" /> 
                <input type="hidden" name="sdPInstancesLSSVM" id="sdPInstancesLSSVM" value="<%=sdPInstancesLSSVM%>" /> 
                <input type="hidden" name="sdPAttributesLSSVM" id="sdPAttributesLSSVM" value="<%=sdPAttributesLSSVM%>" /> 
                
                <input type="hidden" name="sopt" id="sopt" value="<%=sopt%>" /> 
                <input type="hidden" name="sGraphNo" id="sGraphNo" value="<%=sGraphNo%>" /> 
                <input type="hidden" name="sBestFold" id="sBestFold" value="<%=sBestFold%>" /> 
                <input type="hidden" name="sGraphType" id="sGraphType" value="<%=sGraphType%>" /> 
                <br>
                <br>
                <center id="title">
                    <font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt" color="#2F4F4F">
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
                            <script>
                                document.getElementById("TORadio1LSSVM").checked = false; 
                                document.getElementById("TORadio2LSSVM").checked = false; 
                                document.getElementById("TORadio3LSSVM").checked = false; 
                                document.getElementById("TORadio4LSSVM").checked = false; 
                            </script>
                            <%if (TORadioLSSVM.equals("TORadio1LSSVM")) {%><script>document.getElementById("TORadio1LSSVM").checked = true; </script><%}
                            else if (TORadioLSSVM.equals("TORadio2LSSVM")) {%><script>document.getElementById("TORadio2LSSVM").checked = true; </script><%}
                            else if (TORadioLSSVM.equals("TORadio3LSSVM")) {%><script>document.getElementById("TORadio3LSSVM").checked = true; </script><%}
                            else if (TORadioLSSVM.equals("TORadio4LSSVM")) {%><script>document.getElementById("TORadio4LSSVM").checked = true; </script><%}
                            %>
                        </div>
                        <div id="prediction" class="tab-pane fade">
                            <%--><input type="hidden" name="dHoldOutLSSVM" id="dHoldOutLSSVM" value="<%=dHoldOutLSSVM%>"/>
                            <input type="hidden" name="dCrossValidationLSSVM" id="dCrossValidationLSSVM" value="<%=dCrossValidationLSSVM%>"/><--%>
                        </div>
                    </div>
                </div>
                
                <table>
                    <tr>
                        <td>
                            <div class="container boundary">
                                <h2><font face="Palatino Linotype, Book Antiqua, Palatino, serif" size="6">Model Settings</font></h2>
                                <button type="button" onclick="return writedefaultsfalssvm(0)" class="btn btn-primary">Default</button>
                                <%--<button type="button" onclick="return loadingdataformLSSVM(1);" class="btn btn-primary">Import</button>--%>
                                <button type="button" onclick="return importSVMfilefunc();" id="importbutton" class="btn btn-primary">Import</button>
                                <button type="button" onclick="return exportparameters();" class="btn btn-primary">Export</button>
                                <button type="button" onclick="return cleardefaultsfalssvm(0);" class="btn btn-primary">Clear</button>
                            </div>
                        </td>
                        <a href="#bottomform">
                            <img src="Arrow bottom.png" alt="..." width="18" style="float:right">
                        </a>
                    </tr>
                </table>
                
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container wdetail">
                                <h2>Parameter</h2>
                                <p>Input data and system parameters.</p> <%-->The system then initialized the search parameters via chaotic map operator (Logistic map).</p><--%>
                                <div class="row">
                                    <div class="col-md-4">Swarm and evolutionary parameters:</div>
                                    <div class="col-md-2">No. of fireflies</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nFireFliesLSSVM" id="nFireFliesLSSVM" size="5" value="<%=nFireFliesLSSVM%>"> 
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-2">Max. generation</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nMaxGenerationLSSVM" id="nMaxGenerationLSSVM" size="5" value="<%=nMaxGenerationLSSVM%>"> 
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4">Initial population generation:</div>
                                    <div class="col-md-2">Biotic potential, a</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dBPotentialLSSVM" id="dBPotentialLSSVM" size="5" value="<%=dBPotentialLSSVM%>">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4">Attractiveness:</div>
                                    <div class="col-md-2">Beta min.</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dMinBetaLSSVM" id="dMinBetaLSSVM" size="5" value="<%=dMinBetaLSSVM%>"> 
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-2">Gamma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dGammaLSSVM" id="dGammaLSSVM" size="5" value="<%=dGammaLSSVM%>">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4">Random movement:</div>
                                    <div class="col-md-2">Alpha</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dAlphaLSSVM" id="dAlphaLSSVM" size="5" value="<%=dAlphaLSSVM%>">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-2">Adaptive inertia weight</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dAIWeightLSSVM" name="dAIWeightLSSVM" size="5" value="<%=dAIWeightLSSVM%>">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-2">Tau</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dTauLSSVM" name="dTauLSSVM" size="5" value="<%=dTauLSSVM%>"> 
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4">Hyperparameters:</div>
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
                                    <div class="col-md-4"></div>
                                    <div class="col-md-2">Range of sigma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dS1LSSVM" id="dS1LSSVM" size="5" value="<%=dS1LSSVM%>">
                                    </div>
                                    <div class="col-md-1">to</div>
                                    <div class="col-md-1">
                                        <input type="text" id="dS2LSSVM" name="dS2LSSVM" size="5" value="<%=dS2LSSVM%>">
                                    </div>
                                </div>
                                <%--><div class="row">
                                    <div class="col-md-4">Test option parameters:</div>
                                    <div class="col-md-2">Hold-out rate (%)</div>
                                    <div class="col-md-1">
                                        <input type="text" name="dHoldOutLSSVM" id = "dHoldOutLSSVM" size="3" value="<%=dHoldOutLSSVM%>">
                                    </div>
                                </div><--%>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container boundary">
                                <h2>Normalization</h2>
                                <%--><p>Data preprocessing is considered a crucial step in data anlytics that performs data cleansing and transforming to improve the respective results.</p><--%>
                                <p>User can decide whether or not to normalize each independent variable of the dataset to (0 - 1) scale.</p>
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
                                <p>The system will use learning data to validate an optimized prediction model using the following objective function:</p>
                            </div>     
                            
                            <div class="container boundary">
                                <h3>Learning Option</h3>
                                <p>Set the partition size for training data and validation data.</p>
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
                                            <input type="text" class="form-control" id="dValidationPSLSSVM" name="dValidationPSLSSVM" value="<%=dValidationPSLSSVM%>" readonly="readonly">
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
                                <%--><p>Stopping condition. End the optimization process if the generation number (MaxGen) has achieved the maximum number of fitness function f(m)</p><--%>
                                <%--><p> with the minimum f(m) values.</p><--%>
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
                                            <%-->last changes in OF value <<--%>
                                            consecutive rates of change in OF values <
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
                                        
                <%-- if (PRadioLSSVM.equals("PRadio1LSSVM")) { --%>  
                <%-- } --%>
                
                <table>
                    <tr>
                        <td>
                            <div class="container boundary">
                                <h2><font face="Palatino Linotype, Book Antiqua, Palatino, serif" size="6">Dataset</font></h2>
                            </div>
                        </td>
                    </tr>
                </table>
                
                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <input type="hidden" name="PRadioLSSVM" id="PRadioLSSVM" value="<%=PRadioLSSVM%>"/>
                            <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { 

                                if (TORadioLSSVM.equals("TORadio1LSSVM")) {%>
                                    <script>document.getElementById("TORadio1LSSVM").checked = true; </script>
                                <%}
                                else if (TORadioLSSVM.equals("TORadio2LSSVM")) {%><script>document.getElementById("TORadio2LSSVM").checked = true; </script><%}
                                else if (TORadioLSSVM.equals("TORadio3LSSVM")) {%><script>document.getElementById("TORadio3LSSVM").checked = true; </script><%}
                                else if (TORadioLSSVM.equals("TORadio4LSSVM")) {%><script>document.getElementById("TORadio4LSSVM").checked = true; </script><%}
                                %>        
                                <div class="container boundary">
                                    <h3>Data File</h3>
                                    <div class="row">
                                        <div class="col-md-2">
                                            <input type="hidden" name="fullPathLSSVM" id="fullPathLSSVM" value=""/>
                                            <input type="file" class="filestyle" name="sDataFileLSSVM" id="sDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 4px">
                                            <a onclick="return sendfileSVM();">
                                                <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                            </a>
                                        </div>
                                        <div class="col-md-2  col-sm-1" style="margin-top : 7px">File name</div>
                                        <div class="col-md-4 col-sm-1">
                                            <input type="text" name="sFileNameLSSVM" id="sFileNameLSSVM" size="45" value="<%=sFileNameLSSVM%>" readonly/>
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
                                <div class="bs-example">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="container boundary">
                                                <h3>Test Option</h3>
                                                <%--><p>The test data file used to evaluate the optimized model again. Output phase: calculate performance measures (i.e., RMSE, MAE, MAPE, R)</p><--%>
                                                <%--><p>to find the prediction accuracy.</p><--%>
                                                <div class="boundary">
                                                    <div class=" row form-inline">
                                                        <div class="radio col-md-3">
                                                            <label><input type="radio" name="TORadioLSSVM" id="TORadio1LSSVM" value="TORadio1LSSVM" onclick="ftestdatasection(0);">&nbsp;Use opened dataset</label>
                                                        </div>
                                                        <div class="radio col-md-3">
                                                            <label>
                                                                <input type="radio" name="TORadioLSSVM" id="TORadio2LSSVM" value="TORadio2LSSVM" onclick="ftestdatasection(0);">&nbsp;Hold-out
                                                                <input type="text" class="form-control" name="dHoldOutLSSVM" id = "dHoldOutLSSVM" size="3" value="<%=dHoldOutLSSVM%>">
                                                            </label>
                                                        </div>
                                                        <div class="radio col-md-3">
                                                            <label>
                                                                <input type="radio" name="TORadioLSSVM" id="TORadio3LSSVM" value="TORadio3LSSVM" onclick="ftestdatasection(0);">&nbsp;Cross-validation
                                                                <input type="text" class="form-control" name="dCrossValidationLSSVM" id = "dCrossValidationLSSVM" size="3" value="<%=dCrossValidationLSSVM%>"> 
                                                            </label>
                                                        </div>
                                                    </div><br>
                                                    <div class="row container">
                                                        <i><p>If you want to use test dataset, select the option below!</p></i>
                                                    </div>
                                                    <div class="row">
                                                        <div class="radio col-md-3">
                                                            <label><input type="radio" name="TORadioLSSVM" id="TORadio4LSSVM" value="TORadio4LSSVM" onclick="ftestdatasection(1);">&nbsp;Use test dataset</label>
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
                                                                    <input type="hidden" name="fullPathTLSSVM" id="fullPathTLSSVM" value=""/>
                                                                    <input type="file" class="filestyle" name="sTestDataFileLSSVM" id="sTestDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                                            </div>

                                                            <div class="col-md-2" style="margin-top : 4px">
                                                                <a onclick="return sendfileSVM();">
                                                                    <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                                                </a>
                                                            </div>

                                                            <div class="col-md-2" style="margin-top : 7px">File name</div>
                                                            <div class="col-md-4">
                                                                <input type="text" name="sTestFileNameLSSVM" id="sTestFileNameLSSVM" size="38" value="<%=sTestFileNameLSSVM%>" readonly/>
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
                                                <% } else { %>
                                                    <div id="testdatasection" style="display: none !important;">
                                                        <h3>Test Data File</h3>
                                                        <div class="row">
                                                            <div class="col-md-2">
                                                                    <input type="hidden" name="fullPathTLSSVM" id="fullPathTLSSVM" value=""/>
                                                                    <input type="file" class="filestyle" name="sTestDataFileLSSVM" id="sTestDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                                            </div>
                                                            <div class="col-md-2" style="margin-top : 4px"> 
                                                                <a onclick="return sendfileSVM();"> 
                                                                    <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                                                </a>
                                                            </div>
                                                            <div class="col-md-2" style="margin-top : 7px">File name</div>
                                                            <div class="col-md-4">
                                                                <input type="text" name="sTestFileNameLSSVM" id="sTestFileNameLSSVM" size="38" value="<%=sTestFileNameLSSVM%>" readonly/>
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
                                                <% } %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <% 
                                sFileDataLSSVM=sFileNameLSSVM;
                                sdInstancesLSSVM=nDFInstancesLSSVM;
                                sdAttributesLSSVM=nDFAttributesLSSVM;
                                sPFileDataLSSVM=sTestFileNameLSSVM;
                                sdPInstancesLSSVM=nTDFInstancesLSSVM;
                                sdPAttributesLSSVM=nTDFAttributesLSSVM;
                                %>
                            
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
                            
                            <% } if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>        
                                <div class="container boundary">
                                    <h3>Learning Data File</h3>
                                    <div class="row">
                                        <div class="col-md-2">
                                            <input type="hidden" name="fullPathLLSSVM" id="fullPathLLSSVM" value=""/>
                                            <input type="file" class="filestyle" name="sLearningDataFileLSSVM" id="sLearningDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 4px">
                                            <a onclick="return sendfileSVM();">
                                                <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                            </a>
                                        </div>
                                        <div class="col-md-2  col-sm-1" style="margin-top : 7px">File name</div>
                                        <div class="col-md-4 col-sm-1">
                                            <input type="text" name="sLearningFileNameLSSVM" id="sLearningFileNameLSSVM" size="45" value="<%=sLearningFileNameLSSVM%>" readonly/>
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
                                    <h3>Prediction Data File: Make Predictions for New Data</h3>
                                    <div class="row">
                                        <div class="col-md-2">
                                                <input type="hidden" name="fullPathPLSSVM" id="fullPathPLSSVM" value=""/>
                                                <input type="file" class="filestyle"  name="sPredictionDataFileLSSVM" id="sPredictionDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                            </label>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 4px">
                                            <a onclick="return sendfileSVM();">
                                                <span class="glyphicon glyphicon-hand-right" style="font-size: 20px">&nbsp;Send</span>
                                            </a>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 7px">File name</div>
                                        <div class="col-md-4">
                                            <input type="text" name="sPredictionFileNameLSSVM" id="sPredictionFileNameLSSVM" size="45" value="<%=sPredictionFileNameLSSVM%>" readonly/>
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

                                <script>
                                    document.getElementById("sFileDataLSSVM").value = "<%=sLearningFileNameLSSVM%>";
                                    document.getElementById("sdInstancesLSSVM").value = "<%=nLDFInstancesLSSVM%>";
                                    document.getElementById("sdAttributesLSSVM").value = "<%=nLDFAttributesLSSVM%>";
                                    document.getElementById("sPFileDataLSSVM").value = "<%=sPredictionFileNameLSSVM%>";
                                    document.getElementById("sdPInstancesLSSVM").value = "<%=nPDFInstancesLSSVM%>";
                                    document.getElementById("sdPAttributesLSSVM").value = "<%=nPDFAttributesLSSVM%>";
                                </script>

                                <% 
                                sFileDataLSSVM=sLearningFileNameLSSVM;
                                sdInstancesLSSVM=nDFInstancesLSSVM;
                                sdAttributesLSSVM=nDFAttributesLSSVM;
                                sPFileDataLSSVM=sTestFileNameLSSVM;
                                sdPInstancesLSSVM=nTDFInstancesLSSVM;
                                sdPAttributesLSSVM=nTDFAttributesLSSVM;
                                %>

                                <input type="hidden" name="TORadioLSSVM" id="TORadioLSSVM" value="<%=TORadioLSSVM%>"/> 
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
                        </div>
                    </div>
                </div>
                        
                <!--<h6 id="bottomformLSSVM" class="sfawrap">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    &nbsp;. . . [END OF DATA FORM] &nbsp;&nbsp;&nbsp;
                </h6>-->
                        

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
                                
                <br>                
                <center>
                    <a onclick="return checkdataLSSVM(1);">
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
            if (sLoadingDataExcelLSSVM != "") {
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
                        sTORadioLSSVM = "Use opened dataset";
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
                        sTORadioLSSVM = "Use test dataset";
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
                    
                <%--<% if (sLoadingDataExcelClickLSSVM != "") { %>
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
                            5. Hyper-parameters:
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
                                        sTORadioLSSVM = "Use opened dataset";
                                    }
                                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                        sTORadioLSSVM = "-";
                                    }
                                }
                                else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                        sTORadioLSSVM = "Use test dataset";
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
            
                <h6 id="bottompageLSSVM" class="sfawrap">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    <b> [&nbsp;RUNNING] . . . &nbsp;&nbsp;&nbsp;</b>
                </h6>
                
                <div class="scrollToTop">
                  <img src="arrowup.JPG" alt="..." width="18">  
                </div>--%>
            <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <jsp:include page="SFALSSVMServlet">
                                <jsp:param name="nFireFliesLSSVM" value="<%=nFireFliesLSSVM%>" />
                                <jsp:param name="nMaxGenerationLSSVM" value="<%=nMaxGenerationLSSVM%>" />
                                <jsp:param name="dMinBetaLSSVM" value="<%=dMinBetaLSSVM%>" />
                                <jsp:param name="dGammaLSSVM" value="<%=dGammaLSSVM%>" />
                                <jsp:param name="dAlphaLSSVM" value="<%=dAlphaLSSVM%>" />
                                <jsp:param name="dAIWeightLSSVM" value="<%=dAIWeightLSSVM%>" />
                                <jsp:param name="dTauLSSVM" value="<%=dTauLSSVM%>" />
                                <jsp:param name="dBPotentialLSSVM" value="<%=dBPotentialLSSVM%>" />
                                <jsp:param name="dC1LSSVM" value="<%=dC1LSSVM%>" />
                                <jsp:param name="dC2LSSVM" value="<%=dC2LSSVM%>" />
                                <jsp:param name="dS1LSSVM" value="<%=dS1LSSVM%>" />
                                <jsp:param name="dS2LSSVM" value="<%=dS2LSSVM%>" />
                                <jsp:param name="dTrainingPSLSSVM" value="<%=dTrainingPSLSSVM%>" />
                                <jsp:param name="dValidationPSLSSVM" value="<%=dValidationPSLSSVM%>" />
                                <jsp:param name="dTotalSizeLSSVM" value="<%=dTotalSizeLSSVM%>" />
                                <jsp:param name="nLastChange1LSSVM" value="<%=nLastChange1LSSVM%>" />
                                <jsp:param name="nLastChange2LSSVM" value="<%=nLastChange2LSSVM%>" />
                                <jsp:param name="dHoldOutLSSVM" value="<%=dHoldOutLSSVM%>" />
                                <jsp:param name="dCrossValidationLSSVM" value="<%=dCrossValidationLSSVM%>" />
                            </jsp:include> 	
                        </td>
                    </tr>
                </table>                
            <% }
            else if (sImportDataLSSVM.equals("1"))
            {
                if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) { %>
                    <script>document.getElementById("NormalRadio2LSSVM").checked = true;</script>
                <% } else { %>
                    <script>document.getElementById("NormalRadio1LSSVM").checked = true;</script>
                <% }
                
                if (SCRadioLSSVM.equals("SCRadio3LSSVM")) { %>
                    <script>document.getElementById("SCRadio3LSSVM").checked = true;</script>
                <% } else if (SCRadioLSSVM.equals("SCRadio2LSSVM")){ %>
                    <script>document.getElementById("SCRadio2LSSVM").checked = true;</script>
                <% } else { %>
                    <script>document.getElementById("SCRadio1LSSVM").checked = true;</script>
                <% }
                
                if (TORadioLSSVM.equals("TORadio4LSSVM")) { %>
                    <script>document.getElementById("TORadio4LSSVM").checked = true;</script>
                <% } else if (TORadioLSSVM.equals("TORadio3LSSVM")){ %>
                    <script>document.getElementById("TORadio3LSSVM").checked = true;</script>
                <% } else if (TORadioLSSVM.equals("TORadio2LSSVM")){ %>
                    <script>document.getElementById("TORadio2LSSVM").checked = true;</script>
                <% } else { %>
                    <script>document.getElementById("TORadio1LSSVM").checked = true;</script>
                <% }
                        
            } else if (!sLoadingDataFileLSSVM.equals("")) {
                
                String datafile = request.getParameter("importfileLSSVM");
                
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
                    <!--<script>
                        document.getElementById("nDFInstancesLSSVM").value = "0";
                        document.getElementById("nDFAttributesLSSVM").value = "0";
                        document.getElementById("nDTFInstancesLSSVM").value = "0";
                        document.getElementById("nDTFAttributesLSSVM").value = "0";
                        document.getElementById("nDLFInstancesLSSVM").value = "0";
                        document.getElementById("nDLFAttributesLSSVM").value = "0";
                        document.getElementById("nDPFInstancesLSSVM").value = "0";
                        document.getElementById("nDPFAttributesLSSVM").value = "0";
                    </script>-->
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
                                    document.getElementById("testdatasection").style.display = "none";
                                    var hiddendatafile = document.getElementById("hiddendatafile");
                                    hiddendatafile = "0";
                                    document.getElementById("hiddendatafile").value = "0";
                                    </script><%
                                }
                                else if (iDummy == 2) {
                                    %><script>document.getElementById("TORadio2LSSVM").checked = true; 
                                    document.getElementById("testdatasection").style.display = "none";
                                    var hiddendatafile = document.getElementById("hiddendatafile");
                                    hiddendatafile = "0";
                                    document.getElementById("hiddendatafile").value = "0";
                                    </script><%
                                }
                                else if (iDummy == 3) {
                                    %><script>document.getElementById("TORadio3LSSVM").checked = true; 
                                    document.getElementById("testdatasection").style.display = "none";
                                    var hiddendatafile = document.getElementById("hiddendatafile");
                                    hiddendatafile = "0";
                                    document.getElementById("hiddendatafile").value = "0";
                                    </script><%
                                }
                                else {
                                    %><script>document.getElementById("TORadio4LSSVM").checked = true; 
                                    document.getElementById("testdatasection").style.display = "block";
                                    var hiddendatafile = document.getElementById("hiddendatafile");
                                    hiddendatafile = "1";
                                    document.getElementById("hiddendatafile").value = "1";
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
            else if (!sSaveDataFileLSSVM.equals("")) {                
                String filename;
                if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    filename = "Data_SFA_LSSVM_Prediction.txt";
                }
                else {
                    filename = "Data_SFA_LSSVM_Evaluation.txt";
                }
                String file = application.getRealPath("/") + filename;
                FileWriter filewriter = new FileWriter(file, false);
                int iRadio = 0;
                
                /*
                nFireFliesLSSVM = Float.parseFloat(nFireFliesLSSVM);
                nMaxGenerationLSSVM = Float.parseFloat(nMaxGenerationLSSVM);
                dMinBetaLSSVM = Float.parseFloat(dMinBetaLSSVM);
                dGammaLSSVM = Float.parseFloat(dGammaLSSVM);
                dAlphaLSSVM = Float.parseFloat(dAlphaLSSVM);
                dAIWeightLSSVM = Float.parseFloat(dAIWeightLSSVM);
                dTauLSSVM = Float.parseFloat(dTauLSSVM);
                dBPotentialLSSVM = Float.parseFloat(dBPotentialLSSVM);
                dC1LSSVM = Float.parseFloat(dC1LSSVM);
                dC2LSSVM = Float.parseFloat(dC2LSSVM);
                dS1LSSVM = Float.parseFloat(dS1LSSVM);
                dS2LSSVM = Float.parseFloat(dS2LSSVM);
                dTrainingPSLSSVM = Float.parseFloat(dTrainingPSLSSVM);
                dValidationPSLSSVM = Float.parseFloat(dValidationPSLSSVM);
                dTotalSizeLSSVM = Float.parseFloat(dTotalSizeLSSVM);
                nLastChange1LSSVM = Float.parseFloat(nLastChange1LSSVM);
                nLastChange2LSSVM = Float.parseFloat(nLastChange2LSSVM);
                dHoldOutLSSVM = Float.parseFloat(dHoldOutLSSVM);
                dCrossValidationLSSVM = Float.parseFloat(dCrossValidationLSSVM);
                
                nDFAttributesLSSVM = Float.parseFloat(nDFAttributesLSSVM);
                nDFInstancesLSSVM = Float.parseFloat(nDFInstancesLSSVM);
                nTDFAttributesLSSVM = Float.parseFloat(nTDFAttributesLSSVM);
                nTDFInstancesLSSVM = Float.parseFloat(nTDFInstancesLSSVM);
                nLDFAttributesLSSVM = Float.parseFloat(nLDFAttributesLSSVM);
                nLDFInstancesLSSVM = Float.parseFloat(nLDFInstancesLSSVM);
                nPDFAttributesLSSVM = Float.parseFloat(nPDFAttributesLSSVM);
                nPDFInstancesLSSVM = Float.parseFloat(nPDFInstancesLSSVM);
                */
                
                // title
                filewriter.write("SFA-LSSVM Data:\n");
            
                // column header
                filewriter.write("No.\t");
                filewriter.write("Description\t");
                filewriter.write("Variable\t");
                filewriter.write("Value\t");
                filewriter.write("Remark\n");

                // data rows
                filewriter.write("1\t");
                filewriter.write("No. of fireflies\t");
                filewriter.write("nFireFliesLSSVM\t");
                filewriter.write(nFireFliesLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("2\t");
                filewriter.write("Max. generation\t");
                filewriter.write("nMaxGenerationLSSVM\t");
                filewriter.write(nMaxGenerationLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("3\t");
                filewriter.write("Beta min.\t");
                filewriter.write("dMinBetaLSSVM\t");
                filewriter.write(dMinBetaLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("4\t");
                filewriter.write("Gamma\t");
                filewriter.write("dGammaLSSVM\t");
                filewriter.write(dGammaLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("5\t");
                filewriter.write("Alpha\t");
                filewriter.write("dAlphaLSSVM\t");
                filewriter.write(dAlphaLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("6\t");
                filewriter.write("Adaptive inertia weight\t");
                filewriter.write("dAIWeightLSSVM\t");
                filewriter.write(dAIWeightLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("7\t");
                filewriter.write("Tau\t");
                filewriter.write("dTauLSSVM\t");
                filewriter.write(dTauLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("8\t");
                filewriter.write("Biotic potential, a\t");
                filewriter.write("dBPotentialLSSVM\t");
                filewriter.write(dBPotentialLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("9\t");
                filewriter.write("Range of C1\t");
                filewriter.write("dC1LSSVM\t");
                filewriter.write(dC1LSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("10\t");
                filewriter.write("C2\t");
                filewriter.write("dC2LSSVM\t");
                filewriter.write(dC2LSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("11\t");
                filewriter.write("Range of Sigma, S1\t");
                filewriter.write("dS1LSSVM\t");
                filewriter.write(dS1LSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("12\t");
                filewriter.write("S2\t");
                filewriter.write("dS2LSSVM\t");
                filewriter.write(dS2LSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("13\t");
                filewriter.write("Training partition size (%)\t");
                filewriter.write("dTrainingPSLSSVM\t");
                filewriter.write(dTrainingPSLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("14\t");
                filewriter.write("Validation partition size (%)\t");
                filewriter.write("dValidationPSLSSVM\t");
                filewriter.write(dValidationPSLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("15\t");
                filewriter.write("Total Size (%)\t");
                filewriter.write("dTotalSizeLSSVM\t");
                filewriter.write(dTotalSizeLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("16\t");
                filewriter.write("No. of Last Changes\t");
                filewriter.write("nLastChange1LSSVM\t");
                filewriter.write(nLastChange1LSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("17\t");
                filewriter.write("Constant OF Value\t");
                filewriter.write("nLastChange2LSSVM\t");
                filewriter.write(nLastChange2LSSVM+"\t");
                filewriter.write("-\n");
                
                String temp = "";
                //NormalRadioLSSVM = "...";
                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                    temp = "Original value";
                    iRadio=1;
                }
                else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                    temp = "Feature scaling";
                    iRadio=2;
                }

                filewriter.write("18\t");
                filewriter.write("Normalization Method\t");
                filewriter.write("sNormalRadioLSSVM\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(temp+"\n");

                filewriter.write("19\t");
                filewriter.write("Objective Function\t");
                filewriter.write("sOptimRadioLSSVM\t");
                filewriter.write("-\t");
                filewriter.write("Classification accuracy (validation)\n");
                
                //SCRadioLSSVM = "...";
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

                filewriter.write("20\t");
                filewriter.write("Stop Criterion\t");
                filewriter.write("sSCRadioLSSVM\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(temp+"\n");
                
                //PRadioLSSVM = "...";
                temp = "";
                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                    temp = "Evaluation";
                    iRadio=1;
                }
                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    temp = "Prediction";
                    iRadio=2;
                }
                    
                filewriter.write("21\t");
                filewriter.write("Purpose\t");
                filewriter.write("sPRadioLSSVM\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(temp+"\n");
                
                if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    filewriter.write("22\t");
                    filewriter.write("Learning Data File\t");
                    filewriter.write("sLearningDataFileLSSVM\t");
                    filewriter.write(sLearningFileNameLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("23\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nLDFAttributesLSSVM\t");
                    filewriter.write(nLDFAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("24\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nLDFInstancesLSSVM\t");
                    filewriter.write(nLDFInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("25\t");
                    filewriter.write("Prediction Data File\t");
                    filewriter.write("sPredictionDataFileLSSVM\t");
                    filewriter.write(sPredictionFileNameLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("26\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nPDFAttributesLSSVM\t");
                    filewriter.write(nPDFAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("27\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nPDFInstancesLSSVM\t");
                    filewriter.write(nPDFInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("28\t");
                    filewriter.write("First Data File\t");
                    filewriter.write("sFileDataLSSVM\t");
                    filewriter.write(sFileDataLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("29\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdAttributesLSSVM\t");
                    filewriter.write(sdAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("30\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdInstancesLSSVM\t");
                    filewriter.write(sdInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("31\t");
                    filewriter.write("Second Data File\t");
                    filewriter.write("sPFileDataLSSVM\t");
                    filewriter.write(sPFileDataLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("32\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdPAttributesLSSVM\t");
                    filewriter.write(sdPAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("33\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdPInstancesLSSVM\t");
                    filewriter.write(sdPInstancesLSSVM+"\t");
                    filewriter.write("-\n");
                } else {
                    filewriter.write("22\t");
                    filewriter.write("Hold-Out (%)\t");
                    filewriter.write("dHoldOutLSSVM\t");
                    filewriter.write(dHoldOutLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("23\t");
                    filewriter.write("Cross-Validation (%)\t");
                    filewriter.write("dCrossValidationLSSVM\t");
                    filewriter.write(dCrossValidationLSSVM+"\t");
                    filewriter.write("-\n");

                    //TORadioLSSVM = "...";
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

                    filewriter.write("24\t");
                    filewriter.write("Test Option\t");
                    filewriter.write("sTORadioLSSVM\t");
                    filewriter.write(iRadio+"\t");
                    filewriter.write(temp+"\n");

                    filewriter.write("25\t");
                    filewriter.write("Data File\t");
                    filewriter.write("sDataFileLSSVM\t");
                    filewriter.write(sFileNameLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("26\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nDFAttributesLSSVM\t");
                    filewriter.write(nDFAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("27\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nDFInstancesLSSVM\t");
                    filewriter.write(nDFInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("28\t");
                    filewriter.write("Test Data File\t");
                    filewriter.write("sTestDataFileLSSVM\t");
                    filewriter.write(sTestFileNameLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("29\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nTDFAttributesLSSVM\t");
                    filewriter.write(nTDFAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("30\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nTDFInstancesLSSVM\t");
                    filewriter.write(nTDFInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("31\t");
                    filewriter.write("First Data File\t");
                    filewriter.write("sFileDataLSSVM\t");
                    filewriter.write(sFileDataLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("32\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdAttributesLSSVM\t");
                    filewriter.write(sdAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("33\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdInstancesLSSVM\t");
                    filewriter.write(sdInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("34\t");
                    filewriter.write("Second Data File\t");
                    filewriter.write("sPFileDataLSSVM\t");
                    filewriter.write(sPFileDataLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("35\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdPAttributesLSSVM\t");
                    filewriter.write(sdPAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("36\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdPInstancesLSSVM\t");
                    filewriter.write(sdPInstancesLSSVM+"\t");
                    filewriter.write("-\n");
                }
                filewriter.close();
                
                %><script>alert('Your input form has been saved on the server');</script><%
                
                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {%><script>document.getElementById("NormalRadio1LSSVM").checked = true; </script><%}
                else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {%><script>document.getElementById("NormalRadio2LSSVM").checked = true; </script><%}
            
                if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {%><script>document.getElementById("SCRadio1LSSVM").checked = true; </script><%}
                else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {%><script>document.getElementById("SCRadio2LSSVM").checked = true; </script><%}
                else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {%><script>document.getElementById("SCRadio3LSSVM").checked = true; </script><%}

                if (PRadioLSSVM.equals("PRadio1LSSVM")) { 
                    if (TORadioLSSVM.equals("TORadio1LSSVM")) {%><script>document.getElementById("TORadio1LSSVM").checked = true; </script><%}
                    else if (TORadioLSSVM.equals("TORadio2LSSVM")) {%><script>document.getElementById("TORadio2LSSVM").checked = true; </script><%}
                    else if (TORadioLSSVM.equals("TORadio3LSSVM")) {%><script>document.getElementById("TORadio3LSSVM").checked = true; </script><%}
                    else if (TORadioLSSVM.equals("TORadio4LSSVM")) {%><script>document.getElementById("TORadio4LSSVM").checked = true; </script><%}
                }
            } else { 
                if (sLoadingDefaultLSSVM != "") {} 
                
                if (sLoadingEvaluationLSSVM != "") { 
                    if (sTestFileNameLSSVM != "") {
                        %><script>document.getElementById("TORadio4LSSVM").checked = true; 
                                  document.getElementById("TORadioLSSVM").value = "<%=TORadioLSSVM%>";
                        </script>
                        <% 
                    }
                } 

                if (sLoadingPredictionLSSVM != "") {} 
                
                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {%><script>document.getElementById("NormalRadio1LSSVM").checked = true; </script><%}
                else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {%><script>document.getElementById("NormalRadio2LSSVM").checked = true; </script><%}
            
                if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {%><script>document.getElementById("SCRadio1LSSVM").checked = true; </script><%}
                else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {%><script>document.getElementById("SCRadio2LSSVM").checked = true; </script><%}
                else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {%><script>document.getElementById("SCRadio3LSSVM").checked = true; </script><%}
                
                if (PRadioLSSVM.equals("PRadio1LSSVM")) { 
                    if (TORadioLSSVM.equals("TORadio1LSSVM")) {%><script>document.getElementById("TORadio1LSSVM").checked = true; </script><%}
                    else if (TORadioLSSVM.equals("TORadio2LSSVM")) {%><script>document.getElementById("TORadio2LSSVM").checked = true; </script><%}
                    else if (TORadioLSSVM.equals("TORadio3LSSVM")) {%><script>document.getElementById("TORadio3LSSVM").checked = true; </script><%}
                    else if (TORadioLSSVM.equals("TORadio4LSSVM")) {%><script>document.getElementById("TORadio4LSSVM").checked = true; </script><%}
                }
                // compute nLDFAttributes and nLDFInstances 
                int iDFInstancesLSSVM = 0;
                int iDFAttributesLSSVM = 0;
                %>
                    <%--<script>
                        document.getElementById("nDFInstancesLSSVM").value = "<%=iDFInstancesLSSVM%>";
                        document.getElementById("nDFAttributesLSSVM").value = "<%=iDFAttributesLSSVM%>";
                    </script>--%>
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
                    //String file = application.getRealPath("/") + sFileNameLSSVM;
                    String file = sFileNameLSSVM;
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
                    //String file = application.getRealPath("/") + sTestFileNameLSSVM;
                    String file = sTestFileNameLSSVM;
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
                    //String file = application.getRealPath("/") + sLearningFileNameLSSVM;
                    String file = sLearningFileNameLSSVM;
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
                    //String file = application.getRealPath("/") + sPredictionFileNameLSSVM; 
                    String file = sPredictionFileNameLSSVM;
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
                
            var importedfile = document.getElementById("importfileLSSVM");
            $(importedfile).change(function(event) {
                
                document.getElementById("sSaveDataFileLSSVM").value = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                document.getElementById("sLoadingDataFileLSSVM").value = "1";
                
                //document.getElementById("myformLSSVM").enctype = "text/html";
                document.getElementById("myformLSSVM").enctype = "multipart/form-data";
                document.getElementById("myformLSSVM").method = "POST";
                document.getElementById("myformLSSVM").action = "ImportSFAMParamServlet";
                document.getElementById("myformLSSVM").submit();
            });
        </script>
    </body>    
</html>
