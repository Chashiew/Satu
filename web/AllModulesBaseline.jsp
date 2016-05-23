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

String sLoadModel = request.getParameter("sLoadModel");
if (sLoadModel == null) {
    sLoadModel = "";        
};
    String sLoadModelLSSVM = request.getParameter("sLoadModelLSSVM");
    if (sLoadModelLSSVM == null) {
        sLoadModelLSSVM = "";        
    };

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
String sGraphType = request.getParameter("sGraphType");
if (sGraphType == null) {
    sGraphType = "2";        
};

String sNormalRadio = "";
String sPRadio = "";
String sTORadio = "";

String sNormalRadioLSSVM = "";
String sPRadioLSSVM = "";
String sTORadioLSSVM = "";

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

String sSaveDataFile = request.getParameter("sSaveDataFile");
if (sSaveDataFile == null) {
    sSaveDataFile = "";        
};
    String sSaveDataFileLSSVM = request.getParameter("sSaveDataFileLSSVM");
    if (sSaveDataFileLSSVM == null) {
        sSaveDataFileLSSVM = "";        
    };

String sImportData = request.getParameter("sImportData");
if (sImportData == null) {
    sImportData = "";        
};
    String sImportDataLSSVM = request.getParameter("sImportDataLSSVM");
    if (sImportDataLSSVM == null) {
        sImportDataLSSVM = "";        
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

String sBaseFileName = request.getParameter("sBaseFileName");
if (sBaseFileName == null) {
    sBaseFileName = "";
}
String sBaseFileNameLSSVM = request.getParameter("sBaseFileNameLSSVM");
if (sBaseFileNameLSSVM == null) {
    sBaseFileNameLSSVM = "";
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
        <%
        String hdf = request.getParameter("hiddendatafile");
        if (hdf == null) {
            hdf = "0";
        }
        %>
        
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
                
                var sLoadModel = document.getElementById("sLoadModel");
                sLoadModel = "";
                document.getElementById("sLoadModel").value = sLoadModel;
                
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
                fullPath.value = nDFInstances.value;
                fullPath.value = nDFAttributes.value;
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

                var sLoadModelLSSVM = document.getElementById("sLoadModelLSSVM");
                sLoadModelLSSVM = "";
                document.getElementById("sLoadModelLSSVM").value = sLoadModelLSSVM;
                
                var sSaveDataFileLSSVM = document.getElementById("sSaveDataFileLSSVM");
                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = sSaveDataFileLSSVM;
                
                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM = "";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
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

                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";
                
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                
                fullPathLSSVM.value = sFileNameLSSVM.value;
                fullPathLSSVM.value = nDFInstancesLSSVM.value;
                fullPathLSSVM.value = nDFAttributesLSSVM.value;
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
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

            function writedefaultlssvr(val) {
                var valid = false;
                document.getElementById("nValueC").value = "10";
                document.getElementById("nValueS").value = "0.1";
                document.getElementById("dHoldOut").value = "20" ;
                document.getElementById("dCrossValidation").value = "10";

                var date = new Date();
                var strdatetime = "" + date.getFullYear() + (date.getMonth() + 1) + date.getDate() + date.getHours() + date.getMinutes() + date.getSeconds();
                if (PRadio.value === "PRadio1") {
                    document.getElementById("sBaseFileName").value = "LSSVR_EvaResult" + strdatetime;
                } else {
                    document.getElementById("sBaseFileName").value = "LSSVR_PreResult" + strdatetime;
                }    
                
                //alert("Aha21 ...!");
                document.getElementById("NormalRadio1").checked = true; //"null" ;
                //document.getElementById("PRadio1").checked = true; 
                document.getElementById("TORadio1").checked = true; 
                
                //alert("Aha22 ...!");
                document.getElementById("sDataFile").value = "";    //"null"; 
                document.getElementById("sTestDataFile").value = ""; 
                document.getElementById("sLearningDataFile").value = ""; 
                document.getElementById("sPredictionDataFile").value = ""; 
                
                //alert("Aha23 ...!");
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
                
                var VarA = document.getElementById("VarA");
                    
                var sLoadModel = document.getElementById("sLoadModel");
                sLoadModel = "";
                document.getElementById("sLoadModel").value = sLoadModel;
                
                var sLoadingDefault = document.getElementById("sLoadingDefault");
                sLoadingDefault = "1";
                document.getElementById("sLoadingDefault").value = sLoadingDefault;

                var sLoadingEvaluation = document.getElementById("sLoadingEvaluation");
                sLoadingEvaluation = "";
                document.getElementById("sLoadingEvaluation").value = sLoadingEvaluation;

                var sLoadingPrediction = document.getElementById("sLoadingPrediction");
                sLoadingPrediction = "";
                document.getElementById("sLoadingPrediction").value = sLoadingPrediction;

                var sSaveDataFile = document.getElementById("sSaveDataFile");
                sSaveDataFile = "";
                document.getElementById("sSaveDataFile").value = "";

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;

                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;
                
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                document.getElementById("testdatasection").style.display = "none";
                var hdf = document.getElementById("hdf");
                hdf = "0";
                document.getElementById("hdf").value = "0";

                //1. these lines to follow are not executed, as the display has been refreshed.
                //alert("Aha2 ...!");
                //fullPath.value = sFileName.value;
                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                document.getElementById("myform").submit();
                valid = false;
                
                return valid;
            }
            
            function loadmodel(val) {
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
                    
                var sLoadModel = document.getElementById("sLoadModel");
                sLoadModel = "1";
                document.getElementById("sLoadModel").value = sLoadModel;
                
                var sLoadingDefault = document.getElementById("sLoadingDefault");
                sLoadingDefault = "";
                document.getElementById("sLoadingDefault").value = sLoadingDefault;

                var sLoadingEvaluation = document.getElementById("sLoadingEvaluation");
                sLoadingEvaluation = "";
                document.getElementById("sLoadingEvaluation").value = sLoadingEvaluation;

                var sLoadingPrediction = document.getElementById("sLoadingPrediction");
                sLoadingPrediction = "";
                document.getElementById("sLoadingPrediction").value = sLoadingPrediction;

                var sSaveDataFile = document.getElementById("sSaveDataFile");
                sSaveDataFile = "";
                document.getElementById("sSaveDataFile").value = "";

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;

                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;
                
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                
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

                var date = new Date();
                var strdatetime = "" + date.getFullYear() + (date.getMonth() + 1) + date.getDate() + date.getHours() + date.getMinutes() + date.getSeconds();
                if (PRadioLSSVM.value === "PRadio1LSSVM") {
                    document.getElementById("sBaseFileNameLSSVM").value = "LSSVM_EvaResult" + strdatetime;
                } else {
                    document.getElementById("sBaseFileNameLSSVM").value = "LSSVM_PreResult" + strdatetime;
                }    
                
                document.getElementById("NormalRadio1LSSVM").checked = true; //"null" ;
                //document.getElementById("PRadio1LSSVM").checked = true; 
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
                    
                var sLoadModel = document.getElementById("sLoadModel");
                sLoadModel = "";
                document.getElementById("sLoadModel").value = sLoadModel;
                
                var sLoadingDefaultLSSVM = document.getElementById("sLoadingDefaultLSSVM");
                sLoadingDefaultLSSVM = "1";
                document.getElementById("sLoadingDefaultLSSVM").value = sLoadingDefaultLSSVM;

                var sLoadingEvaluationLSSVM = document.getElementById("sLoadingEvaluationLSSVM");
                sLoadingEvaluationLSSVM = "";
                document.getElementById("sLoadingEvaluationLSSVM").value = sLoadingEvaluationLSSVM;

                var sLoadingPredictionLSSVM = document.getElementById("sLoadingPredictionLSSVM");
                sLoadingPredictionLSSVM = "";
                document.getElementById("sLoadingPredictionLSSVM").value = sLoadingPredictionLSSVM;

                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = "";

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM = "";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
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

                //1. these lines to follow are not executed, as the display has been refreshed.
                //alert("Aha2 ...!");
                fullPathLSSVM.value = sFileNameLSSVM.value;
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                document.getElementById("myformLSSVM").submit();
                valid = false;

                return valid;
            }
            
            function loadmodelLSSVM(val) {
                var sLoadModelLSSVM = document.getElementById("sLoadModelLSSVM");
                sLoadModelLSSVM = "1";
                document.getElementById("sLoadModelLSSVM").value = sLoadModelLSSVM;
             
                var sLoadingDefaultLSSVM = document.getElementById("sLoadingDefaultLSSVM");
                sLoadingDefaultLSSVM = "";
                document.getElementById("sLoadingDefaultLSSVM").value = sLoadingDefaultLSSVM;

                var sLoadingEvaluationLSSVM = document.getElementById("sLoadingEvaluationLSSVM");
                sLoadingEvaluationLSSVM = "";
                document.getElementById("sLoadingEvaluationLSSVM").value = sLoadingEvaluationLSSVM;

                var sLoadingPredictionLSSVM = document.getElementById("sLoadingPredictionLSSVM");
                sLoadingPredictionLSSVM = "";
                document.getElementById("sLoadingPredictionLSSVM").value = sLoadingPredictionLSSVM;

                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = "";

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM = "";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;
                
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

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
                //document.getElementById("PRadio1").checked = false; 
                if (PRadio.value === "PRadio1") {
                    document.getElementById("TORadio1").checked = false; 
                    document.getElementById("TORadio2").checked = false;
                    document.getElementById("TORadio3").checked = false;
                    document.getElementById("TORadio4").checked = false;
                }
                
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
                document.getElementById("sBaseFileName").value = ""; 
                        
                document.getElementById("sFileName").value = "";    //"null"; 
                document.getElementById("sTestFileName").value = ""; 
                document.getElementById("sLearningFileName").value = ""; 
                document.getElementById("sPredictionFileName").value = ""; 
                        
                //document.getElementById("sLoadingDataExcel").value = "";

                var sMove  = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                
                var VarA = document.getElementById("VarA");
                
                var sLoadModel = document.getElementById("sLoadModel");
                sLoadModel = "";
                document.getElementById("sLoadModel").value = sLoadModel;
                
                var sLoadingDefault = document.getElementById("sLoadingDefault");
                sLoadingDefault = "1";
                document.getElementById("sLoadingDefault").value = sLoadingDefault;

                var sLoadingEvaluation = document.getElementById("sLoadingEvaluation");
                sLoadingEvaluation = "";
                document.getElementById("sLoadingEvaluation").value = sLoadingEvaluation;

                var sLoadingPrediction = document.getElementById("sLoadingPrediction");
                sLoadingPrediction = "";
                document.getElementById("sLoadingPrediction").value = sLoadingPrediction;

                sSaveDataFile = "";
                document.getElementById("sSaveDataFile").value = "";

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;

                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;
                
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;

                //this line refresh the screen - no submission made
                document.getElementById("testdatasection").style.display = "none"; //none, kalo mw diilangin
                hdf = "0";
                document.getElementById("hdf").value = "0"; //"0", kalo mw diilangin
                
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
                //document.getElementById("PRadio1LSSVM").checked = false; 
                if (PRadioLSSVM.value === "PRadio1LSSVM") {
                    document.getElementById("TORadio1LSSVM").checked = false; 
                    document.getElementById("TORadio2LSSVM").checked = false; 
                    document.getElementById("TORadio3LSSVM").checked = false; 
                    document.getElementById("TORadio4LSSVM").checked = false; 
                }
                
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
                document.getElementById("sBaseFileNameLSSVM").value = ""; 
                        
                document.getElementById("sFileNameLSSVM").value = "";    //"null"; 
                document.getElementById("sTestFileNameLSSVM").value = ""; 
                document.getElementById("sLearningFileNameLSSVM").value = ""; 
                document.getElementById("sPredictionFileNameLSSVM").value = ""; 
                
                //document.getElementById("sLoadingDataExcelLSSVM").value = ""; 

                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = val;
                document.getElementById("sMoveBottom").value = val;
                
                var VarB = document.getElementById("VarB");
                 
                var sLoadModelLSSVM = document.getElementById("sLoadModelLSSVM");
                sLoadModelLSSVM = "";
                document.getElementById("sLoadModelLSSVM").value = sLoadModelLSSVM;
                
                var sLoadingDefaultLSSVM = document.getElementById("sLoadingDefaultLSSVM");
                sLoadingDefaultLSSVM = "1";
                document.getElementById("sLoadingDefaultLSSVM").value = sLoadingDefaultLSSVM;

                var sLoadingEvaluationLSSVM = document.getElementById("sLoadingEvaluationLSSVM");
                sLoadingEvaluationLSSVM = "";
                document.getElementById("sLoadingEvaluationLSSVM").value = sLoadingEvaluationLSSVM;

                var sLoadingPredictionLSSVM = document.getElementById("sLoadingPredictionLSSVM");
                sLoadingPredictionLSSVM = "";
                document.getElementById("sLoadingPredictionLSSVM").value = sLoadingPredictionLSSVM;

                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = "";

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM = "";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;
                
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;

                //this line refresh the screen - no submission made
                document.getElementById("testdatasection").style.display = "none"; //none, kalo mw diilangin
                hdf = "0";
                document.getElementById("hdf").value = "0"; //"0", kalo mw diilangin
                
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
                
                var sLoadModel = document.getElementById("sLoadModel");
                sLoadModel = "";
                document.getElementById("sLoadModel").value = sLoadModel;
                
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

                var sLoadModelLSSVM = document.getElementById("sLoadModelLSSVM");
                sLoadModelLSSVM = "";
                document.getElementById("sLoadModelLSSVM").value = sLoadModelLSSVM;
                
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
                    
                    var sBestFold = document.getElementById("sBestFold");
                    var sopt = document.getElementById("sopt");
                    var sGraphNo = document.getElementById("sGraphNo");
                    var sGraphType = document.getElementById("sGraphType");
                    
                    var sLoadModel = document.getElementById("sLoadModel");
                    sLoadModel = "";
                    document.getElementById("sLoadModel").value = sLoadModel;

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
                    
                    var sBestFold = document.getElementById("sBestFold");
                    var sopt = document.getElementById("sopt");
                    var sGraphNo = document.getElementById("sGraphNo");
                    var sGraphType = document.getElementById("sGraphType");
                    
                    var sLoadModelLSSVM = document.getElementById("sLoadModelLSSVM");
                    sLoadModelLSSVM = "";
                    document.getElementById("sLoadModelLSSVM").value = sLoadModelLSSVM;

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
                    
                    var sLoadModel = document.getElementById("sLoadModel");
                    sLoadModel = "";
                    document.getElementById("sLoadModel").value = sLoadModel;

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
                    
                    var sLoadModelLSSVM = document.getElementById("sLoadModelLSSVM");
                    sLoadModelLSSVM = "";
                    document.getElementById("sLoadModelLSSVM").value = sLoadModelLSSVM;

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

                //alert("Aha 1 ...!");
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
                    alert("Value of sigma cannot be empty!");
                    nValueS.focus();
                    valid = false;
                } else if (isNaN(nValueS.value)) {
                    alert("Value of sigma = ... - ... (0.1)");
                    nValueS.focus();
                    nValueS.select();
                    valid = false;
                } else if (dHoldOut.value.length <= 0) {
                    alert("Hold-out (%) cannot be empty ...!");
                    dHoldOut.focus();
                    valid = false;
                } else if (isNaN(dHoldOut.value)) {
                    alert("Hold-out (%) = ... - ... (20)");
                    dHoldOut.focus();
                    dHoldOut.select();
                    valid = false;
                } else if (dCrossValidation.value.length <= 0) {
                    alert("Cross-validation (%) cannot be empty ...!");
                    dCrossValidation.focus();
                    valid = false;
                } else if (isNaN(dCrossValidation.value)) {
                    alert("Cross-validation (%) = ... - ... (10)");
                    dCrossValidation.focus();
                    dCrossValidation.select();
                    valid = false;
                } else {
                }
                //alert("Aha 12 ...!");
                
                //analyze data files
                /**/
                if (valid === true) {
                    //alert("Aha 13 ...!");
                    
                    var sDataFile = document.getElementById("sDataFile");
                    //alert("Aha 131 ...!");
                    
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
                    //alert("Aha 132 ...!");

                    var fullPath = document.getElementById("fullPath");
                    var fullPathT = document.getElementById("fullPathT");
                    var fullPathL = document.getElementById("fullPathL");
                    var fullPathP = document.getElementById("fullPathP");
                    //alert("Aha 133 ...!");

                    var sFileName = document.getElementById("sFileName");
                    var sTestFileName = document.getElementById("sTestFileName");
                    var sLearningFileName = document.getElementById("sLearningFileName");
                    var sPredictionFileName = document.getElementById("sPredictionFileName");
                    //alert("Aha 134 ...!");

                    var sLoadModel = document.getElementById("sLoadModel");
                    sLoadModel = "";
                    document.getElementById("sLoadModel").value = sLoadModel;

                    sSaveDataFile = "";
                    document.getElementById("sSaveDataFile").value = "";
                    //alert("Aha 135 ...!");
                   
                    var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                    sLoadingDataFile = "";
                    document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                    //alert("Aha 1351 ...!");

                    var VarA = document.getElementById("VarA");
                    //alert("Aha 1352 ...!");
                    
                    var sMoveBottom = document.getElementById("sMoveBottom");
                    sMoveBottom.value = val;
                    document.getElementById("sMoveBottom").value = val;
                    //alert("Aha 1353 ...!");

                    /**/
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
                                            //sFileName.value = sDataFile.value;
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
                    /**/
                    
                }
                //alert("Aha 14 ...!");
                //fullPath.value = sFileName.value;
                //document.getElementById("myform").action = "AllModulesBaseline.jsp";
                //document.getElementById("myform").submit();
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

                    var sLoadModelLSSVM = document.getElementById("sLoadModelLSSVM");
                    sLoadModelLSSVM = "";
                    document.getElementById("sLoadModelLSSVM").value = sLoadModelLSSVM;

                    sSaveDataFileLSSVM = "";
                    document.getElementById("sSaveDataFileLSSVM").value = "";
                    //alert("Aha 135 ...!");

                    var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                    sLoadingDataFileLSSVM = "";
                    document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                    //alert("Aha 1351 ...!");

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
                    alert("Value of sigma cannot be empty!");
                    nValueS.focus();
                    valid = false;
                } else if (isNaN(nValueS.value)) {
                    alert("Value of sigma = ... - ... (0.1)");
                    nValueS.focus();
                    nValueS.select();
                    valid = false;
                } else if (dHoldOut.value.length <= 0) {
                    alert("Hold-out (%) cannot be empty ...!");
                    dHoldOut.focus();
                    valid = false;
                } else if (isNaN(dHoldOut.value)) {
                    alert("Hold-out (%) = ... - ... (20)");
                    dHoldOut.focus();
                    dHoldOut.select();
                    valid = false;
                } else if (dCrossValidation.value.length <= 0) {
                    alert("Cross-validation (%) cannot be empty ...!");
                    dCrossValidation.focus();
                    valid = false;
                } else if (isNaN(dCrossValidation.value)) {
                    alert("Cross-validation (%) = ... - ... (10)");
                    dCrossValidation.focus();
                    dCrossValidation.select();
                    valid = false;
                } else {
                }

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
                
                var sLoadModel = document.getElementById("sLoadModel");
                sLoadModel = "";
                document.getElementById("sLoadModel").value = sLoadModel;

                var sSaveDataFile = document.getElementById("sSaveDataFile");
                if (valid === true) {
                    sSaveDataFile = "1";
                    document.getElementById("sSaveDataFile").value = sSaveDataFile;
                }
                
                sLoadingDataFile = "";
                document.getElementById("sLoadingDataFile").value = "";

                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = "";

                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = "";
                
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = "0";
                document.getElementById("sMoveBottom").value = "0";

                fullPath.value = sFileName.value;
                if (PRadio.value === "PRadio1") {
                    document.getElementById("sBaseFileName").value = "LSSVR_EvaResult";
                } else {
                    document.getElementById("sBaseFileName").value = "LSSVR_PreResult";
                }    
                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                document.getElementById("myform").submit();
                
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
                    alert("Value of sigma cannot be empty!");
                    nValueSLSSVM.focus();
                    valid = false;
                } else if (isNaN(nValueSLSSVM.value)) {
                    alert("Value of sigma = ... - ... (0.1)");
                    nValueSLSSVM.focus();
                    nValueSLSSVM.select();
                    valid = false;
                } else if (dHoldOutLSSVM.value.length <= 0) {
                    alert("Hold-out (%) cannot be empty ...!");
                    dHoldOutLSSVM.focus();
                    valid = false;
                } else if (isNaN(dHoldOutLSSVM.value)) {
                    alert("Hold-out (%) = ... - ... (20)");
                    dHoldOutLSSVM.focus();
                    dHoldOutLSSVM.select();
                    valid = false;
                } else if (dCrossValidationLSSVM.value.length <= 0) {
                    alert("Cross-validation (%) cannot be empty ...!");
                    dCrossValidationLSSVM.focus();
                    valid = false;
                } else if (isNaN(dCrossValidationLSSVM.value)) {
                    alert("Cross-validation (%) = ... - ... (10)");
                    dCrossValidationLSSVM.focus();
                    dCrossValidationLSSVM.select();
                    valid = false;
                } else {
                }

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
                
                var sLoadModelLSSVM = document.getElementById("sLoadModelLSSVM");
                sLoadModelLSSVM = "";
                document.getElementById("sLoadModelLSSVM").value = sLoadModelLSSVM;

                var sSaveDataFileLSSVM = document.getElementById("sSaveDataFileLSSVM");
                if (valid === true) {
                    sSaveDataFileLSSVM = "1";
                    document.getElementById("sSaveDataFileLSSVM").value = sSaveDataFileLSSVM;
                }
                
                sLoadingDataFileLSSVM = "";
                document.getElementById("sLoadingDataFileLSSVM").value = "";

                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";

                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = "0";
                document.getElementById("sMoveBottom").value = "0";

                fullPathLSSVM.value = sFileNameLSSVM.value;
                if (PRadioLSSVM.value === "PRadio1LSSVM") {
                    document.getElementById("sBaseFileName").value = "LSSVM_EvaResult";
                } else {
                    document.getElementById("sBaseFileName").value = "LSSVM_PreResult";
                }    
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                document.getElementById("myformLSSVM").submit();
                
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
                
               var sLoadModel = document.getElementById("sLoadModel");
                sLoadModel = "";
                document.getElementById("sLoadModel").value = sLoadModel;
     
                sSaveDataFile = "";
                document.getElementById("sSaveDataFile").value = "";

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                sLoadingDataFile = "1";
                document.getElementById("sLoadingDataFile").value = sLoadingDataFile;
                
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = "";

                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = "";
                
                /*
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = "0";
                document.getElementById("sMoveBottom").value = "0";
                */
               
                fullPath.value = sFileName.value;
                if (PRadio.value === "PRadio1") {
                    document.getElementById("sBaseFileName").value = "LSSVR_EvaResult";
                } else {
                    document.getElementById("sBaseFileName").value = "LSSVR_PreResult";
                }    
                document.getElementById("myform").action = "AllModulesBaseline.jsp";
                document.getElementById("myform").submit();
                //alert("Data file already loaded ...!");
                //nValueC.focus();
                //valid = false;
                
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
                
                var sLoadModelLSSVM = document.getElementById("sLoadModelLSSVM");
                sLoadModelLSSVM = "";
                document.getElementById("sLoadModelLSSVM").value = sLoadModelLSSVM;

                sSaveDataFileLSSVM = "";
                document.getElementById("sSaveDataFileLSSVM").value = "";

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                sLoadingDataFileLSSVM = "2";
                document.getElementById("sLoadingDataFileLSSVM").value = sLoadingDataFileLSSVM;
                
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = "";

                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                
                /*
                var sMoveBottom = document.getElementById("sMoveBottom");
                sMoveBottom.value = "0";
                document.getElementById("sMoveBottom").value = "0";
                 */
                
                fullPathLSSVM.value = sFileNameLSSVM.value;
                if (PRadioLSSVM.value === "PRadio1LSSVM") {
                    document.getElementById("sBaseFileName").value = "LSSVM_EvaResult";
                } else {
                    document.getElementById("sBaseFileName").value = "LSSVM_PreResult";
                }    
                document.getElementById("myformLSSVM").action = "AllModulesBaseline.jsp";
                document.getElementById("myformLSSVM").submit();
                //alert("Data file already loaded ...!");
                //nValueCLSSVM.focus();
                //valid = false;
                
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
            
            function exportparameters(val) {
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
                    alert("Value of sigma cannot be empty!");
                    nValueS.focus();
                    valid = false;
                } else if (isNaN(nValueS.value)) {
                    alert("Value of sigma = ... - ... (0.1)");
                    nValueS.focus();
                    nValueS.select();
                    valid = false;
                } else if (dHoldOut.value.length <= 0) {
                    alert("Hold-out (%) cannot be empty ...!");
                    dHoldOut.focus();
                    valid = false;
                } else if (isNaN(dHoldOut.value)) {
                    alert("Hold-out (%) = ... - ... (20)");
                    dHoldOut.focus();
                    dHoldOut.select();
                    valid = false;
                } else if (dCrossValidation.value.length <= 0) {
                    alert("Cross-validation (%) cannot be empty ...!");
                    dCrossValidation.focus();
                    valid = false;
                } else if (isNaN(dCrossValidation.value)) {
                    alert("Cross-validation (%) = ... - ... (10)");
                    dCrossValidation.focus();
                    dCrossValidation.select();
                    valid = false;
                } else {
                }

                var fullPath = document.getElementById("fullPath");
                
                var sFileName = document.getElementById("sFileName");
                
                var sSaveDataFile = document.getElementById("sSaveDataFile");
                if (valid === true) {
                    sSaveDataFile = "1";
                    document.getElementById("sSaveDataFile").value = sSaveDataFile;
                }
                fullPath.value = sFileName.value;
                var saveaction;
                if (document.getElementById("PRadio").value === "PRadio1")
                {
                    saveaction = "SaveParLSSVReval.jsp";
                }
                else
                {
                    saveaction = "SaveParLSSVRpre.jsp";
                }
                
                document.getElementById("myform").action = saveaction;
                document.getElementById("myform").method = "POST";
                document.getElementById("myform").submit();
                
                return valid;
            }

            function exportparametersLSSVM(val) {
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
                    alert("Value of sigma cannot be empty!");
                    nValueSLSSVM.focus();
                    valid = false;
                } else if (isNaN(nValueSLSSVM.value)) {
                    alert("Value of sigma = ... - ... (0.1)");
                    nValueSLSSVM.focus();
                    nValueSLSSVM.select();
                    valid = false;
                } else if (dHoldOutLSSVM.value.length <= 0) {
                    alert("Hold-out (%) cannot be empty ...!");
                    dHoldOutLSSVM.focus();
                    valid = false;
                } else if (isNaN(dHoldOutLSSVM.value)) {
                    alert("Hold-out (%) = ... - ... (20)");
                    dHoldOutLSSVM.focus();
                    dHoldOutLSSVM.select();
                    valid = false;
                } else if (dCrossValidationLSSVM.value.length <= 0) {
                    alert("Cross-validation (%) cannot be empty ...!");
                    dCrossValidationLSSVM.focus();
                    valid = false;
                } else if (isNaN(dCrossValidationLSSVM.value)) {
                    alert("Cross-validation (%) = ... - ... (10)");
                    dCrossValidationLSSVM.focus();
                    dCrossValidationLSSVM.select();
                    valid = false;
                } else {
                }

                var fullPathLSSVM = document.getElementById("fullPathLSSVM");
                var sFileNameLSSVM = document.getElementById("sFileNameLSSVM");
                
                var sSaveDataFileLSSVM = document.getElementById("sSaveDataFileLSSVM");
                if (valid === true) {
                    sSaveDataFileLSSVM = "1";
                    document.getElementById("sSaveDataFileLSSVM").value = sSaveDataFileLSSVM;
                }
                
                fullPathLSSVM.value = sFileNameLSSVM.value;
                var saveaction;
                if (document.getElementById("PRadioLSSVM").value === "PRadio1LSSVM")
                {
                    saveaction = "SaveParLSSVMeval.jsp";
                }
                else
                {
                    saveaction = "SaveParLSSVMpre.jsp";
                }
                
                document.getElementById("myformLSSVM").action = saveaction;
                document.getElementById("myformLSSVM").method = "POST";
                document.getElementById("myformLSSVM").submit();
                
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
                return false;
            }
            
            function importSVMfilefunc()
            {
                var elem = document.getElementById("importfileLSSVM");
                if(elem && document.createEvent) {
                    var evt = document.createEvent("MouseEvents");
                    evt.initEvent("click", true, false);
                    elem.dispatchEvent(evt);
                }
                return false;
            }
            
            function loadmodelfunc()
            {
                var elem = document.getElementById("loadmodel");
                if(elem && document.createEvent) {
                    var evt = document.createEvent("MouseEvents");
                    evt.initEvent("click", true, false);
                    elem.dispatchEvent(evt);
                }
                return false;
            }
            
            function loadmodelfuncLSSVM()
            {
                var elem = document.getElementById("loadmodelLSSVM");
                if(elem && document.createEvent) {
                    var evt = document.createEvent("MouseEvents");
                    evt.initEvent("click", true, false);
                    elem.dispatchEvent(evt);
                }
                return false;
            }
            
            function sendfile()
            {
                document.getElementById("myform").enctype = "multipart/form-data";
                document.getElementById("myform").method = "POST";
                document.getElementById("myform").action = "ScanDataFileLSSVR";
                document.getElementById("myform").submit();
            }
            
            function sendfileSVM()
            {
                document.getElementById("myformLSSVM").enctype = "multipart/form-data";
                document.getElementById("myformLSSVM").method = "POST";
                document.getElementById("myformLSSVM").action = "ScanDataFileLSSVM";
                document.getElementById("myformLSSVM").submit();
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
                
                <input type="hidden" name="sSaveDataFile" id="sSaveDataFile" value="<%=sSaveDataFile%>"/>
                <input type="hidden" name="sMoveBottom" id="sMoveBottom" value="<%=sMoveBottom%>"/>
                <input type="hidden" name="VarNext" id="VarNext" value="<%=VarNext%>"/>
                <input type="hidden" name="sError" id="sError" value="<%=sError%>"/>
                <input type="hidden" name="sLoadModel" id="sLoadModel" value="<%=sLoadModel%>"/>
                                
                <div style="display:none;"><input type="file" id="importfile" name="importfile"/></div>
                <div style="display:none;"><input type="file" id="loadmodel" name="loadmodel"/></div>
                
                <% if (hdf.equals("1")) { %>
                    <input type="hidden" name="hiddendatafile" id="hiddendatafile" value="1">
                <% } else { %>
                    <input type="hidden" name="hiddendatafile" id="hiddendatafile" value="0">
                <% } %>
                
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
                <input type="hidden" name="sGraphType" id="sGraphType" value="<%=sGraphType%>" /> 
                
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
                            <script>
                                document.getElementById("TORadio1").checked = false; 
                                document.getElementById("TORadio2").checked = false; 
                                document.getElementById("TORadio3").checked = false; 
                                document.getElementById("TORadio4").checked = false; 
                            </script>
                
                            <%if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                            else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script><%}
                            else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script><%}
                            else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script><%}
                            %>
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
                                <button type="button" onclick="return writedefaultlssvr(0)" class="btn btn-primary">Default</button>
                                <button type="button" class="btn btn-primary" onclick="return loadmodelfunc();">Load Model</button>
                                <%--<button type="button" onclick="return loadingdataform(1);" class="btn btn-primary">Import</button>--%>
                                <button type="button" onclick="return importfilefunc();" id="importbutton" class="btn btn-primary">Import</button>
                                <button type="button" onclick="return exportparameters(0);" class="btn btn-primary">Export</button>
                                <button type="button" onclick="return cleardefaultlssvr(0);" class="btn btn-primary">Clear</button>
                            </div>
                        </td>
                        <a href="#bottomform">
                            <%--><img src="arrowbottom.JPG" alt="..." width="15" style="float:right"><--%>
                            <img src="Arrow bottom.png" alt="..." width="18" style="float:right">
                        </a>
                    </tr>
                </table>

                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="container wdetail">
                                <h2>Parameter</h2>
                                <p>Input data and system parameters.</p>
                                <div class="row">
                                    <div class="col-md-3">System parameters:</div>
                                    <div class="col-md-2">Value of C</div>
                                    <div class="col-md-2">
                                        <input type="text" name="nValueC" id="nValueC" size="8" value="<%=nValueC%>"/>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Value of sigma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nValueS" id="nValueS" size="8" value="<%=nValueS%>"/>
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
                                <%--><p>Data preprocessing is considered a crucial step in data anlytics that performs data cleansing and transforming to improve the respective results.</p><--%>
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
                                
                <%-- if (PRadio.equals("PRadio1")) { --%>            
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
                                                <h3>Test Option</h3>
                                                <%--><p>The test data file used to evaluate the optimized model again. Output phase: calculate performance measures (i.e., RMSE, MAE, MAPE, R)</p>
                                                <p>to find the prediction accuracy.</p><--%>
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
                                                                </label>
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
                                                                </label>
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
                                        <div class="col-md-2  col-sm-1" style="margin-top : 7px">File name</div>
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
                                            </label>
                                        </div>
                                        <div class="col-md-2" style="margin-top : 4px">
                                            <a onclick="return sendfile();">
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

                                /*
                                out.println("sFileData = "+sFileData);
                                out.println("sdInstances = "+sdInstances);
                                out.println("sdAttributes = "+sdAttributes);
                                out.println("sPFileData = "+sPFileData);
                                out.println("sdPInstances = "+sdPInstances);
                                out.println("sdPAttributes = "+sdPAttributes);
                                */ 
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
            
            //reading data from file
            if (sLoadingDataExcel != "") {
                /*
                out.println("<p>");
                out.println("sLoadingDataExcel = "+sLoadingDataExcel);
                */ 

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
                        //document.getElementById("PRadio1").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (PRadio.equals("PRadio2")) {
                    %>
                    <script>
                        //document.getElementById("PRadio2").checked = true; //"null" ;
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
                
                sPRadio = "...";
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

                sTORadio = "...";
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
                            sNormalRadio = "...";
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
                </h6>--%>
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <jsp:include page="LSSVRServlet">
                                <jsp:param name="nValueC" value="<%=nValueC%>" />
                                <jsp:param name="nValueS" value="<%=nValueS%>" />
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
                                %><script>//document.getElementById("PRadio1").checked = true; 
                                </script><%
                            }
                            else {
                                %><script>//document.getElementById("PRadio2").checked = true; 
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
            else if (!sSaveDataFile.equals("")) {               
                /*
                out.println("<p>");
                out.println("sSaveDataFile = "+sSaveDataFile);
                */

                String filename;
                if (PRadio.equals("PRadio2")) {
                    filename = "Data_LSSVR_Prediction.txt";
                }
                else {
                    filename = "Data_LSSVR_Evaluation.txt";
                }
                String file = application.getRealPath("/") + filename;
                FileWriter filewriter = new FileWriter(file, false);
                int iRadio = 0;

                /*
                nValueC = Float.parseFloat(snValueC);
                nValueS = Float.parseFloat(snValueS);
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
                
                // title
                filewriter.write("LSSVR Data:\n");
            
                // column header
                filewriter.write("No.\t");
                filewriter.write("Description\t");
                filewriter.write("Variable\t");
                filewriter.write("Value\t");
                filewriter.write("Remark\n");

                // data rows
                filewriter.write("1\t");
                filewriter.write("Value of C\t");
                filewriter.write("nValueC\t");
                filewriter.write(nValueC+"\t");
                filewriter.write("-\n");
                
                filewriter.write("2\t");
                filewriter.write("Value of Sigma\t");
                filewriter.write("nValueS\t");
                filewriter.write(nValueS+"\t");
                filewriter.write("-\n");
                
                sNormalRadio = "...";
                if (NormalRadio.equals("NormalRadio1")) {
                    sNormalRadio = "Original value";
                    iRadio=1;
                }
                else if (NormalRadio.equals("NormalRadio2")) {
                    sNormalRadio = "Feature scaling";
                    iRadio=2;
                }

                filewriter.write("3\t");
                filewriter.write("Normalization Method\t");
                filewriter.write("sNormalRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sNormalRadio+"\n");

                sPRadio = "...";
                if (PRadio.equals("PRadio1")) {
                    sPRadio = "Evaluation";
                    iRadio=1;
                }
                else if (PRadio.equals("PRadio2")) {
                    sPRadio = "Prediction";
                    iRadio=2;
                }
                    
                filewriter.write("4\t");
                filewriter.write("Purpose\t");
                filewriter.write("sPRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sPRadio+"\n");
                
                if (PRadio.equals("PRadio2")) {
                    filewriter.write("5\t");
                    filewriter.write("Learning Data File\t");
                    filewriter.write("sLearningDataFile\t");
                    filewriter.write(sLearningFileName+"\t");
                    filewriter.write("-\n");

                    filewriter.write("6\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nLDFAttributes\t");
                    filewriter.write(nLDFAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("7\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nLDFInstances\t");
                    filewriter.write(nLDFInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("8\t");
                    filewriter.write("Prediction Data File\t");
                    filewriter.write("sPredictionDataFile\t");
                    filewriter.write(sPredictionFileName+"\t");
                    filewriter.write("-\n");

                    filewriter.write("9\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nPDFAttributes\t");
                    filewriter.write(nPDFAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("10\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nPDFInstances\t");
                    filewriter.write(nPDFInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("11\t");
                    filewriter.write("First Data File\t");
                    filewriter.write("sFileData\t");
                    filewriter.write(sFileData+"\t");
                    filewriter.write("-\n");

                    filewriter.write("12\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdAttributes\t");
                    filewriter.write(sdAttributes+"\t"); 
                    filewriter.write("-\n");

                    filewriter.write("13\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdInstances\t");
                    filewriter.write(sdInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("14\t");
                    filewriter.write("Second Data File\t");
                    filewriter.write("sPFileData\t");
                    filewriter.write(sPFileData+"\t");
                    filewriter.write("-\n");

                    filewriter.write("15\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdPAttributes\t");
                    filewriter.write(sdPAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("16\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdPInstances\t");
                    filewriter.write(sdPInstances+"\t");
                    filewriter.write("-\n");
                } else {
                    filewriter.write("5\t");
                    filewriter.write("Hold-Out (%)\t");
                    filewriter.write("dHoldOut\t");
                    filewriter.write(dHoldOut+"\t");
                    filewriter.write("-\n");

                    filewriter.write("6\t");
                    filewriter.write("Cross-Validation (%)\t");
                    filewriter.write("dCrossValidation\t");
                    filewriter.write(dCrossValidation+"\t");
                    filewriter.write("-\n");
                
                    sTORadio = "...";
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

                    filewriter.write("7\t");
                    filewriter.write("Test Option\t");
                    filewriter.write("sTORadio\t");
                    filewriter.write(iRadio+"\t");
                    filewriter.write(sTORadio+"\n");

                    filewriter.write("8\t");
                    filewriter.write("Data File\t");
                    filewriter.write("sDataFile\t");
                    filewriter.write(sFileName+"\t");
                    filewriter.write("-\n");

                    filewriter.write("9\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nDFAttributes\t");
                    filewriter.write(nDFAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("10\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nDFInstances\t");
                    filewriter.write(nDFInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("11\t");
                    filewriter.write("Test Data File\t");
                    filewriter.write("sTestDataFile\t");
                    filewriter.write(sTestFileName+"\t");
                    filewriter.write("-\n");

                    filewriter.write("12\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nTDFAttributes\t");
                    filewriter.write(nTDFAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("13\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nTDFInstances\t");
                    filewriter.write(nTDFInstances+"\t");
                    filewriter.write("-\n");


                    filewriter.write("14\t");
                    filewriter.write("First Data File\t");
                    filewriter.write("sFileData\t");
                    filewriter.write(sFileData+"\t");
                    filewriter.write("-\n");

                    filewriter.write("15\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdAttributes\t");
                    filewriter.write(sdAttributes+"\t"); 
                    filewriter.write("-\n");

                    filewriter.write("16\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdInstances\t");
                    filewriter.write(sdInstances+"\t");
                    filewriter.write("-\n");

                    filewriter.write("17\t");
                    filewriter.write("Second Data File\t");
                    filewriter.write("sPFileData\t");
                    filewriter.write(sPFileData+"\t");
                    filewriter.write("-\n");

                    filewriter.write("18\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdPAttributes\t");
                    filewriter.write(sdPAttributes+"\t");
                    filewriter.write("-\n");

                    filewriter.write("19\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdPInstances\t");
                    filewriter.write(sdPInstances+"\t");
                    filewriter.write("-\n");
                }
                filewriter.close();
                
                %><script>alert('Your input form has been saved on the server');</script><%
                
                if (NormalRadio.equals("NormalRadio1")) {%><script>document.getElementById("NormalRadio1").checked = true; </script><%}
                else if (NormalRadio.equals("NormalRadio2")) {%><script>document.getElementById("NormalRadio2").checked = true; </script><%}
            
                if (PRadio.equals("PRadio1")) { 
                    if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                    else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script><%}
                    else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script><%}
                    else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script><%}
                }
            }
            else if (sLoadModel != "") { 
                String datafile = request.getParameter("loadmodel");
                
                String filename;
                filename = "SVRModel.txt";
                String file = application.getRealPath("/") + filename;
                BufferedReader br = new BufferedReader(new FileReader(file)); 
                String line = null;
                String[] cols;
                line = br.readLine();
                if (line == null) {
                    out .println("<h3><font color='red'>Model not found !</font></h3>");
                } else {
                    cols = line.split("\\t"); 
                    %><script>document.getElementById("nValueC").value = "<%=cols[0]%>";
                    document.getElementById("nValueS").value = "<%=cols[1]%>";
                    </script><%
                }
                
                if (NormalRadio.equals("NormalRadio1")) {%>
                    <script>document.getElementById("NormalRadio1").checked = true; </script><%}
                else if (NormalRadio.equals("NormalRadio2")) {%>
                    <script>document.getElementById("NormalRadio2").checked = true; </script><%}
            }
            else {
                if (sLoadingEvaluation != "") {  
                    if (sTestFileName != "") { 
                        %><script>document.getElementById("TORadio4").checked = true; 
                                  document.getElementById("TORadio").value = "<%=TORadio%>";
                        </script>          
                        <% 
                    }
                }

                if (sLoadingPrediction != "") {}  

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
                }
                else if (PRadio.equals("PRadio2")) {
                }

                if (PRadio.equals("PRadio1")) { 
                    if (TORadio.equals("TORadio1")) {%><script>document.getElementById("TORadio1").checked = true; </script><%}
                    else if (TORadio.equals("TORadio2")) {%><script>document.getElementById("TORadio2").checked = true; </script><%}
                    else if (TORadio.equals("TORadio3")) {%><script>document.getElementById("TORadio3").checked = true; </script><%}
                    else if (TORadio.equals("TORadio4")) {%><script>document.getElementById("TORadio4").checked = true; </script><%}
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
                    //String file = application.getRealPath("/") + sFileName;
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
                    //String file = application.getRealPath("/") + sLearningFileName;
                    String file = sLearningFileName;
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

                <input type="hidden" name="sSaveDataFileLSSVM" id="sSaveDataFileLSSVM" value="<%=sSaveDataFileLSSVM%>"/>
                <input type="hidden" name="sMoveBottom" id="sMoveBottom" value="<%=sMoveBottom%>"/> 
                <input type="hidden" name="VarNextLSSVM" id="VarNextLSSVM" value="<%=VarNextLSSVM%>"/>
                <input type="hidden" name="sErrorLSSVM" id="sErrorLSSVM" value="<%=sErrorLSSVM%>"/>

                <div style="display:none;"><input type="file" id="importfileLSSVM" name="importfileLSSVM"/></div>
                <div style="display:none;"><input type="file" id="loadmodelLSSVM" name="loadmodelLSSVM"/></div>
                
                <% if (hdf.equals("1")) { %>
                    <input type="hidden" name="hiddendatafile" id="hiddendatafile" value="1">
                <% } else { %>
                    <input type="hidden" name="hiddendatafile" id="hiddendatafile" value="0">
                <% } %>
                
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
                
                <input type="hidden" name="sLoadModelLSSVM" id="sLoadModelLSSVM" value="<%=sLoadModelLSSVM%>"/>

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
                            <script>
                                document.getElementById("TORadio1LSSVM").checked = false; 
                                document.getElementById("TORadio2LSSVM").checked = false; 
                                document.getElementById("TORadio3LSSVM").checked = false; 
                                document.getElementById("TORadio4LSSVM").checked = false; 
                            </script>
                            
                            <% if (TORadioLSSVM.equals("TORadio1LSSVM")) {%><script>document.getElementById("TORadio1LSSVM").checked = true; </script>
                            <% } else if (TORadioLSSVM.equals("TORadio2LSSVM")) {%><script>document.getElementById("TORadio2LSSVM").checked = true; </script>
                            <% } else if (TORadioLSSVM.equals("TORadio3LSSVM")) {%><script>document.getElementById("TORadio3LSSVM").checked = true; </script>
                            <% } else if (TORadioLSSVM.equals("TORadio4LSSVM")) {%><script>document.getElementById("TORadio4LSSVM").checked = true; </script>
                            <% } %>
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
                                <button type="button" onclick="return writedefaultlssvm(0)" class="btn btn-primary">Default</button>
                                <button type="button" onclick="return loadmodelfuncLSSVM()" class="btn btn-primary">Load Model</button>
                                <%--<button type="button" onclick="return loadingdataformLSSVM(1);" class="btn btn-primary">Import</button>--%>
                                <button type="button" onclick="return importSVMfilefunc();" id="importbutton" class="btn btn-primary">Import</button>
                                <button type="button" onclick="return exportparametersLSSVM(0);" class="btn btn-primary">Export</button>
                                <button type="button" onclick="return cleardefaultlssvm(0);" class="btn btn-primary">Clear</button>
                            </div>
                        </td>
                        <a href="#bottomformLSSVM">
                            <img src="Arrow bottom.png" alt="..." width="18" style="float:right">
                        </a>
                    </tr>
                </table>

                <div class="bs-example">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <!--<div class="container visible-lg-block wdetail">-->
                            <div class="container wdetail">
                                <h2>Parameter</h2>
                                <p>Input data and system parameters.</p>
                                <!--<div class="row">
                                    <div class="col-md-3">Input data:</div>
                                    <div class="col-md-2">none</div>
                                </div>
                                <br>-->
                                <div class="row">
                                    <div class="col-md-3">System parameters:</div>
                                    <div class="col-md-2">Value of C</div>
                                    <div class="col-md-2">
                                        <input type="text" name="nValueCLSSVM" id="nValueCLSSVM" size="8" value="<%=nValueCLSSVM%>"> 
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">Value of sigma</div>
                                    <div class="col-md-1">
                                        <input type="text" name="nValueSLSSVM" id="nValueSLSSVM" size="8" value="<%=nValueSLSSVM%>">
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
                                                <!--<p>The test data file used to evaluate the optimized model again. Output phase: calculate performance measures (i.e., RMSE, MAE, MAPE, R)</p>
                                                <p>to find the prediction accuracy.</p>-->
                                                <div class="boundary">
                                                    <div class="row form-inline">
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
                                                            </label>
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
                                                <%-- if (PRadioLSSVM.equals("PRadio1LSSVM")) { --%>            
                                                <%-- } --%>
                                            <% } else { %>
                                                <div id="testdatasection" style="display: none !important;">
                                                    <h3>Test Data File</h3>
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                                <input type="hidden" name="fullPathTLSSVM" id="fullPathTLSSVM" value=""/>
                                                                <input type="file" class="filestyle" name="sTestDataFileLSSVM" id="sTestDataFileLSSVM" accept=".csv,.txt" data-input="false"/>
                                                            </label>
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
                            
                            <% } else if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>        
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
                                sFileDataLSSVM=sFileNameLSSVM;
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
            
            <%--><h6 id="bottomformLSSVM">
                <img src="Logo-Space.png" alt="     " width="4" height="5">
                &nbsp;. . . [END OF DATA FORM] &nbsp;&nbsp;&nbsp;
                    
                <% if (sLoadingDataExcelLSSVM != "") { %>
                <% } else { %>
                    <%--><a href="#top">
                        <img src="Icon-Top.png" alt="..." width="13" height="17" style="float:right">
                    </a><--%>
                    <%--><div class="scrollToTop">
                      <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                <% } %>
            </h6><--%>
            
            <table>
                <tr>
                    <td>
                        <div class="container boundary" id="bottomformLSSVM">
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
                            <input type="text" name="sBaseFileNameLSSVM" id="sBaseFileNameLSSVM" size="30" value="<%=sBaseFileNameLSSVM%>">
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
                        //document.getElementById("PRadio1LSSVM").checked = true; //"null" ;
                    </script>
                    <%
                }
                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    %>
                    <script>
                        //document.getElementById("PRadio2LSSVM").checked = true; //"null" ;
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

                sPRadioLSSVM = "...";
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

                sTORadioLSSVM = "..."; 
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
                            sNormalRadioLSSVM = "...";
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
                    </a>
                    <div class="scrollToTop">
                      <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                </h6>--%>
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;
            
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <jsp:include page="LSSVMServlet">
                                <jsp:param name="nValueCLSSVM" value="<%=nValueCLSSVM%>" />
                                <jsp:param name="nValueSLSSVM" value="<%=nValueSLSSVM%>" />
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
                                %><script>//document.getElementById("PRadio1LSSVM").checked = true; 
                                </script><%
                            }
                            else {
                                %><script>//document.getElementById("PRadio2LSSVM").checked = true; 
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
            else if (!sSaveDataFileLSSVM.equals("")) {               
                String filename;
                if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    filename = "Data_LSSVM_Prediction.txt";
                }
                else {
                    filename = "Data_LSSVM_Evaluation.txt";
                }
                String file = application.getRealPath("/") + filename;
                FileWriter filewriter = new FileWriter(file, false);
                int iRadio = 0;
                
                /*
                nValueCLSSVM = Float.parseFloat(snValueCLSSVM);
                nValueSLSSVM = Float.parseFloat(snValueSLSSVM);
                dHoldOutLSSVM = Float.parseFloat(sdHoldOutLSSVM);
                dCrossValidationLSSVM = Float.parseFloat(sdCrossValidationLSSVM);
                
                nDFAttributesLSSVM = Float.parseFloat(snDFAttributesLSSVM);
                nDFInstancesLSSVM = Float.parseFloat(snDFInstancesLSSVM);
                nTDFAttributesLSSVM = Float.parseFloat(snTDFAttributesLSSVM);
                nTDFInstancesLSSVM = Float.parseFloat(snTDFInstancesLSSVM);
                nLDFAttributesLSSVM = Float.parseFloat(snLDFAttributesLSSVM);
                nLDFInstancesLSSVM = Float.parseFloat(snLDFInstancesLSSVM);
                nPDFAttributesLSSVM = Float.parseFloat(snPDFAttributesLSSVM);
                nPDFInstancesLSSVM = Float.parseFloat(snPDFInstancesLSSVM);
                */
                
                // title
                filewriter.write("LSSVM Data:\n");
            
                // column header
                filewriter.write("No.\t");
                filewriter.write("Description\t");
                filewriter.write("Variable\t");
                filewriter.write("Value\t");
                filewriter.write("Remark\n");

                // data rows
                filewriter.write("1\t");
                filewriter.write("Value of C\t");
                filewriter.write("nValueCLSSVM\t");
                filewriter.write(nValueCLSSVM+"\t");
                filewriter.write("-\n");
                
                filewriter.write("2\t");
                filewriter.write("Value of Sigma\t");
                filewriter.write("nValueSLSSVM\t");
                filewriter.write(nValueSLSSVM+"\t");
                filewriter.write("-\n");
                
                sNormalRadioLSSVM = "...";
                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                    sNormalRadioLSSVM = "Original value";
                    iRadio=1;
                }
                else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                    sNormalRadioLSSVM = "Feature scaling";
                    iRadio=2;
                }

                filewriter.write("3\t");
                filewriter.write("Normalization Method\t");
                filewriter.write("sNormalRadioLSSVM\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sNormalRadioLSSVM+"\n");

                sPRadioLSSVM = "...";
                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                    sPRadioLSSVM = "Evaluation";
                    iRadio=1;
                }
                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    sPRadioLSSVM = "Prediction";
                    iRadio=2;
                }
                    
                filewriter.write("4\t");
                filewriter.write("Purpose\t");
                filewriter.write("sPRadioLSSVM\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sPRadioLSSVM+"\n");
                
                if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    filewriter.write("5\t");
                    filewriter.write("Learning Data File\t");
                    filewriter.write("sLearningDataFileLSSVM\t");
                    filewriter.write(sLearningFileNameLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("6\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nLDFAttributesLSSVM\t");
                    filewriter.write(nLDFAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("7\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nLDFInstancesLSSVM\t");
                    filewriter.write(nLDFInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("8\t");
                    filewriter.write("Prediction Data File\t");
                    filewriter.write("sPredictionDataFileLSSVM\t");
                    filewriter.write(sPredictionFileNameLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("9\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nPDFAttributesLSSVM\t");
                    filewriter.write(nPDFAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("10\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nPDFInstancesLSSVM\t");
                    filewriter.write(nPDFInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("11\t");
                    filewriter.write("First Data File\t");
                    filewriter.write("sFileDataLSSVM\t");
                    filewriter.write(sFileDataLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("12\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdAttributesLSSVM\t");
                    filewriter.write(sdAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("13\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdInstancesLSSVM\t");
                    filewriter.write(sdInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("14\t");
                    filewriter.write("Second Data File\t");
                    filewriter.write("sPFileDataLSSVM\t");
                    filewriter.write(sPFileDataLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("15\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdPAttributesLSSVM\t");
                    filewriter.write(sdPAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("16\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdPInstancesLSSVM\t");
                    filewriter.write(sdPInstancesLSSVM+"\t");
                    filewriter.write("-\n");
                } else {
                    filewriter.write("5\t");
                    filewriter.write("Hold-Out (%)\t");
                    filewriter.write("dHoldOutLSSVM\t");
                    filewriter.write(dHoldOutLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("6\t");
                    filewriter.write("Cross-Validation (%)\t");
                    filewriter.write("dCrossValidationLSSVM\t");
                    filewriter.write(dCrossValidationLSSVM+"\t");
                    filewriter.write("-\n");

                    sTORadioLSSVM = "...";
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

                    filewriter.write("7\t");
                    filewriter.write("Test Option\t");
                    filewriter.write("sTORadioLSSVM\t");
                    filewriter.write(iRadio+"\t");
                    filewriter.write(sTORadioLSSVM+"\n");

                    filewriter.write("8\t");
                    filewriter.write("Data File\t");
                    filewriter.write("sDataFileLSSVM\t");
                    filewriter.write(sFileNameLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("9\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nDFAttributesLSSVM\t");
                    filewriter.write(nDFAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("10\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nDFInstancesLSSVM\t");
                    filewriter.write(nDFInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("11\t");
                    filewriter.write("Test Data File\t");
                    filewriter.write("sTestDataFileLSSVM\t");
                    filewriter.write(sTestFileNameLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("12\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("nTDFAttributesLSSVM\t");
                    filewriter.write(nTDFAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("13\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("nTDFInstancesLSSVM\t");
                    filewriter.write(nTDFInstancesLSSVM+"\t");
                    filewriter.write("-\n");
                
                    filewriter.write("14\t");
                    filewriter.write("First Data File\t");
                    filewriter.write("sFileDataLSSVM\t");
                    filewriter.write(sFileDataLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("15\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdAttributesLSSVM\t");
                    filewriter.write(sdAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("16\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdInstancesLSSVM\t");
                    filewriter.write(sdInstancesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("17\t");
                    filewriter.write("Second Data File\t");
                    filewriter.write("sPFileDataLSSVM\t");
                    filewriter.write(sPFileDataLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("18\t");
                    filewriter.write("No. of Attributes\t");
                    filewriter.write("sdPAttributesLSSVM\t");
                    filewriter.write(sdPAttributesLSSVM+"\t");
                    filewriter.write("-\n");

                    filewriter.write("19\t");
                    filewriter.write("No. of Instances\t");
                    filewriter.write("sdPInstancesLSSVM\t");
                    filewriter.write(sdPInstancesLSSVM+"\t");
                    filewriter.write("-\n");
                }

                filewriter.close();

                %><script>alert('Your input form has been saved on the server');</script><%
                
                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {%><script>document.getElementById("NormalRadio1LSSVM").checked = true;</script>
                <% } else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {%><script>document.getElementById("NormalRadio2LSSVM").checked = true;</script> <% }
            
                if (PRadio.equals("PRadio1")) { 
                    if (TORadioLSSVM.equals("TORadio1LSSVM")) {%><script>document.getElementById("TORadio1LSSVM").checked = true;</script>
                    <% } else if (TORadioLSSVM.equals("TORadio2LSSVM")) {%><script>document.getElementById("TORadio2LSSVM").checked = true;</script>
                    <% } else if (TORadioLSSVM.equals("TORadio3LSSVM")) {%><script>document.getElementById("TORadio3LSSVM").checked = true;</script>
                    <% } else if (TORadioLSSVM.equals("TORadio4LSSVM")) {%><script>document.getElementById("TORadio4LSSVM").checked = true;</script><% }
                }
            }
            else if (sLoadModelLSSVM != "") { 
                String datafile = request.getParameter("loadmodelLSSVM");
                
                String filename;
                filename = "SVMModel.txt";
                String file = application.getRealPath("/") + filename;
                BufferedReader br = new BufferedReader(new FileReader(file)); 
                String line = null;
                String[] cols;
                line = br.readLine();
                if (line == null) {
                    out .println("<h3><font color='red'>Model not found !</font></h3>");
                } else {
                    cols = line.split("\\t"); 
                    %><script>document.getElementById("nValueCLSSVM").value = "<%=cols[0]%>";
                    document.getElementById("nValueSLSSVM").value = "<%=cols[1]%>";
                    </script><%
                }
                
                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {%><script>document.getElementById("NormalRadio1LSSVM").checked = true;</script>
                <% } else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {%><script>document.getElementById("NormalRadio2LSSVM").checked = true;</script> <% }
            
                if (PRadio.equals("PRadio1")) { 
                    if (TORadioLSSVM.equals("TORadio1LSSVM")) {%><script>document.getElementById("TORadio1LSSVM").checked = true;</script>
                    <% } else if (TORadioLSSVM.equals("TORadio2LSSVM")) {%><script>document.getElementById("TORadio2LSSVM").checked = true;</script>
                    <% } else if (TORadioLSSVM.equals("TORadio3LSSVM")) {%><script>document.getElementById("TORadio3LSSVM").checked = true;</script>
                    <% } else if (TORadioLSSVM.equals("TORadio4LSSVM")) {%><script>document.getElementById("TORadio4LSSVM").checked = true;</script><% }
                }
            }
            else {
                if (sLoadingEvaluationLSSVM != "") {  
                    if (sTestFileNameLSSVM != "") {
                        %><script>document.getElementById("TORadio4LSSVM").checked = true; 
                                  document.getElementById("TORadioLSSVM").value = "<%=TORadioLSSVM%>";
                        </script>          
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
                }
                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                }

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
            
            var importedfile = document.getElementById("importfile");
            $(importedfile).change(function(event) {
                
                document.getElementById("sSaveDataFile").value = "";
                document.getElementById("sLoadingDataExcel").value = "";
                document.getElementById("sLoadingDataExcelClick").value = "";
                document.getElementById("sLoadingDataFile").value = "1";
                
                //document.getElementById("myform").enctype = "text/html";
                document.getElementById("myform").enctype = "multipart/form-data";
                document.getElementById("myform").method = "POST";
                document.getElementById("myform").action = "ImportLSSVRParamServlet";
                document.getElementById("myform").submit();
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
                document.getElementById("myformLSSVM").action = "ImportLSSVMParamServlet";
                document.getElementById("myformLSSVM").submit();
            });
            
            var loadmodel = document.getElementById("loadmodel");
            $(loadmodel).change(function(event) {
                
                document.getElementById("sLoadModel").value = "1";
                
                //document.getElementById("myform").enctype = "text/html";
                document.getElementById("myform").enctype = "multipart/form-data";
                document.getElementById("myform").method = "POST";
                document.getElementById("myform").action = "LoadSVRModelServlet";
                document.getElementById("myform").submit();
            });
            
            var loadmodel = document.getElementById("loadmodelLSSVM");
            $(loadmodel).change(function(event) {
                
                document.getElementById("sLoadModelLSSVM").value = "1";
                
                //document.getElementById("myform").enctype = "text/html";
                document.getElementById("myformLSSVM").enctype = "multipart/form-data";
                document.getElementById("myformLSSVM").method = "POST";
                document.getElementById("myformLSSVM").action = "LoadSVMModelServlet";
                document.getElementById("myformLSSVM").submit();
            });
        </script>
    </body>
</html>
