<%-- 
    Document   : ModuleSFALSSVM
    Created on : Sep 20, 2015, 11:54:15 PM
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
    String VarSaveData = request.getParameter("VarSaveData");
    String VarLoadData = request.getParameter("VarLoadData");
    String VarReportData = request.getParameter("VarReportData");
    
    String VarTwo = request.getParameter("VarTwo");
    String VarNextLSSVM = request.getParameter("VarNextLSSVM");
    
    String sSaveModel = request.getParameter("sSaveModel");
    if (sSaveModel == null) {
        sSaveModel = "";        
    };

    String sProcessRun = request.getParameter("sProcessRun");
    if (sProcessRun == null) {
        sProcessRun="";
    }

    int nBestFold;
    String sBestFold = request.getParameter("sBestFold");
    if (sBestFold == null) {
        sBestFold="1";
    }
    nBestFold=(int)Double.parseDouble(sBestFold); 
    
    int opt; 
    String sopt = request.getParameter("sopt");
    if (sopt == null) {
        sopt = "3";
    }
    opt=(int)Double.parseDouble(sopt); 
    
    int GraphNo;
    String sGraphNo = request.getParameter("sGraphNo");
    if (sGraphNo == null) {
        sGraphNo = "31";
    }
    GraphNo=(int)Double.parseDouble(sGraphNo); 
    
    int GraphType;
    String sGraphType = request.getParameter("sGraphType");
    if (sGraphType == null) {
        sGraphType = "2"; //1        
    };
    GraphType=(int)Double.parseDouble(sGraphType);

    String sPageControl = request.getParameter("sPageControl"); 
    if (sPageControl == null) {
        sPageControl = "1";
    }
    
    String sBaseFileName = request.getParameter("sBaseFileName");
    if (sBaseFileName == null) {
        sBaseFileName = "";
    }
    
    String sCreate = request.getParameter("sCreate");
    if (sCreate == null) {
        sCreate = "";
    }
    String vpath = request.getParameter("vpath");
    if (vpath == null) {
        vpath = "";
    }
    String vfile = request.getParameter("vfile");
    if (vfile == null) {
        vfile = "";
    }

    String ssResult01Name = request.getParameter("ssResult01Name");
    if (ssResult01Name == null) {
        ssResult01Name = "";
    }
    String ssResult02Name = request.getParameter("ssResult02Name");
    if (ssResult02Name == null) {
        ssResult02Name = "";
    }
    String ssResult03Name = request.getParameter("ssResult03Name");
    if (ssResult03Name == null) {
        ssResult03Name = "";
    }
    String ssResult04Name = request.getParameter("ssResult04Name");
    if (ssResult04Name == null) {
        ssResult04Name = "";
    }
    String ssResult04aName = request.getParameter("ssResult04aName");
    if (ssResult04aName == null) {
        ssResult04aName = "";
    }
    String ssResult04bName = request.getParameter("ssResult04bName");
    if (ssResult04bName == null) {
        ssResult04bName = "";
    }
    String ssResult04cName = request.getParameter("ssResult04cName");
    if (ssResult04cName == null) {
        ssResult04cName = "";
    }
    String ssResult04dName = request.getParameter("ssResult04dName");
    if (ssResult04dName == null) {
        ssResult04dName = "";
    }
    String ssResult05Name = request.getParameter("ssResult05Name");
    if (ssResult05Name == null) {
        ssResult05Name = "";
    }
    String ssResult06Name = request.getParameter("ssResult06Name");
    if (ssResult06Name == null) {
        ssResult06Name = "";
    }
    
    String sLoadingDataSet1 = request.getParameter("sLoadingDataSet1");
    if (sLoadingDataSet1 == null) {
        sLoadingDataSet1 = "";       
    };
    String sLoadingDataSet2 = request.getParameter("sLoadingDataSet2");
    if (sLoadingDataSet2 == null) {
        sLoadingDataSet2 = "";       
    };
    String sLoadingDataSet3 = request.getParameter("sLoadingDataSet3");
    if (sLoadingDataSet3 == null) {
        sLoadingDataSet3 = "";       
    };
    String sLoadingDataSet4 = request.getParameter("sLoadingDataSet4");
    if (sLoadingDataSet4 == null) {
        sLoadingDataSet4 = "";       
    };
    String sLoadingDataSet5 = request.getParameter("sLoadingDataSet5");
    if (sLoadingDataSet5 == null) {
        sLoadingDataSet5 = "";       
    };
    
    String snFireFliesLSSVM = request.getParameter("nFireFliesLSSVM");
    String snMaxGenerationLSSVM = request.getParameter("nMaxGenerationLSSVM");
    int nGeneration=(int)Double.parseDouble(snMaxGenerationLSSVM);
    String sdMinBetaLSSVM = request.getParameter("dMinBetaLSSVM");
    String sdGammaLSSVM = request.getParameter("dGammaLSSVM");
    String sdAlphaLSSVM = request.getParameter("dAlphaLSSVM");
    String sdAIWeightLSSVM = request.getParameter("dAIWeightLSSVM");
    String sdTauLSSVM = request.getParameter("dTauLSSVM");
    String sdBPotentialLSSVM = request.getParameter("dBPotentialLSSVM");
    String sdC1LSSVM = request.getParameter("dC1LSSVM");
    String sdC2LSSVM = request.getParameter("dC2LSSVM");
    String sdS1LSSVM = request.getParameter("dS1LSSVM");
    String sdS2LSSVM = request.getParameter("dS2LSSVM");
    String sdTrainingPSLSSVM = request.getParameter("dTrainingPSLSSVM");
    String sdValidationPSLSSVM = request.getParameter("dValidationPSLSSVM");
    String sdTotalSizeLSSVM = request.getParameter("dTotalSizeLSSVM");
    String snLastChange1LSSVM = request.getParameter("nLastChange1LSSVM");
    String snLastChange2LSSVM = request.getParameter("nLastChange2LSSVM");
    String sdHoldOutLSSVM = request.getParameter("dHoldOutLSSVM");
    String sdCrossValidationLSSVM = request.getParameter("dCrossValidationLSSVM");

    String snDFAttributesLSSVM = request.getParameter("nDFAttributesLSSVM");
    String snDFInstancesLSSVM = request.getParameter("nDFInstancesLSSVM");
    String snTDFAttributesLSSVM = request.getParameter("nTDFAttributesLSSVM");
    String snTDFInstancesLSSVM = request.getParameter("nTDFInstancesLSSVM");
    String snLDFAttributesLSSVM = request.getParameter("nLDFAttributesLSSVM");
    String snLDFInstancesLSSVM = request.getParameter("nLDFInstancesLSSVM");
    String snPDFAttributesLSSVM = request.getParameter("nPDFAttributesLSSVM");
    String snPDFInstancesLSSVM = request.getParameter("nPDFInstancesLSSVM");

    int nrows1=(int)Double.parseDouble(snDFInstancesLSSVM); 
    int ncols1=(int)Double.parseDouble(snDFAttributesLSSVM);
    String[][] Dataraw = new String[nrows1][ncols1];

    int nrows2=(int)Double.parseDouble(snTDFInstancesLSSVM);
    int ncols2=(int)Double.parseDouble(snTDFAttributesLSSVM);
    String[][] Datatest = new String[nrows2][ncols2];

    int nrows3=(int)Double.parseDouble(snLDFInstancesLSSVM);
    int ncols3=(int)Double.parseDouble(snLDFAttributesLSSVM);
    String[][] Datatrains = new String[nrows3][ncols3];

    int nrows4=(int)Double.parseDouble(snPDFInstancesLSSVM);
    int ncols4=(int)Double.parseDouble(snPDFAttributesLSSVM);
    String[][] Datapres = new String[nrows4][ncols4];

    double nFireFliesLSSVM;
    double nMaxGenerationLSSVM;
    double dMinBetaLSSVM;
    double dGammaLSSVM;
    double dAlphaLSSVM;
    double dAIWeightLSSVM;
    double dTauLSSVM;
    double dBPotentialLSSVM;
    double dC1LSSVM;
    double dC2LSSVM;
    double dS1LSSVM;
    double dS2LSSVM;
    double dTrainingPSLSSVM;
    double dValidationPSLSSVM;
    double dTotalSizeLSSVM;
    double nLastChange1LSSVM;
    double nLastChange2LSSVM;
    double dHoldOutLSSVM;
    double dCrossValidationLSSVM;
    
    double nDFAttributesLSSVM;
    double nDFInstancesLSSVM;
    double nTDFAttributesLSSVM;
    double nTDFInstancesLSSVM;
    double nLDFAttributesLSSVM;
    double nLDFInstancesLSSVM;
    double nPDFAttributesLSSVM;
    double nPDFInstancesLSSVM;

    String NormalRadioLSSVM = request.getParameter("NormalRadioLSSVM");
    String SCRadioLSSVM = request.getParameter("SCRadioLSSVM");
    String PRadioLSSVM = request.getParameter("PRadioLSSVM");
    String TORadioLSSVM = request.getParameter("TORadioLSSVM");
    
    String sNormalRadioLSSVM = "";
    String sSCRadioLSSVM = "";
    String sPRadioLSSVM = "";
    String sTORadioLSSVM = "";

    double dNormalRadioLSSVM =1;
    double dSCRadioLSSVM =1;
    double dPRadioLSSVM =1;
    double dTORadioLSSVM =1;

    String sValueC = "";
    String sValueS = ""; 

    String sDataFileLSSVM = request.getParameter("sDataFileLSSVM");
    String sTestDataFileLSSVM = request.getParameter("sTestDataFileLSSVM");
    String sLearningDataFileLSSVM = request.getParameter("sLearningDataFileLSSVM");
    String sPredictionDataFileLSSVM = request.getParameter("sPredictionDataFileLSSVM");

    String sFileNameLSSVM = request.getParameter("sFileNameLSSVM");
    String sTestFileNameLSSVM = request.getParameter("sTestFileNameLSSVM");
    String sLearningFileNameLSSVM = request.getParameter("sLearningFileNameLSSVM");
    String sPredictionFileNameLSSVM = request.getParameter("sPredictionFileNameLSSVM");
    
    String dAttributesLSSVM = request.getParameter("dAttributesLSSVM");
    String dInstancesLSSVM = request.getParameter("dInstancesLSSVM");
    String dPAttributesLSSVM = request.getParameter("dPAttributesLSSVM");
    String dPInstancesLSSVM = request.getParameter("dPInstancesLSSVM");

    String sFileDataLSSVM = request.getParameter("sFileDataLSSVM");
    String sdAttributesLSSVM = request.getParameter("sdAttributesLSSVM");
    String sdInstancesLSSVM = request.getParameter("sdInstancesLSSVM");

    String sPFileDataLSSVM = request.getParameter("sPFileDataLSSVM");
    String sdPAttributesLSSVM = request.getParameter("sdPAttributesLSSVM");
    String sdPInstancesLSSVM = request.getParameter("sdPInstancesLSSVM");

    String sSpace = "";
    String sDummy = "";
    String sPDummy = "";
    
    String sVariation = "";
    
    String[] headers = null;
    String[] cols;
    
    int nrow=1;
    int ncol=1;

    String sError="";
    double dDummy=1.0;
                            
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
        <title>NiMOPS: SFA-LSSVM</title>
        
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
            function viewdataset(val) {
                if (val===1) {
                    document.getElementById("sLoadingDataSet1").value = val;
                    document.getElementById("sLoadingDataSet2").value = "";
                    document.getElementById("sLoadingDataSet3").value = "";
                    document.getElementById("sLoadingDataSet4").value = "";
                    document.getElementById("sLoadingDataSet5").value = "";
                }
                else if (val===2) {
                    document.getElementById("sLoadingDataSet1").value = "";
                    document.getElementById("sLoadingDataSet2").value = val;
                    document.getElementById("sLoadingDataSet3").value = "";
                    document.getElementById("sLoadingDataSet4").value = "";
                    document.getElementById("sLoadingDataSet5").value = "";
                }
                else if (val===3) {
                    document.getElementById("sLoadingDataSet1").value = "";
                    document.getElementById("sLoadingDataSet2").value = "";
                    document.getElementById("sLoadingDataSet3").value = val;
                    document.getElementById("sLoadingDataSet4").value = "";
                    document.getElementById("sLoadingDataSet5").value = "";
                }
                else if (val===4) {
                    document.getElementById("sLoadingDataSet1").value = "";
                    document.getElementById("sLoadingDataSet2").value = "";
                    document.getElementById("sLoadingDataSet3").value = "";
                    document.getElementById("sLoadingDataSet4").value = val;
                    document.getElementById("sLoadingDataSet5").value = "";
                }
                else {
                    document.getElementById("sLoadingDataSet1").value = "";
                    document.getElementById("sLoadingDataSet2").value = "";
                    document.getElementById("sLoadingDataSet3").value = "";
                    document.getElementById("sLoadingDataSet4").value = "";
                    document.getElementById("sLoadingDataSet5").value = val;
                }

                return refreshform(0);
            }
            
            function rundata2(val) {
                var ssResult01Name = document.getElementById("ssResult01Name");
                var ssResult02Name = document.getElementById("ssResult02Name");
                var ssResult03Name = document.getElementById("ssResult03Name");
                var ssResult04Name = document.getElementById("ssResult04Name");
                var ssResult04aName = document.getElementById("ssResult04aName");
                var ssResult04bName = document.getElementById("ssResult04bName");
                var ssResult04cName = document.getElementById("ssResult04cName");
                var ssResult04dName = document.getElementById("ssResult04dName");
                var ssResult05Name = document.getElementById("ssResult05Name");
                var ssResult06Name = document.getElementById("ssResult06Name");
                
                var sProcessRun = document.getElementById("sProcessRun");
                sProcessRun = "1";
                document.getElementById("sProcessRun").value = sProcessRun;
                
                var sSaveModel = document.getElementById("sSaveModel");
                sSaveModel = "";
                document.getElementById("sSaveModel").value = sSaveModel;

                var sLoadingDataSet1 = document.getElementById("sLoadingDataSet1");
                sLoadingDataSet1 = "";
                document.getElementById("sLoadingDataSet1").value = sLoadingDataSet1;
                var sLoadingDataSet2 = document.getElementById("sLoadingDataSet2");
                sLoadingDataSet2 = "";
                document.getElementById("sLoadingDataSet2").value = sLoadingDataSet2;
                var sLoadingDataSet3 = document.getElementById("sLoadingDataSet3");
                sLoadingDataSet3 = "";
                document.getElementById("sLoadingDataSet3").value = sLoadingDataSet3;
                var sLoadingDataSet4 = document.getElementById("sLoadingDataSet4");
                sLoadingDataSet4 = "";
                document.getElementById("sLoadingDataSet4").value = sLoadingDataSet4;
                var sLoadingDataSet5 = document.getElementById("sLoadingDataSet5");
                sLoadingDataSet5 = "";
                document.getElementById("sLoadingDataSet5").value = sLoadingDataSet5;

                document.getElementById("sPageControl").value = "1";
                return refreshform(val);
            }

            function previousscreenLSSVM() {
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
                if (TORadioLSSVM.value === "TORadio4LSSVM") {
                    document.getElementById("hiddendatafile").value = "1";
                } else {
                    document.getElementById("hiddendatafile").value = "0";
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

                var sFileDataLSSVM = document.getElementById("sFileDataLSSVM");
                var sdInstancesLSSVM = document.getElementById("sdInstancesLSSVM");
                var sdAttributesLSSVM = document.getElementById("sdAttributesLSSVM");

                var sPFileDataLSSVM = document.getElementById("sPFileDataLSSVM");
                var sPdInstancesLSSVM = document.getElementById("sdPInstancesLSSVM");
                var sPdAttributesLSSVM = document.getElementById("sdPAttributesLSSVM");

                var VarTwo = document.getElementById("VarTwo");
                document.getElementById("VarTwo").value = "Two";
                
                document.getElementById("myform2").action = "SFALSSVM.jsp";
                document.getElementById("myform2").submit();
                
                return valid;
            }

            function refreshform(val) {
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

                var sFileDataLSSVM = document.getElementById("sFileDataLSSVM");
                var sdInstancesLSSVM = document.getElementById("sdInstancesLSSVM");
                var sdAttributesLSSVM = document.getElementById("sdAttributesLSSVM");

                var sPFileDataLSSVM = document.getElementById("sPFileDataLSSVM");
                var sPdInstancesLSSVM = document.getElementById("sdPInstancesLSSVM");
                var sPdAttributesLSSVM = document.getElementById("sdPAttributesLSSVM");

                var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                
                var ssResult01Name = document.getElementById("ssResult01Name");
                var ssResult02Name = document.getElementById("ssResult02Name");
                var ssResult03Name = document.getElementById("ssResult03Name");
                var ssResult04Name = document.getElementById("ssResult04Name");
                var ssResult04aName = document.getElementById("ssResult04aName");
                var ssResult04bName = document.getElementById("ssResult04bName");
                var ssResult04cName = document.getElementById("ssResult04cName");
                var ssResult04dName = document.getElementById("ssResult04dName");
                var ssResult05Name = document.getElementById("ssResult05Name");
                var ssResult06Name = document.getElementById("ssResult06Name");
                
                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                
                return valid;
            }   
            
            function changetab(val) {
                var sProcessRun = document.getElementById("sProcessRun");
                sProcessRun = "";
                document.getElementById("sProcessRun").value = sProcessRun;
                if (val === 1) {
                    document.getElementById("sPageControl").value = "1";
                } else if (val === 2) {
                    document.getElementById("sPageControl").value = "2";
                } else {
                    document.getElementById("sPageControl").value = "3";
                }
                var sSaveModel = document.getElementById("sSaveModel");
                sSaveModel = "";
                document.getElementById("sSaveModel").value = sSaveModel;
                return refreshform(val);
            } 
                        
            function plotgraph(val) {
                var sGraphNo = document.getElementById("sGraphNo");
                var sGraphType = document.getElementById("sGraphType");
                if (val===31 || val===32 || val===33 || val===34 || val===35) {
                    document.getElementById("sopt").value = 3;
                    if (sGraphNo.value==="34") {
                        if (sGraphType.value==="1") {
                            document.getElementById("sGraphType").value = 2;
                        } else if (sGraphType.value==="2") {
                            document.getElementById("sGraphType").value = 2; //3
                        } else if (sGraphType.value==="3") {
                            document.getElementById("sGraphType").value = 2; //1
                        } else {
                            document.getElementById("sGraphType").value = 2; //1
                        }
                    }
                    document.getElementById("sGraphNo").value = val;
                } else if (val===41 || val===42 || val===43 || val===44 || val===45) {
                    document.getElementById("sGraphNo").value = val;
                    document.getElementById("sopt").value = 0;
                } else if (val===46 || val===47 || val===48 || val===49 || val===410) {
                    document.getElementById("sGraphNo").value = val;
                    document.getElementById("sopt").value = 0;
                } else if (val===51 || val===52 || val===53 || val===54 || val===55) {
                    document.getElementById("sGraphNo").value = val;
                    document.getElementById("sopt").value = 1;
                } else if (val===56 || val===57 || val===58 || val===59 || val===510) {
                    document.getElementById("sGraphNo").value = val;
                    document.getElementById("sopt").value = 1;
                } else {
                    document.getElementById("sGraphNo").value = val;
                    document.getElementById("sopt").value = 3;
                }
                return refreshform(val);
            }
            
            function savingmodel(val) {
                var sSaveModel = document.getElementById("sSaveModel");
                sSaveModel = "1";
                document.getElementById("sSaveModel").value = sSaveModel;
                return refreshform(val);
            } 
            
            function savingmodelexport() {
                var valid = true;
                var savemodelaction;
                if (document.getElementById("PRadioLSSVM").value === "PRadio2LSSVM")
                {
                    savemodelaction = "SaveSFALSSVMPreModel.jsp";
                }
                
                document.getElementById("myform2").action = savemodelaction;
                document.getElementById("myform2").method = "POST";
                document.getElementById("myform2").submit();
                
                return valid;
            }
        </script>
    </head>
    <body>
        <div class="sfawrap">
            <center>
                <img src="headhomepagesub.jpg" alt="Image Not Found" width="1000">
            </center>
            <%@include file="navmenu.jsp" %>

        <% if (VarSaveData != null) { %>           
        <% } else if (VarLoadData != null) { %>            
        <% } else if (VarReportData != null) { %>
            <%
                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-Disposition", "inline; filename="
                        + "Data_SFA_LSSVM.xls");

                nFireFliesLSSVM = Float.parseFloat(snFireFliesLSSVM);
                nMaxGenerationLSSVM = Float.parseFloat(snMaxGenerationLSSVM);
                dMinBetaLSSVM = Float.parseFloat(sdMinBetaLSSVM);
                dGammaLSSVM = Float.parseFloat(sdGammaLSSVM);
                dAlphaLSSVM = Float.parseFloat(sdAlphaLSSVM);
                dAIWeightLSSVM = Float.parseFloat(sdAIWeightLSSVM);
                dTauLSSVM = Float.parseFloat(sdTauLSSVM);
                dBPotentialLSSVM = Float.parseFloat(sdBPotentialLSSVM);
                dC1LSSVM = Float.parseFloat(sdC1LSSVM);
                dC2LSSVM = Float.parseFloat(sdC2LSSVM);
                dS1LSSVM = Float.parseFloat(sdS1LSSVM);
                dS2LSSVM = Float.parseFloat(sdS2LSSVM);
                dTrainingPSLSSVM = Float.parseFloat(sdTrainingPSLSSVM);
                dValidationPSLSSVM = Float.parseFloat(sdValidationPSLSSVM);
                dTotalSizeLSSVM = Float.parseFloat(sdTotalSizeLSSVM);
                nLastChange1LSSVM = Float.parseFloat(snLastChange1LSSVM);
                nLastChange2LSSVM = Float.parseFloat(snLastChange2LSSVM);
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
            %>

            <form>
                <h2>
                    SFA-LSSVM Data:
                </h2>

                <table>
                    <tr>
                        <th>No.</th>
                        <th>Description</th>
                        <th>Variable</th>
                        <th>Value</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>No. of fireflies</td>
                        <td>nFireFliesLSSVM</td>
                        <td><%=nFireFliesLSSVM%></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Max. generation</td>
                        <td>nMaxGenerationLSSVM</td>
                        <td><%=nMaxGenerationLSSVM%></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Beta min.</td>
                        <td>dMinBetaLSSVM</td>
                        <td><%=dMinBetaLSSVM%></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Gamma</td>
                        <td>dGammaLSSVM</td>
                        <td><%=dGammaLSSVM%></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Alpha</td>
                        <td>dAlphaLSSVM</td>
                        <td><%=dAlphaLSSVM%></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Adaptive inertia weight</td>
                        <td>dAIWeightLSSVM</td>
                        <td><%=dAIWeightLSSVM%></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Tau</td>
                        <td>dTauLSSVM</td>
                        <td><%=dTauLSSVM%></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Biotic potential (a)</td>
                        <td>dBPotentialLSSVM</td>
                        <td><%=dBPotentialLSSVM%></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Range of C1</td>
                        <td>dC1LSSVM</td>
                        <td><%=dC1LSSVM%></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>C2</td>
                        <td>dC2LSSVM</td>
                        <td><%=dC2LSSVM%></td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>Range of Sigma, S1</td>
                        <td>dS1LSSVM</td>
                        <td><%=dS1LSSVM%></td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>S2</td>
                        <td>dS2LSSVM</td>
                        <td><%=dS2LSSVM%></td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>Training partition size (%)</td>
                        <td>dTrainingPSLSSVM</td>
                        <td><%=dTrainingPSLSSVM%></td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td> Validation partition size (%)</td>
                        <td>dValidationPSLSSVM</td>
                        <td><%=dValidationPSLSSVM%></td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td> Total Size (%)</td>
                        <td>dTotalSizeLSSVM</td>
                        <td><%=dTotalSizeLSSVM%></td>
                    </tr>
                    <tr>
                        <td>16</td>
                        <td>No. of Last Changes</td>
                        <td>nLastChange1LSSVM</td>
                        <td><%=nLastChange1LSSVM%></td>
                    </tr>
                    <tr>
                        <td>17</td>
                        <td>Constant OF Value</td>
                        <td>nLastChange2LSSVM</td>
                        <td><%=nLastChange2LSSVM%></td>
                    </tr>
                    <tr>
                        <td>18</td>
                        <td>Hold-Out (%)</td>
                        <td>dHoldOutLSSVM</td>
                        <td><%=dHoldOutLSSVM%></td>
                    </tr>
                    <tr>
                        <td>19</td>
                        <td>Cross-Validation (%)</td>
                        <td>dCrossValidationLSSVM</td>
                        <td><%=dCrossValidationLSSVM%></td>
                    </tr>
                    <%
                    sNormalRadioLSSVM = "...";
                    if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                        sNormalRadioLSSVM = "Original value";
                    }
                    else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                        sNormalRadioLSSVM = "Feature scaling";
                    }
                    %>
                    
                    <tr>
                        <td>20</td>
                        <td>Normalization Method</td>
                        <td>sNormalRadioLSSVM</td>
                        <td><%=sNormalRadioLSSVM%></td>
                    </tr>
                    
                    <tr>
                        <td>21</td>
                        <td>Objective Function</td>
                        <td>-</td>
                        <td>Classification accuracy (validation)</td>
                    </tr>

                    <%
                    sSCRadioLSSVM = "...";
                    if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
                        sSCRadioLSSVM = "Max. generation is reached";
                    }
                    else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
                        sSCRadioLSSVM = "consecutive rates of change in OF values is reached";
                    }
                    else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {
                        sSCRadioLSSVM = "Either criterion is reached";
                    }
                    %>
                    
                    <tr>
                        <td>22</td>
                        <td>Stop Criterion</td>
                        <td>sSCRadioLSSVM</td>
                        <td><%=sSCRadioLSSVM%></td>
                    </tr>
                    
                    <%
                    sPRadioLSSVM = "...";
                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                        sPRadioLSSVM = "Evaluation";
                    }
                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                        sPRadioLSSVM = "Prediction";
                    }
                    %>
                    
                    <tr>
                        <td>23</td>
                        <td>Purpose</td>
                        <td>sPRadioLSSVM</td>
                        <td><%=sPRadioLSSVM%></td>
                    </tr>

                    <%
                    sTORadioLSSVM = "...";
                    if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                        sTORadioLSSVM = "Use learning dataset";
                    }
                    else if (PRadioLSSVM.equals("TORadio4LSSVM")) {
                        sTORadioLSSVM = "Use test dataset";
                    }
                    else if (PRadioLSSVM.equals("TORadio2LSSVM")) {
                        sTORadioLSSVM = "Hold-out";
                    }
                    else if (PRadioLSSVM.equals("TORadio3LSSVM")) {
                        sTORadioLSSVM = "Cross-validation";
                    }
                    %>

                    <tr>
                        <td>24</td>
                        <td>Test Option</td>
                        <td>sTORadioLSSVM</td>
                        <td><%=sTORadioLSSVM%></td>
                    </tr>
                    <tr>
                        <td>25</td>
                        <td>Data File</td>
                        <td>sFileNameLSSVM</td>
                        <td><%=sFileNameLSSVM%></td>
                    </tr>
                    <tr>
                        <td>26</td>
                        <td>No. of Attributes</td>
                        <td>nDFAttributesLSSVM</td>
                        <td><%=nDFAttributesLSSVM%></td>
                    </tr>
                    <tr>
                        <td>27</td>
                        <td>No. of Instances</td>
                        <td>nDFInstancesLSSVM</td>
                        <td><%=nDFInstancesLSSVM%></td>
                    </tr>
                    <tr>
                        <td>28</td>
                        <td>Test Data File</td>
                        <td>sTestFileNameLSSVM</td>
                        <td><%=sTestFileNameLSSVM%></td>
                    </tr>
                    <tr>
                        <td>29</td>
                        <td>No. of Attributes</td>
                        <td>nTDFAttributesLSSVM</td>
                        <td><%=nTDFAttributesLSSVM%></td>
                    </tr>
                    <tr>
                        <td>30</td>
                        <td>No. of Instances</td>
                        <td>nTDFInstancesLSSVM</td>
                        <td><%=nTDFInstancesLSSVM%></td>
                    </tr>
                    <tr>
                        <td>31</td>
                        <td>Learning Data File</td>
                        <td>sLearningFileNameLSSVM</td>
                        <td><%=sLearningFileNameLSSVM%></td>
                    </tr>
                    <tr>
                        <td>32</td>
                        <td>No. of Attributes</td>
                        <td>nLDFAttributesLSSVM</td>
                        <td><%=nLDFAttributesLSSVM%></td>
                    </tr>
                    <tr>
                        <td>33</td>
                        <td>No. of Instances</td>
                        <td>nLDFInstancesLSSVM</td>
                        <td><%=nLDFInstancesLSSVM%></td>
                    </tr>
                    <tr>
                        <td>34</td>
                        <td>Prediction Data File</td>
                        <td>sPredictionFileNameLSSVM</td>
                        <td><%=sPredictionFileNameLSSVM%></td>
                    </tr>
                    <tr>
                        <td>35</td>
                        <td>No. of Attributes</td>
                        <td>nPDFAttributesLSSVM</td>
                        <td><%=nPDFAttributesLSSVM%></td>
                    </tr>
                    <tr>
                        <td>36</td>
                        <td>No. of Instances</td>
                        <td>nPDFInstancesLSSVM</td>
                        <td><%=nPDFInstancesLSSVM%></td>
                    </tr>
                </table>
            </form>
                        
        <% } else if (VarNextLSSVM != null) { %>
            <form action="ModuleSFALSSVM.jsp" name="myform2" id="myform2">
                <%
                nFireFliesLSSVM = Float.parseFloat(snFireFliesLSSVM);
                nMaxGenerationLSSVM = Float.parseFloat(snMaxGenerationLSSVM);
                dMinBetaLSSVM = Float.parseFloat(sdMinBetaLSSVM);
                dGammaLSSVM = Float.parseFloat(sdGammaLSSVM);
                dAlphaLSSVM = Float.parseFloat(sdAlphaLSSVM);
                dAIWeightLSSVM = Float.parseFloat(sdAIWeightLSSVM);
                dTauLSSVM = Float.parseFloat(sdTauLSSVM);
                dBPotentialLSSVM = Float.parseFloat(sdBPotentialLSSVM);
                dC1LSSVM = Float.parseFloat(sdC1LSSVM);
                dC2LSSVM = Float.parseFloat(sdC2LSSVM);
                dS1LSSVM = Float.parseFloat(sdS1LSSVM);
                dS2LSSVM = Float.parseFloat(sdS2LSSVM);
                dTrainingPSLSSVM = Float.parseFloat(sdTrainingPSLSSVM);
                dValidationPSLSSVM = Float.parseFloat(sdValidationPSLSSVM);
                dTotalSizeLSSVM = Float.parseFloat(sdTotalSizeLSSVM);
                nLastChange1LSSVM = Float.parseFloat(snLastChange1LSSVM);
                nLastChange2LSSVM = Float.parseFloat(snLastChange2LSSVM);
                
                if (PRadioLSSVM.equals("PRadio1LSSVM"))
                {
                    dHoldOutLSSVM = Float.parseFloat(sdHoldOutLSSVM);
                    dCrossValidationLSSVM = Float.parseFloat(sdCrossValidationLSSVM);
                }
                else
                {
                    dHoldOutLSSVM = 20;
                    dCrossValidationLSSVM = 10;
                }
                
                nDFAttributesLSSVM = Float.parseFloat(snDFAttributesLSSVM);
                nDFInstancesLSSVM = Float.parseFloat(snDFInstancesLSSVM);
                nTDFAttributesLSSVM = Float.parseFloat(snTDFAttributesLSSVM);
                nTDFInstancesLSSVM = Float.parseFloat(snTDFInstancesLSSVM);
                nLDFAttributesLSSVM = Float.parseFloat(snLDFAttributesLSSVM);
                nLDFInstancesLSSVM = Float.parseFloat(snLDFInstancesLSSVM);
                nPDFAttributesLSSVM = Float.parseFloat(snPDFAttributesLSSVM);
                nPDFInstancesLSSVM = Float.parseFloat(snPDFInstancesLSSVM);
                %>

                <input type="hidden" name="VarTwo" id="VarTwo" value="<%=VarTwo%>"/>               
                <input type="hidden" name="VarNextLSSVM" id="VarNextLSSVM" value="<%=VarNextLSSVM%>"/>
                
                <input type="hidden" name="nFireFliesLSSVM" id="nFireFliesLSSVM" value="<%=nFireFliesLSSVM%>"/>
                <input type="hidden" name="nMaxGenerationLSSVM" id="nMaxGenerationLSSVM" value="<%=nMaxGenerationLSSVM%>"/>
                <input type="hidden" name="dMinBetaLSSVM" id="dMinBetaLSSVM" value="<%=dMinBetaLSSVM%>"/>
                <input type="hidden" name="dGammaLSSVM" id="dGammaLSSVM" value="<%=dGammaLSSVM%>"/>
                <input type="hidden" name="dAlphaLSSVM" id="dAlphaLSSVM" value="<%=dAlphaLSSVM%>"/>
                <input type="hidden" name="dAIWeightLSSVM" id="dAIWeightLSSVM" value="<%=dAIWeightLSSVM%>"/>
                <input type="hidden" name="dTauLSSVM" id="dTauLSSVM" value="<%=dTauLSSVM%>"/>
                <input type="hidden" name="dBPotentialLSSVM" id="dBPotentialLSSVM" value="<%=dBPotentialLSSVM%>"/>
                <input type="hidden" name="dC1LSSVM" id="dC1LSSVM" value="<%=dC1LSSVM%>"/>
                <input type="hidden" name="dC2LSSVM" id="dC2LSSVM" value="<%=dC2LSSVM%>"/>
                <input type="hidden" name="dS1LSSVM" id="dS1LSSVM" value="<%=dS1LSSVM%>"/>
                <input type="hidden" name="dS2LSSVM" id="dS2LSSVM" value="<%=dS2LSSVM%>"/>
                <input type="hidden" name="dTrainingPSLSSVM" id="dTrainingPSLSSVM" value="<%=dTrainingPSLSSVM%>"/>
                <input type="hidden" name="dValidationPSLSSVM" id="dValidationPSLSSVM" value="<%=dValidationPSLSSVM%>"/>
                <input type="hidden" name="dTotalSizeLSSVM" id="dTotalSizeLSSVM" value="<%=dTotalSizeLSSVM%>"/>
                <input type="hidden" name="nLastChange1LSSVM" id="nLastChange1LSSVM" value="<%=nLastChange1LSSVM%>"/>
                <input type="hidden" name="nLastChange2LSSVM" id="nLastChange2LSSVM" value="<%=nLastChange2LSSVM%>"/>
                <input type="hidden" name="dHoldOutLSSVM" id="dHoldOutLSSVM" value="<%=dHoldOutLSSVM%>"/>
                <input type="hidden" name="dCrossValidationLSSVM" id="dCrossValidationLSSVM" value="<%=dCrossValidationLSSVM%>"/>

                <input type="hidden" name="nDFAttributesLSSVM" id="nDFAttributesLSSVM" value="<%=nDFAttributesLSSVM%>"/>
                <input type="hidden" name="nDFInstancesLSSVM" id="nDFInstancesLSSVM" value="<%=nDFInstancesLSSVM%>"/>
                <input type="hidden" name="nTDFAttributesLSSVM" id="nTDFAttributesLSSVM" value="<%=nTDFAttributesLSSVM%>"/>
                <input type="hidden" name="nTDFInstancesLSSVM" id="nTDFInstancesLSSVM" value="<%=nTDFInstancesLSSVM%>"/>
                <input type="hidden" name="nLDFAttributesLSSVM" id="nLDFAttributesLSSVM" value="<%=nLDFAttributesLSSVM%>"/>
                <input type="hidden" name="nLDFInstancesLSSVM" id="nLDFInstancesLSSVM" value="<%=nLDFInstancesLSSVM%>"/>
                <input type="hidden" name="nPDFAttributesLSSVM" id="nPDFAttributesLSSVM" value="<%=nPDFAttributesLSSVM%>"/>
                <input type="hidden" name="nPDFInstancesLSSVM" id="nPDFInstancesLSSVM" value="<%=nPDFInstancesLSSVM%>"/>

                <input type="hidden" name="NormalRadioLSSVM" id="NormalRadioLSSVM" value="<%=NormalRadioLSSVM%>"/>
                <input type="hidden" name="SCRadioLSSVM" id="SCRadioLSSVM" value="<%=SCRadioLSSVM%>"/>
                <input type="hidden" name="PRadioLSSVM" id="PRadioLSSVM" value="<%=PRadioLSSVM%>"/>
                <input type="hidden" name="TORadioLSSVM" id="TORadioLSSVM" value="<%=TORadioLSSVM%>"/>
                <input type="hidden" name="hiddendatafile" id="hiddendatafile" value=""/>

                <input type="hidden" name="sDataFileLSSVM" id="sDataFileLSSVM" value="<%if(sDataFileLSSVM!=null){%><%=sDataFileLSSVM%><%}%>"/>
                <input type="hidden" name="sTestDataFileLSSVM" id="sTestDataFileLSSVM" value="<%if(sTestDataFileLSSVM!=null){%><%=sTestDataFileLSSVM%><%}%>"/>
                <input type="hidden" name="sLearningDataFileLSSVM" id="sLearningDataFileLSSVM" value="<%if(sLearningDataFileLSSVM!=null){%><%=sLearningDataFileLSSVM%><%}%>"/>
                <input type="hidden" name="sPredictionDataFileLSSVM" id="sPredictionDataFileLSSVM" value="<%if(sPredictionDataFileLSSVM!=null){%><%=sPredictionDataFileLSSVM%><%}%>"/>

                <input type="hidden" name="sFileNameLSSVM" id="sFileNameLSSVM" value="<%=sFileNameLSSVM%>"/>
                <input type="hidden" name="sTestFileNameLSSVM" id="sTestFileNameLSSVM" value="<%=sTestFileNameLSSVM%>"/>
                <input type="hidden" name="sLearningFileNameLSSVM" id="sLearningFileNameLSSVM" value="<%=sLearningFileNameLSSVM%>"/>
                <input type="hidden" name="sPredictionFileNameLSSVM" id="sPredictionFileNameLSSVM" value="<%=sPredictionFileNameLSSVM%>"/>

                <input type="hidden" name="sFileNameLSSVM" id="sFileData" value="<%=sFileDataLSSVM%>"/>
                <input type="hidden" name="sdAttributesLSSVM" id="sdAttributes" value="<%=sdAttributesLSSVM%>"/>
                <input type="hidden" name="sdInstancesLSSVM" id="sdInstances" value="<%=sdInstancesLSSVM%>"/>

                <input type="hidden" name="sPFileNameLSSVM" id="sPFileData" value="<%=sPFileDataLSSVM%>"/>
                <input type="hidden" name="sdPAttributesLSSVM" id="sdPAttributes" value="<%=sdPAttributesLSSVM%>"/>
                <input type="hidden" name="sdPInstancesLSSVM" id="sdPInstances" value="<%=sdPInstancesLSSVM%>"/>

                <input type="hidden" name="sLoadingDataSet1" id="sLoadingDataSet1" value="<%=sLoadingDataSet1%>"/>
                <input type="hidden" name="sLoadingDataSet2" id="sLoadingDataSet2" value="<%=sLoadingDataSet2%>"/>
                <input type="hidden" name="sLoadingDataSet3" id="sLoadingDataSet3" value="<%=sLoadingDataSet3%>"/>
                <input type="hidden" name="sLoadingDataSet4" id="sLoadingDataSet4" value="<%=sLoadingDataSet4%>"/>
                <input type="hidden" name="sLoadingDataSet5" id="sLoadingDataSet5" value="<%=sLoadingDataSet5%>"/>

                <input type="hidden" name="sCreate" id="sCreate" value="<%=sCreate%>"/>
                <input type="hidden" name="vpath" id="vpath" value="<%=vpath%>"/>
                <input type="hidden" name="vfile" id="vfile" value="<%=vfile%>"/>

                <input type="hidden" name="sPageControl" id="sPageControl" value="<%=sPageControl%>"/>

                <input type="hidden" name="sopt" id="sopt" value="<%=sopt%>"/>
                <input type="hidden" name="sGraphNo" id="sGraphNo" value="<%=sGraphNo%>"/>
                <input type="hidden" name="sBestFold" id="sBestFold" value="<%=sBestFold%>"/>
                <input type="hidden" name="sGraphType" id="sGraphType" value="<%=sGraphType%>" /> 
                
                <input type="hidden" name="sProcessRun" id="sProcessRun" value="<%=sProcessRun%>"/>
                <input type="hidden" name="sSaveModel" id="sSaveModel" value="<%=sSaveModel%>"/>

                <input type="hidden" name="sValueC" id="sValueC" value="<%=sValueC%>"/>
                <input type="hidden" name="sValueS" id="sValueS" value="<%=sValueS%>"/>
                <br><br><br>
                <center id="title">
                    <font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt" color="#2F4F4F">
                        <b>NiMOPS for Binary Classification</b>
                    </font>
                </center>
                <br>
                
                <div class="container boundary">
                    <ul class="nav nav-tabs">
                    </ul>
                </div>
                <br>
                
                <div class="tab-content">
                    <% if (sPageControl.equals("1")) { %>
                    <div id="processing" class="tab-pane fade in active">
                    <% } else { %>
                    <div id="processing" class="tab-pane fade in">
                    <% } %>
                        <table>
                            <tr>
                                <td style="width: 10%">
                                    <a onclick="return previousscreenLSSVM();" style="float:left;">
                                        <font color="blue" face="agency FB" size="3">
                                        &nbsp;&nbsp;&nbsp;<b><u><< BACK</u></b>
                                        </font>
                                    </a>                            
                                </td>
                            </tr>
                        </table>

                        <table>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <h3><span class="glyphicon glyphicon-bookmark"></span></h3>
                                </td>
                                <td>&nbsp;&nbsp;</td>
                                <td>
                                    <div>
                                        <%--><h3><font face="Palatino Linotype, Book Antiqua, Palatino, serif">I. Input Data Review and Run</font></h3><--%>
                                        <h3><b><font face="Palatino Linotype, Book Antiqua, Palatino, serif">Input Data Review and Run</font></b></h3>
                                    </div>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <%--><div title="Go to view the results directly!" onclick="changetab(2)"><--%>
                                    <div title="View pre-computed numerical results" onclick="changetab(2)">
                                        <%--><h3><u><i><font face="Palatino Linotype, Book Antiqua, Palatino, serif">II. The Results</font></i></u></h3><--%>
                                        <h3><font color="skyblue" face="Palatino Linotype, Book Antiqua, Palatino, serif">Numerical Results</font></h3>
                                    </div>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div title="View graphical results page" onclick="changetab(3)">
                                        <h3><font color="skyblue" face="Palatino Linotype, Book Antiqua, Palatino, serif">Graphical Results</font></h3>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <a href="#bottomform">
                            <img src="Arrow bottom.png" alt="..." width="18" style="float:right">
                        </a>
                        <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">

                        <%                
                        ssResult01Name = application.getRealPath("/") + sBaseFileName +"01.txt";
                        ssResult02Name = application.getRealPath("/") + sBaseFileName +"02.txt";
                        ssResult03Name = application.getRealPath("/") + sBaseFileName +"03.txt";
                        ssResult04Name = application.getRealPath("/") + sBaseFileName +"04.txt";
                        ssResult04aName = application.getRealPath("/") + sBaseFileName +"04a.txt";
                        ssResult04bName = application.getRealPath("/") + sBaseFileName +"04b.txt";
                        ssResult04cName = application.getRealPath("/") + sBaseFileName +"04c.txt";
                        ssResult04dName = application.getRealPath("/") + sBaseFileName +"04d.txt";
                        ssResult05Name = application.getRealPath("/") + sBaseFileName +"05.txt";
                        ssResult06Name = application.getRealPath("/") + sBaseFileName +"06.txt";
                        %>
                        <script>
                            document.getElementById("ssResult01Name").value = ssResult01Name;
                            document.getElementById("ssResult02Name").value = ssResult02Name;
                            document.getElementById("ssResult03Name").value = ssResult03Name;
                            document.getElementById("ssResult04Name").value = ssResult04Name;
                            document.getElementById("ssResult04aName").value = ssResult04aName;
                            document.getElementById("ssResult04bName").value = ssResult04bName;
                            document.getElementById("ssResult04cName").value = ssResult04cName;
                            document.getElementById("ssResult04dName").value = ssResult04dName;
                            document.getElementById("ssResult05Name").value = ssResult05Name;
                            document.getElementById("ssResult06Name").value = ssResult06Name;
                        </script>

                        <div class="bs-example">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="container boundary">
                                        <div class="row">
                                            <div class="col-md-4"><h4>Base Output File Name</h4></div>
                                            <div class="col-md-4"><h4><%=sBaseFileName%></h4></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="bs-example">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="container boundary">
                                        <h3>Model Settings</h3>
                                        <div class="row">
                                            <div class="col-md-4">Swarm and evolutionary parameters:</div>
                                            <div class="col-md-3">No. of fireflies = <%=nf.format(nFireFliesLSSVM)%></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-3">Max. generation = <%=nf.format(nMaxGenerationLSSVM)%></div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-4">Initial population generation:</div>
                                            <div class="col-md-3">Biotic potential, a = <%=nf2.format(dBPotentialLSSVM)%></div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-4">Attractiveness:</div>
                                            <div class="col-md-3">Beta min. = <%=nf2.format(dMinBetaLSSVM)%></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-3">Gamma = <%=nf2.format(dGammaLSSVM)%></div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-4">Random movement:</div>
                                            <div class="col-md-3">Alpha = <%=nf2.format(dAlphaLSSVM)%></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-3">Adaptive inertia weight = <%=nf2.format(dAIWeightLSSVM)%></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-3">Tau = <%=nf2.format(dTauLSSVM)%></div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-4">Hyperparameters:</div>
                                            <div class="col-md-3">Range of C = <%=ndf.format(dC1LSSVM)%> to <%=ndf.format(dC2LSSVM)%></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-4">Range of sigma = <%=ndf.format(dS1LSSVM)%> to <%=ndf.format(dS2LSSVM)%></div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col-md-4">Learning Option:</div>
                                            <div class="col-md-4">Training partition size = <%=nf.format(dTrainingPSLSSVM)%> (%)</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-4">Validation partition size = <%=nf.format(dValidationPSLSSVM)%> (%)</div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col-md-4">Normalization Method:</div>
                                            <div class="col-md-4">
                                                <%
                                                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                                                    sNormalRadioLSSVM = "Original value";
                                                } else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                                                    sNormalRadioLSSVM = "Feature scaling";
                                                }
                                                %>
                                                <%=sNormalRadioLSSVM%>
                                            </div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col-md-4">Stop Criterion:</div>
                                            <div class="col-md-3">
                                                <%
                                                if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
                                                    sSCRadioLSSVM = "Max. generation is reached";
                                                    %> 
                                                    <%=sSCRadioLSSVM%>
                                                    <%
                                                } else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
                                                    sSCRadioLSSVM = "Consecutive rates of change in OF values <";
                                                    %> 
                                                    <%=nf.format(nLastChange1LSSVM)%> <%=sSCRadioLSSVM%> <%=nf5.format(nLastChange2LSSVM)%>
                                                    <%
                                                } else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {
                                                    sSCRadioLSSVM = "Either criterion is reached";
                                                    %> 
                                                    <%=sSCRadioLSSVM%>
                                                    <%
                                                }
                                                %>
                                            </div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col-md-4">Purpose:</div>
                                            <div class="col-md-3">
                                                <%
                                                sPRadioLSSVM = "...";
                                                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                                                    dNormalRadioLSSVM = 1;
                                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                        dPRadioLSSVM = 1;
                                                        sPRadioLSSVM = "Evaluation";
                                                        sDummy = "Learning Dataset: ";
                                                    } else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                        dPRadioLSSVM = 2;
                                                        sPRadioLSSVM = "Prediction";
                                                        sDummy = "Learning Dataset: "; 
                                                        sFileDataLSSVM = sLearningFileNameLSSVM;
                                                        dAttributesLSSVM = snLDFAttributesLSSVM;
                                                        dInstancesLSSVM = snLDFInstancesLSSVM;
                                                        sPDummy = "Prediction Dataset: ";
                                                        sPFileDataLSSVM = sPredictionFileNameLSSVM;
                                                        dPAttributesLSSVM = snPDFAttributesLSSVM;
                                                        dPInstancesLSSVM = snPDFInstancesLSSVM;
                                                        sVariation = "5";
                                                    }
                                                } else {
                                                    dNormalRadioLSSVM = 2;
                                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                        dPRadioLSSVM = 1;
                                                        sPRadioLSSVM = "Evaluation";
                                                        sDummy = "Learning Dataset: ";
                                                    } else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                        dPRadioLSSVM = 2;
                                                        sPRadioLSSVM = "Prediction";
                                                        sDummy = "Learning Dataset: "; 
                                                        sFileDataLSSVM = sLearningFileNameLSSVM;
                                                        dAttributesLSSVM = snLDFAttributesLSSVM;
                                                        dInstancesLSSVM = snLDFInstancesLSSVM;
                                                        sPDummy = "Prediction Dataset: ";
                                                        sPFileDataLSSVM = sPredictionFileNameLSSVM;
                                                        dPAttributesLSSVM = snPDFAttributesLSSVM;
                                                        dPInstancesLSSVM = snPDFInstancesLSSVM;
                                                        sVariation = "10";
                                                    }
                                                }
                                                %>
                                                <%=sPRadioLSSVM%>
                                            </div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col-md-4">Test Option:</div>
                                            <div class="col-md-4">
                                                <%
                                                sTORadioLSSVM = "";
                                                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                                                    dNormalRadioLSSVM = 1;
                                                    if (TORadioLSSVM.equals("TORadio2LSSVM")) { 
                                                        dTORadioLSSVM = 2;
                                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) { 
                                                            dPRadioLSSVM = 1; %>
                                                            Hold-out = <%=nf.format(dHoldOutLSSVM)%> (%) 
                                                            <% 
                                                            sDummy = "Learning Dataset: ";
                                                            sFileDataLSSVM = sFileNameLSSVM;
                                                            dAttributesLSSVM = snDFAttributesLSSVM;
                                                            dInstancesLSSVM = snDFInstancesLSSVM;
                                                            sVariation = "2";
                                                            sPFileDataLSSVM = "";
                                                            dPAttributesLSSVM = "0";
                                                            dPInstancesLSSVM = "0";
                                                        } else if (PRadioLSSVM.equals("PRadio2LSSVM")) { 
                                                            dPRadioLSSVM = 2; %>
                                                            -
                                                        <% }
                                                    } else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                                                        dTORadioLSSVM = 3;
                                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                            dPRadioLSSVM = 1; %>
                                                            Cross-validation = <%=nf.format(dCrossValidationLSSVM)%> (folds)
                                                            <%
                                                            sDummy = "Learning Dataset: ";
                                                            sFileDataLSSVM = sFileNameLSSVM;
                                                            dAttributesLSSVM = snDFAttributesLSSVM;
                                                            dInstancesLSSVM = snDFInstancesLSSVM;
                                                            sVariation = "3";
                                                            sPFileDataLSSVM = "";
                                                            dPAttributesLSSVM = "0";
                                                            dPInstancesLSSVM = "0";
                                                        } else if (PRadioLSSVM.equals("PRadio2LSSVM")) { 
                                                            dPRadioLSSVM = 2; %>
                                                            -
                                                        <% }
                                                    } else {
                                                        if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                                                            dTORadioLSSVM = 1;
                                                            if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                                dPRadioLSSVM = 1;
                                                                sTORadioLSSVM = "Use learning dataset";
                                                                sDummy = "Learning Dataset: ";
                                                                sFileDataLSSVM = sFileNameLSSVM;
                                                                dAttributesLSSVM = snDFAttributesLSSVM;  
                                                                dInstancesLSSVM = snDFInstancesLSSVM; 
                                                                sVariation = "1";
                                                                sPFileDataLSSVM = "";
                                                                dPAttributesLSSVM = "0";
                                                                dPInstancesLSSVM = "0";
                                                            } else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                                dPRadioLSSVM = 2;
                                                                sTORadioLSSVM = "-";
                                                            }
                                                        } else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                                                            dTORadioLSSVM = 4;
                                                            if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                                dPRadioLSSVM = 1;
                                                                sTORadioLSSVM = "Use test dataset";
                                                                sDummy = "Learning Dataset: ";
                                                                sFileDataLSSVM = sFileNameLSSVM;
                                                                dAttributesLSSVM = snDFAttributesLSSVM;
                                                                dInstancesLSSVM = snDFInstancesLSSVM; 
                                                                sPDummy = "Test Dataset: ";
                                                                sPFileDataLSSVM = sTestFileNameLSSVM;
                                                                dPAttributesLSSVM = snTDFAttributesLSSVM; 
                                                                dPInstancesLSSVM = snTDFInstancesLSSVM; 
                                                                sVariation = "4";
                                                            } else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                                dPRadioLSSVM = 2;
                                                                sTORadioLSSVM = "-";
                                                            }
                                                        } 
                                                    } 
                                                } else {
                                                    if (TORadioLSSVM.equals("TORadio2LSSVM")) { 
                                                        dTORadioLSSVM = 2;
                                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                            dPRadioLSSVM = 2; %>
                                                            Hold-out = <%=nf.format(dHoldOutLSSVM)%> (%) 
                                                            <% 
                                                            sDummy = "Learning Dataset: ";
                                                            sFileDataLSSVM = sFileNameLSSVM;
                                                            dAttributesLSSVM = snDFAttributesLSSVM;
                                                            dInstancesLSSVM = snDFInstancesLSSVM;
                                                            sVariation = "7";
                                                            sPFileDataLSSVM = "";
                                                            dPAttributesLSSVM = "0";
                                                            dPInstancesLSSVM = "0";
                                                        } else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                            dPRadioLSSVM = 2; %>
                                                            -
                                                        <% }
                                                    } else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                                                        dTORadioLSSVM = 3;
                                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                            dPRadioLSSVM = 1; %>
                                                            Cross-validation = <%=nf.format(dCrossValidationLSSVM)%> (folds)
                                                            <%
                                                            sDummy = "Learning Dataset: ";
                                                            sFileDataLSSVM = sFileNameLSSVM;
                                                            dAttributesLSSVM = snDFAttributesLSSVM;
                                                            dInstancesLSSVM = snDFInstancesLSSVM;
                                                            sVariation = "8";
                                                            sPFileDataLSSVM = "";
                                                            dPAttributesLSSVM = "0";
                                                            dPInstancesLSSVM = "0";
                                                        } else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                            dPRadioLSSVM = 2; %>
                                                            -
                                                        <% }
                                                    } else {
                                                        if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                                                            dTORadioLSSVM = 1;
                                                            if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                                dPRadioLSSVM = 1;
                                                                sTORadioLSSVM = "Use learning dataset";
                                                                sDummy = "Learning Dataset: ";
                                                                sFileDataLSSVM = sFileNameLSSVM;
                                                                dAttributesLSSVM = snDFAttributesLSSVM;  
                                                                dInstancesLSSVM = snDFInstancesLSSVM; 
                                                                sVariation = "6";
                                                                sPFileDataLSSVM = "";
                                                                dPAttributesLSSVM = "0";
                                                                dPInstancesLSSVM = "0";
                                                            } else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                                dPRadioLSSVM = 2;
                                                                sTORadioLSSVM = "-";
                                                            }
                                                        } else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                                                            dTORadioLSSVM = 4;
                                                            if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                                dPRadioLSSVM = 1;
                                                                sTORadioLSSVM = "Use test dataset";
                                                                sDummy = "Learning Dataset: ";
                                                                sFileDataLSSVM = sFileNameLSSVM;
                                                                dAttributesLSSVM = snDFAttributesLSSVM;
                                                                dInstancesLSSVM = snDFInstancesLSSVM; 
                                                                sPDummy = "Test Dataset: ";
                                                                sPFileDataLSSVM = sTestFileNameLSSVM;
                                                                dPAttributesLSSVM = snTDFAttributesLSSVM; 
                                                                dPInstancesLSSVM = snTDFInstancesLSSVM; 
                                                                sVariation = "9";
                                                            } else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                                dPRadioLSSVM = 2;
                                                                sTORadioLSSVM = "-";
                                                            }
                                                        }
                                                    } 
                                                } %>
                                                    <%=sTORadioLSSVM%>
                                            </div>
                                            <div class="col-md-2"><b> Run variation # <%=sVariation%> </b></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="bs-example">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="container boundary">
                                        <h3>Dataset</h3>
                                        <div class="row">
                                            <div class="col-md-4"><h4><%=sDummy%></h4></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"><%=sFileDataLSSVM%></div> 
                                            <div class="col-md-2">No. of Attributes = <%=nf.format(Double.parseDouble(dAttributesLSSVM))%></div>
                                            <div class="col-md-3">No. of Instances = <%=nf.format(Double.parseDouble(dInstancesLSSVM))%></div>
                                        </div>
                                        <%if (sVariation == "4" || sVariation == "5") {%>
                                            <div class="row">
                                                <div class="col-md-4"><h4><%=sPDummy%></h4></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"><%=sPFileDataLSSVM%></div>
                                                <div class="col-md-2">No. of Attributes = <%=nf.format(Double.parseDouble(dPAttributesLSSVM))%></div>
                                                <div class="col-md-3">No. of Instances = <%=nf.format(Double.parseDouble(dPInstancesLSSVM))%></div>
                                            </div>
                                        <%}%>
                                    </div><br>
                                    <div class="container boundary" id="view">
                                        <h4>View Dataset</h4>
                                        <div class="row">
                                            <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                                                <div class="col-md-2">
                                                    <a onclick="return viewdataset(1);">
                                                        <font color="blue">
                                                        <u>Learning Dataset</u>
                                                        </font>
                                                    </a>
                                                </div>
                                                <% if (TORadioLSSVM.equals("TORadio4LSSVM")) { %> 
                                                    <div class="col-md-4">
                                                        <a onclick="return viewdataset(2);">
                                                            <font color="blue">
                                                            <u>Test Dataset</u>
                                                            </font>
                                                        </a>
                                                    </div>
                                                    <%--><div class="col-md-4">
                                                        <font color="black">
                                                            Base output file name: &nbsp;<b><%=sBaseFileName%></b>
                                                        </font>
                                                    </div><--%>
                                                <% } else {%>
                                                    <div class="col-md-4">
                                                        &nbsp;
                                                    </div>
                                                    <%--><div class="col-md-4">
                                                        <font color="black">
                                                            Base output file name: &nbsp;<b><%=sBaseFileName%></b>
                                                        </font>
                                                    </div><--%>
                                                <% } %>

                                            <% } else if (PRadioLSSVM.equals("PRadio2LSSVM")) { %> 
                                                <div class="col-md-2">
                                                    <a onclick="return viewdataset(3);">
                                                        <font color="blue">
                                                        <u>Learning Dataset</u>
                                                        </font>
                                                    </a> 
                                                </div>
                                                <div class="col-md-4">
                                                    <a onclick="return viewdataset(4);">
                                                        <font color="blue">
                                                        <u>Prediction Dataset</u>
                                                        </font>
                                                    </a> 
                                                </div>
                                                <%--><div class="col-md-4">
                                                    <font color="black">
                                                    Base output file name: &nbsp;<b><%=sBaseFileName%></b>
                                                    </font>
                                                </div><--%>
                                            <% } %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <% //#2 displaying dataset 
                        if (sLoadingDataSet1 != "" || sLoadingDataSet3 != "") { 
                            if (sLoadingDataSet1 != "") {
                                sFileDataLSSVM = sFileNameLSSVM;
                            } else if (sLoadingDataSet3 != "") {
                                sFileDataLSSVM = sLearningFileNameLSSVM;
                                ncols1=ncols3;
                                nrows1=nrows3;
                            }

                            if (sFileDataLSSVM != "") {    //sFileName   sFileData
                                String file = application.getRealPath("/") + sFileDataLSSVM;
                                BufferedReader br = new BufferedReader(new FileReader(file)); 
                                String line = null;
                                int i;
                                int j; 

                                // first line: title
                                line = br.readLine();
                                if (line == null) {
                                    out .println("<h3><font color='red'>Data file is empty !</font></h3>");
                                } else if (sLoadingDataSet1 != "") {
                                    cols = line.split("\\t");

                                    // second line: column header
                                    //line = br.readLine();
                                    headers = line.split("\\t");

                                    // third line and so on: data ... last column = dependent variable  
                                    line = br.readLine(); 
                                    j=0;
                                    while (line != null) {
                                        cols = line.split("\\t");
                                        for (i = 0; i < ncols1; i += 1) {
                                            Dataraw[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                    }
                                } else {
                                    cols = line.split("\\t");

                                    // second line: column header
                                    //line = br.readLine();
                                    headers = line.split("\\t");

                                    // third line and so on: data ... last column = dependent variable  
                                    line = br.readLine(); 
                                    j=0;
                                    while (line != null) {
                                        cols = line.split("\\t");
                                        for (i = 0; i < ncols1; i += 1) {
                                            Datatrains[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                    }
                                }
                                br.close();
                                %>

                                <div class="bs-example">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="container boundary">
                                                <table>
                                                    <tr>
                                                        <% if (sLoadingDataSet1 != "") { %>
                                                            <td>
                                                                <b>Learning Dataset (for Evaluation): </b>
                                                            </td>
                                                        <% } else { %>
                                                            <td>
                                                                <b>Learning Dataset (for Prediction): </b>
                                                            </td>
                                                        <% } %> 
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <a onclick="return viewdataset(5);">
                                                                <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                                                            </a>
                                                        </td>
                                                        <td>&nbsp;&nbsp;</td>
                                                        <td>&nbsp;&nbsp;</td>
                                                        <td align="center">
                                                            No.
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <% for (j = 0; j < ncols1; j += 1) { %> 
                                                            <td align="center">
                                                                <%=headers[j]%>
                                                            </td>
                                                            <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <% } %>
                                                    </tr>

                                                    <% for (i = 0; i < nrows1; i += 1) { %> 
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td align="center">
                                                                <%=i%>
                                                            </td> 
                                                            <td>&nbsp;&nbsp;&nbsp;</td>
                                                            <% if (sLoadingDataSet1 != "") { %>
                                                                <% for (j = 0; j < ncols1; j += 1) { %> 
                                                                    <td align="right">
                                                                        <%=nf3.format(Double.parseDouble(Dataraw[i][j]))%>
                                                                    </td>
                                                                    <td>&nbsp;&nbsp;&nbsp;</td>
                                                                <% } %>
                                                            <% } else { %>
                                                                <% for (j = 0; j < ncols1; j += 1) { %> 
                                                                    <td align="right">
                                                                        <%=nf3.format(Double.parseDouble(Datatrains[i][j]))%>
                                                                    </td>
                                                                    <td>&nbsp;&nbsp;&nbsp;</td>
                                                                <% } %>
                                                            <% } %>
                                                        </tr>
                                                    <% } %>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <% } else { %>
                                <div class="bs-example">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="container boundary">
                                                <table>
                                                    <tr>
                                                        <td align="left">
                                                            <font color='red'>
                                                            &nbsp;&nbsp;Data file not available !
                                                            </font>
                                                        </td> 
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <% } %>
                            <a href="#view">
                                <img src="Arrow top.png" alt="..." width="18" style="float:right">
                            </a>
                            <br>
                            <center id="bottomform">
                                <button type="button" onclick="return rundata2(1);" class="btn btn-primary">Run</button>
                            </center>
                            <br>
                            <script>
                                window.scrollTo(0,document.getElementById("view").offsetTop);
                            </script>    
                        <% } else if (sLoadingDataSet2 != "" || sLoadingDataSet4 != "") { 
                            if (sLoadingDataSet2 != "") {
                                sPFileDataLSSVM = sTestFileNameLSSVM;
                            } else if (sLoadingDataSet4 != "") {
                                sPFileDataLSSVM = sPredictionFileNameLSSVM;
                                ncols2=ncols4;
                                nrows2=nrows4;
                            }

                            if (sPFileDataLSSVM != "") {    //sFileName   sFileData
                                String file = application.getRealPath("/") + sPFileDataLSSVM;
                                BufferedReader br = new BufferedReader(new FileReader(file)); 
                                String line = null;
                                int i;
                                int j; 

                                // first line: title
                                line = br.readLine();
                                if (line == null) {
                                    out.println("<h3><font color='red'>Data file is empty !</font></h3>");
                                } else if (sLoadingDataSet2 != "") {
                                    cols = line.split("\\t");

                                    // second line: column header
                                    //line = br.readLine();
                                    headers = line.split("\\t");

                                    // third line and so on: data ... last column = dependent variable  
                                    line = br.readLine(); 
                                    j=0;
                                    while (line != null) {
                                        cols = line.split("\\t");
                                        for (i = 0; i < ncols2; i += 1) {
                                            Datatest[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                    }
                                } else {
                                    cols = line.split("\\t");

                                    // second line: column header
                                    //line = br.readLine();
                                    headers = line.split("\\t");

                                    // third line and so on: data ... last column = dependent variable  
                                    line = br.readLine(); 
                                    j=0;
                                    while (line != null) {
                                        cols = line.split("\\t");
                                        for (i = 0; i < ncols2; i += 1) {
                                            Datapres[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                    }
                                }
                                br.close();
                                %>

                                <div class="bs-example">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="container boundary">
                                                <table>
                                                    <tr>
                                                        <% if (sLoadingDataSet2 != "") { %>
                                                            <td>
                                                                <b>Test Dataset: </b>
                                                            </td>
                                                        <% } else { %>
                                                            <td>
                                                                <b>Prediction Dataset: </b>
                                                            </td>
                                                        <% } %> 
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td>
                                                            <a onclick="return viewdataset(5);">
                                                                <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                                                            </a>
                                                        </td>
                                                        <td>&nbsp;&nbsp;</td>
                                                        <td>&nbsp;&nbsp;</td>
                                                        <td align="center">
                                                            No.
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <% for (j = 0; j < ncols2; j += 1) { %> 
                                                            <td align="center">
                                                                <%=headers[j]%>
                                                            </td>
                                                            <td>&nbsp;&nbsp;&nbsp;</td>
                                                        <% } %>
                                                    </tr>

                                                    <% for (i = 0; i < nrows2; i += 1) { %> 
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td align="center">
                                                                <%=i%>
                                                            </td> 
                                                            <td>&nbsp;&nbsp;&nbsp;</td>
                                                            <% if (sLoadingDataSet2 != "") { %>
                                                                <% for (j = 0; j < ncols2; j += 1) { %> 
                                                                    <td align="right">
                                                                        <%=nf3.format(Double.parseDouble(Datatest[i][j]))%>
                                                                    </td>
                                                                    <td>&nbsp;&nbsp;&nbsp;</td>
                                                                <% } %>
                                                            <% } else { %>
                                                                <% for (j = 0; j < ncols2; j += 1) { %> 
                                                                    <td align="right">
                                                                        <%=nf3.format(Double.parseDouble(Datapres[i][j]))%>
                                                                    </td>
                                                                    <td>&nbsp;&nbsp;&nbsp;</td>
                                                                <% } %>
                                                            <% } %>
                                                        </tr>
                                                    <% } %>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <% } else { %>
                                <div class="bs-example">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="container boundary">
                                                <table>
                                                    <tr>
                                                        <td align="left">
                                                            <font color='red'>
                                                                Data file not available !
                                                            </font>
                                                        </td> 
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <% } %>
                            <a href="#view">
                                <img src="Arrow top.png" alt="..." width="18" style="float:right">
                            </a>
                            <br>
                            <center id="bottomform">
                                <button type="button" onclick="return rundata2(1);" class="btn btn-primary">Run</button>
                            </center>
                            <br>
                            <script>
                                window.scrollTo(0,document.getElementById("view").offsetTop);
                            </script>
                        <% } else if (sLoadingDataSet5 != "") { %>
                            <a href="#title">
                                <img src="Arrow top.png" alt="..." width="18" style="float:right">
                            </a>
                            <br>
                            <center id="bottomform">
                                <button type="button" onclick="return rundata2(1);" class="btn btn-primary">Run</button>
                            </center>
                            <br>
                            <script>
                                document.getElementById("sLoadingDataSet5").value = "";
                                window.scrollTo(0,document.getElementById("view").offsetTop);
                            </script> 
                        <% } else { %>
                            <a href="#title">
                                <img src="Arrow top.png" alt="..." width="18" style="float:right">
                            </a>
                            <br>
                            <center id="bottomform">
                                <button type="button" onclick="return rundata2(1);" class="btn btn-primary">Run</button>
                            </center>
                            <br>
                        <% } %>
                    </div>
                        
                    <%
                    vpath = application.getRealPath("/"); 

                    vfile = sBaseFileName;               
                    if (vfile == "") { 
                        vfile = "SFAM03Result";
                    }

                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                        if (TORadioLSSVM.equals("TORadio4LSSVM")) { 
                        } else {
                            dPAttributesLSSVM=dAttributesLSSVM;
                            dPInstancesLSSVM=dInstancesLSSVM;
                        }
                    }
                    %>

                    <% if (sPageControl.equals("1")) { %>
                        <% if (sProcessRun != "") { %>
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

                                <jsp:param name="dNormalRadioLSSVM" value="<%=dNormalRadioLSSVM%>" />
                                <jsp:param name="dSCRadioLSSVM" value="<%=dSCRadioLSSVM%>" />
                                <jsp:param name="dPRadioLSSVM" value="<%=dPRadioLSSVM%>" />
                                <jsp:param name="dTORadioLSSVM" value="<%=dTORadioLSSVM%>" />

                                <jsp:param name="sVariation" value="<%=sVariation%>" />

                                <jsp:param name="dAttributesLSSVM" value="<%=dAttributesLSSVM%>" />
                                <jsp:param name="dInstancesLSSVM" value="<%=dInstancesLSSVM%>" />

                                <jsp:param name="dPAttributesLSSVM" value="<%=dPAttributesLSSVM%>" />
                                <jsp:param name="dPInstancesLSSVM" value="<%=dPInstancesLSSVM%>" />

                                <jsp:param name="sFileDataLSSVM" value="<%=sFileDataLSSVM%>" />
                                <jsp:param name="sPFileDataLSSVM" value="<%=sPFileDataLSSVM%>" />

                                <jsp:param name="vpath" value="<%=vpath%>" />
                                <jsp:param name="vfile" value="<%=vfile%>" />

                                <jsp:param name="ssResult01Name" value="<%if (ssResult01Name != null) {%><%=ssResult01Name%><%}%>" />
                                <jsp:param name="ssResult02Name" value="<%if (sssResult02Name != null) {%><%=ssResult02Name%><%}%>" />
                                <jsp:param name="ssResult03Name" value="<%if (ssResult03Name != null) {%><%=ssResult03Name%><%}%>" />
                                <jsp:param name="ssResult04Name" value="<%if (ssResult04Name != null) {%><%=ssResult04Name%><%}%>" />
                                <jsp:param name="ssResult04aName" value="<%if (ssResult04aName != null) {%><%=ssResult04aName%><%}%>" />
                                <jsp:param name="ssResult04bName" value="<%if (ssResult04bName != null) {%><%=ssResult04bName%><%}%>" />
                                <jsp:param name="ssResult04cName" value="<%if (ssResult04cName != null) {%><%=ssResult04cName%><%}%>" />
                                <jsp:param name="ssResult04dName" value="<%if (ssResult04dName != null) {%><%=ssResult04dName%><%}%>" />
                                <jsp:param name="ssResult05Name" value="<%if (ssResult05Name != null) {%><%=ssResult05Name%><%}%>" />
                                <jsp:param name="ssResult06Name" value="<%if (ssResult06Name != null) {%><%=ssResult06Name%><%}%>" />
                            </jsp:include> 
                        <% } %>
                    <% } %>
                        
                    <div class="tab-content">
                    <% if (sPageControl.equals("2")) { %>
                        <div id="results" class="tab-pane fade in active">
                    <% } else { %>
                        <div id="results" class="tab-pane fade in">
                    <% } %>
                            <table>
                                <tr>
                                    <td style="width: 10%">
                                        <a onclick="return previousscreenLSSVM();" style="float:left;">
                                            <font color="blue" face="agency FB" size="3">
                                            &nbsp;&nbsp;&nbsp;<b><u><< BACK</u></b>
                                            </font>
                                        </a>                            
                                    </td>
                                    <i><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif" size="3" style="float:right">Base output file name:&nbsp;&nbsp;<%=sBaseFileName%>&nbsp;&nbsp;&nbsp;&nbsp;</font></i><%--><--%>
                                </tr>
                            </table> 
                            
                        <table>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <%--><div title="Go to previous page" onclick="changetab(1)"><--%>
                                    <div title="View data page" onclick="changetab(1)">
                                        <%--><h3><u><i><font face="Palatino Linotype, Book Antiqua, Palatino, serif">I. Input Data Review and Run</font></i></u></h3><--%>
                                        <h3><font color="skyblue" face="Palatino Linotype, Book Antiqua, Palatino, serif">Input Data Review and Run</font></h3>
                                    </div>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <h3><span class="glyphicon glyphicon-bookmark"></span></h3>
                                </td>
                                <td>&nbsp;&nbsp;</td>
                                <td>
                                    <div>
                                        <%--><h3><font face="Palatino Linotype, Book Antiqua, Palatino, serif">II. The Results</font></h3><--%>
                                        <h3><b><font face="Palatino Linotype, Book Antiqua, Palatino, serif">Numerical Results</font></b></h3>
                                    </div>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <div title="View graphical results page" onclick="changetab(3)">
                                        <h3><font color="skyblue" face="Palatino Linotype, Book Antiqua, Palatino, serif">Graphical Results</font></h3>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <br>
                        <ul class="nav nav-pills nav-justified" style="background-color: lavender;">
                            <li class="active"><a data-toggle="tab" href="#Main" id="Menu">Main Output</a></li>
                            <li><a data-toggle="tab" href="#PGraph">Prediction Output</a></li> 
                            <li><a data-toggle="tab" href="#PTGraph">Performance Trajectory Data</a></li>
                            <li><a data-toggle="tab" href="#TPGraph">Tracing Path Data</a></li>
                        </ul>
                        <br>
                        <div class="tab-content">
                            <div id="Main" class="tab-pane fade in active">
                                <a href="#Optimum">Optimum hyperparameters</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <a href="#Partition">Performance</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <a href="#Report">Analysis report</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <a href="#Performance">Data and prediction</a>
                                <br>
                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="Optimum">Main Output</font></b>
                                    <a href="#Partition"><span class="glyphicon glyphicon-menu-down"></span></a>
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                    <br><br>
                                    <u><font size="4">Best optimum hyperparameters</font></u>
                                </center><br>
                                <%  File a = new File(ssResult01Name);
                                    if (ssResult01Name != "" && a.exists() && !a.isDirectory()) {  
                                    String file = ssResult01Name;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    String line = null;
                                    int i;
                                    int j;

                                    // first and only line
                                    line = br.readLine();
                                    if (line == null) {
                                        %><center><div><table><tr>
                                            <td align="center">
                                                <h2><font color='red'>Output file empty !</font></h2>
                                            </td>
                                        </tr></table></div></center><% 
                                    } else {
                                        cols = line.split("\\t");
                                        sBestFold=cols[3];
                                        sValueC = cols[0];
                                        sValueS = cols[1];
                                        %>
                                        <script>
                                            document.getElementById("sValueC").value = "<%=sValueC%>";
                                            document.getElementById("sValueS").value = "<%=sValueS%>";
                                        </script>
                                        <center>
                                            <div> 
                                                <table>
                                                    <tr>
                                                        <td align="right">Penalty Parameter, C</td>
                                                        <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td align="left"><%=cols[0]%></td>
                                                    </tr> 
                                                    <tr>
                                                        <td align="right">Kernel Function Parameter, S</td> 
                                                        <td align="center">=</td> 
                                                        <td align="left"><%=cols[1]%></td>
                                                    </tr> 
                                                    <tr>
                                                        <td align="right">MAE</td> 
                                                        <td align="center">=</td> 
                                                        <td align="left"><%=cols[2]%></td>
                                                    </tr> 
                                                    <tr>
                                                        <td align="right">Best Fold</td> 
                                                        <td align="center">=</td> 
                                                        <td align="left"><%=cols[3]%></td>
                                                    </tr> 
                                                    <tr>
                                                        <td align="right">Computing time, s (sec)</td> 
                                                        <td align="center">=</td> 
                                                        <td align="left"><%=cols[4]%></td>
                                                    </tr> 
                                                </table> 
                                            </div> 
                                        </center> 
                                    <%} 
                                    br.close(); 
                                } else { %> 
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %>
                                
                                <br>
                                <center>
                                    <u><font size="4">Optimum hyperparameters</font></u>
                                </center>

                                <% File b = new File(ssResult02Name);
                                String[][] datatemp2 = new String[1210][21];
                                if (ssResult02Name != "" && b.exists() && !b.isDirectory()) {  
                                    String file = ssResult02Name;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    String line = null;
                                    String stemp;
                                    int i;
                                    int j;
                                    int ii;
                                    stemp="1"; 
                                    i=1;
                                    ii=1;
                                    String[][] datatemp = new String[1210][21];
                                    
                                    // first block
                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    j=0;
                                    while (stemp == "1") {
                                        for (i = 0; i < 4; i += 1) {
                                            datatemp[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                        cols = line.split("\\t");
                                        ncol = cols.length;
                                        if (ncol != 4) {
                                            stemp="0";      //to exit loop 
                                        }
                                    }
                                    if (j == 0) { %>
                                        <center><div><table><tr>
                                            <td align="center">
                                                <h2><font color='red'>Output file empty !</font></h2>
                                            </td>
                                        </tr></table></div></center> 
                                    <% } else { %>
                                        <br>
                                        <center>
                                            <div> 
                                                <table>
                                                    <tr>
                                                        <td align="center">Fold No.</td> 
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Penalty Parameter, C</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Kernel Function Parameter, S</td> 
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">MAE of Validation Data</td> 
                                                    </tr> 
                                                    <% for (i = 0; i < j; i += 1) { %>
                                                        <tr>
                                                        <td align="center"><%=datatemp[i][3]%></td>
                                                        <% for (ii = 0; ii < 3; ii += 1) { %>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp[i][ii]%></td> 
                                                        <% } %>
                                                        </tr>
                                                    <% } %>
                                                </table> 
                                            </div> 
                                        </center>
                                        <br>
                                        <center>
                                            <% if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>
                                                <button class="btn btn-primary" onclick="return savingmodelexport();">Save Model</button>
                                            <% } %>
                                        </center>
                                        <br>
                                        <br>
                                        <center>
                                            <b><font size="4" id="Partition">System Performance Evaluation</font></b>
                                            <a href="#Optimum"><span class="glyphicon glyphicon-menu-up"></span></a>
                                            <a href="#Report"><span class="glyphicon glyphicon-menu-down"></span></a>
                                            <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <br><br>
                                            <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %> 
                                                <u><font size="4">Performance of learning and test data</font></u>
                                            <% } else { %>
                                                <u><font size="4">Performance of learning and prediction data</font></u>
                                            <% } %>
                                        </center>
                                        <br>

                                        <% 
                                        line = br.readLine();
                                        line = br.readLine();
                                        line = br.readLine();
                                        line = br.readLine();
                                        line = br.readLine();
                                        cols = line.split("\\t");
                                        ncol = cols.length;
                                        stemp="1"; 
                                        j=0;
                                        while (stemp == "1") {
                                            for (i = 0; i < ncol; i += 1) {
                                                datatemp2[j][i]=cols[i];
                                            }
                                            j=j+1;
                                            line = br.readLine();
                                            cols = line.split("\\t");
                                            ncol = cols.length;
                                            if (ncol != 2) {
                                                stemp="0";      //to exit loop 
                                            }
                                        }

                                        line = br.readLine();
                                        cols = line.split("\\t");
                                        ncol = cols.length;
                                        j=0;
                                        while (line != null) {
                                            cols = line.split("\\t");
                                            ncol = cols.length;
                                            for (i = 0; i < ncol; i += 1) {
                                                datatemp[j][i]=cols[i];
                                            }
                                            j=j+1;
                                            line = br.readLine();
                                        }
                                        %>
                                        <center>
                                            <div> 
                                                <table>
                                                    <tr>
                                                        <td align="center">Fold No.</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Percent Accuracy of Learning Data</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %> 
                                                            <td align="center">Percent Accuracy of Test Data</td> 
                                                        <% } else { %>
                                                            <td align="center">Percent Accuracy of Prediction Data</td> 
                                                        <% } %>
                                                    </tr> 
                                                    <% for (i = 0; i < j; i += 1) { %>
                                                        <tr>
                                                        <td align="center"><%=(i+1)%></td>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp2[i][0]%></td>
                                                        <% for (ii = 1; ii < ncol; ii += 1) { %>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp2[i][ii]%></td> 
                                                        <% } %>
                                                        </tr>
                                                    <% } %>
                                                </table> 
                                            </div> 
                                        </center> 

                                        <br>        
                                                
                                        <center>
                                            <div> 
                                                <u><font size="4">Performance of training and validation partitions of learning data</font></u>
                                                <table>
                                                    <tr>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    </tr> 
                                                    <tr>
                                                        <td align="center">Fold No.</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Percent Accuracy of Training Data</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Percent Accuracy of Validation Data</td> 
                                                    </tr> 
                                                    <% for (i = 0; i < j; i += 1) { %>
                                                        <tr>
                                                        <td align="center"><%=(i+1)%></td>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][0]%></td>
                                                        <% for (ii = 1; ii < ncol; ii += 1) { %>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp[i][ii]%></td> 
                                                        <% } %>
                                                        </tr>
                                                    <% } %>
                                                </table> 
                                            </div> 
                                        </center> 
                                    <% } 
                                    br.close(); 
                                } else { %> 
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 
                                
                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="Report">Analysis Report</font></b>
                                    <a href="#Partition"><span class="glyphicon glyphicon-menu-up"></span></a>
                                    <a href="#Performance"><span class="glyphicon glyphicon-menu-down"></span></a>
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                    <br>
                                </center>
                                <br>

                                <% File c = new File(ssResult03Name);
                                    if (ssResult03Name != "" && c.exists() && !c.isDirectory()) {  
                                    String file = ssResult03Name;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    String line = null;
                                    String stemp;
                                    int i;
                                    int j;
                                    int ii;
                                    stemp="1"; 
                                    i=1;
                                    ii=1;
                                    String[][] datatemp = new String[1021][9];

                                    j=0;
                                    line = br.readLine();
                                    while (line != null) {
                                        datatemp[j][1]=line;
                                        line = br.readLine();
                                        j=j+1;
                                    } 
                                    br.close();
                                    %>

                                    <center><div><table>
                                        <% for (i = 0; i < j; i += 1) { %>
                                            <tr>
                                            <td><%=datatemp[i][1]%></td>
                                            </tr>
                                        <% } %>
                                            </table></div></center> 

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 
                                
                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="Performance">Raw Dataset with Predicted Values</font></b>
                                    <a href="#Report"><span class="glyphicon glyphicon-menu-up"></span></a>
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                    <br><br>
                                    <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %> 
                                        <u><font size="4" id="Dataset1">Test data with predicted values of the best fold</font></u>
                                    <% } else { %>
                                        <u><font size="4" id="Dataset1">Prediction data with predicted values of the best fold</font></u>
                                    <% } %>
                                    <a href="#Dataset2"><span class="glyphicon glyphicon-triangle-bottom"></span></a> 
                                </center> 
                                <br>

                                <% File d = new File(ssResult04Name);
                                if (ssResult04Name != "" && d.exists() && !d.isDirectory()) {  
                                    String file = ssResult04Name;
                                    BufferedReader br = new BufferedReader(new FileReader(file));
                                    int colcount = 0; 
                                    int rowcount = 0;
                                    colcount = br.readLine().split("\\t").length;
                                    while (br.readLine() != null)
                                    {
                                        rowcount++;
                                    }
                                    br.close();

                                    br = new BufferedReader(new FileReader(file));
                                    String line = null;
                                    String stemp;
                                    int i;
                                    int j;
                                    int ii;
                                    int ncol24;
                                    stemp="1"; 
                                    i=1;
                                    ii=1;
                                    j=0;
                                    String[][] datatemp = new String[rowcount][colcount];
                                    String[][] datatemp24 = new String[rowcount][colcount];

                                    // first block
                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    ncol24=ncol;
                                    j=0;
                                    while (stemp == "1") {
                                        for (i = 0; i < ncol; i += 1) {
                                            datatemp24[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                        cols = line.split("\\t");
                                        ncol = cols.length;
                                        if (ncol != ncol24) {
                                            stemp="0";      //to exit loop 
                                        }
                                    } 
                                    %>

                                        <center>
                                            <div> 
                                                <table>
                                                    <tr>
                                                        <td align="center">Data No.</td>
                                                        <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %> 
                                                            <% for (ii = 1; ii < ncol24-1; ii += 1) { %>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                                <td align="center">X<%=ii%></td> 
                                                            <% } %> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Actual Y</td> 
                                                        <% } else { %>
                                                            <% for (ii = 1; ii < ncol24; ii += 1) { %>
                                                                <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                                <td align="center">X<%=ii%></td> 
                                                            <% } %> 
                                                        <% } %> 
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Predicted Y</td> 
                                                    </tr> 
                                                    <% for (i = 0; i < j; i += 1) { %>
                                                        <tr>
                                                        <td align="center"><%=(i+1)%></td>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp24[i][0]%></td>
                                                        <% for (ii = 1; ii < ncol24; ii += 1) { %>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp24[i][ii]%></td> 
                                                        <% } %>
                                                        </tr>
                                                    <% } %>
                                                </table> 
                                            </div> 
                                        </center> 
                                    <br>

                                    <% line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    ncol24=ncol;
                                    j=0;
                                    stemp="1"; 
                                    while (stemp == "1") {
                                        for (i = 0; i < ncol24; i += 1) {
                                            datatemp[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                        cols = line.split("\\t");
                                        ncol = cols.length;
                                        if (ncol != ncol24) {
                                            stemp="0";      //to exit loop 
                                        }
                                    } 
                                    %>

                                    <center>
                                        <u><font size="4" id="Dataset2">Learning data with predicted values of the best fold</font></u>
                                            <a href="#Dataset1"><span class="glyphicon glyphicon-triangle-top"></span></a> 
                                            <a href="#Dataset3"><span class="glyphicon glyphicon-triangle-bottom"></span></a> 
                                            <div> 
                                            <table>
                                                <tr>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                </tr> 
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <% for (ii = 1; ii < ncol24-1; ii += 1) { %>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">X<%=ii%></td> 
                                                    <% } %> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Actual Y</td> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Predicted Y</td> 
                                                </tr> 
                                                <% for (i = 0; i < j; i += 1) { %>
                                                    <tr>
                                                    <td align="center"><%=(i+1)%></td>
                                                    <td>&nbsp;</td>
                                                    <td align="center"><%=datatemp[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol24; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table> 
                                        </div> 
                                    </center>
                                    <br>

                                    <% line = br.readLine();
                                    cols = line.split("\\t");
                                    j=0;
                                    stemp="1"; 
                                    while (stemp == "1") {
                                        for (i = 0; i < ncol24; i += 1) {
                                            datatemp[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                        cols = line.split("\\t");
                                        ncol = cols.length;
                                        if (ncol != ncol24) {
                                            stemp="0";      //to exit loop 
                                        }
                                    } 
                                    %>

                                    <center>
                                        <u><font size="4" id="Dataset3">Validation partition of learning data with predicted values of the best fold</font></u>
                                        <a href="#Dataset2"><span class="glyphicon glyphicon-triangle-top"></span></a> 
                                        <a href="#Dataset4"><span class="glyphicon glyphicon-triangle-bottom"></span></a> 
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                </tr> 
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <% for (ii = 1; ii < ncol24-1; ii += 1) { %>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">X<%=ii%></td> 
                                                    <% } %> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Actual Y</td> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Predicted Y</td> 
                                                </tr> 
                                                <% for (i = 0; i < j; i += 1) { %>
                                                    <tr>
                                                    <td align="center"><%=(i+1)%></td>
                                                    <td>&nbsp;</td>
                                                    <td align="center"><%=datatemp[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol24; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table> 
                                        </div> 
                                    </center> 
                                    <br>

                                    <% line = br.readLine();
                                    cols = line.split("\\t");
                                    j=0;
                                    while (line != null) {
                                        for (i = 0; i < ncol24; i += 1) {
                                            datatemp[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                        if (line != null) {
                                            cols = line.split("\\t");
                                        }
                                    } 
                                    %>

                                    <% br.close(); %>

                                    <center>
                                        <u><font size="4" id="Dataset4">Training partition of learning data with predicted values of the best fold</font></u>
                                        <a href="#Dataset3"><span class="glyphicon glyphicon-triangle-top"></span></a> 
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                </tr> 
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <% for (ii = 1; ii < ncol24-1; ii += 1) { %>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">X<%=ii%></td> 
                                                    <% } %> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Actual Y</td> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Predicted Y</td> 
                                                </tr> 
                                                <% for (i = 0; i < j; i += 1) { %>
                                                    <tr>
                                                    <td align="center"><%=(i+1)%></td>
                                                    <td>&nbsp;</td>
                                                    <td align="center"><%=datatemp[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol24; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table> 
                                        </div> 
                                    </center> 
                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %>
                            </div>
                            
                            <div id="PGraph" class="tab-pane fade in">
                                <div class="edittab">
                                    <%--><label><input type="checkbox" name="TDCheck" id="TDCheck1" value="TDCheck1" onclick="fTDCheckBox(1);" checked>&nbsp;</label><--%>
                                    <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %> 
                                        <a href="#TDataset">Test data</a>
                                    <% } else { %>
                                        <a href="#TDataset">Prediction data</a>
                                    <% } %>
                                    <span class="glyphicon glyphicon-minus"></span> 
                                    <a href="#LDataset">Learning data</a>
                                    <span class="glyphicon glyphicon-minus"></span> 
                                    <a href="#VPDataset">Validation partition data</a>
                                    <span class="glyphicon glyphicon-minus"></span> 
                                    <a href="#TPDataset">Training partition data</a>
                                </div>
                                <br>
                                <br>
                                <center>
                                    <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %> 
                                        <b><font size="4" id="TDataset">Predicted Values of Test Data</font></b>
                                    <% } else { %>
                                        <b><font size="4" id="TDataset">Predicted Values of Prediction Data</font></b>
                                    <% } %>
                                    <a href="#LDataset"><span class="glyphicon glyphicon-menu-down"></span></a> 
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a> 
                                    <br>
                                </center>
                                <br>

                                <% File e = new File(ssResult04aName); 
                                if (ssResult04aName != "" && e.exists() && !e.isDirectory()) {  
                                    String file = ssResult04aName;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    int colcount = 0; 
                                    int rowcount = 1;
                                    colcount = br.readLine().split("\\t").length;
                                    while (br.readLine() != null)
                                    {
                                        rowcount++;
                                    }
                                    br.close();

                                    br = new BufferedReader(new FileReader(file));
                                    String line = null;
                                    String stemp;
                                    int i;
                                    int j;
                                    int ii;

                                    stemp="1"; //initial value
                                    i=1;
                                    ii=1;
                                    String[][] datatemp = new String[rowcount][colcount];

                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    j=0;
                                    while (line != null) {
                                        cols = line.split("\\t");
                                        for (i = 0; i < ncol; i += 1) {
                                            datatemp[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                    } %>

                                    <% br.close(); %>

                                    <center>
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <% for (ii = 1; ii < ncol-1; ii += 1) { %>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">X<%=ii%></td> 
                                                    <% } %> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Actual Y</td> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Predicted Y</td> 
                                                </tr> 
                                                <% for (i = 0; i < j; i += 1) { %>
                                                    <tr>
                                                    <td align="center"><%=(i+1)%></td>
                                                    <td>&nbsp;</td>
                                                    <td align="center"><%=datatemp[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table> 
                                        </div> 
                                    </center> 

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 

                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="LDataset">Predicted Values of Learning Data</font></b>
                                    <a href="#TDataset"><span class="glyphicon glyphicon-menu-up"></span></a>
                                    <a href="#VPDataset"><span class="glyphicon glyphicon-menu-down"></span></a>
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                    <br>
                                </center>
                                <br>

                                <% File f = new File(ssResult04bName); 
                                if (ssResult04bName != "" && f.exists() && !f.isDirectory()) {  
                                    String file = ssResult04bName;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    int colcount = 0; 
                                    int rowcount = 1;
                                    colcount = br.readLine().split("\\t").length;
                                    while (br.readLine() != null)
                                    {
                                        rowcount++;
                                    }
                                    br.close();

                                    br = new BufferedReader(new FileReader(file));
                                    String line = null;
                                    String stemp;
                                    int i;
                                    int j;
                                    int ii;

                                    stemp="1"; //initial value
                                    i=1;
                                    ii=1;
                                    String[][] datatemp = new String[rowcount][colcount];

                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    j=0;
                                    while (line != null) {
                                        cols = line.split("\\t");
                                        for (i = 0; i < ncol; i += 1) {
                                            datatemp[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                    } %>

                                    <% br.close(); %>

                                    <center>
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <% for (ii = 1; ii < ncol-1; ii += 1) { %>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">X<%=ii%></td> 
                                                    <% } %> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Actual Y</td> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Predicted Y</td> 
                                                </tr> 
                                                <% for (i = 0; i < j; i += 1) { %>
                                                    <tr>
                                                    <td align="center"><%=(i+1)%></td>
                                                    <td>&nbsp;</td>
                                                    <td align="center"><%=datatemp[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table> 
                                        </div> 
                                    </center> 

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 

                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="VPDataset">Predicted Values of Validation Partition from Learning Data</font></b>
                                    <a href="#LDataset"><span class="glyphicon glyphicon-menu-up"></span></a>
                                    <a href="#TPDataset"><span class="glyphicon glyphicon-menu-down"></span></a>
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                    <br>
                                </center>
                                <br>

                                <% File g = new File(ssResult04cName); 
                                if (ssResult04cName != "" && g.exists() && !g.isDirectory()) {  
                                    String file = ssResult04cName;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    int colcount = 0; 
                                    int rowcount = 1;
                                    colcount = br.readLine().split("\\t").length;
                                    while (br.readLine() != null)
                                    {
                                        rowcount++;
                                    }
                                    br.close();

                                    br = new BufferedReader(new FileReader(file));
                                    String line = null;
                                    String stemp;
                                    int i;
                                    int j;
                                    int ii;

                                    stemp="1"; //initial value
                                    i=1;
                                    ii=1;
                                    String[][] datatemp = new String[rowcount][colcount];

                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    j=0;
                                    while (line != null) {
                                        cols = line.split("\\t");
                                        for (i = 0; i < ncol; i += 1) {
                                            datatemp[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                    } %>

                                    <% br.close(); %>

                                    <center>
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Actual Y</td> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Predicted Y</td> 
                                                </tr> 
                                                <% for (i = 0; i < j; i += 1) { %>
                                                    <tr>
                                                    <td align="center"><%=(i+1)%></td>
                                                    <td>&nbsp;</td>
                                                    <td align="center"><%=datatemp[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table> 
                                        </div> 
                                    </center> 

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 

                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="TPDataset">Predicted Values of Training Partition from Learning Data</font></b>
                                    <a href="#VPDataset"><span class="glyphicon glyphicon-menu-up"></span></a>
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                    <br>
                                </center>
                                <br>

                                <% File h = new File(ssResult04dName); 
                                if (ssResult04dName != "" && h.exists() && !h.isDirectory()) {  
                                    String file = ssResult04dName;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    int colcount = 0; 
                                    int rowcount = 1;
                                    colcount = br.readLine().split("\\t").length;
                                    while (br.readLine() != null)
                                    {
                                        rowcount++;
                                    }
                                    br.close();

                                    br = new BufferedReader(new FileReader(file));
                                    String line = null;
                                    String stemp;
                                    int i;
                                    int j;
                                    int ii;

                                    stemp="1"; //initial value
                                    i=1;
                                    ii=1;
                                    String[][] datatemp = new String[rowcount][colcount];

                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    j=0;
                                    while (line != null) {
                                        cols = line.split("\\t");
                                        for (i = 0; i < ncol; i += 1) {
                                            datatemp[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                    } %>

                                    <% br.close(); %>

                                    <center>
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Actual Y</td> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Predicted Y</td> 
                                                </tr> 
                                                <% for (i = 0; i < j; i += 1) { %>
                                                    <tr>
                                                    <td align="center"><%=(i+1)%></td>
                                                    <td>&nbsp;</td>
                                                    <td align="center"><%=datatemp[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table> 
                                        </div> 
                                    </center> 

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 
                            </div>

                            <div id="PTGraph" class="tab-pane fade in">
                                <div class="edittab">
                                    <%--><label><input type="checkbox" name="TDCheck" id="TDCheck1" value="TDCheck1" onclick="fTDCheckBox(1);" checked>&nbsp;&nbsp;Fold No.:&nbsp;</label><--%>
                                    Fold No.:&nbsp;
                                    <a href="#PT1">1</a>
                                    <%if (sVariation == "3" || sVariation == "8") { %>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PT2">2</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PT3">3</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PT4">4</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PT5">5</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PT6">6</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PT7">7</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PT8">8</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PT9">9</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PT10">10</a>
                                    <% } %>
                                </div>
                                <br>
                                <br>

                                <% File ist = new File(ssResult05Name); 
                                if (ssResult05Name != "" && ist.exists() && !ist.isDirectory()) {  
                                    String file = ssResult05Name; 
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    int colcount = 0; 
                                    int rowcount = 1;
                                    colcount = br.readLine().split("\\t").length;
                                    while (br.readLine() != null)
                                    {
                                        rowcount++;
                                    }
                                    br.close();

                                    br = new BufferedReader(new FileReader(file));
                                    String line = null;
                                    String stemp;
                                    int i; 
                                    int j;
                                    int ii;
                                    int jj;
                                    int nNilai1=1;
                                    int nNilai2;

                                    stemp="1"; //initial value
                                    i=1;
                                    ii=1;
                                    jj=0; 
                                    String[][] datatemp = new String[rowcount][colcount];

                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    datatemp[0][0] = cols[0];

                                    while (line != null) {
                                        stemp="1";
                                        j=0;
                                        while (line != null && stemp=="1") {
                                            cols = line.split("\\t");
                                            /*
                                            out.println("<p>");
                                            out.println("j = "+j);
                                            out.println("datatemp[j][0] = "+datatemp[j][0]);
                                            out.println("cols[0] = "+cols[0]);
                                            out.println("cols[1] = "+cols[1]);
                                            out.println("cols[2] = "+cols[2]);
                                            out.println("cols[3] = "+cols[3]);
                                            */
                                            //else if (datatemp[j-1][0] == cols[0]) {
                                            nNilai2 = (int)Double.parseDouble(cols[0]); 
                                            if (j==0) {
                                                for (i = 0; i < ncol; i += 1) {
                                                    datatemp[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                                nNilai1 = (int)Double.parseDouble(datatemp[j-1][0]); 
                                            }
                                            else if (nNilai1 == nNilai2) {
                                                for (i = 0; i < ncol; i += 1) {
                                                    datatemp[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                                nNilai1 = (int)Double.parseDouble(datatemp[j-1][0]); 
                                            }
                                            else {
                                                stemp="0";
                                                datatemp[0][0] = cols[0];
                                            }
                                        }
                                        jj = jj + 1;
                                        if (jj>1) {
                                            %>
                                            <br><br>
                                            <%
                                        }
                                        %>

                                        <center>
                                        <% if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>
                                            <b><font size="4" id="PT1">Performance Trajectory of Prediction Data - Fold No. <%=jj%></font></b>
                                        <% } else { 
                                            if (jj==1) { %> <b><font size="4" id="PT1">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT2"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>
                                            <% if (jj==2) { %> <b><font size="4" id="PT2">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT1"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT3"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==3) { %> <b><font size="4" id="PT3">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT2"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT4"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==4) { %> <b><font size="4" id="PT4">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT3"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT5"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==5) { %> <b><font size="4" id="PT5">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT4"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT6"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==6) { %> <b><font size="4" id="PT6">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT5"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT7"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==7) { %> <b><font size="4" id="PT7">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT6"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT8"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==8) { %> <b><font size="4" id="PT8">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT7"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT9"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==9) { %> <b><font size="4" id="PT9">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT8"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT10"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==10) { %> <b><font size="4" id="PT10">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT9"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                        <% } %> 
                                        </center> 
                                        <br>

                                        <center> 
                                            <div> 
                                                <table> 
                                                    <tr>
                                                        <td align="center">Generation No.</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Mean RMSE</td> 
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Best RMSE</td> 
                                                    </tr> 
                                                    <% for (i = 0; i < j; i += 1) { %>
                                                        <tr>
                                                        <td align="center"><%=datatemp[i][1]%></td>
                                                        <% for (ii = 2; ii < ncol; ii += 1) { %>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp[i][ii]%></td> 
                                                        <% } %>
                                                        </tr>
                                                    <% } %>
                                                </table> 
                                            </div> 
                                        </center> 
                                    <% } %>   

                                    <% br.close(); %>

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %>
                            </div>

                            <div id="TPGraph" class="tab-pane fade in">
                                <div class="edittab">
                                    <%--><label><input type="checkbox" name="TDCheck" id="TDCheck1" value="TDCheck1" onclick="fTDCheckBox(1);" checked>&nbsp;&nbsp;Fold No.:&nbsp;</label><--%>
                                    Fold No.:&nbsp;
                                    <a href="#TP1">1</a>
                                    <%if (sVariation == "3" || sVariation == "8") { %>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#TP2">2</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#TP3">3</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#TP4">4</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#TP5">5</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#TP6">6</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#TP7">7</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#TP8">8</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#TP9">9</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#TP10">10</a>
                                    <% } %>
                                </div>
                                <br>
                                <br>

                                <% File jst = new File(ssResult06Name); 
                                if (ssResult06Name != "" && jst.exists() && !jst.isDirectory()) {  
                                    String file = ssResult06Name;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    int colcount = 0; 
                                    int rowcount = 1;
                                    colcount = br.readLine().split("\\t").length;
                                    while (br.readLine() != null)
                                    {
                                        rowcount++;
                                    }
                                    br.close();

                                    br = new BufferedReader(new FileReader(file));
                                    String line = null;
                                    String stemp;
                                    int i; 
                                    int j;
                                    int ii;
                                    int jj;
                                    int nNilai1=1;
                                    int nNilai2;
                                    
                                    /* nrow = 0;
                                    // make the system read the content flexible
                                    while ((line = br.readLine()) != null) {
                                        nrow += 1;
                                    }

                                    br = new BufferedReader(new FileReader(file));*/
                                        
                                    stemp="1"; //initial value
                                    i=1;
                                    ii=1;
                                    jj=0; 
                                    String[][] datatemp = new String[rowcount][colcount];
                                    
                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    datatemp[0][0] = cols[0];

                                    while (line != null) {
                                        stemp="1";
                                        j=0;
                                        while (line != null && stemp=="1") {
                                            cols = line.split("\\t");
                                            nNilai2 = (int)Double.parseDouble(cols[0]); 
                                            if (j==0) {
                                                for (i = 0; i < ncol; i += 1) {
                                                    datatemp[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                                nNilai1 = (int)Double.parseDouble(datatemp[j-1][0]); 
                                            }
                                            else if (nNilai1 == nNilai2) {
                                                for (i = 0; i < ncol; i += 1) {
                                                    datatemp[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                                nNilai1 = (int)Double.parseDouble(datatemp[j-1][0]); 
                                            }
                                            else {
                                                stemp="0";
                                                datatemp[0][0] = cols[0];
                                            }
                                        }
                                        jj = jj + 1;
                                        if (jj>1) {
                                            %>
                                            <br><br>
                                            <%
                                        }
                                        %>

                                        <center>
                                        <% if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>
                                            <b><font size="4" id="TP1">Tracing Path for Searching Best Performance of Prediction Data - Fold No. <%=jj%></font></b>
                                        <% } else { 
                                            if (jj==1) { %> <b><font size="4" id="TP1">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                    <a href="#TP2"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>
                                            <% if (jj==2) { %> <b><font size="4" id="TP2">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#TP1"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#TP3"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==3) { %> <b><font size="4" id="TP3">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#TP2"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#TP4"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==4) { %> <b><font size="4" id="TP4">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#TP3"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#TP5"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==5) { %> <b><font size="4" id="TP5">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#TP4"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#TP6"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==6) { %> <b><font size="4" id="TP6">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#TP5"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#TP7"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==7) { %> <b><font size="4" id="TP7">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#TP6"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#TP8"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==8) { %> <b><font size="4" id="TP8">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#TP7"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#TP9"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==9) { %> <b><font size="4" id="TP9">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#TP8"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#TP10"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==10) { %> <b><font size="4" id="TP10">Tracing Path for Searching Best Performance of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#TP9"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                        <% } %> 
                                        </center>
                                        <br>

                                        <center>
                                            <div> 
                                                <table>
                                                    <tr>
                                                        <td align="center">Generation No.</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Fireflies No.</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Penalty Parameter, C</td> 
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Kernel Function Parameter, S</td> 
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">RMSE</td> 
                                                    </tr> 
                                                    <% for (i = 0; i < j; i += 1) { %>
                                                        <tr>
                                                        <% if (i>0) {
                                                            nNilai2 = (int)Double.parseDouble(datatemp[i][1]); 
                                                            if (nNilai2>nNilai1) {
                                                                %>
                                                                <td colspan="5">&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                <%
                                                            }
                                                        }%>
                                                        <td align="center"><%=datatemp[i][1]%></td>
                                                        <% for (ii = 2; ii < ncol; ii += 1) { %>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp[i][ii]%></td> 
                                                        <% } 
                                                        nNilai1 = (int)Double.parseDouble(datatemp[i][1]); 
                                                        %>
                                                        </tr>
                                                    <% } %>
                                                </table> 
                                            </div> 
                                        </center> 
                                    <% } %>   

                                    <% br.close(); %>

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %>
                            </div>
                            </div>
                            
                            <br>
                            <a href="#title">
                                <img src="Arrow top.png" alt="..." width="18" style="float:right">
                            </a>
                            <br>
                            <center id="bottomform">
                                <button type="button" onclick="" class="btn btn-primary">Save</button>
                            </center>
                            <br>
                        </div>
                        <% if (sSaveModel != "") { 
                            String filename;
                            filename = "SVMModel.txt";
                            String file = application.getRealPath("/") + filename;
                            FileWriter filewriter = new FileWriter(file, false);
                            filewriter.write(sValueC+"\t");
                            filewriter.write(sValueS+"\n");
                            filewriter.close(); %>
                            <script>alert('Model is already saved on the server');</script>
                        <% } %>
                            
                        <% if (sPageControl.equals("3")) { %>
                        <div id="Gresults" class="tab-pane fade in active">
                        <% } else { %>
                            <div id="Gresults" class="tab-pane fade in">
                        <% } %>
                            <% if (sPageControl.equals("3")) { %>
                                <table>
                                    <tr>
                                        <td style="width: 10%">
                                            <a onclick="return previousscreenLSSVM();" style="float:left;">
                                                <font color="blue" face="agency FB" size="3">
                                                &nbsp;&nbsp;&nbsp;<b><u><< BACK</u></b>
                                                </font>
                                            </a>                            
                                        </td>
                                        <i><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif" size="3" style="float:right">Base output file name:&nbsp;&nbsp;<%=sBaseFileName%>&nbsp;&nbsp;&nbsp;&nbsp;</font></i><%--><--%>
                                    </tr>
                                </table> 

                                <table>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td>
                                            <div title="View data page" onclick="changetab(1)">
                                                <h3><font color="skyblue" face="Palatino Linotype, Book Antiqua, Palatino, serif">Input Data Review and Run</font></h3>
                                            </div>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td>
                                            <div title="View pre-computed numerical results" onclick="changetab(2)">
                                                <h3><font color="skyblue" face="Palatino Linotype, Book Antiqua, Palatino, serif">Numerical Results</font></h3>
                                            </div>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td>
                                            <h3><span class="glyphicon glyphicon-bookmark"></span></h3>
                                        </td>
                                        <td>&nbsp;&nbsp;</td>
                                        <td>
                                            <div>
                                                <h3><b><font face="Palatino Linotype, Book Antiqua, Palatino, serif">Graphical Results</font></b></h3>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                
                                <br>
                                <table>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td>
                                            <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Graph Type:</font></b></h4>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <td align="right">
                                            <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Prediction Graph</font></h4>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <td>
                                            <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                                                <button type="button" onclick="return plotgraph(31);">Test Data</button>
                                            <% } else { %>
                                                <button type="button" onclick="return plotgraph(31);">Prediction Data</button>
                                            <% } %>
                                            <button type="button" onclick="return plotgraph(32);">Learning Data</button>
                                            <button type="button" onclick="return plotgraph(33);">Validation Partition</button>
                                            <button type="button" onclick="return plotgraph(34);">Training Partition</button>
                                            <%--><button type="button" onclick="return plotgraph(35);">All Data</button><--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <td align="right">
                                            <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance Trajectory</font></h4>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <td>
                                            <button type="button" onclick="return plotgraph(41);">Fold #1</button>
                                            <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                                                <% if (TORadioLSSVM.equals("TORadio3LSSVM")) { %>
                                                    <button type="button" onclick="return plotgraph(42);">#2</button>
                                                    <button type="button" onclick="return plotgraph(43);">#3</button>
                                                    <button type="button" onclick="return plotgraph(44);">#4</button>
                                                    <button type="button" onclick="return plotgraph(45);">#5</button>
                                                    <button type="button" onclick="return plotgraph(46);">#6</button>
                                                    <button type="button" onclick="return plotgraph(47);">#7</button>
                                                    <button type="button" onclick="return plotgraph(48);">#8</button>
                                                    <button type="button" onclick="return plotgraph(49);">#9</button>
                                                    <button type="button" onclick="return plotgraph(410);">#10</button>
                                                <% } else { %>
                                                    <% if ((int)Double.parseDouble(sBestFold) != 1) { %> 
                                                        <script>
                                                            document.getElementById("sBestFold").value = 1;
                                                        </script>
                                                    <% } %>
                                                    
                                                    <%if ((int)Double.parseDouble(sGraphNo) >= 41 && (int)Double.parseDouble(sGraphNo) <= 49) { %>        
                                                        <script>
                                                            document.getElementById("sGraphNo").value = 41;
                                                        </script>
                                                    <% } else if ((int)Double.parseDouble(sGraphNo) == 410) { %>
                                                        <script>
                                                            document.getElementById("sGraphNo").value = 41;
                                                        </script>
                                                    <% } %>
                                                <% } %>
                                            <% } %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" align="right">
                                            <% if ((int)Double.parseDouble(sBestFold) == 1) { %>  
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #1</font></h4>
                                            <% } else if ((int)Double.parseDouble(sBestFold) == 2) { %>  
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #2</font></h4>
                                            <% } else if ((int)Double.parseDouble(sBestFold) == 3) { %>
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #3</font></h4>
                                            <% } else if ((int)Double.parseDouble(sBestFold) == 4) { %>
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #4</font></h4>
                                            <% } else if ((int)Double.parseDouble(sBestFold) == 5) { %>
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #5</font></h4>
                                            <% } else if ((int)Double.parseDouble(sBestFold) == 6) { %>
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #6</font></h4>
                                            <% } else if ((int)Double.parseDouble(sBestFold) == 7) { %>
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #7</font></h4>
                                            <% } else if ((int)Double.parseDouble(sBestFold) == 8) { %>
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #8</font></h4>
                                            <% } else if ((int)Double.parseDouble(sBestFold) == 9) { %>
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #9</font></h4>
                                            <% } else if ((int)Double.parseDouble(sBestFold) == 10) { %>
                                                <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing Path of the Best Fold #10</font></h4>
                                            <% } %>    
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;</td> 
                                        <td>
                                            <button type="button" onclick="return plotgraph(51);">Generation #<%=nGeneration%></button> 
                                            <% if (nGeneration > 1) { %> 
                                                <button type="button" onclick="return plotgraph(52);">#<%=nGeneration-1%></button> 
                                            <% } %>    
                                            <% if (nGeneration > 2) { %> 
                                                <button type="button" onclick="return plotgraph(53);">#<%=nGeneration-2%></button> 
                                            <% } %>    
                                            <% if (nGeneration > 3) { %> 
                                                <button type="button" onclick="return plotgraph(54);">#<%=nGeneration-3%></button> 
                                            <% } %>    
                                            <% if (nGeneration > 4) { %> 
                                                <button type="button" onclick="return plotgraph(55);">#<%=nGeneration-4%></button> 
                                            <% } %>    
                                            <% if (nGeneration > 5) { %> 
                                                <button type="button" onclick="return plotgraph(56);">#<%=nGeneration-5%></button> 
                                            <% } %>    
                                            <% if (nGeneration > 6) { %> 
                                                <button type="button" onclick="return plotgraph(57);">#<%=nGeneration-6%></button> 
                                            <% } %>    
                                            <% if (nGeneration > 7) { %> 
                                                <button type="button" onclick="return plotgraph(58);">#<%=nGeneration-7%></button> 
                                            <% } %>    
                                            <% if (nGeneration > 8) { %>  
                                                <button type="button" onclick="return plotgraph(59);">#<%=nGeneration-8%></button> 
                                            <% } %>    
                                            <% if (nGeneration > 9) { %> 
                                                <button type="button" onclick="return plotgraph(510);">#<%=nGeneration-9%></button> 
                                            <% } %>
                                            <% if (nGeneration > 10) { %> 
                                                (last 10 generations)
                                            <% } %>
                                        </td>
                                    </tr>
                                </table>
                                
                                <br>
                                <center>
                                <table>
                                    <tr>
                                        <td align="center">
                                            <% // calling matlab graphic - performance
                                                opt=(int)Double.parseDouble(sopt); 
                                                GraphNo=(int)Double.parseDouble(sGraphNo);
                                                GraphType=(int)Double.parseDouble(sGraphType);
                                                
                                                vpath = application.getRealPath("/"); 

                                                vfile = sBaseFileName;                 
                                                if (vfile == "") { 
                                                    vfile = "SFAM03Result";
                                                }
                                            %>
                                            <% if (GraphNo == 31) { 
                                                if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction:</font></b></h4>
                                                <% } else { %>
                                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Prediction data:</font></b></h4>
                                                <% } %>
                                            <% } else if (GraphNo == 32) { %>        
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction:</font></b></h4> 
                                            <% } else if (GraphNo == 33) { %>        
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Validation partition data prediction:</font></b></h4> 
                                            <% } else if (GraphNo == 34) { %>        
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Training partition data prediction:</font></b></h4> 
                                            <% } else if (GraphNo == 35) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Prediction of all data:</font></b></h4> 
                                            <% } else if (GraphNo == 41) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #1:</font></b></h4> 
                                            <% } else if (GraphNo == 42) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #2:</font></b></h4> 
                                            <% } else if (GraphNo == 43) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #3:</font></b></h4> 
                                            <% } else if (GraphNo == 44) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #4:</font></b></h4> 
                                            <% } else if (GraphNo == 45) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #5:</font></b></h4> 
                                            <% } else if (GraphNo == 46) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #6:</font></b></h4> 
                                            <% } else if (GraphNo == 47) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #7:</font></b></h4> 
                                            <% } else if (GraphNo == 48) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #8:</font></b></h4> 
                                            <% } else if (GraphNo == 49) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #9:</font></b></h4> 
                                            <% } else if (GraphNo == 410) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Performance trajectory of fold #10:</font></b></h4> 
                                            <% } else if (GraphNo == 51) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration%>:</font></b></h4> 
                                            <% } else if (GraphNo == 52) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration-1%>:</font></b></h4> 
                                            <% } else if (GraphNo == 53) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration-2%>:</font></b></h4> 
                                            <% } else if (GraphNo == 54) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration-3%>:</font></b></h4> 
                                            <% } else if (GraphNo == 55) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration-4%>:</font></b></h4> 
                                            <% } else if (GraphNo == 56) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration-5%>:</font></b></h4> 
                                            <% } else if (GraphNo == 57) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration-6%>:</font></b></h4> 
                                            <% } else if (GraphNo == 58) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration-7%>:</font></b></h4> 
                                            <% } else if (GraphNo == 59) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration-8%>:</font></b></h4> 
                                            <% } else if (GraphNo == 510) { %> 
                                                <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Tracing path of generation #<%=nGeneration-9%>:</font></b></h4> 
                                            <% } %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <jsp:include page="SFALSSVMGraphServlet">
                                                <jsp:param name="nGeneration" value="<%=nGeneration%>" />
                                                <jsp:param name="sBestFold" value="<%=sBestFold%>" />
                                                <jsp:param name="GraphNo" value="<%=GraphNo%>" />
                                                <jsp:param name="GraphType" value="<%=GraphType%>" />
                                                <jsp:param name="opt" value="<%=opt%>" /> 
                                                <jsp:param name="dC1LSSVM" value="<%=dC1LSSVM%>" /> 
                                                <jsp:param name="dC2LSSVM" value="<%=dC2LSSVM%>" /> 
                                                <jsp:param name="dS1LSSVM" value="<%=dS1LSSVM%>" /> 
                                                <jsp:param name="dS2LSSVM" value="<%=dS2LSSVM%>" /> 

                                                <jsp:param name="vpath" value="<%=vpath%>" />
                                                <jsp:param name="vfile" value="<%=vfile%>" />
                                            </jsp:include> 	
                                        </td>
                                    </tr>   
                                </table>
                                </center>
                            <% } %>            
                        <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                    </div>
                </div>
                </div>
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
