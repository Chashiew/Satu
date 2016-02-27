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
//todo:

//1. displaying output forms - DONE
//2. replicating icon BACK - DONE
//3. displaying input data - DONE
//4. displaying dataset - DONE
//5. naming output files sReport, ssReport, stReport, suReport - DONE
    
//6. programming 4 buttons from RUN to GRAPHIC ...
//7. preparing Matlab Functions ...
  
    String VarSaveData = request.getParameter("VarSaveData");
    String VarLoadData = request.getParameter("VarLoadData");
    String VarReportData = request.getParameter("VarReportData");
    
    //String VarRun = request.getParameter("VarRun");
    
    String VarTwo = request.getParameter("VarTwo");
    String VarNextLSSVM = request.getParameter("VarNextLSSVM");
    
    String sLoadingDataFileLSSVM = request.getParameter("sLoadingDataFileLSSVM");
    if (sLoadingDataFileLSSVM == null) {
        sLoadingDataFileLSSVM = "";
    }
    
    String sRunReportTable = request.getParameter("sRunReportTable");
    if (sRunReportTable == null) {
        sRunReportTable = "0";
    }
    String sRRTShow = request.getParameter("sRRTShow");
    if (sRRTShow == null) {
        sRRTShow = "";
    }

    String sBaseFileName = request.getParameter("sBaseFileName");
    if (sBaseFileName == null) {
        sBaseFileName = "";
    }
    String sBaseFileNameCO = request.getParameter("sBaseFileNameCO");
    if (sBaseFileNameCO == null) {
        sBaseFileNameCO = "";
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

    String ssResult01 = request.getParameter("ssResult01");
    if (ssResult01 == null) {
        ssResult01 = "";
    }
    String ssResult01Name = request.getParameter("ssResult01Name");
    if (ssResult01Name == null) {
        ssResult01Name = "";
    }
    String ssfilefileResult01 = request.getParameter("ssfilefileResult01");
    if (ssfilefileResult01 == null) {
        ssfilefileResult01 = "";
    }

    String ssResult02 = request.getParameter("ssResult02");
    if (ssResult02 == null) {
        ssResult02 = "";
    }
    String ssResult02Name = request.getParameter("ssResult02Name");
    if (ssResult02Name == null) {
        ssResult02Name = "";
    }
    String ssfilefileResult02 = request.getParameter("ssfilefileResult02");
    if (ssfilefileResult02 == null) {
        ssfilefileResult02 = "";
    }

    String ssResult03 = request.getParameter("ssResult03");
    if (ssResult03 == null) {
        ssResult03 = "";
    }
    String ssResult03Name = request.getParameter("ssResult03Name");
    if (ssResult03Name == null) {
        ssResult03Name = "";
    }
    String ssfilefileResult03 = request.getParameter("ssfilefileResult03");
    if (ssfilefileResult03 == null) {
        ssfilefileResult03 = "";
    }

    String ssResult04 = request.getParameter("ssResult04");
    if (ssResult04 == null) {
        ssResult04 = "";
    }
    String ssResult04Name = request.getParameter("ssResult04Name");
    if (ssResult04Name == null) {
        ssResult04Name = "";
    }
    String ssfilefileResult04 = request.getParameter("ssfilefileResult04");
    if (ssfilefileResult04 == null) {
        ssfilefileResult04 = "";
    }

    String ssResult05 = request.getParameter("ssResult05");
    if (ssResult05 == null) {
        ssResult05 = "";
    }
    String ssResult05Name = request.getParameter("ssResult05Name");
    if (ssResult05Name == null) {
        ssResult05Name = "";
    }
    String ssfilefileResult05 = request.getParameter("ssfilefileResult05");
    if (ssfilefileResult05 == null) {
        ssfilefileResult05 = "";
    }

    String ssResult06 = request.getParameter("ssResult06");
    if (ssResult06 == null) {
        ssResult06 = "";
    }
    String ssResult06Name = request.getParameter("ssResult06Name");
    if (ssResult06Name == null) {
        ssResult06Name = "";
    }
    String ssfilefileResult06 = request.getParameter("ssfilefileResult06"); 
    if (ssfilefileResult06 == null) {
        ssfilefileResult06 = "";
    }

    String sViewProceed = request.getParameter("sViewProceed");
    if (sViewProceed == null) {
        sViewProceed = "";
    }

    String res = request.getParameter("res");
    if (res == null) {
        res = "";
    }

    String sLoadingDataExcelLSSVM = request.getParameter("sLoadingDataExcelLSSVM");
    if (sLoadingDataExcelLSSVM == null) {
        sLoadingDataExcelLSSVM = "";        
    };

    String sLoadingDataExcelClickLSSVM = request.getParameter("sLoadingDataExcelClickLSSVM");
    if (sLoadingDataExcelClickLSSVM == null) {
        sLoadingDataExcelClickLSSVM = "";        
    };
    String sLoadingDataExcelClick3LSSVM = request.getParameter("sLoadingDataExcelClick3LSSVM");
    if (sLoadingDataExcelClick3LSSVM == null) {
        sLoadingDataExcelClick3LSSVM = "";        
    };
    String sLoadingDataExcelClick4LSSVM = request.getParameter("sLoadingDataExcelClick4LSSVM");
    if (sLoadingDataExcelClick4LSSVM == null) {
        sLoadingDataExcelClick4LSSVM = "";        
    };
    String sLoadingDataExcelClick5LSSVM = request.getParameter("sLoadingDataExcelClick5LSSVM");
    if (sLoadingDataExcelClick5LSSVM == null) {
        sLoadingDataExcelClick5LSSVM = "";        
    };
    String sLoadingDataExcelClick6LSSVM = request.getParameter("sLoadingDataExcelClick6LSSVM");
    if (sLoadingDataExcelClick6LSSVM == null) {
        sLoadingDataExcelClick6LSSVM = "";        
    };

    String snFireFliesLSSVM = request.getParameter("nFireFliesLSSVM");
    String snMaxGenerationLSSVM = request.getParameter("nMaxGenerationLSSVM");
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

    double dNormalRadioLSSVM =0;
    double dSCRadioLSSVM =0;
    double dPRadioLSSVM =0;
    double dTORadioLSSVM =0;

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
    nrow=(int)Double.parseDouble(sdInstancesLSSVM);
    int ncol=1;
    ncol=(int)Double.parseDouble(sdAttributesLSSVM);
    String[][] Datatrain = new String[nrow][ncol];

    int nrowP=(int)Double.parseDouble(sdPInstancesLSSVM);
    int ncolP=(int)Double.parseDouble(sdPAttributesLSSVM);
    String[][] Datapre = new String[nrowP][ncolP];

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
        <title>NiMOPS</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        
        <link rel="Stylesheet" type="text/css"
              media=all href="./StyleSheet.css" />
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        
        <%-->
        <style>
        body { 
            background: url("edit.png");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: right bottom;
            background-size: 450px;
        }
        </style>
        (--%>
        
        <script type="text/javascript">
            function viewsummarydata2() {
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
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "1";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                //to un-hide summary data
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "1";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;
                    var sLoadingDataExcelClick3LSSVM = document.getElementById("sLoadingDataExcelClick3LSSVM");
                    sLoadingDataExcelClick3LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = sLoadingDataExcelClick3LSSVM;
                var sLoadingDataExcelClick4LSSVM = document.getElementById("sLoadingDataExcelClick4LSSVM");
                sLoadingDataExcelClick4LSSVM = "";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = sLoadingDataExcelClick4LSSVM;
                    var sLoadingDataExcelClick5LSSVM = document.getElementById("sLoadingDataExcelClick5LSSVM");
                    sLoadingDataExcelClick5LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = sLoadingDataExcelClick5LSSVM;
                var sLoadingDataExcelClick6LSSVM = document.getElementById("sLoadingDataExcelClick6LSSVM");
                sLoadingDataExcelClick6LSSVM = "";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = sLoadingDataExcelClick6LSSVM;
                
                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata3() {
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
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");

                //to run nimops (extra gate to start running) - not at opening
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                //to un-hide summary data
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;
                    var sLoadingDataExcelClick3LSSVM = document.getElementById("sLoadingDataExcelClick3LSSVM");
                    sLoadingDataExcelClick3LSSVM = "3";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = sLoadingDataExcelClick3LSSVM;
                var sLoadingDataExcelClick4LSSVM = document.getElementById("sLoadingDataExcelClick4LSSVM");
                sLoadingDataExcelClick4LSSVM = "";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = sLoadingDataExcelClick4LSSVM;
                    var sLoadingDataExcelClick5LSSVM = document.getElementById("sLoadingDataExcelClick5LSSVM");
                    sLoadingDataExcelClick5LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = sLoadingDataExcelClick5LSSVM;
                var sLoadingDataExcelClick6LSSVM = document.getElementById("sLoadingDataExcelClick6LSSVM");
                sLoadingDataExcelClick6LSSVM = "";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = sLoadingDataExcelClick6LSSVM;
                
                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata4() {
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
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");

                //to run nimops (extra gate to start running) - not at opening
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                //to un-hide summary data
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;
                    var sLoadingDataExcelClick3LSSVM = document.getElementById("sLoadingDataExcelClick3LSSVM");
                    sLoadingDataExcelClick3LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = sLoadingDataExcelClick3LSSVM;
                var sLoadingDataExcelClick4LSSVM = document.getElementById("sLoadingDataExcelClick4LSSVM");
                sLoadingDataExcelClick4LSSVM = "4";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = sLoadingDataExcelClick4LSSVM;
                    var sLoadingDataExcelClick5LSSVM = document.getElementById("sLoadingDataExcelClick5LSSVM");
                    sLoadingDataExcelClick5LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = sLoadingDataExcelClick5LSSVM;
                var sLoadingDataExcelClick6LSSVM = document.getElementById("sLoadingDataExcelClick6LSSVM");
                sLoadingDataExcelClick6LSSVM = "";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = sLoadingDataExcelClick6LSSVM;
                
                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata5() {
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
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");

                //to run nimops (extra gate to start running) - not at opening
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                //to un-hide summary data
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;
                    var sLoadingDataExcelClick3LSSVM = document.getElementById("sLoadingDataExcelClick3LSSVM");
                    sLoadingDataExcelClick3LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = sLoadingDataExcelClick3LSSVM;
                var sLoadingDataExcelClick4LSSVM = document.getElementById("sLoadingDataExcelClick4LSSVM");
                sLoadingDataExcelClick4LSSVM = "";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = sLoadingDataExcelClick4LSSVM;
                    var sLoadingDataExcelClick5LSSVM = document.getElementById("sLoadingDataExcelClick5LSSVM");
                    sLoadingDataExcelClick5LSSVM = "5";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = sLoadingDataExcelClick5LSSVM;
                var sLoadingDataExcelClick6LSSVM = document.getElementById("sLoadingDataExcelClick6LSSVM");
                sLoadingDataExcelClick6LSSVM = "";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = sLoadingDataExcelClick6LSSVM;
                
                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata6() {
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
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");

                //to run nimops (extra gate to start running) - not at opening
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                //to un-hide summary data
                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;
                    var sLoadingDataExcelClick3LSSVM = document.getElementById("sLoadingDataExcelClick3LSSVM");
                    sLoadingDataExcelClick3LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = sLoadingDataExcelClick3LSSVM;
                var sLoadingDataExcelClick4LSSVM = document.getElementById("sLoadingDataExcelClick4LSSVM");
                sLoadingDataExcelClick4LSSVM = "";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = sLoadingDataExcelClick4LSSVM;
                    var sLoadingDataExcelClick5LSSVM = document.getElementById("sLoadingDataExcelClick5LSSVM");
                    sLoadingDataExcelClick5LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = sLoadingDataExcelClick5LSSVM;
                var sLoadingDataExcelClick6LSSVM = document.getElementById("sLoadingDataExcelClick6LSSVM");
                sLoadingDataExcelClick6LSSVM = "6";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = sLoadingDataExcelClick6LSSVM;
                
                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function closesummarydata2() {
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
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "1";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;
                    var sLoadingDataExcelClick3LSSVM = document.getElementById("sLoadingDataExcelClick3LSSVM");
                    sLoadingDataExcelClick3LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = sLoadingDataExcelClick3LSSVM;
                var sLoadingDataExcelClick4LSSVM = document.getElementById("sLoadingDataExcelClick4LSSVM");
                sLoadingDataExcelClick4LSSVM = "";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = sLoadingDataExcelClick4LSSVM;
                    var sLoadingDataExcelClick5LSSVM = document.getElementById("sLoadingDataExcelClick5LSSVM");
                    sLoadingDataExcelClick5LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = sLoadingDataExcelClick5LSSVM;
                var sLoadingDataExcelClick6LSSVM = document.getElementById("sLoadingDataExcelClick6LSSVM");
                sLoadingDataExcelClick6LSSVM = "";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = sLoadingDataExcelClick6LSSVM;

                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }
            
            function rundata2(val) {
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

                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

                var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "1";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;
                    var sLoadingDataExcelClick3LSSVM = document.getElementById("sLoadingDataExcelClick3LSSVM");
                    sLoadingDataExcelClick3LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = sLoadingDataExcelClick3LSSVM;
                var sLoadingDataExcelClick4LSSVM = document.getElementById("sLoadingDataExcelClick4LSSVM");
                sLoadingDataExcelClick4LSSVM = "";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = sLoadingDataExcelClick4LSSVM;
                    var sLoadingDataExcelClick5LSSVM = document.getElementById("sLoadingDataExcelClick5LSSVM");
                    sLoadingDataExcelClick5LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = sLoadingDataExcelClick5LSSVM;
                var sLoadingDataExcelClick6LSSVM = document.getElementById("sLoadingDataExcelClick6LSSVM");
                sLoadingDataExcelClick6LSSVM = "";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = sLoadingDataExcelClick6LSSVM;

                var sRunReportTable = document.getElementById("sRunReportTable");
                sRunReportTable = val;
                document.getElementById("sRunReportTable").value = sRunReportTable;
                var sRRTShow = document.getElementById("sRRTShow");
                sRRTShow = "";
                document.getElementById("sRRTShow").value = sRRTShow;
                var ssResult01 = document.getElementById("ssResult01");
                var ssResult02 = document.getElementById("ssResult02");
                var ssResult03 = document.getElementById("ssResult03");
                var ssResult04 = document.getElementById("ssResult04");
                var ssResult05 = document.getElementById("ssResult05");
                var ssResult06 = document.getElementById("ssResult06");
                //var sReportFile = document.getElementById("sReportFile");
                //var sReportFileTXT = document.getElementById("sReportFileTXT");
                
                var ssResult01Name = document.getElementById("ssResult01Name");
                var ssResult02Name = document.getElementById("ssResult02Name");
                var ssResult03Name = document.getElementById("ssResult03Name");
                var ssResult04Name = document.getElementById("ssResult04Name");
                var ssResult05Name = document.getElementById("ssResult05Name");
                var ssResult06Name = document.getElementById("ssResult06Name");
                //var sReportFileName = document.getElementById("sReportFileName");
                //var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                
                var sViewProceed = document.getElementById("sViewProceed");
                sViewProceed = "";
                document.getElementById("sViewProceed").value = sViewProceed;

                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }

            function showsummaryreport(valData) {
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

                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

                var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "1";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;
                    var sLoadingDataExcelClick3LSSVM = document.getElementById("sLoadingDataExcelClick3LSSVM");
                    sLoadingDataExcelClick3LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = sLoadingDataExcelClick3LSSVM;
                var sLoadingDataExcelClick4LSSVM = document.getElementById("sLoadingDataExcelClick4LSSVM");
                sLoadingDataExcelClick4LSSVM = "";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = sLoadingDataExcelClick4LSSVM;
                    var sLoadingDataExcelClick5LSSVM = document.getElementById("sLoadingDataExcelClick5LSSVM");
                    sLoadingDataExcelClick5LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = sLoadingDataExcelClick5LSSVM;
                var sLoadingDataExcelClick6LSSVM = document.getElementById("sLoadingDataExcelClick6LSSVM");
                sLoadingDataExcelClick6LSSVM = "";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = sLoadingDataExcelClick6LSSVM;

                var sRunReportTable = document.getElementById("sRunReportTable");
                //var sRunReportTable = document.getElementById("sRunReportTable");
                //sRunReportTable = val;
                //document.getElementById("sRunReportTable").value = sRunReportTable;
                var sRRTShow = document.getElementById("sRRTShow"); 
                sRRTShow = "1"; 
                document.getElementById("sRRTShow").value = "1";
                
                var sViewProceed = document.getElementById("sViewProceed");
                if (valData===11) { 
                    //alert("Aha1 ...!");
                    sViewProceed = "";
                }
                else if (valData===12) { 
                    //alert("Aha2 ...!");
                    sViewProceed = "1";
                }
                document.getElementById("sViewProceed").value = sViewProceed;
                
                if (valData===11 || valData===12) { 
                    var ssResult01 = document.getElementById("ssResult01").value;
                    if (ssResult01!=="") {
                        var ssResult01Name = document.getElementById("ssResult01");
                    }
                    else {
                        var ssResult01Name = document.getElementById("ssResult01Name").value;
                        if (ssResult01Name==="") {
                            document.getElementById("ssResult01Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\SResult01.txt";
                        }
                    }
                    
                    var ssResult02 = document.getElementById("ssResult02").value;
                    if (ssResult02!=="") {
                        var ssResult02Name = document.getElementById("ssResult02");
                    }
                    else {
                        //ssResult02 = "Result02.txt";
                        //document.getElementById("ssResult02").value = ssResult02;
                        //var ssResult02Name = document.getElementById("ssResult02");
                        
                        var ssResult02Name = document.getElementById("ssResult02Name").value;
                        if (ssResult02Name==="") {
                            document.getElementById("ssResult02Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\SResult02.txt";
                        }
                    }
                    
                    var ssResult03Name = document.getElementById("ssResult03Name");
                    var ssResult04Name = document.getElementById("ssResult04Name");
                    var ssResult05Name = document.getElementById("ssResult05Name");
                    var ssResult06Name = document.getElementById("ssResult06Name");

                    /*
                    if (ssResult01.value==="") {
                        if (ssResult01Name.value==="") {
                            var ssResult01Name="Result01.txt";
                        }
                    }
                    */
                    
                    /*
                    alert("Aha1 ...!");
                    if (ssResult02!=="") {
                    }
                    else {
                        alert("Aha2 ...!");
                        if (ssResult02Name!=="") {
                            alert("Aha3 ...!");
                        }
                        else {
                            alert("Aha4 ...!");
                            var ssResult02 = document.getElementById("ssResult02");
                            var ssResult02Name = document.getElementById("ssResult02Name");
                            ssResult02="Result02.txt";
                            ssResult02Name="Result02.txt"; 
                            document.getElementById("ssResult02").value = ssResult02;
                            document.getElementById("ssResult02Name").value = ssResult02Name;
                        }
                        alert("Aha5 ...!");
                    }
                    */
           
                    /*
                    var sReportFile = document.getElementById("sReportFile").value;
                    //alert("Aha3 ...!");
                    if (sReportFile!=="") {
                        //alert("Aha4 ...!");
                        if (sReportFile!=="") {
                            //var sReportFile = document.getElementById("sReportFile").value;
                            
                            var res = sReportFile.replace(/.xls/gi, "");
                            //alert("Aha41 ...!");
                            
                            var sReportFile = res.replace(/.txt/gi, "");
                            //alert("Aha42 ...!");
                            
                            var sReportFileName = document.getElementById("sReportFileName");
                            sReportFileName = sReportFile+".xls";
                            document.getElementById("sReportFileName").value = sReportFileName;
                        
                            var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                            sReportFileNameTXT = sReportFile+".txt";
                            document.getElementById("sReportFileNameTXT").value = sReportFileNameTXT;
                        }
                        //sReportFile = sReportFile.split(".");

                        //alert("Aha43 ...!");
                    }
                    else {
                        var sReportFileName = document.getElementById("sReportFileName");
                        var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                    }
                    */
                }
                else if (valData===2) {
                    var ssResult01Name = document.getElementById("ssResult01Name");
                    var ssResult02Name = document.getElementById("ssResult02Name");

                    var ssResult03 = document.getElementById("ssResult03").value;
                    if (ssResult03!=="") {
                        var ssResult03Name = document.getElementById("ssResult03");
                    }
                    else {
                        var ssResult03Name = document.getElementById("ssResult03Name").value;
                        if (ssResult03Name==="") {
                            document.getElementById("ssResult03Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\SResult03.txt";
                        }
                    }
                    
                    var ssResult04Name = document.getElementById("ssResult04Name");
                    var ssResult05Name = document.getElementById("ssResult05Name");
                    var ssResult06Name = document.getElementById("ssResult06Name");
                }
                else if (valData===3) {
                    var ssResult01Name = document.getElementById("ssResult01Name");
                    var ssResult02Name = document.getElementById("ssResult02Name");
                    var ssResult03Name = document.getElementById("ssResult03Name");
                    
                    var ssResult04 = document.getElementById("ssResult04").value;
                    if (ssResult04!=="") {
                        var ssResult04Name = document.getElementById("ssResult04");
                    }
                    else {
                        var ssResult04Name = document.getElementById("ssResult04Name").value;
                        if (ssResult04Name==="") {
                            document.getElementById("ssResult04Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\SResult04.txt";
                        }
                    }
                    var ssResult05Name = document.getElementById("ssResult05Name");
                    var ssResult06Name = document.getElementById("ssResult06Name");
                }
                else if (valData===4) { 
                    var ssResult01Name = document.getElementById("ssResult01Name");
                    var ssResult02Name = document.getElementById("ssResult02Name");
                    var ssResult03Name = document.getElementById("ssResult03Name");
                    var ssResult04Name = document.getElementById("ssResult04Name");

                    var ssResult05 = document.getElementById("ssResult05").value;
                    if (ssResult05!=="") {
                        var ssResult05Name = document.getElementById("ssResult05");
                    }
                    else {
                        var ssResult05Name = document.getElementById("ssResult05Name").value;
                        if (ssResult05Name==="") {
                            document.getElementById("ssResult05Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\SResult05.txt";
                        }
                    }

                    var ssResult06 = document.getElementById("ssResult06").value;
                    if (ssResult06!=="") {
                        var ssResult06Name = document.getElementById("ssResult06");
                    }
                    else {
                        var ssResult06Name = document.getElementById("ssResult06Name").value;
                        if (ssResult06Name==="") {
                            document.getElementById("ssResult06Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\SResult06.txt";
                        }
                    }
                } 
                
                /*
                if (valData===3 || valData===4) {
                    var sReportFile = document.getElementById("sReportFile");
                    if (sReportFile!=="") {
                        var sReportFileName = document.getElementById("sReportFile");
                    }
                    else {
                        var sReportFileName = document.getElementById("sReportFileName");
                    }
                }
                else if (valData===2) {
                    var sReportFileName = document.getElementById("sReportFileName");
                }
                
                if (valData===2) {
                    var sReportFileTXT = document.getElementById("sReportFileTXT");
                    if (sReportFileTXT!=="") {
                        var sReportFileNameTXT = document.getElementById("sReportFileTXT");
                    }
                    else {
                        var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                    }
                }
                else if (valData===3 || valData===4) { 
                    var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                } 
                */
               
                //alert("Aha5 ...!");
                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
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
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                document.getElementById("sLoadingDataExcelLSSVM").value = "";

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                document.getElementById("sLoadingDataFileLSSVM").value = "";
                
                document.getElementById("myform2").action = "AllModules.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }

            function createoutputfiles(val) {
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

                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

                var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                sLoadingDataExcelLSSVM = "1";
                document.getElementById("sLoadingDataExcelLSSVM").value = sLoadingDataExcelLSSVM;

                var sLoadingDataExcelClickLSSVM = document.getElementById("sLoadingDataExcelClickLSSVM");
                sLoadingDataExcelClickLSSVM = "";
                document.getElementById("sLoadingDataExcelClickLSSVM").value = sLoadingDataExcelClickLSSVM;
                    var sLoadingDataExcelClick3LSSVM = document.getElementById("sLoadingDataExcelClick3LSSVM");
                    sLoadingDataExcelClick3LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = sLoadingDataExcelClick3LSSVM;
                var sLoadingDataExcelClick4LSSVM = document.getElementById("sLoadingDataExcelClick4LSSVM");
                sLoadingDataExcelClick4LSSVM = "";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = sLoadingDataExcelClick4LSSVM;
                    var sLoadingDataExcelClick5LSSVM = document.getElementById("sLoadingDataExcelClick5LSSVM");
                    sLoadingDataExcelClick5LSSVM = "";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = sLoadingDataExcelClick5LSSVM;
                var sLoadingDataExcelClick6LSSVM = document.getElementById("sLoadingDataExcelClick6LSSVM");
                sLoadingDataExcelClick6LSSVM = "";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = sLoadingDataExcelClick6LSSVM;

                var sRunReportTable = document.getElementById("sRunReportTable");
                
                var sRRTShow = document.getElementById("sRRTShow"); 
                sRRTShow = "1"; 
                document.getElementById("sRRTShow").value = "1";
                
                var sViewProceed = document.getElementById("sViewProceed");
                //if (valData===11) { 
                    sViewProceed = "";
                //}
                //else if (valData===12) { 
                    //alert("Aha2 ...!");
                //    sViewProceed = "1";
                //}
                document.getElementById("sViewProceed").value = sViewProceed;
                
                    var ssResult01 = document.getElementById("ssResult01").value;
                    if (ssResult01!=="") {
                        var ssResult01Name = document.getElementById("ssResult01");
                    }
                    else {
                        var ssResult01Name = document.getElementById("ssResult01Name").value;
                        if (ssResult01Name==="") {
                            document.getElementById("ssResult01Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result01.txt";
                        }
                    }
                    
                    var ssResult02 = document.getElementById("ssResult02").value;
                    if (ssResult02!=="") {
                        var ssResult02Name = document.getElementById("ssResult02");
                    }
                    else {
                        var ssResult02Name = document.getElementById("ssResult02Name").value;
                        if (ssResult02Name==="") {
                            document.getElementById("ssResult02Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result02.txt";
                        }
                    }
                    
                    var ssResult03Name = document.getElementById("ssResult03Name");
                    var ssResult04Name = document.getElementById("ssResult04Name");
                    var ssResult05Name = document.getElementById("ssResult05Name");
                    var ssResult06Name = document.getElementById("ssResult06Name");
                
                //alert("Aha1 ...!");
                var sCreate = document.getElementById("sCreate"); 
                var sBaseFileName = document.getElementById("sBaseFileName").value;
                if (sBaseFileName!=="") {
                    sCreate = "val";
                    //document.getElementById("sBaseFileName").value=sBaseFileName;
                }
                else {
                    sCreate = "";
                }
                document.getElementById("sCreate").value = sCreate;

                document.getElementById("sBaseFileNameCO").value = sBaseFileName;

                //alert("Aha2 ...!");
                document.getElementById("myform2").action = "ModuleSFALSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid; 
            } 
        </script>
    </head>
    <body>
        <div class="sfawrap">
        <% if (VarSaveData == null) { %>
        <% } else if (VarLoadData == null) { %>
        <% } else if (VarReportData == null) { %>
        <% } else if (VarNextLSSVM == null) { %>
            <center>
                <img src="headhomepage2.jpg" alt="Image Not Found ..." width="1000">
            </center>
            <%@include file="navmenu.jsp" %>
        <% } %>
        
        <% if (VarSaveData != null) { %>
            <center>
                <img src="headhomepage2.jpg" alt="Image Not Found ..." width="1000">
            </center>
            <%@include file="navmenu.jsp" %>

            <%
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
                filewriter.write("Biotic potential (a)\t");
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
                
                sNormalRadioLSSVM = "...";
                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                    sNormalRadioLSSVM = "Original value";
                    iRadio=1;
                }
                else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                    sNormalRadioLSSVM = "Feature scaling";
                    iRadio=2;
                }

                filewriter.write("18\t");
                filewriter.write("Normalization Method\t");
                filewriter.write("sNormalRadioLSSVM\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sNormalRadioLSSVM+"\n");

                filewriter.write("19\t");
                filewriter.write("Objective Function\t");
                filewriter.write("sOptimRadioLSSVM\t");
                filewriter.write("-\t");
                filewriter.write("Classification accuracy (validation)\n");
                
                sSCRadioLSSVM = "...";
                if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
                    sSCRadioLSSVM = "Max. generation is reached";
                    iRadio=1;
                }
                else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
                    sSCRadioLSSVM = "Pre-condition is reached";
                    iRadio=2;
                }
                else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {
                    sSCRadioLSSVM = "Either criterion is reached";
                    iRadio=3;
                }

                filewriter.write("20\t");
                filewriter.write("Stop Criterion\t");
                filewriter.write("sSCRadioLSSVM\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sSCRadioLSSVM+"\n");
                
                sPRadioLSSVM = "...";
                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                    sPRadioLSSVM = "Evaluation";
                    iRadio=1;
                }
                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                    sPRadioLSSVM = "Prediction";
                    iRadio=2;
                }
                    
                filewriter.write("21\t");
                filewriter.write("Purpose\t");
                filewriter.write("sPRadioLSSVM\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sPRadioLSSVM+"\n");
                
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

                    sTORadioLSSVM = "...";
                    if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                        sTORadioLSSVM = "Use data file";
                        iRadio=1;
                    }
                    else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                        sTORadioLSSVM = "Use test data file";
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

                    filewriter.write("24\t");
                    filewriter.write("Test Option\t");
                    filewriter.write("sTORadioLSSVM\t");
                    filewriter.write(iRadio+"\t");
                    filewriter.write(sTORadioLSSVM+"\n");

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
            %>

            <table>
                <tr>
                    <td>
                        <h2>SFA-LSSVM:</h2>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <font color="black" face="tahoma" size="2">
                        <%
                            out.println("Data already saved to "+file);
                        %>
                    </td>    
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <font color="blue" face="tahoma" size="3">
                        <%
                            out.println("<a href='javascript:history.back()'> BACK </a>");
                        %>
                    </td>
                </tr>
            </table>
            
        <% } else if (VarLoadData != null) { %>
            <%@include file="navmenu.jsp" %>

            <%
                String filename = "Data_SFA_LSSVM.txt";
                String file = application.getRealPath("/") + filename;
                //BufferedReader br = new BufferedReader(new FileReader(file));
                //String line = null;
                //int j;
            %>

            <table>
                <tr>
                    <td>
                        <h2>SFA-LSSVM:</h2>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <font color="black" face="tahoma" size="2">
                        <%
                            out.println("Data already loaded from "+file);
                        %>
                    </td>    
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <font color="blue" face="tahoma" size="3">
                        <%
                            out.println("<a href='javascript:history.back()'> BACK </a>");
                        %>
                    </td>
                </tr>
            </table>
                    
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
                        sSCRadioLSSVM = "Pre-condition is reached";
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
                        sTORadioLSSVM = "Use data file";
                    }
                    else if (PRadioLSSVM.equals("TORadio4LSSVM")) {
                        sTORadioLSSVM = "Use test data file";
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
            <%@include file="navmenu.jsp" %>

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

                <input type="hidden" name="VarTwo" id="VarTwo" value="<%=VarTwo%>"/>
                <input type="hidden" name="sLoadingDataFileLSSVM" id="sLoadingDataFileLSSVM" value="<%=sLoadingDataFileLSSVM%>"/>

                <input type="hidden" name="VarNextLSSVM" id="VarNextLSSVM" value="<%=VarNextLSSVM%>"/>
                <input type="hidden" name="sRunReportTable" id="sRunReportTable" value="<%=sRunReportTable%>"/>
                <input type="hidden" name="sRRTShow" id="sRRTShow" value="<%=sRRTShow%>"/>
                <input type="hidden" name="sViewProceed" id="sViewProceed" value="<%=sViewProceed%>"/>

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

                <input type="hidden" name="sLoadingDataExcelLSSVM" id="sLoadingDataExcelLSSVM" value="<%=sLoadingDataExcelLSSVM%>"/>
                <input type="hidden" name="sLoadingDataExcelClickLSSVM" id="sLoadingDataExcelClickLSSVM" value="<%=sLoadingDataExcelClickLSSVM%>"/>
                <input type="hidden" name="sLoadingDataExcelClick3LSSVM" id="sLoadingDataExcelClick3LSSVM" value="<%=sLoadingDataExcelClick3LSSVM%>"/>
                <input type="hidden" name="sLoadingDataExcelClick4LSSVM" id="sLoadingDataExcelClick4LSSVM" value="<%=sLoadingDataExcelClick4LSSVM%>"/>
                <input type="hidden" name="sLoadingDataExcelClick5LSSVM" id="sLoadingDataExcelClick5LSSVM" value="<%=sLoadingDataExcelClick5LSSVM%>"/>
                <input type="hidden" name="sLoadingDataExcelClick6LSSVM" id="sLoadingDataExcelClick6LSSVM" value="<%=sLoadingDataExcelClick6LSSVM%>"/>
                
                <input type="hidden" name="sBaseFileNameCO" id="sBaseFileNameCO" value="<%=sBaseFileNameCO%>"/>

                <input type="hidden" name="sCreate" id="sCreate" value="<%=sCreate%>"/>

                <input type="hidden" name="vpath" id="vpath" value="<%=vpath%>"/>
                <input type="hidden" name="vfile" id="vfile" value="<%=vfile%>"/>

                <br>
                <br>
                <br>
                <table>
                    <hr/>
                        <tr>
                            <center>
                                <font face="agency FB" size="6" color="#2F4F4F">
                                <b>NiMOPS for Binary Classification</b>
                                </font>
                            </center>
                        </tr>
                    <hr/>
                </table>
                <center>
                    <img src="Step Order.jpg" alt="Image Not Found ..." style="width: 700px;"/>
                </center>
                <br>
                <table>
                    <tr>
                        <td style="width: 10%">
                            <%
                                //out.println("<a href='javascript:history.back()'> <b> BACK </b> </a>");
                            %>
                            <%-->
                            <input type="submit" name="VarBack" value="BACK" onclick="javascript:history.back()"/>
                            <--%>

                            <a onclick="return previousscreenLSSVM();" style="float:left;">
                                <font color="blue" face="agency FB" size="3">
                                <b><u><< BACK</u></b>
                                </font>
                            </a>                            
                        </td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            <input type="submit" name="VarProceed" value="INITIALIZE" onclick="return rundata2(1);"/>
                        </td>
                        <td style="width:130%">
                            <input type="submit" name="VarReport" value="ANALYSIS REPORT" onclick="return rundata2(2);" style="float:right;"/>
                            <input type="submit" name="VarTable" value="SUMMARY REPORT" onclick="return rundata2(3);" style="float:right;"/>
                            <input type="submit" name="VarGraph" value="GRAPHIC" onclick="return rundata2(4);" style="float:right;"/>
                            <%-->
                            <input type="submit" name="VarTable" value="CONVERGENCE" onclick="return loadingdataform();" />
                            <input type="submit" name="VarGraph" value="TRAJECTORY" />
                            <input type="submit" name="VarSeries" value="TIME SERIES" />
                            <--%>
                        </td>
                        <td>
                            <% if (sLoadingDataExcelLSSVM != "") { %>
                                <a href="#bottompage">
                                    <img src="arrowbottom.JPG" alt="..." width="15">
                                </a>
                            <% } else { %>
                                <a href="#bottompage">
                                    <img src="arrowbottom.JPG" alt="..." width="15">
                                </a>
                            <% } %>
                        </td>
                    </tr>
                </table>
                        
                <% //#1 displaying input data: 
                if (sLoadingDataExcelClickLSSVM != "") { 
                %>
                <table>
                    <tr>
                        <td>
                            &nbsp;
			</td>
                        <td>
                            <b> Run Data: </b>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <a onclick="return closesummarydata2();">
                                <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                            </a>
                        </td>
                        <td>
                            1. Swarm and evolutionary parameters:&nbsp;&nbsp;
                        </td>
                        <td>
                            No. of fireflies = <%=nf.format(nFireFliesLSSVM)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Max. generation = <%=nf.format(nMaxGenerationLSSVM)%>
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
                            Beta min. = <%=nf2.format(dMinBetaLSSVM)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Gamma = <%=nf2.format(dGammaLSSVM)%>
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
                            Alpha = <%=nf2.format(dAlphaLSSVM)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Adaptive inertia weight = <%=nf2.format(dAIWeightLSSVM)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Tau = <%=nf2.format(dTauLSSVM)%>
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
                            Biotic potential, a = <%=nf2.format(dBPotentialLSSVM)%>
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
                            Range of C = <%=ndf.format(dC1LSSVM)%> to
                            <%=ndf.format(dC2LSSVM)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Range of sigma = <%=ndf.format(dS1LSSVM)%> to
                            <%=ndf.format(dS2LSSVM)%>&nbsp;&nbsp;
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
                            Training partition size = <%=nf.format(dTrainingPSLSSVM)%> (%)&nbsp;&nbsp;
                        </td>
                        <td>
                            Validation partition size = <%=nf.format(dValidationPSLSSVM)%> (%)
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
                            Classification accuracy
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
                            if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
                                sSCRadioLSSVM = "Max. generation is reached";
                                %> 
                                <%=sSCRadioLSSVM%>
                                <%
                            }
                            else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
                                sSCRadioLSSVM = "last changes in OF value <";
                                %> 
                                <%=nf.format(nLastChange1LSSVM)%> <%=sSCRadioLSSVM%> <%=nf5.format(nLastChange2LSSVM)%>
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
                                sDummy = "Data File : ";
                            }
                            else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                sPRadioLSSVM = "Prediction";
                                sDummy = "Learning Data File : "; 
                                sFileDataLSSVM = sLearningFileNameLSSVM;
                                dAttributesLSSVM = snLDFAttributesLSSVM;
                                dInstancesLSSVM = snLDFInstancesLSSVM;
                                sPDummy = "Prediction Data File : ";
                                sPFileDataLSSVM = sPredictionFileNameLSSVM;
                                dPAttributesLSSVM = snPDFAttributesLSSVM;
                                dPInstancesLSSVM = snPDFInstancesLSSVM;
                                sVariation = "5";
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
                                    Hold-out = <%=nf.format(dHoldOutLSSVM)%> (%) 
                                    <% 
                                    sDummy = "Data File : ";
                                    sFileDataLSSVM = sFileNameLSSVM;
                                    dAttributesLSSVM = snDFAttributesLSSVM;
                                    dInstancesLSSVM = snDFInstancesLSSVM;
                                    sVariation = "2";
                                    sPFileDataLSSVM = "";
                                    dPAttributesLSSVM = "0";
                                    dPInstancesLSSVM = "0";
                                }
                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) { %> 
                                    -
                                <% }
                            }
                            else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                                if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                                    Cross-validation = <%=nf.format(dCrossValidationLSSVM)%> (folds)
                                    <%
                                    sDummy = "Data File : ";
                                    sFileDataLSSVM = sFileNameLSSVM;
                                    dAttributesLSSVM = snDFAttributesLSSVM;
                                    dInstancesLSSVM = snDFInstancesLSSVM;
                                    sVariation = "3";
                                    sPFileDataLSSVM = "";
                                    dPAttributesLSSVM = "0";
                                    dPInstancesLSSVM = "0";
                                }
                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>
                                    -
                                <% }
                            }
                            else {
                                if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                        sTORadioLSSVM = "Use data file";
                                        sDummy = "Data File : ";
                                        sFileDataLSSVM = sFileNameLSSVM;
                                        dAttributesLSSVM = snDFAttributesLSSVM;  
                                        dInstancesLSSVM = snDFInstancesLSSVM; 
                                        sVariation = "1";
                                        sPFileDataLSSVM = "";
                                        dPAttributesLSSVM = "0";
                                        dPInstancesLSSVM = "0";
                                    }
                                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                        sTORadioLSSVM = "-";
                                    }
                                }
                                else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                        sTORadioLSSVM = "Use test data file";
                                        sDummy = "Data File : ";
                                        sFileDataLSSVM = sFileNameLSSVM;
                                        dAttributesLSSVM = snDFAttributesLSSVM;
                                        dInstancesLSSVM = snDFInstancesLSSVM; 
                                        sPDummy = "Test Data File : ";
                                        sPFileDataLSSVM = sTestFileNameLSSVM;
                                        dPAttributesLSSVM = snTDFAttributesLSSVM; 
                                        dPInstancesLSSVM = snTDFInstancesLSSVM; 
                                        sVariation = "4";
                                    }
                                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                        sTORadioLSSVM = "-";
                                    }
                                } %>
                            
                                <%=sTORadioLSSVM%>
                            
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
                            <%=sDummy%> <%=sFileDataLSSVM%> 
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            No. of Attributes = <%=nf.format(Double.parseDouble(dAttributesLSSVM))%>  
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                             No. of Instances = <%=nf.format(Double.parseDouble(dInstancesLSSVM))%>  
                        </td>
                    </tr>
                    <tr>
                        <%if (sVariation == "4" || sVariation == "5") {%>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>&nbsp;&nbsp;</td>
                            <td>
                                <%=sPDummy%> <%=sPFileDataLSSVM%> 
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                No. of Attributes = <%=nf.format(Double.parseDouble(dPAttributesLSSVM))%>  
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                 No. of Instances = <%=nf.format(Double.parseDouble(dPInstancesLSSVM))%>  
                            </td>
                        <%}%>
                    </tr>
                </table>

                <% //#2 displaying data file 
                } else if (sLoadingDataExcelClick3LSSVM != "") { 
                %>
                <table>
                    <tr>
                        <td>
                            &nbsp;
			</td>
                        <td>
                            <b> Data File: </b>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <a onclick="return closesummarydata2();">
                                <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                            </a>
                        </td>
                        <td>&nbsp;</td>
                    <%
                        if (sFileNameLSSVM != "") { 
                            String file = application.getRealPath("/") + sFileNameLSSVM;
                            BufferedReader br = new BufferedReader(new FileReader(file)); 
                            String line = null;
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
                            }
                            br.close();
                            %>
                                    <td align="center">
                                        No.
                                    </td>
                                    <% for (j = 0; j < ncols1; j += 1) { %> 
                                        <td align="center">
                                            <%=headers[j]%>
                                        </td>
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
                                        <% for (j = 0; j < ncols1; j += 1) { %> 
                                            <td align="right">
                                                <%=nf3.format(Double.parseDouble(Dataraw[i][j]))%>
                                            </td>
                                        <% } %>
                                    </tr>
                                <% } %>
                        <% } else { %>
                                    <td align="left">
                                        <font color='red'>
                                        &nbsp;&nbsp;Data file not available ... !
                                        </font>
                                    </td>
                                </tr>
                        <% } %>
                        </table>
                        
                <% //#3 displaying test data file 
                } else if (sLoadingDataExcelClick4LSSVM != "") { 
                %>
                    <%--Fileopen.mat Filetest.mat Fileopen.mat FilePredict.mat--%>
                    <table>
                    <tr>
                        <td>
                            &nbsp;
			</td>
                        <td>
                            <b> Test Data File: </b>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <a onclick="return closesummarydata2();">
                                <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                            </a>
                        </td>
                        <td>&nbsp;</td>
                    <%
                        if (sTestFileNameLSSVM != "") { 
                            String file = application.getRealPath("/") + sTestFileNameLSSVM;
                            BufferedReader br = new BufferedReader(new FileReader(file)); 
                            String line = null;
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
                            }
                            br.close();
                            %>
                                    <td align="center">
                                        No.
                                    </td>
                                    <% for (j = 0; j < ncols2; j += 1) { %>
                                        <td align="center">
                                            <%=headers[j]%>
                                        </td>
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
                                        <% for (j = 0; j < ncols2; j += 1) { %>
                                            <td align="right">
                                                <%=nf3.format(Double.parseDouble(Datatest[i][j]))%>
                                            </td>
                                        <% } %>
                                    </tr>
                                <% } %>
                        <% } else { %>
                                    <td align="left">
                                        <font color='red'>
                                        &nbsp;&nbsp;Test data file not available ... !
                                        </font>
                                    </td>
                                </tr>
                        <% } %>
                        </table>
                     
                <% //#4 displaying learning data file 
                } else if (sLoadingDataExcelClick5LSSVM != "") { 
                %>
                    <table>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b> Learning Data File: </b>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <a onclick="return closesummarydata2();">
                                <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                            </a>
                        </td>
                        <td>&nbsp;</td>
                    <% 
                        /*
                        out.println("<p>");
                        out.println("sLearningFileName = "+sLearningFileName);
                        out.println("<br>");
                        */ 
                        
                        if (sLearningFileNameLSSVM != "") { 
                            String file = application.getRealPath("/") + sLearningFileNameLSSVM;
                            BufferedReader br = new BufferedReader(new FileReader(file)); 
                            String line = null;
                            int i;
                            int j;
                            
                            //alert("Zero Y value observed, MAPE cannot be chosen as an objective function ...!"); 
                            
                            /**/
                            // first line: title
                            line = br.readLine();
                            if (line == null) {
                                out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                            } else {
                                cols = line.split("\\t");
                                //out.println("<table>");
                                //out.println("<tr>");

                                // second line: column header
                                line = br.readLine();
                                headers = line.split("\\t");
                                
                                // third line and so on: data ... last column = dependent variable  
                                line = br.readLine(); 
                                j=0;
                                while (line != null) {
                                    cols = line.split("\\t");
                                    for (i = 0; i < ncols3; i += 1) {
                                        Datatrains[j][i]=cols[i]; 
                                    }
                                    sDummy = Datatrains[j][ncols3-1];
                                    dDummy=Double.parseDouble(sDummy);
                                    if (dDummy == 0) {
                                        sError="1";
                                    }
                                    j=j+1;
                                    line = br.readLine();
                                }
                            }
                            /**/
                            br.close();

                            /*
                            out.println("snLDFInstances = "+snLDFInstances);
                            out.println("<br>");
                            */
                            %>
                            
                            <%-->
                            <--%>
                                    <td align="center">
                                        No.
                                    </td>
                                    <% for (j = 0; j < ncols3; j += 1) { %>
                                        <td align="center">
                                            <%=headers[j]%>
                                        </td>
                                    <% } %>
                                </tr>
                                        
                                <tr>
                                <td colspan="15">
                                    &nbsp;
                                </td>
                                </tr>
                                
                                <% for (i = 0; i < nrows3; i += 1) { %>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td align="center">
                                            <%=i%>
                                        </td> 
                                        <% for (j = 0; j < ncols3; j += 1) { %>
                                            <td align="right">
                                                <%-->
                                                <%=Datatrain[i][j]%>
                                                <--%>

                                                <%=nf3.format(Double.parseDouble(Datatrains[i][j]))%>
                                            </td>
                                        <% } %>
                                    </tr>
                                <% } %>
                        <% } else { %>
                                    <td align="left">
                                        <font color='red'>
                                        &nbsp;&nbsp;Learning data file not available ... !
                                        </font>
                                    </td>
                                </tr>
                        <% } %>
                        </table>
                        
                <% //#5 displaying prediction data file 
                } else if (sLoadingDataExcelClick6LSSVM != "") { 
                %>
                    <table>
                    <tr>
                        <td>
                            &nbsp;
			</td>
                        <td>
                            <b> Predicted Data File: </b>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <a onclick="return closesummarydata2();">
                                <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                            </a>
                        </td>
                        <td>&nbsp;</td>
                    <%
                        if (sPredictionFileNameLSSVM != "") { 
                            String file = application.getRealPath("/") + sPredictionFileNameLSSVM;
                            BufferedReader br = new BufferedReader(new FileReader(file)); 
                            String line = null;
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

                                // third line and so on: data ... last column = dependent variable  
                                line = br.readLine(); 
                                j=0;
                                while (line != null) {
                                    cols = line.split("\\t");
                                    for (i = 0; i < ncols4; i += 1) {
                                        Datapres[j][i]=cols[i];
                                    }
                                    j=j+1;
                                    line = br.readLine();
                                }
                            }
                            br.close();
                            %>
                                    <td align="center">
                                        No.
                                    </td>
                                    <% for (j = 0; j < ncols4; j += 1) { %>
                                        <td align="center">
                                            <%=headers[j]%>
                                        </td>
                                    <% } %>
                                </tr>

                                <% for (i = 0; i < nrows4; i += 1) { %>
                                    <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                        <td align="center">
                                            <%=i%>
                                        </td> 
                                        <% for (j = 0; j < ncols4; j += 1) { %>
                                            <td align="right">
                                                <%=nf3.format(Double.parseDouble(Datapres[i][j]))%>
                                            </td>
                                        <% } %>
                                    </tr>
                                <% } %>
                        <% } else { %>
                                    <td align="left">
                                        <font color='red'>
                                        &nbsp;&nbsp;Prediction data file not available ... !
                                        </font>
                                    </td>
                                </tr>
                        <% } %>
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
                            <a onclick="return viewsummarydata2();">
                                <img src="Icon-2ArrowRight.png" alt="..." width="11" height="17">
                            </a>
                        </td>

                        <td>
                            <font color="black" face="tahoma" size="2">
                            Click 
                            </font>
                            <a onclick="return viewsummarydata2();">
                                <font color="blue">
                                <u>here</u>
                                </font>
                            </a> 
                            <font color="black" face="tahoma" size="2">
                            to view the summary data ...
                            </font>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <b> Data Set: </b> &nbsp;&nbsp;
                            <a onclick="return viewsummarydata3();">
                                <font color="blue">
                                <u>Data File</u>
                                </font>
                            </a> 
                            &nbsp; - &nbsp;
                            <a onclick="return viewsummarydata4();">
                                <font color="blue">
                                <u>Test</u>
                                </font>
                            </a> 
                            &nbsp; - &nbsp;
                            <a onclick="return viewsummarydata5();">
                                <font color="blue">
                                <u>Learning</u>
                                </font>
                            </a> 
                            &nbsp; - &nbsp;
                            <a onclick="return viewsummarydata6();">
                                <font color="blue">
                                <u>Prediction</u>
                                </font>
                            </a> 
                        </td>
                    </tr>
                    </table>
                <% } %>

                <BR>
                
                <% if (sRunReportTable == "") { %> 
                <h6 id="bottompage">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    &nbsp;. . . [END OF OUTPUT FORM] &nbsp;&nbsp;&nbsp;
                        <%--><a href="#top">
                    <img src="arrowup.JPG" alt="..." width="18">
                </a><--%>
                    <div class="scrollToTop">
                          <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                </h6>
                
                <% } %>

                <% 
                if ((int)Double.parseDouble(sRunReportTable) == 100) {
                if (sFileDataLSSVM != "") {
                    /**/
                    String filename = sFileDataLSSVM;
                    String file = application.getRealPath("/") + filename;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    int j = 0;
                    int i = 0;
                    /**/
                    
                    /**/
                    out.println("<p>");
                    out.println(sFileDataLSSVM);
                    out.println("dAttributes = " + dAttributesLSSVM);
                    out.println("dInstances = " + dInstancesLSSVM);
                    out.println("<br>");
                    /**/ 
                    
                    /**/
                    // first line: column header
                    line = br.readLine();
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        line = br.readLine();
                        headers = line.split("\\t");
                        ncol = headers.length;
                        
                        out.println(headers[0]);
                        out.println(headers[1]);
                        out.println(headers[2]);
                        out.println(headers[3]);
                        out.println(headers[4]);
                        out.println(headers[5]);
                        out.println(headers[6]);
                        out.println(headers[7]);
                        out.println(headers[8]);
                        out.println("<br>");
                        
                        // second line and so on: data ... last column = dependent variable  
                        line = br.readLine();
                        while (line != null) {
                            j = j + 1;
                            cols = line.split("[,\\t]+");
                            nrow++;
                            
                            /*
                            for (i=0; i<=dAttributes; i++) {
                                DataLearning[j][i] = Data1[i]; 
                            }
                            */
                            
                            // //if (j == 1 || j == dInstancesLSSVM) {
                            /*
                                out.println("<p>");
                                out.println(DataLearning[j][0]);
                                out.println(DataLearning[j][1]);
                                out.println(DataLearning[j][2]);
                                out.println(DataLearning[j][3]);
                                out.println(DataLearning[j][4]);
                                out.println(DataLearning[j][5]);
                                out.println(DataLearning[j][6]);
                                out.println(DataLearning[j][7]);
                                out.println(DataLearning[j][8]);
                                out.println("<br>");
                            */
                                out.println("<p>");
                                out.println(cols[0]);
                                out.println(cols[1]);
                                out.println(cols[2]);
                                out.println(cols[3]);
                                out.println(cols[4]);
                                out.println(cols[5]);
                                out.println(cols[6]);
                                out.println(cols[7]);
                                out.println(cols[8]);
                                out.println("<br>");
                            // //}
                            line = br.readLine();
                        }
                    }
                    /**/
                    br.close();
                } 

                if (sPFileDataLSSVM != "") {
                    String filename = sPFileDataLSSVM;
                    String file = application.getRealPath("/") + filename;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    int j = 0;
                    int i = 0;
                
                    /**/
                    out.println("<p>");
                    out.println(sPFileDataLSSVM);
                    out.println("dPAttributes = " + dPAttributesLSSVM);
                    out.println("dPInstances = " + dPInstancesLSSVM);
                    out.println("<br>");
                    /**/ 
                    
                    /**/
                    // first line: column header
                    line = br.readLine(); 
                    if (line == null) {
                        out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                    } else {
                        line = br.readLine();
                        headers = line.split("\\t");
                        ncol = headers.length;
                        for (j=0; j<ncol; j++) {
                            out.println(headers[j]);
                        }
                        out.println("<br>");

                        // second line and so on: data ... last column = dependent variable  
                        nrow=0;
                        line = br.readLine();
                        while (line != null) {
                            j = j + 1;
                            //cols = line.split("[,\\t]+");
                            cols = line.split("\\t");
                            nrow = nrow + 1;
                            line = br.readLine();
                        }
                    }
                    // reopen file
                    br.close(); 
                    br = new BufferedReader(new FileReader(file));
                    line = br.readLine();
                    line = br.readLine();

                    //String filename = sPFileData; 
                    //String line = null;
                    
                    String[][] DataTest = new String[nrow][ncol];

                    /*
                    out.println("No. of Rows = " + nrow);
                    out.println("No. of Columns = " + ncol);
                    out.println("<br>");
                    */
                    
                    //while ((line = br.readLine())!= null){ 
                    
                    i = 0;
                    line = br.readLine();
                    while (line != null) {
                        cols = line.split("[,\\t]+");
                        /*
                        out.println(i);
                        for (j=0; j<ncol; j++) {
                            out.println(cols[j]);
                        }
                        */
                        
                        for (j=0; j<ncol; j++) {
                            DataTest[i][j] = cols[j];
                        }
                        /*
                        for (j=0; j<ncol; j++) {
                            out.println(DataTest[i][j]);
                        }
                        */
                        
                        i = i + 1;
                        line = br.readLine();
                    }

                    out.println("<p>");
                    for (j=0; j<ncol; j++) {
                        out.println(DataTest[0][j]);
                    }
                    out.println("<br>");
                    for (j=0; j<ncol; j++) {
                        out.println(DataTest[nrow-1][j]);
                    }
                    /**/
                    br.close(); 
                }
                }

                if ((int)Double.parseDouble(sRunReportTable) == 1) { 
                    if (sCreate != "") {  
                        ssResult01Name = application.getRealPath("/") + sBaseFileName +"01.txt";
                        ssResult02Name = application.getRealPath("/") + sBaseFileName +"02.txt";
                        ssResult03Name = application.getRealPath("/") + sBaseFileName +"03.txt";
                        ssResult04Name = application.getRealPath("/") + sBaseFileName +"04.txt";
                        ssResult05Name = application.getRealPath("/") + sBaseFileName +"05.txt";
                        ssResult06Name = application.getRealPath("/") + sBaseFileName +"06.txt";
                        %>
                        <script>
                            document.getElementById("ssResult01Name").value = ssResult01Name;
                            document.getElementById("ssResult02Name").value = ssResult02Name;
                            document.getElementById("ssResult03Name").value = ssResult03Name;
                            document.getElementById("ssResult04Name").value = ssResult04Name;
                            document.getElementById("ssResult05Name").value = ssResult05Name;
                            document.getElementById("ssResult06Name").value = ssResult06Name;
                        </script>
                        
                        <script> 
                            var sCreate = document.getElementById("sCreate"); 
                            sCreate = "";
                            document.getElementById("sCreate").value = sCreate; 
                        </script>

                            <table>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <b> Running: </b>
                                    </td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td colspan="4">
                                    <input type="text" name="ssResult01Name" id="ssResult01Name" size="75" value="<%=ssResult01Name%>" readonly/>
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                    <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                                    <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                                    <input type="hidden" name="ssResult05Name" id="ssResult05Name" value="<%=ssResult05Name%>" />
                                    <input type="hidden" name="ssResult06Name" id="ssResult06Name" value="<%=ssResult06Name%>" />
                                    <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                    </td>
                                </tr> 
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td colspan="4">
                                    <input type="text" name="ssResult02Name" id="ssResult02Name" size="75" value="<%=ssResult02Name%>" readonly/> 
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... validation. </font>
                                    </td>
                                </tr>
                                <% if (ssResult05Name != "") { %>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="4">
                                        <input type="text" name="ssResult05Name" id="ssResult05Name" size="75" value="<%=ssResult05Name%>" readonly/> 
                                        <font color="teal" face="tahoma" size="2"> &nbsp; ... performance. </font>
                                        </td>
                                    </tr>
                                <% } %>
                                <tr>
                                    <td colspan="7">
                                        &nbsp;
                                    </td>
                                </tr> 

                                <%
                                /*
                                out.println("<p>");
                                out.println("ssResult01Name = " + ssResult01Name);
                                out.println("<br>");
                                out.println("ssResult03Name = " + ssResult03Name);
                                out.println("<br>");
                                out.println("ssResult04Name = " + ssResult04Name);
                                out.println("<br>");
                                out.println("ssResult05Name = " + ssResult05Name);
                                out.println("<br>");
                                */

                                String file = ""; 
                                file = ssResult01Name;
                                BufferedReader br = new BufferedReader(new FileReader(file));
                                String line = null;
                                int i;
                                int j;

                                // first line: title
                                line = br.readLine();
                                if (line == null) {
                                    out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                                } else {
                                    cols = line.split("\\t"); %>
                                    <tr>
                                        <td> &nbsp; </td>
                                        <td>
                                            <b>Output:</b>
                                        </td>
                                        <td> &nbsp; </td>
                                        <td align="right"> Performance &nbsp; = &nbsp; </td>
                                        <td>
                                            <input type="text" size="10" value="<%=cols[0]%>" readonly>
                                        </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    </tr> 
                                    <tr>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                        <td align="right"> Penalty Parameter, C &nbsp; = &nbsp; </td>
                                        <td>
                                            <input type="text" size="10" value="<%=cols[1]%>" readonly>
                                        </td>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                    </tr> 
                                    <tr>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                        <td align="right"> Kernel Function Parameter, S &nbsp; = &nbsp; </td>
                                        <td>
                                            <input type="text" size="10" value="<%=cols[2]%>" readonly>
                                        </td>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                    </tr> 
                                <% }
                                br.close(); %>

                                <tr>
                                    <td colspan="7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="7">&nbsp;</td>
                                </tr>
                            </table>

                            <table>
                                <tr>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <%
                                file = ssResult02Name;
                                br = new BufferedReader(new FileReader(file));

                                // first line: title
                                line = br.readLine();
                                if (line == null) {
                                    out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                                } else {
                                    cols = line.split("\\t"); 
                                    ncol = cols.length;

                                    for (j=0; j<ncol; j++) {
                                        sDummy = cols[j];
                                        %>
                                            <td>
                                                <%=sDummy%>
                                            </td>
                                            <td> &nbsp;&nbsp; </td>
                                    <% } %>
                                <% } %>
                                    <td> &nbsp; </td>
                                    <td> &nbsp; </td>
                                </tr> 
                                <% 
                                line = br.readLine();
                                while (line != null) { %>
                                    <tr>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                    <%
                                    cols = line.split("[,\\t]+");
                                    for (j=0; j<ncol; j++) {
                                        sDummy = cols[j];
                                        %>
                                            <td align="right">
                                                <%=sDummy%>
                                            </td>
                                            <td> &nbsp;&nbsp; </td>
                                    <% } %>
                                    </tr>
                                    <% line = br.readLine();
                                } %>
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                </tr>
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                </tr>
                            </table>    
                            <% br.close(); %> 

                            <% if (ssResult05Name != "") { %>
                                <table>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td> Fold No.</td>
                                        <td>&nbsp;</td>
                                        <td> Generation No.</td>
                                        <td>&nbsp;</td>
                                        <td> Mean Performance</td>
                                        <td>&nbsp;</td>
                                        <td> Best Performance</td>
                                    </tr>
                                    <tr>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <% 
                                        file = ssResult05Name;
                                        br = new BufferedReader(new FileReader(file));

                                        // first line: title
                                        line = br.readLine();
                                        if (line == null) {
                                            out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                                        } else {
                                            cols = line.split("\\t"); 
                                            ncol = cols.length;

                                            for (j=0; j<ncol; j++) {
                                                sDummy = cols[j];
                                                %>
                                                <td align="right">
                                                    <%=sDummy%>
                                                </td>
                                                <td> &nbsp;&nbsp; </td>
                                            <% } %>
                                        <% } %>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                    </tr> 
                                    <% 
                                    line = br.readLine();
                                    while (line != null) { %>
                                        <tr>
                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                        <%
                                        cols = line.split("[,\\t]+");
                                        for (j=0; j<ncol; j++) {
                                            sDummy = cols[j];
                                            %>
                                            <td align="right">
                                                <%=sDummy%>
                                            </td>
                                            <td> &nbsp;&nbsp; </td>
                                        <% } %>
                                        </tr>
                                        <% line = br.readLine();
                                    } %>
                                    <tr>
                                        <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                    </tr>
                                </table>    
                                <% br.close();
                            } %>
                    <% } else {
                    if (sRRTShow != "") {  
                        if (sViewProceed == "") { %>
                            <script>
                                var ssfilefileResult01 = document.getElementById("ssfilefileResult01"); 
                                var ssfilefileResult02 = document.getElementById("ssfilefileResult02"); 
                            </script>

                            <% if (ssResult01 != "") { 
                                ssfilefileResult01 = application.getRealPath("/") + ssResult01;
                                ssResult01Name=ssfilefileResult01; 
                            }
                            else {
                                ssfilefileResult01 = ssResult01Name;
                            } %>

                            <script>
                                var ssResult01Name = document.getElementById("ssResult01Name");
                                document.getElementById("ssResult01Name").value = ssResult01Name;
                            </script>

                            <% if (ssResult02 != "") {
                                ssfilefileResult02 = application.getRealPath("/") + ssResult02;
                                ssResult02Name=ssfilefileResult02; 
                            }
                            else {
                                ssfilefileResult02 = ssResult02Name;
                            } %>

                            <script>
                                var ssResult02Name = document.getElementById("ssResult02Name");
                                document.getElementById("ssResult02Name").value = ssResult02Name;
                            </script>

                            <script>
                                var ssResult03Name = document.getElementById("ssResult03Name");
                                var ssResult04Name = document.getElementById("ssResult04Name"); 
                                var ssResult05Name = document.getElementById("ssResult05Name"); 
                                var ssResult06Name = document.getElementById("ssResult06Name"); 
                            </script> 

                            <% //Main Result: %>
                            <table>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <b> Running: </b>
                                    </td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td colspan="4">
                                    <input type="text" name="ssResult01Name" id="ssResult01Name" size="75" value="<%=ssResult01Name%>" readonly/>
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                    <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                                    <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                                    <input type="hidden" name="ssResult05Name" id="ssResult05Name" value="<%=ssResult05Name%>" />
                                    <input type="hidden" name="ssResult06Name" id="ssResult06Name" value="<%=ssResult06Name%>" />
                                    </td>
                                </tr> 
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td colspan="4">
                                    <input type="text" name="ssResult02Name" id="ssResult02Name" size="75" value="<%=ssResult02Name%>" readonly/> 
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... validation. </font>
                                    </td>
                                </tr>
                                <% if (ssResult05Name != "") { %>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="4">
                                        <input type="text" name="ssResult05Name" id="ssResult05Name" size="75" value="<%=ssResult05Name%>" readonly/> 
                                        <font color="teal" face="tahoma" size="2"> &nbsp; ... performance. </font>
                                        </td>
                                    </tr>
                                <% } %>
                                <tr>
                                    <td colspan="7">
                                        &nbsp;
                                    </td>
                                </tr> 

                                <%
                                // Main Result:
                                String file = ""; 
                                file = ssResult01Name;
                                BufferedReader br = new BufferedReader(new FileReader(file));
                                String line = null;
                                int i;
                                int j;

                                // first line: title
                                line = br.readLine();
                                if (line == null) {
                                    out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                                } else {
                                    cols = line.split("\\t"); %>
                                    <tr>
                                        <td> &nbsp; </td>
                                        <td>
                                            <b>Output:</b>
                                        </td>
                                        <td> &nbsp; </td>
                                        <td align="right"> Performance &nbsp; = &nbsp; </td>
                                        <td>
                                            <input type="text" size="10" value="<%=cols[0]%>" readonly>
                                        </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    </tr> 
                                    <tr>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                        <td align="right"> Penalty Parameter, C &nbsp; = &nbsp; </td>
                                        <td>
                                            <input type="text" size="10" value="<%=cols[1]%>" readonly>
                                        </td>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                    </tr> 
                                    <tr>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                        <td align="right"> Kernel Function Parameter, S &nbsp; = &nbsp; </td>
                                        <td>
                                            <input type="text" size="10" value="<%=cols[2]%>" readonly>
                                        </td>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                    </tr> 
                                <% }
                                br.close(); %>

                                <tr>
                                    <td colspan="7">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="7">&nbsp;</td>
                                </tr>
                            </table>

                            <% //Validation Result: %>
                            <table>
                                <tr>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <%
                                file = ssResult02Name;
                                br = new BufferedReader(new FileReader(file));

                                // first line: title
                                line = br.readLine();
                                if (line == null) {
                                    out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                                } else {
                                    cols = line.split("\\t"); 
                                    ncol = cols.length;

                                    for (j=0; j<ncol; j++) {
                                        sDummy = cols[j];
                                        %>
                                            <td>
                                                <%=sDummy%>
                                            </td>
                                            <td> &nbsp;&nbsp; </td>
                                    <% } %>
                                <% } %>
                                    <td> &nbsp; </td>
                                    <td> &nbsp; </td>
                                </tr> 
                                <% 
                                line = br.readLine();
                                while (line != null) { %>
                                    <tr>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                    <%
                                    cols = line.split("[,\\t]+");
                                    for (j=0; j<ncol; j++) {
                                        sDummy = cols[j];
                                        %>
                                            <td align="right">
                                                <%=sDummy%>
                                            </td>
                                            <td> &nbsp;&nbsp; </td>
                                    <% } %>
                                    </tr>
                                    <% line = br.readLine();
                                } %>
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                </tr>
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                </tr>
                                <% br.close(); %> 
                            </table>    

                            <% //Performance Result: %>
                            <% if (ssResult05Name != "") { %>
                                <table>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td> Fold No.</td>
                                        <td>&nbsp;</td>
                                        <td> Generation No.</td>
                                        <td>&nbsp;</td>
                                        <td> Mean Performance</td>
                                        <td>&nbsp;</td>
                                        <td> Best Performance</td>
                                    </tr>
                                    <tr>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <% 
                                        file = ssResult05Name;
                                        br = new BufferedReader(new FileReader(file));

                                        // first line: title
                                        line = br.readLine();
                                        if (line == null) {
                                            out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                                        } else {
                                            cols = line.split("\\t"); 
                                            ncol = cols.length;

                                            for (j=0; j<ncol; j++) {
                                                sDummy = cols[j];
                                                %>
                                                <td align="right">
                                                    <%=sDummy%>
                                                </td>
                                                <td> &nbsp;&nbsp; </td>
                                            <% } %>
                                        <% } %>
                                        <td> &nbsp; </td>
                                        <td> &nbsp; </td>
                                    </tr> 
                                    <% 
                                    line = br.readLine();
                                    while (line != null) { %>
                                        <tr>
                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                        <%
                                        cols = line.split("[,\\t]+");
                                        for (j=0; j<ncol; j++) {
                                            sDummy = cols[j];
                                            %>
                                            <td align="right">
                                                <%=sDummy%>
                                            </td>
                                            <td> &nbsp;&nbsp; </td>
                                        <% } %>
                                        </tr>
                                        <% line = br.readLine();
                                    } %>
                                    <tr>
                                        <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                    </tr>
                                    <% br.close(); %>
                                </table>    
                            <% } %>
                        <% } else { 
                            //Running: %>
                        <% } %>
                    <% } else {
                        //header: %>
                            <table>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <b> Running: </b>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <font color="teal" face="tahoma" size="2"> Base output file name (eg. Result) </font>
                                </td>
                                <td>
                                    <input type="text" name="sBaseFileName" id="sBaseFileName" size="20" value="<%=sBaseFileName%>"> 
                                </td>
                                <td colspan="2">
                                    &nbsp;&nbsp; - - -
                                    <a onclick="return createoutputfiles(1);">
                                        <font color="blue" face="tahoma" size="2"> <u>Accept</u>, </font>
                                    </a>
                                    <font color="teal" face="tahoma" size="2"> order number and .txt will be automatically added. </font>
                                </td>
                            </tr> 
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr> 
                            <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                &nbsp;<input type="file" name="ssResult01" id="ssResult01"/>
                            </td>
                            <td colspan="2">
                                <input type="text" name="ssResult01Name" id="ssResult01Name" size="60" value="<%=ssResult01Name%>" readonly/>
                            </td>
                            <td>
                                &nbsp;&nbsp; - - - 
                                <a onclick="return showsummaryreport(11);">
                                <font color="blue" face="tahoma" size="2">
                                <u>View Output</u></font></a>
                                &nbsp;&nbsp; 
                                <a onclick="return showsummaryreport(12);">
                                <font color="blue" face="tahoma" size="2">
                                <u>Start Running</u></font></a>
                            </td>
                            </tr>
                            <tr>    
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                &nbsp;<input type="file" name="ssResult02" id="ssResult02"/>
                            </td>
                            <td colspan="2">
                                <input type="text" name="ssResult02Name" id="ssResult02Name" size="60" value="<%=ssResult02Name%>" readonly/>
                                <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                                <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                                <input type="hidden" name="ssResult05Name" id="ssResult05Name" value="<%=ssResult05Name%>" />
                                <input type="hidden" name="ssResult06Name" id="ssResult06Name" value="<%=ssResult06Name%>" />
                            </td>
                        </tr></table>

                            <script>
                                //alert("Aha1 ...!");
                                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");
                                if (sBaseFileNameCO !== "") {
                                    var sBaseFileName = document.getElementById("sBaseFileName");
                                    sBaseFileName = sBaseFileNameCO;
                                    document.getElementById("sBaseFileName").value = sBaseFileNameCO.value;
                                }
                            </script>
                        <% } %>
                    <% } %>
                <% } else if ((int)Double.parseDouble(sRunReportTable) == 2) {
                    if (sRRTShow != "") { 
                        %>
                            <script>
                            var ssfilefileResult03 = document.getElementById("ssfilefileResult03");
                            </script>
                        <%
                        if (ssResult03 != "") {
                            ssfilefileResult03 = application.getRealPath("/") + ssResult03;
                            ssResult03Name=ssfilefileResult03; 
                        }
                        else {
                            ssfilefileResult03 = ssResult03Name;
                        }
                        %>
                            <script>
                                var ssResult03Name = document.getElementById("ssResult03Name");
                                document.getElementById("ssResult03Name").value = ssResult03Name;
                            </script>
                        <%
                        /*
                        out.println("<p>");
                        out.println("sReportFileNameTXT = "+sReportFileNameTXT);
                        out.println("sfilefileTXT = "+sfilefileTXT);
                        */
                        %>

                        <table>
                        <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b>Analysis:</b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                        <input type="text" name="ssResult03Name" id="ssResult03Name" size="75" value="<%=ssResult03Name%>" readonly/>
                        <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                        <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                        <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                        <input type="hidden" name="ssResult05Name" id="ssResult05Name" value="<%=ssResult05Name%>" />
                        <input type="hidden" name="ssResult06Name" id="ssResult06Name" value="<%=ssResult06Name%>" />
                        <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                        </td>
                        </tr>
                        <%
                        /*
                        if (sReportFileTXT != "") {
                            file = application.getRealPath("/") + sReportFileTXT;
                        }
                        else {
                        }
                        */
                        String file = ""; 
                        file = ssResult03Name;
                        BufferedReader br = new BufferedReader(new FileReader(file));
                        String line = null;
                        int i;
                        int j;
                            
                        // first line: title
                        line = br.readLine();
                        if (line == null) {
                            out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                            %> 
                        <% } else { %>
                            <tr>
                            <td> &nbsp; </td>
                            <td>
                                <b>Output:</b>
                            </td>
                            <td> &nbsp;&nbsp;&nbsp; </td>
                            <td>
                                <h4> <%=line%> </h4>
                            </td>
                            </tr>
                            <% // next line
                            line = br.readLine();
                            while (line != null) { %>
                                <tr>
                                <td> &nbsp; </td>
                                <td> &nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td> &nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td>
                                    <%=line%>
                                </td>
                                </tr>
                                <% line = br.readLine();
                            }
                        }
                        br.close(); %>
                    </table>
                    <% } else { %>
                        <table>
                        <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b>Analysis:</b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            &nbsp;<input type="file" name="ssResult03" id="ssResult03"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="ssResult03Name" id="ssResult03Name" size="60" value="<%=ssResult03Name%>" readonly/>
                            <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                            <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                            <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                            <input type="hidden" name="ssResult05Name" id="ssResult05Name" value="<%=ssResult05Name%>" />
                            <input type="hidden" name="ssResult06Name" id="ssResult06Name" value="<%=ssResult06Name%>" />
                        </td>
                        <td>
                            &nbsp;&nbsp; - - - 
                            <a onclick="return showsummaryreport(2);">
                            <font color="blue" face="tahoma" size="2">
                            <u><b>OPEN</b></u></font></a>
                            <font color="black" face="tahoma" size="2">the report.
                            </font>
                        </td>
                        </tr>
                        </table>
                    <% } %>

                <% } else if ((int)Double.parseDouble(sRunReportTable) == 3) { 
                    if (sRRTShow != "") { %> 
                        <script>
                            var ssfilefileResult04 = document.getElementById("ssfilefileResult04");
                        </script>
                        <%
                            if (ssResult04 != "") {
                                ssfilefileResult04 = application.getRealPath("/") + ssResult04;
                                ssResult04Name=ssfilefileResult04; 
                            }
                            else {
                                ssfilefileResult04 = ssResult04Name;
                            }
                        %>
                        <script>
                            var ssResult04Name = document.getElementById("ssResult04Name");
                            document.getElementById("ssResult04Name").value = ssResult04Name;
                        </script>
                        <%
                            /*
                            out.println("<p>");
                            out.println("sReportFile = " + sReportFile);
                            out.println("sfilefile = " + sfilefile);
                            out.println("sReportFileName = " + sReportFileName);
                            out.println("<br>");
                            */
                        %>

                        <table>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <b> Summary: </b>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td colspan="8">
                                <input type="text" name="ssResult04Name" id="ssResult04Name" size="75" value="<%=ssResult04Name%>" readonly/>
                                <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                                <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                                <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                                <input type="hidden" name="ssResult05Name" id="ssResult05Name" value="<%=ssResult05Name%>" />
                                <input type="hidden" name="ssResult06Name" id="ssResult06Name" value="<%=ssResult06Name%>" />
                                <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <b> Output: </b>
                                </td>
                                <td>&nbsp;</td>
                                <th>RMSE Learning</th>
                                <td>&nbsp;</td>
                                <th>RMSE Test</th>
                                <td>&nbsp;</td>
                                <th>MAE Learning</th>
                                <td>&nbsp;</td>
                                <th>MAE Test</th>
                                <td>&nbsp;</td>
                                <th>MAPE Learning</th>
                                <td>&nbsp;</td>
                                <th>MAPE Test</th>
                                <td>&nbsp;</td>
                                <th>R Learning</th>
                                <td>&nbsp;</td>
                                <th>R Test</th>
                            </tr>
                            
                            <%
                            String file = ""; 
                            file = ssResult04Name;
                            BufferedReader br = new BufferedReader(new FileReader(file));
                            String line = null;
                            int i;
                            int j;
                            
                            // first line: title
                            line = br.readLine();
                            if (line == null) {
                                out.println("<h3><font color='red'>Data file is empty ...!</font></h3>");
                            } else {
                                cols = line.split("\\t"); 
                                ncol = cols.length;
                            } 
                            
                            line = br.readLine();
                            while (line != null) { %>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <%
                                    cols = line.split("[,\\t]+");
                                    for (j=0; j<ncol; j++) {
                                        sDummy = cols[j];
                                        %>
                                            <td align="right">
                                                <%=sDummy%>
                                            </td>
                                            <td> &nbsp;&nbsp; </td>
                                    <% } %>
                                </tr>
                                <% line = br.readLine();
                            }
                            br.close();
                            %>
                        </table>
                    <% } else { %>
                    <table><tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b> Summary: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="ssResult04" id="ssResult04"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="ssResult04Name" id="ssResult04Name" size="60" value="<%=ssResult04Name%>" readonly/>
                            <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                            <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                            <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                            <input type="hidden" name="ssResult05Name" id="ssResult05Name" value="<%=ssResult05Name%>" />
                            <input type="hidden" name="ssResult06Name" id="ssResult06Name" value="<%=ssResult06Name%>" />
                        </td>
                        <td>
                            &nbsp;&nbsp; - - - 
                            <a onclick="return showsummaryreport(3);">
                            <font color="blue" face="tahoma" size="2">
                            <u><b>OPEN</b></u></font></a>
                            <font color="black" face="tahoma" size="2">the report.
                            </font>
                        </td>
                    </tr></table>
                    <% } %>

                <% } else if ((int)Double.parseDouble(sRunReportTable) == 4) {
                    if (sRRTShow != "") { %> 
                        <script>
                            var ssfilefileResult05 = document.getElementById("ssfilefileResult05");
                        </script>
                        <%
                            if (ssResult05 != "") {
                                ssfilefileResult05 = application.getRealPath("/") + ssResult05;
                                ssResult05Name=ssfilefileResult05; 
                            }
                            else {
                                ssfilefileResult05 = ssResult05Name;
                            }
                        %>
                        <script>
                            var ssResult05Name = document.getElementById("ssResult05Name");
                            document.getElementById("ssResult05Name").value = ssResult05Name;
                        </script>
                        <%
                            /*
                            out.println("<p>");
                            out.println("sReportFile = " + sReportFile);
                            out.println("sfilefile = " + sfilefile);
                            out.println("sReportFileName = " + sReportFileName);
                            out.println("<br>");
                            */
                        %>

                        <table>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <b> Graphic: </b>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td colspan="8">
                                <input type="text" name="ssResult05Name" id="ssResult05Name" size="75" value="<%=ssResult05Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(6);">
                                    <font color="blue" face="tahoma" size="2"> <u>performance</u> </font> </a> &nbsp; 
                                <% if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp;
                                        <u>2</u> &nbsp; <u>3</u> &nbsp; <u>4</u> &nbsp; <u>5</u> &nbsp;
                                        <u>6</u> &nbsp; <u>7</u> &nbsp; <u>8</u> &nbsp; <u>9</u> &nbsp;
                                        <u>10</u> &nbsp; </font><--%>
                                    <% } else {
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font><--%>
                                    <% }
                                } 
                                else {
                                    %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font><--%>
                                <% } %>
                                <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                                <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                                <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                                <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                                <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td colspan="8">
                                <input type="text" name="ssResult06Name" id="ssResult06Name" size="75" value="<%=ssResult06Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(5);">
                                    <font color="blue" face="tahoma" size="2"> <u>tracing path</u> </font> </a>
                                <% if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                        %> <%--><font color="blue" face="tahoma" size="2"> &nbsp; <u>1</u> &nbsp; 
                                        <u>2</u> &nbsp; <u>3</u> &nbsp; <u>4</u> &nbsp; <u>5</u> &nbsp;
                                        <u>6</u> &nbsp; <u>7</u> &nbsp; <u>8</u> &nbsp; <u>9</u> &nbsp;
                                        <u>10</u> &nbsp; </font><--%>
                                    <% } else {
                                        %> <%--><font color="blue" face="tahoma" size="2"> &nbsp; <u>1</u> &nbsp; </font><--%>
                                    <% }
                                } 
                                else {
                                    %> <%--><font color="blue" face="tahoma" size="2"> &nbsp; <u>1</u> &nbsp; </font><--%>
                                <% } %>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <b> Output: </b>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <% // calling matlab graphic - performance
                                        int opt;
                                        opt = 0;
                                    %>
                                    <jsp:include page="SFALSSVRGraphServlet">
                                        <jsp:param name="opt" value="<%=opt%>" />
                                        <jsp:param name="dC1" value="<%=dC1LSSVM%>" /> 
                                        <jsp:param name="dC2" value="<%=dC2LSSVM%>" /> 
                                        <jsp:param name="dS1" value="<%=dS1LSSVM%>" /> 
                                        <jsp:param name="dS2" value="<%=dS2LSSVM%>" /> 
                                    </jsp:include> 	
                                </td>
                            </tr>
                        </table>
                    <% } else { %>
                    <table><tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b> Graphic: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="ssResult05" id="ssResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="ssResult05Name" id="ssResult05Name" size="60" value="<%=ssResult05Name%>" readonly/>
                            <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                            <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                            <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                            <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                        </td>
                        <td>
                            &nbsp;&nbsp; - - - 
                            <a onclick="return showsummaryreport(4);">
                            <font color="blue" face="tahoma" size="2">
                            <u><b>VIEW</b></u></font></a>
                            <font color="black" face="tahoma" size="2">the graphs.
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="ssResult06" id="ssResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="ssResult06Name" id="ssResult06Name" size="60" value="<%=ssResult06Name%>" readonly/>
                        </td>
                    </tr>
                    </table>
                    <% } %>
                <% } else if ((int)Double.parseDouble(sRunReportTable) == 5) {
                    if (sRRTShow != "") { %> 
                        <script>
                            var ssResult06Name = document.getElementById("ssResult06Name");
                        </script>
                        <%
                            /*
                            out.println("<p>");
                            out.println("sReportFile = " + sReportFile);
                            out.println("sfilefile = " + sfilefile);
                            out.println("sReportFileName = " + sReportFileName);
                            out.println("<br>");
                            */
                        %>

                        <table>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <b> Graphic: </b>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td colspan="8">
                                <input type="text" name="ssResult05Name" id="ssResult05Name" size="75" value="<%=ssResult05Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(6);">
                                    <font color="blue" face="tahoma" size="2"> <u>performance</u> </font> </a> &nbsp; 
                                <% if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp;
                                        <u>2</u> &nbsp; <u>3</u> &nbsp; <u>4</u> &nbsp; <u>5</u> &nbsp;
                                        <u>6</u> &nbsp; <u>7</u> &nbsp; <u>8</u> &nbsp; <u>9</u> &nbsp;
                                        <u>10</u> &nbsp; </font><--%>
                                    <% } else {
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font><--%>
                                    <% }
                                } 
                                else {
                                    %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font><--%>
                                <% } %>
                                <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                                <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                                <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                                <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                                <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td colspan="8">
                                <input type="text" name="ssResult06Name" id="ssResult06Name" size="75" value="<%=ssResult06Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(5);">
                                    <font color="blue" face="tahoma" size="2"> <u>tracing path</u> </font> </a>
                                <% if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                        %> <%--><font color="blue" face="tahoma" size="2"> &nbsp; <u>1</u> &nbsp; 
                                        <u>2</u> &nbsp; <u>3</u> &nbsp; <u>4</u> &nbsp; <u>5</u> &nbsp;
                                        <u>6</u> &nbsp; <u>7</u> &nbsp; <u>8</u> &nbsp; <u>9</u> &nbsp;
                                        <u>10</u> &nbsp; </font><--%>
                                    <% } else {
                                        %> <%--><font color="blue" face="tahoma" size="2"> &nbsp; <u>1</u> &nbsp; </font><--%>
                                    <% }
                                } 
                                else {
                                    %> <%--><font color="blue" face="tahoma" size="2"> &nbsp; <u>1</u> &nbsp; </font><--%>
                                <% } %>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <b> Output: </b>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <% // calling matlab graphic - performance
                                        int opt;
                                        opt = 1;
                                    %>
                                    <jsp:include page="SFALSSVRGraphServlet">
                                        <jsp:param name="opt" value="<%=opt%>" />
                                        <jsp:param name="dC1" value="<%=dC1LSSVM%>" /> 
                                        <jsp:param name="dC2" value="<%=dC2LSSVM%>" /> 
                                        <jsp:param name="dS1" value="<%=dS1LSSVM%>" /> 
                                        <jsp:param name="dS2" value="<%=dS2LSSVM%>" /> 
                                    </jsp:include> 	
                                </td>
                            </tr>
                        </table>
                    <% } else { %>
                    <table><tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b> Graphic: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="ssResult05" id="ssResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="ssResult05Name" id="ssResult05Name" size="60" value="<%=ssResult05Name%>" readonly/>
                            <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                            <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                            <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                            <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                        </td>
                        <td>
                            &nbsp;&nbsp; - - - 
                            <a onclick="return showsummaryreport(4);">
                            <font color="blue" face="tahoma" size="2">
                            <u><b>VIEW</b></u></font></a>
                            <font color="black" face="tahoma" size="2">the graphs.
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="ssResult06" id="ssResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="ssResult06Name" id="ssResult06Name" size="60" value="<%=ssResult06Name%>" readonly/>
                        </td>
                    </tr>
                    </table>
                    <% } %>
                <% } else if ((int)Double.parseDouble(sRunReportTable) == 6) {
                    if (sRRTShow != "") { %> 
                        <script>
                            var ssResult05Name = document.getElementById("ssResult05Name");
                        </script>
                        <%
                            /*
                            out.println("<p>");
                            out.println("sReportFile = " + sReportFile);
                            out.println("sfilefile = " + sfilefile);
                            out.println("sReportFileName = " + sReportFileName);
                            out.println("<br>");
                            */
                        %>

                        <table>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <b> Graphic: </b>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td colspan="8">
                                <input type="text" name="ssResult05Name" id="ssResult05Name" size="75" value="<%=ssResult05Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(6);">
                                    <font color="blue" face="tahoma" size="2"> <u>performance</u> </font> </a> &nbsp; 
                                <% if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp;
                                        <u>2</u> &nbsp; <u>3</u> &nbsp; <u>4</u> &nbsp; <u>5</u> &nbsp;
                                        <u>6</u> &nbsp; <u>7</u> &nbsp; <u>8</u> &nbsp; <u>9</u> &nbsp;
                                        <u>10</u> &nbsp; </font><--%>
                                    <% } else {
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font><--%>
                                    <% }
                                } 
                                else {
                                    %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font><--%>
                                <% } %>
                                <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                                <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                                <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                                <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                                <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td colspan="8">
                                <input type="text" name="ssResult06Name" id="ssResult06Name" size="75" value="<%=ssResult06Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(5);">
                                    <font color="blue" face="tahoma" size="2"> <u>tracing path</u> </font> </a>
                                <% if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                        %> <%--><font color="blue" face="tahoma" size="2"> &nbsp; <u>1</u> &nbsp; 
                                        <u>2</u> &nbsp; <u>3</u> &nbsp; <u>4</u> &nbsp; <u>5</u> &nbsp;
                                        <u>6</u> &nbsp; <u>7</u> &nbsp; <u>8</u> &nbsp; <u>9</u> &nbsp;
                                        <u>10</u> &nbsp; </font><--%>
                                    <% } else {
                                        %> <%--><font color="blue" face="tahoma" size="2"> &nbsp; <u>1</u> &nbsp; </font><--%>
                                    <% }
                                } 
                                else {
                                    %> <%--><font color="blue" face="tahoma" size="2"> &nbsp; <u>1</u> &nbsp; </font><--%>
                                <% } %>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <b> Output: </b>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <% // calling matlab graphic - performance
                                        int opt;
                                        opt = 0;
                                    %>
                                    <jsp:include page="SFALSSVRGraphServlet">
                                        <jsp:param name="opt" value="<%=opt%>" />
                                        <jsp:param name="dC1" value="<%=dC1LSSVM%>" /> 
                                        <jsp:param name="dC2" value="<%=dC2LSSVM%>" /> 
                                        <jsp:param name="dS1" value="<%=dS1LSSVM%>" /> 
                                        <jsp:param name="dS2" value="<%=dS2LSSVM%>" /> 
                                    </jsp:include> 	
                                </td>
                            </tr>
                        </table>
                    <% } else { %>
                    <table><tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b> Graphic: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="ssResult05" id="ssResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="ssResult05Name" id="ssResult05Name" size="60" value="<%=ssResult05Name%>" readonly/>
                            <input type="hidden" name="ssResult01Name" id="ssResult01Name" value="<%=ssResult01Name%>" />
                            <input type="hidden" name="ssResult02Name" id="ssResult02Name" value="<%=ssResult02Name%>" />
                            <input type="hidden" name="ssResult03Name" id="ssResult03Name" value="<%=ssResult03Name%>" />
                            <input type="hidden" name="ssResult04Name" id="ssResult04Name" value="<%=ssResult04Name%>" />
                        </td>
                        <td>
                            &nbsp;&nbsp; - - - 
                            <a onclick="return showsummaryreport(4);">
                            <font color="blue" face="tahoma" size="2">
                            <u><b>VIEW</b></u></font></a>
                            <font color="black" face="tahoma" size="2">the graphs.
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="ssResult06" id="ssResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="ssResult06Name" id="ssResult06Name" size="60" value="<%=ssResult06Name%>" readonly/>
                        </td>
                    </tr>
                    </table>
                    <% } %>
                <% } %>
                
                <h6 id="bottompage">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    &nbsp;. . . [END OF OUTPUT FORM] &nbsp;&nbsp;&nbsp;
                        <%--><a href="#top">
                    <img src="arrowup.JPG" alt="..." width="18">
                </a><--%>
                    <div class="scrollToTop">
                          <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                </h6>
            </form>
        <% } else {%> 
            <h6 id="bottompage"> 
                <img src="Logo-Space.png" alt="     " width="4" height="5">
                &nbsp;. . . [END OF OUTPUT FORM] &nbsp;&nbsp;&nbsp;
                <%--><a href="#top">
                    <img src="arrowup.JPG" alt="..." width="18">
                </a><--%>
                <div class="scrollToTop">
                      <img src="arrowup.JPG" alt="..." width="18">  
                </div>
            </h6>
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
