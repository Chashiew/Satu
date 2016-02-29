<%--
    Document   : AllModulesBaseline
    Created on : Sep 22, 2015, 1:02:19 AM
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

<%
    String params = request.getQueryString();
%>

<%
String VarA = request.getParameter("VarA");
String VarB = request.getParameter("VarB");

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

String nValueC = request.getParameter("nValueC");
String nValueS = request.getParameter("nValueS");
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

if (nValueC == null) {
    nValueC = "";        //"50";
};
if (nValueS == null) {
    nValueS = "";    //"25";
};
if (dHoldOut == null) {
    dHoldOut = "";          //"20";
};
if (dCrossValidation == null) {
    dCrossValidation = "";  //"10";
};

    String nValueCLSSVM = request.getParameter("nValueCLSSVM");
    String nValueSLSSVM = request.getParameter("nValueSLSSVM");
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

    if (nValueCLSSVM == null) {
        nValueCLSSVM = "";        //"50";
    };
    if (nValueSLSSVM == null) {
        nValueSLSSVM = "";    //"25";
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

String PRadio = request.getParameter("PRadio");
if (PRadio == null) {
    PRadio = "PRadio1";
}
String TORadio = request.getParameter("TORadio");
if (TORadio == null) {
    TORadio = "";
}
    String PRadioLSSVM = request.getParameter("PRadioLSSVM");
    if (PRadioLSSVM == null) {
        PRadioLSSVM = "PRadio1LSSVM";
    }
    String TORadioLSSVM = request.getParameter("TORadioLSSVM"); 
    if (TORadioLSSVM == null) {
        TORadioLSSVM = "";
    }

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
            <% if (VarA != null) { %>
                NiMOPS: LSSVR
            <% } else if (VarB != null) { %>
                NiMOPS: LSSVM
            <% } %>
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
                var nValueC = document.getElementById("nValueC");
                var nValueS = document.getElementById("nValueS");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var NormalRadio = document.getElementById("NormalRadio");
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

                var VarA = document.getElementById("VarA");
                    
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
                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                document.getElementById("myform").submit();
                valid = false;
                
                return valid;
            }
            
            function refreshformLSSVM(val) {
                var valid = false;
                
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var nValueSLSSVM = document.getElementById("nValueSLSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
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

                var VarB = document.getElementById("VarB");

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
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
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

            function writedefaultlssvr(val) {
                var valid = false;
                document.getElementById("nValueC").value = "10";
                document.getElementById("nValueS").value = "0.1";
                document.getElementById("dHoldOut").value = "20" ;
                document.getElementById("dCrossValidation").value = "10";

                document.getElementById("NormalRadio1").checked = true; //"null" ;
                document.getElementById("PRadio1").checked = true; 
                document.getElementById("TORadio1").checked = true; 
                
                document.getElementById("sDataFile").value = "";    //"null"; 
                document.getElementById("sTestDataFile").value = ""; 
                document.getElementById("sLearningDataFile").value = ""; 
                document.getElementById("sPredictionDataFile").value = ""; 
                
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
                
                var VarA = document.getElementById("VarA");
                    
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
                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                document.getElementById("myform").submit();
                valid = false;
                
                return valid;
            }
            
            function writedefaultlssvm(val) {
                var valid = false;
                document.getElementById("nValueCLSSVM").value = "10";
                document.getElementById("nValueSLSSVM").value = "0.1";
                document.getElementById("dHoldOutLSSVM").value = "20" ;
                document.getElementById("dCrossValidationLSSVM").value = "10";

                document.getElementById("NormalRadio1LSSVM").checked = true; //"null" ;
                document.getElementById("PRadio1LSSVM").checked = true; 
                document.getElementById("TORadio1LSSVM").checked = true; 
                
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
                
                var VarB = document.getElementById("VarB");
                    
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
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;

                return valid;
            }

            function cleardefaultlssvr(val) {
                var valid = false;
                document.getElementById("nValueC").value = "";
                document.getElementById("nValueS").value = "";
                document.getElementById("dHoldOut").value = "" ;
                document.getElementById("dCrossValidation").value = "";

                document.getElementById("NormalRadio1").checked = false; //"null" ;
                document.getElementById("PRadio1").checked = false; 
                document.getElementById("TORadio1").checked = false; 
                
                document.getElementById("sDataFile").value = "";    //"null"; 
                document.getElementById("sTestDataFile").value = ""; 
                document.getElementById("sLearningDataFile").value = ""; 
                document.getElementById("sPredictionDataFile").value = ""; 
                
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
                
                var VarA = document.getElementById("VarA");
                    
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
                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                document.getElementById("myform").submit();
                valid = false;
                
                return valid;
            }
            
            function cleardefaultlssvm(val) {
                var valid = false;
                document.getElementById("nValueCLSSVM").value = "";
                document.getElementById("nValueSLSSVM").value = "";
                document.getElementById("dHoldOutLSSVM").value = "" ;
                document.getElementById("dCrossValidationLSSVM").value = "";

                document.getElementById("NormalRadio1LSSVM").checked = false; //"null" ;
                document.getElementById("PRadio1LSSVM").checked = false; 
                document.getElementById("TORadio1LSSVM").checked = false; 
                
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
                
                var VarB = document.getElementById("VarB");
                    
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
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata() {
                var nValueC = document.getElementById("nValueC");
                var nValueS = document.getElementById("nValueS");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var NormalRadio = document.getElementById("NormalRadio");
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

                var VarA = document.getElementById("VarA");
                    
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "1";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "1";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                document.getElementById("myform").submit();
                valid = false;

                return valid;
            }

            function closesummarydata() {
                var nValueC = document.getElementById("nValueC");
                var nValueS = document.getElementById("nValueS");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var NormalRadio = document.getElementById("NormalRadio");
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

                var VarA = document.getElementById("VarA");
                    
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "1";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                fullPath.value = sFileName.value;
                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                document.getElementById("myform").submit();
                valid = false;
                
                return valid;
            }

            function viewsummarydataLSSVM() {
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var nValueSLSSVM = document.getElementById("nValueSLSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
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

                var VarB = document.getElementById("VarB");

                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "2";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "2";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                fullPathLSSVM.value = sFileNameLSSVM.value; 
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;
                
                return valid;
            }

            function closesummarydataLSSVM() {
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var nValueSLSSVM = document.getElementById("nValueSLSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
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

                var VarB = document.getElementById("VarB");

                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "2";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                fullPathLSSVM.value = sFileNameLSSVM.value; 
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;
                
                return valid;
            }

            function checkdata(val) {
                var nValueC = document.getElementById("nValueC");
                var sDataFile = document.getElementById("sDataFile");
                var sTestDataFile = document.getElementById("sTestDataFile");
                var sLearningDataFile = document.getElementById("sLearningDataFile");
                var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                var valid = true;
                
                var sFileName = document.getElementById("sFileName");
                var sTestFileName = document.getElementById("sTestFileName");
                var sLearningFileName = document.getElementById("sLearningFileName");
                var sPredictionFileName = document.getElementById("sPredictionFileName");
                
                if (nValueC.value === "") {
                    alert("Load default values and calculate first ...!");
                    nValueC.focus();
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

                    //var VarA = document.getElementById("VarA");
                    
                    var VarNext = document.getElementById("VarNext");
                    document.getElementById("VarNext").value = val;
                    
                    var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                    sLoadingDataExcel = "";
                    document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                    var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                    sLoadingDataExcelClick = "";
                    document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                    //var r = confirm("Continue running LSSVR ...?");
                    //if (r === true) {
                    //}
                    
                    fullPath.value = sFileName.value;
                    document.getElementById("myform").action = "ModuleLSSVR.jsp";
                    document.getElementById("myform").submit();
                    nValueC.focus();
                    
                    valid = false;
                }
                return valid;
            }

            function checkdataLSSVM(val) {
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                var valid = true;
                
                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");
                
                if (nValueCLSSVM.value === "") {
                    alert("Load default values and calculate first ...!");
                    nValueCLSSVM.focus();
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

                    //var r = confirm("Continue running LSSVM ...?");
                    //if (r === true) {
                    //}
                        
                    valid = false;
                    fullPathLSSVM.value = sFileNameLSSVM.value;
                    document.getElementById("myformLSSVM").action = "ModuleLSSVM.jsp";
                    document.getElementById("myformLSSVM").submit();
                    nValueCLSSVM.focus();
                }
                return valid;
            }

            function checkoutput(val) {
                var nValueC = document.getElementById("nValueC");
                var sDataFile = document.getElementById("sDataFile");
                var sTestDataFile = document.getElementById("sTestDataFile");
                var sLearningDataFile = document.getElementById("sLearningDataFile");
                var sPredictionDataFile = document.getElementById("sPredictionDataFile");
                var valid = true;
                
                var sFileName = document.getElementById("sFileName");
                var sTestFileName = document.getElementById("sTestFileName");
                var sLearningFileName = document.getElementById("sLearningFileName");
                var sPredictionFileName = document.getElementById("sPredictionFileName");
                
                if (nValueC.value === "") {
                    alert("Load default values and calculate first ...!");
                    nValueC.focus();
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

                    var VarA = document.getElementById("VarA");
                    
                    var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                    sLoadingDataExcel = "1";
                    document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                    var sMoveBottom = document.getElementById("sMoveBottom");
                    sMoveBottom.value = val;
                    document.getElementById("sMoveBottom").value = val;

                    //var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                    //sLoadingDataExcelClick = "val";
                    //document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                    //var r = confirm("Continue running LSSVR ...?");
                    //if (r === true) {
                    //}
                    
                    fullPath.value = sFileName.value;
                    document.getElementById("myform").action = "AllModulesBaseline.jsp";
                    document.getElementById("myform").submit();
                    nValueC.focus();
                    
                    valid = false;
                }
                return valid;
            }

            function checkoutputLSSVM(val) {
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var sDataFileLSSVM = document.getElementById("sDataFileLSSVM");
                var sTestDataFileLSSVM = document.getElementById("sTestDataFileLSSVM");
                var sLearningDataFileLSSVM = document.getElementById("sLearningDataFileLSSVM");
                var sPredictionDataFileLSSVM = document.getElementById("sPredictionDataFileLSSVM");
                var valid = true;
                
                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                var sTestFileNameLSSVM = document.getElementById("sTestFileNameLSSVM");
                var sLearningFileNameLSSVM = document.getElementById("sLearningFileNameLSSVM");
                var sPredictionFileNameLSSVM = document.getElementById("sPredictionFileNameLSSVM");
                
                if (nValueCLSSVM.value === "") {
                    alert("Load default values and calculate first ...!");
                    nValueCLSSVM.focus();
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

                    var VarB = document.getElementById("VarB");
                    
                    var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                    sLoadingDataExcelLSSVM = "2";
                    document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                    var sMoveBottom = document.getElementById("sMoveBottom");
                    sMoveBottom.value = val;
                    document.getElementById("sMoveBottom").value = val;

                    //var r = confirm("Continue running LSSVM ...?");
                    //if (r === true) {
                    //}
                    
                    fullPathLSSVM.value = sFileNameLSSVM.value;
                    document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                    document.getElementById("myformLSSVM").submit();
                    nValueCLSSVM.focus();
                    
                    valid = false;
                }
                return valid;
            }
            
            function computeatform(val) {
                //validation
                var nValueC = document.getElementById("nValueC");
                var nValueS = document.getElementById("nValueS");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var valid = true;

                if (nValueC.value === "") {
                    alert("Value of C cannot be empty!");
                    nValueC.focus();
                    valid = false;
                } else if (isNaN(nValueC.value)) {
                    alert("Value of C = ... - ... (10)");
                    nValueC.focus();
                    nValueC.select();
                    valid = false;
                } else if (nValueS.value.length <= 0) {
                    alert("Value of Sigma cannot be empty!");
                    nValueS.focus();
                    valid = false;
                } else if (isNaN(nValueS.value)) {
                    alert("Value of Sigma = ... - ... (0.1)");
                    nValueS.focus();
                    nValueS.select();
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

                    var VarA = document.getElementById("VarA");
                    
                    var sMoveBottom = document.getElementById("sMoveBottom");
                    sMoveBottom.value = val;
                    document.getElementById("sMoveBottom").value = val;

                    if (VarA !== null) {
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
                                                        document.getElementById("myform").action = "AllModulesBaseline.jsp";
                                                        document.getElementById("myform").submit();
                                                    }
                                                } else {
                                                    fullPathL.value = sLearningDataFile.value;
                                                    document.getElementById("myform").action = "AllModulesBaseline.jsp";
                                                    document.getElementById("myform").submit();
                                                }
                                            } else {
                                                fullPathT.value = sTestDataFile.value;
                                                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                                                document.getElementById("myform").submit();
                                            }
                                        } else {
                                            fullPath.value = sDataFile.value;
                                            document.getElementById("myform").action = "AllModulesBaseline.jsp";
                                            document.getElementById("myform").submit();
                                        }
                                    } else {
                                        fullPathP.value = sPredictionFileName.value;
                                        document.getElementById("myform").action = "AllModulesBaseline.jsp";
                                        document.getElementById("myform").submit();
                                    }
                                } else {
                                    fullPathL.value = sLearningFileName.value;
                                    document.getElementById("myform").action = "AllModulesBaseline.jsp";
                                    document.getElementById("myform").submit();
                                }
                            } else {
                                fullPathT.value = sTestFileName.value;
                                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                                document.getElementById("myform").submit();
                            }
                        } else {
                            fullPath.value = sFileName.value;
                            document.getElementById("myform").action = "AllModulesBaseline.jsp";
                            document.getElementById("myform").submit();
                        }
                    }
                }
                /**/
                return valid;
            }

            function computeatformLSSVM(val) {
                //validation
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var nValueSLSSVM = document.getElementById("nValueSLSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var valid = true;

                if (nValueCLSSVM.value === "") {
                    alert("Value of C cannot be empty!");
                    nValueCLSSVM.focus();
                    valid = false;
                } else if (isNaN(nValueCLSSVM.value)) {
                    alert("Value of C = ... - ... (10)");
                    nValueCLSSVM.focus();
                    nValueCLSSVM.select();
                    valid = false;
                } else if (nValueSLSSVM.value.length <= 0) {
                    alert("Value of Sigma cannot be empty!");
                    nValueSLSSVM.focus();
                    valid = false;
                } else if (isNaN(nValueSLSSVM.value)) {
                    alert("Value of Sigma = ... - ... (0.1)");
                    nValueSLSSVM.focus();
                    nValueSLSSVM.select();
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

                    var VarB = document.getElementById("VarB");
                    
                    if (VarB !== null) {
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
                                                        document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                                                        document.getElementById("myformLSSVM").submit();
                                                    }
                                                } else {
                                                    fullPathLLSSVM.value = sLearningDataFileLSSVM.value;
                                                    document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                                                    document.getElementById("myformLSSVM").submit();
                                                }
                                            } else {
                                                fullPathTLSSVM.value = sTestDataFileLSSVM.value;
                                                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                                                document.getElementById("myformLSSVM").submit();
                                            }
                                        } else {
                                            fullPathLSSVM.value = sDataFileLSSVM.value;
                                            document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                                            document.getElementById("myformLSSVM").submit();
                                        }
                                    } else {
                                        fullPathPLSSVM.value = sPredictionFileNameLSSVM.value;
                                        document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                                        document.getElementById("myformLSSVM").submit();
                                    }
                                } else {
                                    fullPathLLSSVM.value = sLearningFileNameLSSVM.value;
                                    document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                                    document.getElementById("myformLSSVM").submit();
                                }
                            } else {
                                fullPathTLSSVM.value = sTestFileNameLSSVM.value;
                                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                                document.getElementById("myformLSSVM").submit();
                            }
                        } else {
                            fullPathLSSVM.value = sFileNameLSSVM.value;
                            document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                            document.getElementById("myformLSSVM").submit();
                        }
                    }
                }
                /**/
                return valid;
            }

            function savingdata(val) {
                //validation
                var nValueC = document.getElementById("nValueC");
                var nValueS = document.getElementById("nValueS");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var valid = true;

                if (nValueC.value === "") {
                    alert("Value of C cannot be empty!");
                    nValueC.focus();
                    valid = false;
                } else if (isNaN(nValueC.value)) {
                    alert("Value of C = ... - ... (10)");
                    nValueC.focus();
                    nValueC.select();
                    valid = false;
                } else if (nValueS.value.length <= 0) {
                    alert("Value of Sigma cannot be empty!");
                    nValueS.focus();
                    valid = false;
                } else if (isNaN(nValueS.value)) {
                    alert("Value of Sigma = ... - ... (0.1)");
                    nValueS.focus();
                    nValueS.select();
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
                //validation
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var nValueSLSSVM = document.getElementById("nValueSLSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var valid = true;

                if (nValueCLSSVM.value === "") {
                    alert("Value of C cannot be empty!");
                    nValueCLSSVM.focus();
                    valid = false;
                } else if (isNaN(nValueCLSSVM.value)) {
                    alert("Value of C = ... - ... (10)");
                    nValueCLSSVM.focus();
                    nValueCLSSVM.select();
                    valid = false;
                } else if (nValueSLSSVM.value.length <= 0) {
                    alert("Value of Sigma cannot be empty!");
                    nValueSLSSVM.focus();
                    valid = false;
                } else if (isNaN(nValueSLSSVM.value)) {
                    alert("Value of Sigma = ... - ... (0.1)");
                    nValueSLSSVM.focus();
                    nValueSLSSVM.select();
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
                var nValueC = document.getElementById("nValueC");
                var nValueS = document.getElementById("nValueS");
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

                var VarA = document.getElementById("VarA");
                
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
                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                document.getElementById("myform").submit();
                alert("Data file already loaded ...!");
                nValueC.focus();
                valid = false;
                
                return valid;
            }
                
            function loadingdataformLSSVM(val) {
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var nValueSLSSVM = document.getElementById("nValueSLSSVM");
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

                var VarB = document.getElementById("VarB");
                
                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM = "2";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";

                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;

                fullPathLSSVM.value = sFileNameLSSVM.value;
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                document.getElementById("myformLSSVM").submit();
                alert("Data file already loaded ...!");
                nValueCLSSVM.focus();
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

        <% if (VarA != null) { %>
            <form action="ModuleLSSVR.jsp" name="myform" id="myform">
                <input type="hidden" name="VarA" id="VarA" value="<%=VarA%>"/>
                <input type="hidden" name="sLoadingDataFile" id="sLoadingDataFile" value="<%=sLoadingDataFile%>"/>
                <input type="hidden" name="sLoadingDataExcel" id="sLoadingDataExcel" value="<%=sLoadingDataExcel%>"/>
                <input type="hidden" name="sLoadingDataExcelClick" id="sLoadingDataExcelClick" value="<%=sLoadingDataExcelClick%>"/>
                <input type="hidden" name="sMoveBottom" id="sMoveBottom" value="<%=sMoveBottom%>"/>
                <input type="hidden" name="VarNext" id="VarNext" value="<%=VarNext%>"/>
                <input type="hidden" name="sError" id="sError" value="<%=sError%>"/>
                                
                <input type="hidden" name="sLoadingDefault" id="sLoadingDefault" value="<%=sLoadingDefault%>" />
                <input type="hidden" name="sLoadingEvaluation" id="sLoadingEvaluation" value="<%=sLoadingEvaluation%>" />
                <input type="hidden" name="sLoadingPrediction" id="sLoadingPrediction" value="<%=sLoadingPrediction%>" />
                
                <br>
                <br>
                <center id="title">
                    <font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt" color="#2F4F4F">
                        <b>Least Squares Support Vector Regression (LSSVR)</b>
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
                                <h2><font face="Palatino Linotype, Book Antiqua, Palatino, serif" size="6">Model Settings</font></h2>
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
                                    <div class="col-md-3">Setting parameters:</div>
                                    <div class="col-md-2">Value of C:</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nValueC" id="nValueC" size="4" value="<%=nValueC%>"/>
                                    </div>
                                    <div class="col-md-2">Value of Sigma:</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nValueS" id="nValueS" size="4" value="<%=nValueS%>"/>
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
                                    <label><input type="radio" name="NormalRadio" id="NormalRadio1" value="NormalRadio1">Original value</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="NormalRadio" id="NormalRadio2" value="NormalRadio2">Feature scaling</label>
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
                                <h2><font face="Palatino Linotype, Book Antiqua, Palatino, serif" size="6">Dataset</font></h2>
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
                
                <!--<table>
                    <hr/>
                    <tr>
                        <td colspan="12">
                            <h3>
                                <img src="Logo-Space.png" alt="     " width="1" height="1">
                                Data To Analyze:
                            </h3>
                        </td>
                        <td style="width:43%">
                            <input type="submit" name="VarCompute" value="COMPUTE" onclick="return computeatform(1);" style="float:right"/>
                        </td>
                    </tr>
                </table>
                <table>    
                    <tr>
                        <td>
                            <img src="Logo-Space.png" alt="     " width="9" height="1">
                            * First Data file:
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <img src="Logo-Space.png" alt="     " width="27" height="1">
                        </td>
                        <td colspan="6">
                            <input type="hidden" name="fullPath" id="fullPath" value=""/>
                            <input type="text" name="sFileData" id="sFileData" size="50" value="<%=sFileData%>" readonly/>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td align="right">
                            <font color="purple" face="tahoma" size="2">
                                No. of attributes
                            </font>
                        </td>
                        <td>
                            <input type="text" name="sdAttributes" id="sdAttributes" size="4" value="<%=sdAttributes%>" readonly/>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td align="right">
                            <font color="purple" face="tahoma" size="2">
                                No. of instances
                            </font>
                        </td>
                        <td>
                            <input type="text" name="sdInstances" id="sdInstances" size="4" value="<%=sdInstances%>" readonly/>
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="9"></td>
                    </tr>

                    <tr>
                        <td>
                            <img src="Logo-Space.png" alt="..." width="9" height="1">
                            * Second data file:
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <img src="Logo-Space.png" alt="..." width="27" height="1">
                        </td>
                        <td colspan="6">
                            <input type="hidden" name="fullPath" id="fullPath" value=""/>
                            <input type="text" name="sPFileData" id="sPFileData" size="50" value="<%=sPFileData%>" readonly/>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td align="right">
                            <font color="purple" face="tahoma" size="2">
                                No. of attributes
                            </font>
                        </td>
                        <td>
                            <input type="text" name="sdPAttributes" id="sdPAttributes" size="4" value="<%=sdPAttributes%>" readonly/>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td align="right">
                            <font color="purple" face="tahoma" size="2">
                                No. of instances
                            </font>
                        </td>
                        <td>
                            <input type="text" name="sdPInstances" id="sdPInstances" size="4" value="<%=sdPInstances%>" readonly/>
                            <%-->
                            <a onclick="return computeatform(1);">
                                <img src="Icon-Calc.png" alt="..." width="13" height="17">
                            </a>
                            <--%>
                        </td>
                    </tr>
                </table>
                        
                <BR>
            
            <h6 id="bottomform">
                <img src="Logo-Space.png" alt="     " width="4" height="5">
                &nbsp;. . . [END OF DATA FORM] &nbsp;&nbsp;&nbsp;
                    
                <% if (sLoadingDataExcel != "") { %>
                <% } else { %>
                    <%--<a href="#top">
                        <img src="Icon-Top.png" alt="..." width="13" height="17">
                    </a>--%>
                    <div class="scrollToTop">
                      <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                <% } %>
            </h6><-->

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
                
            <%
            
            //reading data from file
            if (sLoadingDataExcel != "") {
                //running
                if (NormalRadio.equals("NormalRadio1")) {
                    %>
                    <script>
                        document.getElementById("NormalRadio1").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (NormalRadio.equals("NormalRadio2")) {
                    %>
                    <script>
                        document.getElementById("NormalRadio2").checked = true; //"null" ;
                    </script>
                    <%
                }
            
                if (PRadio.equals("PRadio1")) {
                    %>
                    <script>
                        document.getElementById("PRadio1").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (PRadio.equals("PRadio2")) {
                    %>
                    <script>
                        document.getElementById("PRadio2").checked = true; //"null" ;
                    </script>
                    <%
                }

                if (TORadio.equals("TORadio1")) {
                    %>
                    <script>
                        document.getElementById("TORadio1").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadio.equals("TORadio2")) {
                    %>
                    <script>
                        document.getElementById("TORadio2").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadio.equals("TORadio3")) {
                    %>
                    <script>
                        document.getElementById("TORadio3").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadio.equals("TORadio4")) {
                    %>
                    <script>
                        document.getElementById("TORadio4").checked = true; //"null" ;
                    </script>
                    <%
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
                            1. System Parameters:&nbsp;&nbsp;
                        </td>
                        <td>
                            Value of C = <%=nf2.format(Double.parseDouble(nValueC))%> &nbsp;&nbsp;
                        </td>
                        <td>
                            Value of sigma = <%=nf2.format(Double.parseDouble(nValueS))%> &nbsp;&nbsp;
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
                            2. Normalization Method:&nbsp;&nbsp;&nbsp;&nbsp;
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
                            3. Purpose:&nbsp;&nbsp;
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
                            4. Test Option:&nbsp;&nbsp; 
                        </td>
                        <td>
                            <%
                            sTORadio = "...";
                            if (TORadio.equals("TORadio2")) { 
                                if (PRadio.equals("PRadio1")) { %>
                                    Hold-out = <%=nf.format(Double.parseDouble(dHoldOut))%> (%) &nbsp;&nbsp;&nbsp;&nbsp;
                                <% }
                                else if (PRadio.equals("PRadio2")) { %>
                                    -
                                <% }
                            }
                            else if (TORadio.equals("TORadio3")) {
                                if (PRadio.equals("PRadio1")) { %>
                                    Cross-validation = <%=nf.format(Double.parseDouble(dCrossValidation))%> (folds) &nbsp;&nbsp;&nbsp;&nbsp;
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
                        <td>
                            &nbsp;
                        </td>
                        <td>
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

                <BR>
            
                <h6 id="bottompage">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    <b> [&nbsp;RUNNING] . . . &nbsp;&nbsp;&nbsp;</b>
                    <a href="#top">
                        <img src="arrowup.JPG" alt="..." width="18">
                    </a>
                </h6>
                <%
            }
            else if (sLoadingDataFile != "") {
                String filename;
                if (PRadio.equals("PRadio2")) { 
                    filename = "Data_LSSVR_Prediction.txt";
                }
                else {
                    filename = "Data_LSSVR_Evaluation.txt";
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
                        if (j==1) {%><script>document.getElementById("nValueC").value = "<%=cols[3]%>";</script><%}
                        else if (j==2) {%><script>document.getElementById("nValueS").value = "<%=cols[3]%>";</script><%} 
                        
                        else if (j==3) {
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
                        else if (j==4) {
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
                            if (j==5) {%><script>document.getElementById("sLearningFileName").value = "<%=cols[3]%>";</script><%}
                            else if (j==7) {%><script>document.getElementById("nLDFInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==6) {%><script>document.getElementById("nLDFAttributes").value = "<%=cols[3]%>";</script><%}
                            else if (j==8) {%><script>document.getElementById("sPredictionFileName").value = "<%=cols[3]%>";</script><%}
                            else if (j==10) {%><script>document.getElementById("nPDFInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==9) {%><script>document.getElementById("nPDFAttributes").value = "<%=cols[3]%>";</script><%}
                            
                            else if (j==11) {%><script>document.getElementById("sFileData").value = "<%=cols[3]%>";</script><%}
                            else if (j==13) {%><script>document.getElementById("sdInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==12) {%><script>document.getElementById("sdAttributes").value = "<%=cols[3]%>";</script><%}
                            else if (j==14) {%><script>document.getElementById("sPFileData").value = "<%=cols[3]%>";</script><%}
                            else if (j==16) {%><script>document.getElementById("sdPInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==15) {%><script>document.getElementById("sdPAttributes").value = "<%=cols[3]%>";</script><%}
                        } else {    
                            if (j==5) {%><script>document.getElementById("dHoldOut").value = "<%=cols[3]%>";</script><%}
                            else if (j==6) {%><script>document.getElementById("dCrossValidation").value = "<%=cols[3]%>";</script><%}
                            
                            else if (j==7) {
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
                            
                            else if (j==8) {%><script>document.getElementById("sFileName").value = "<%=cols[3]%>";</script><%}
                            else if (j==10) {%><script>document.getElementById("nDFInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==9) {%><script>document.getElementById("nDFAttributes").value = "<%=cols[3]%>";</script><%}
                            else if (j==11) {
                                %>
                                <script>
                                    document.getElementById("sTestFileName").value = "<%=cols[3]%>";
                                </script>
                                <%}
                            else if (j==13) {%><script>document.getElementById("nTDFInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==12) {%><script>document.getElementById("nTDFAttributes").value = "<%=cols[3]%>";</script><%}
                            
                            else if (j==14) {%><script>document.getElementById("sFileData").value = "<%=cols[3]%>";</script><%}
                            else if (j==16) {%><script>document.getElementById("sdInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==15) {%><script>document.getElementById("sdAttributes").value = "<%=cols[3]%>";</script><%}
                            else if (j==17) {%><script>document.getElementById("sPFileData").value = "<%=cols[3]%>";</script><%}
                            else if (j==19) {%><script>document.getElementById("sdPInstances").value = "<%=cols[3]%>";</script><%}
                            else if (j==18) {%><script>document.getElementById("sdPAttributes").value = "<%=cols[3]%>";</script><%}
                        }
                        
                        line = br.readLine();
                    }
                }
                br.close(); 
            }
            else {
                if (sLoadingDefault != "") { 
                    %><script>document.getElementById("TORadio1").checked = true; </script>
                <% } 
                
                if (sLoadingEvaluation != "") {  
                    %><script>document.getElementById("TORadio1").checked = true; </script>
                    <% 
                    if (sTestFileName != "") { 
                        %><script>document.getElementById("TORadio4").checked = true; </script>
                        <% 
                    }
                }

                if (sLoadingPrediction != "") {  
                    %><script>document.getElementById("TORadio1").checked = true; </script>
                <% }  

                if (NormalRadio.equals("NormalRadio1")) {
                    %>
                    <script>
                        document.getElementById("NormalRadio1").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (NormalRadio.equals("NormalRadio2")) {
                    %>
                    <script>
                        document.getElementById("NormalRadio2").checked = true; //"null" ;
                    </script>
                    <%
                }
            
                if (PRadio.equals("PRadio1")) {
                    %>
                    <script>
                        document.getElementById("PRadio1").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (PRadio.equals("PRadio2")) {
                    %>
                    <script>
                        document.getElementById("PRadio2").checked = true; //"null" ;
                    </script>
                    <%
                }

                if (TORadio.equals("TORadio1")) {
                    %>
                    <script>
                        document.getElementById("TORadio1").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadio.equals("TORadio2")) {
                    %>
                    <script>
                        document.getElementById("TORadio2").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadio.equals("TORadio3")) {
                    %>
                    <script>
                        document.getElementById("TORadio3").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (TORadio.equals("TORadio4")) {
                    %>
                    <script>
                        document.getElementById("TORadio4").checked = true; //"null" ;
                    </script>
                    <%
                }
                
                /*
                out.println("<p>");
                out.println("sDataFile = "+sDataFile);
                out.println("<br>");
                out.println("sFileName = "+sFileName);
                */
                        
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
            
                /*
                out.println("<p>");
                out.println("sFileData = " + sFileData);
                out.println("<br>");
                */
                
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
                        /*} else {
                            document.getElementById("sPFileData").value = ""; 
                            document.getElementById("sdPInstances").value = "1"; 
                            document.getElementById("sdPAttributes").value = "1"; 
                        */
                    //}
                }
                
                /*
                out.println("<p>");
                out.println("sPFileData = " + sPFileData);
                out.println("<br>");
                */
                
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
                        %>
                        <script>
                            document.getElementById("nLDFInstances").value = "<%=iLDFInstances%>";
                        </script>
                        <%
                    }
                    br.close();
                }
                else if (sLearningFileName != "") {
                    String file = application.getRealPath("/") + sLearningFileName;
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
                        %>
                        <script>
                            document.getElementById("nLDFInstances").value = "<%=iLDFInstances%>";
                        </script>
                        <%
                    }
                    br.close();
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
            
                /*
                out.println("<p>");
                out.println("sFileData = " + sFileData);
                out.println("<br>");
                */
                
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
                
                /*
                out.println("<p>");
                out.println("sPFileData = " + sPFileData);
                out.println("<br>");
                */
            }
            %>
            
            </form>

        <% } else if (VarB != null) { %> 
            <form action="ModuleLSSVM.jsp" name="myformLSSVM" id="myformLSSVM">
                <input type="hidden" name="VarB" id="VarB" value="<%=VarB%>"/>
                <input type="hidden" name="sLoadingDataFileLSSVM" id="sLoadingDataFileLSSVM" value="<%=sLoadingDataFileLSSVM%>"/>
                <input type="hidden" name="sLoadingDataExcelLSSVM" id="sLoadingDataExcelLSSVM" value="<%=sLoadingDataExcelLSSVM%>"/>
                <input type="hidden" name="sLoadingDataExcelClickLSSVM" id="sLoadingDataExcelClickLSSVM" value="<%=sLoadingDataExcelClickLSSVM%>"/>

                <input type="hidden" name="sMoveBottom" id="sMoveBottom" value="<%=sMoveBottom%>"/> 
                <input type="hidden" name="VarNextLSSVM" id="VarNextLSSVM" value="<%=VarNextLSSVM%>"/>
                <input type="hidden" name="sErrorLSSVM" id="sErrorLSSVM" value="<%=sErrorLSSVM%>"/>

                <input type="hidden" name="sLoadingDefaultLSSVM" id="sLoadingDefaultLSSVM" value="<%=sLoadingDefaultLSSVM%>" />
                <input type="hidden" name="sLoadingEvaluationLSSVM" id="sLoadingEvaluationLSSVM" value="<%=sLoadingEvaluationLSSVM%>" />
                <input type="hidden" name="sLoadingPredictionLSSVM" id="sLoadingPredictionLSSVM" value="<%=sLoadingPredictionLSSVM%>" />
                
                <br>
                <br>
                <center id="title">
                    <font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt" color="#2F4F4F">
                        <b>Least Squares Support Vector Machine (LSSVM)</b>
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
                                <h2><font face="Palatino Linotype, Book Antiqua, Palatino, serif" size="6">Model Settings</font></h2>
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
                                    <div class="col-md-3">System Parameters:</div>
                                    <div class="col-md-2">Value of C</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nValueCLSSVM" id="nValueCLSSVM" size="5" value="<%=nValueCLSSVM%>"> 
                                    </div>
                                    <div class="col-md-2">Value of Sigma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nValueSLSSVM" id="nValueSLSSVM" size="4" value="<%=nValueSLSSVM%>">
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
                                <h2><font face="Palatino Linotype, Book Antiqua, Palatino, serif" size="6">Dataset</font></h2>
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
            
            //reading data from file
            if (sLoadingDataExcelLSSVM != "") {
                //running
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
                            1. System Parameters: &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            Value of C = <%=nf2.format(Double.parseDouble(nValueCLSSVM))%> &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            Value of sigma = <%=nf2.format(Double.parseDouble(nValueSLSSVM))%> &nbsp;&nbsp;&nbsp;&nbsp;
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
                            2. Normalization Method: &nbsp;&nbsp;&nbsp;&nbsp;
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
                            3. Purpose: &nbsp;&nbsp;&nbsp;&nbsp;
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
                            4. Test Option:&nbsp;&nbsp;&nbsp;&nbsp; 
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
                        <td>
                            &nbsp;
                        </td>
                        <td>
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
                        <img src="Icon-Top.png" alt="..." width="13" height="17">
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
                    filenameLSSVM = "Data_LSSVM_Prediction.txt";
                }
                else {
                    filenameLSSVM = "Data_LSSVM_Evaluation.txt";
                }
                String file = application.getRealPath("/") + filenameLSSVM;
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
                        if (j==1) {%><script>document.getElementById("nValueCLSSVM").value = "<%=cols[3]%>";</script><%}
                        else if (j==2) {%><script>document.getElementById("nValueSLSSVM").value = "<%=cols[3]%>";</script><%} 
                        
                        else if (j==3) {
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
                        else if (j==4) {
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
                            if (j==5) {%><script>document.getElementById("sLearningFileNameLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==7) {%><script>document.getElementById("nLDFInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==6) {%><script>document.getElementById("nLDFAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==8) {%><script>document.getElementById("sPredictionFileNameLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==10) {%><script>document.getElementById("nPDFInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==9) {%><script>document.getElementById("nPDFAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                            
                            else if (j==11) {%><script>document.getElementById("sFileDataLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==13) {%><script>document.getElementById("sdInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==12) {%><script>document.getElementById("sdAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==14) {%><script>document.getElementById("sPFileDataLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==16) {%><script>document.getElementById("sdPInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==15) {%><script>document.getElementById("sdPAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                        } else {    
                            if (j==5) {%><script>document.getElementById("dHoldOutLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==6) {%><script>document.getElementById("dCrossValidationLSSVM").value = "<%=cols[3]%>";</script><%}
                            
                            else if (j==7) {
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
                            else if (j==8) {%><script>document.getElementById("sFileNameLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==10) {%><script>document.getElementById("nDFInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==9) {%><script>document.getElementById("nDFAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==11) {
                                %>
                                <script>
                                    document.getElementById("sTestFileNameLSSVM").value = "<%=cols[3]%>";
                                </script>
                                <%}
                            else if (j==13) {%><script>document.getElementById("nTDFInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==12) {%><script>document.getElementById("nTDFAttributesLSSVM").value = "<%=cols[3]%>";</script><%}

                            else if (j==14) {%><script>document.getElementById("sFileDataLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==16) {%><script>document.getElementById("sdInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==15) {%><script>document.getElementById("sdAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==17) {%><script>document.getElementById("sPFileDataLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==19) {%><script>document.getElementById("sdPInstancesLSSVM").value = "<%=cols[3]%>";</script><%}
                            else if (j==18) {%><script>document.getElementById("sdPAttributesLSSVM").value = "<%=cols[3]%>";</script><%}
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
                        %><script>document.getElementById("TORadio4LSSVM").checked = true; </script>
                        <% 
                    }
                } 

                if (sLoadingPredictionLSSVM != "") {  
                    %><script>document.getElementById("TORadio1LSSVM").checked = true; </script>
                <% } 

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
                        /*} else {
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
            }
            %>
            </form>
        <% } %> 
        </div>
        <script>
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
