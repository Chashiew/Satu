<%-- 
    Document   : ModuleSFALSSVR
    Created on : Sep 20, 2015, 4:15:27 PM
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
    //1. remarking sReportFileNameTXT and sReportFileName - DONE
    //2. expanding outputs for 4 other test options - DONE
    //3. editing icon BACK - DONE
    //4. All buttons set default filenames if they are empty - DONE
    //5. carry over filenames to/from AllModules - Un-successful
    //6. adding edit box for Result06.txt of graphic button - DONE
    //7. adding remark&icons for plotting performace&tracingPath (netbeans) - DONE
    //8. calculating RMSE and R2 from Result02.xlsx - HALF DONE
    //9. expanding programs for AllModulesBaseline - DONE
    //10 expanding programs for 3 other modules - DONE
    //11 ploting performace and tracingPath via new jar (matlab) - DONE
    
    //12 preparing matlab functions for the other 3 modules
    
    //13 calling output filenames + default filenames in matlab
    //14 OF: Lagrange in matlab (SFALSSVRSim_SVR.m + SFALSSVRsimlssvm.m)
    //15 TargetIODir? xlsx? PBar? DB? DefaultWDir?
    //16 Pap?
    //17 GA?
    
    //1  TORadio is null on returning back to data form - DONE
    
    String VarSaveData = request.getParameter("VarSaveData");
    String VarLoadData = request.getParameter("VarLoadData");
    String VarReportData = request.getParameter("VarReportData");

    String VarOne = request.getParameter("VarOne");
    String VarNext = request.getParameter("VarNext");
    String sLoadingDataFile = request.getParameter("sLoadingDataFile");
 
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

    String sResult01 = request.getParameter("sResult01");
    if (sResult01 == null) {
        sResult01 = "";
    }
    String sResult01Name = request.getParameter("sResult01Name");
    if (sResult01Name == null) {
        sResult01Name = "";
    }
    String sfilefileResult01 = request.getParameter("sfilefileResult01");
    if (sfilefileResult01 == null) {
        sfilefileResult01 = "";
    }

    String sResult02 = request.getParameter("sResult02");
    if (sResult02 == null) {
        sResult02 = "";
    }
    String sResult02Name = request.getParameter("sResult02Name");
    if (sResult02Name == null) {
        sResult02Name = "";
    }
    String sfilefileResult02 = request.getParameter("sfilefileResult02");
    if (sfilefileResult02 == null) {
        sfilefileResult02 = "";
    }

    String sResult03 = request.getParameter("sResult03");
    if (sResult03 == null) {
        sResult03 = "";
    }
    String sResult03Name = request.getParameter("sResult03Name");
    if (sResult03Name == null) {
        sResult03Name = "";
    }
    String sfilefileResult03 = request.getParameter("sfilefileResult03");
    if (sfilefileResult03 == null) {
        sfilefileResult03 = "";
    }

    String sResult04 = request.getParameter("sResult04");
    if (sResult04 == null) {
        sResult04 = "";
    }
    String sResult04Name = request.getParameter("sResult04Name");
    if (sResult04Name == null) {
        sResult04Name = "";
    }
    String sfilefileResult04 = request.getParameter("sfilefileResult04");
    if (sfilefileResult04 == null) {
        sfilefileResult04 = "";
    }

    String sResult05 = request.getParameter("sResult05");
    if (sResult05 == null) {
        sResult05 = "";
    }
    String sResult05Name = request.getParameter("sResult05Name");
    if (sResult05Name == null) {
        sResult05Name = "";
    }
    String sfilefileResult05 = request.getParameter("sfilefileResult05");
    if (sfilefileResult05 == null) {
        sfilefileResult05 = "";
    }

    String sResult06 = request.getParameter("sResult06");
    if (sResult06 == null) {
        sResult06 = "";
    }
    String sResult06Name = request.getParameter("sResult06Name");
    if (sResult06Name == null) {
        sResult06Name = "";
    }
    String sfilefileResult06 = request.getParameter("sfilefileResult06"); 
    if (sfilefileResult06 == null) {
        sfilefileResult06 = "";
    }

    String sReportFile = request.getParameter("sReportFile");
    if (sReportFile == null) {
        sReportFile = "";
    }
    String sReportFileName = request.getParameter("sReportFileName");
    if (sReportFileName == null) {
        sReportFileName = "";
    }
    String sfilefile = request.getParameter("sfilefile");
    if (sfilefile == null) {
        sfilefile = "";
    }

    String sReportFileTXT = request.getParameter("sReportFileTXT");
    if (sReportFileTXT == null) {
        sReportFileTXT = "";
    }
    String sReportFileNameTXT = request.getParameter("sReportFileNameTXT");
    if (sReportFileNameTXT == null) {
        sReportFileNameTXT = "";
    }
    String sfilefileTXT = request.getParameter("sfilefileTXT");
    if (sfilefileTXT == null) {
        sfilefileTXT = "";
    }

    String sViewProceed = request.getParameter("sViewProceed");
    if (sViewProceed == null) {
        sViewProceed = "";
    }

    String res = request.getParameter("res");
    if (res == null) {
        res = "";
    }

    /*
    String VarProceed = request.getParameter("VarProceed");
    if (VarProceed == null) {
        VarProceed = "";
    }
    String VarReport = request.getParameter("VarReport");
    if (VarReport == null) {
        VarReport = "";
    }
    String VarTable = request.getParameter("VarTable");
    if (VarTable == null) {
        VarTable = "";
    }
    */
    
    /*
    out.println("<p>");
    out.println("sRRTShow = "+sRRTShow);
    out.println("<br>");
    out.println("sViewProceed = "+sViewProceed);
    out.println("<br>");
    out.println("sCreate = "+sCreate);
    out.println("<br>");
    out.println("sBaseFileNameCO = "+sBaseFileNameCO); 
    out.println("<br>");
    out.println("sBaseFileName = "+sBaseFileName);
    out.println("<br>");
    //out.println("VarTable = "+VarTable);
    out.println("<br>");
    */

    String sLoadingDataExcel = request.getParameter("sLoadingDataExcel");
    if (sLoadingDataExcel == null) {
        sLoadingDataExcel = "";        
    };

    String sLoadingDataExcelClick = request.getParameter("sLoadingDataExcelClick");
    if (sLoadingDataExcelClick == null) {
        sLoadingDataExcelClick = "";        
    };
    String sLoadingDataExcelClick3 = request.getParameter("sLoadingDataExcelClick3");
    if (sLoadingDataExcelClick3 == null) {
        sLoadingDataExcelClick3 = "";        
    };
    String sLoadingDataExcelClick4 = request.getParameter("sLoadingDataExcelClick4");
    if (sLoadingDataExcelClick4 == null) {
        sLoadingDataExcelClick4 = "";        
    };
    String sLoadingDataExcelClick5 = request.getParameter("sLoadingDataExcelClick5");
    if (sLoadingDataExcelClick5 == null) {
        sLoadingDataExcelClick5 = "";        
    };
    String sLoadingDataExcelClick6 = request.getParameter("sLoadingDataExcelClick6");
    if (sLoadingDataExcelClick6 == null) {
        sLoadingDataExcelClick6 = "";        
    };

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

    /*
    out.println("snLDFInstances = "+snLDFInstances);
    out.println("<br>");
    out.println("snPDFInstances = "+snPDFInstances);
    out.println("<br>");
    out.println("snLDFAttributes = "+snLDFAttributes);
    out.println("<br>");
    out.println("snPDFAttributes = "+snPDFAttributes);
    out.println("<br>");
    */
    
    int nrows1;
    if (snDFInstances!="") {
        nrows1=(int)Double.parseDouble(snDFInstances); 
    } else { nrows1=1; }
    int ncols1;
    if (snDFAttributes!="") {
        ncols1=(int)Double.parseDouble(snDFAttributes); 
    } else { ncols1=1; }
    String[][] Dataraw = new String[nrows1][ncols1];

    int nrows2;
    if (snTDFInstances!="") {
        nrows2=(int)Double.parseDouble(snTDFInstances); 
    } else { nrows2=1; }
    int ncols2;
    if (snTDFAttributes!="") {
        ncols2=(int)Double.parseDouble(snTDFAttributes); 
    } else { ncols2=1; }
    String[][] Datatest = new String[nrows2][ncols2];

    int nrows3;
    if (snLDFInstances!="") {
        nrows3=(int)Double.parseDouble(snLDFInstances); 
    } else { nrows3=1; }
    int ncols3;
    if (snLDFAttributes!="") {
        ncols3=(int)Double.parseDouble(snLDFAttributes); 
    } else { ncols3=1; }
    String[][] Datatrains = new String[nrows3][ncols3];

    int nrows4;
    if (snPDFInstances!="") {
        nrows4=(int)Double.parseDouble(snPDFInstances); 
    } else { nrows4=1; }
    int ncols4;
    if (snPDFAttributes!="") {
        ncols4=(int)Double.parseDouble(snPDFAttributes); 
    } else { ncols4=1; }
    String[][] Datapres = new String[nrows4][ncols4];

    double nFireFlies;
    double nMaxGeneration;
    double dMinBeta;
    double dGamma;
    double dAlpha;
    double dAIWeight;
    double dTau;
    double dBPotential;
    double dC1;
    double dC2;
    double dS1;
    double dS2;
    double dTrainingPS;
    double dValidationPS;
    double dTotalSize;
    double nLastChange1;
    double nLastChange2;
    double dHoldOut;
    double dCrossValidation;
    
    double nDFAttributes;
    double nDFInstances;
    double nTDFAttributes;
    double nTDFInstances;
    double nLDFAttributes;
    double nLDFInstances;
    double nPDFAttributes;
    double nPDFInstances;

    /*
    out.println("nFireFlies = "+snFireFlies);
    out.println("nMaxGeneration = "+snMaxGeneration);
    out.println("dMinBeta = "+sdMinBeta);
    out.println("dGamma = "+sdGamma);
    out.println("dAlpha = "+sdAlpha);
    out.println("<br>");
    out.println("dAIWeight = "+sdAIWeight);
    out.println("dTau = "+sdTau);
    out.println("dBPotential = "+sdBPotential);
    out.println("dC1 = "+sdC1);
    out.println("dC2 = "+sdC2);
    out.println("<br>");
    out.println("dS1 = "+sdS1);
    out.println("dS2 = "+sdS2);
    out.println("dTrainingPS = "+sdTrainingPS);
    out.println("dValidationPS = "+sdValidationPS);
    out.println("dTotalSize = "+sdTotalSize);
    out.println("<br>");
    out.println("nLastChange1 = "+snLastChange1);
    out.println("nLastChange2 = "+snLastChange2);
    out.println("dHoldOut = "+sdHoldOut);
    out.println("dCrossValidation = "+sdCrossValidation);
    out.println("<br>");
    out.println("nDFAttributes = "+snDFAttributes);
    out.println("nDFInstances = "+snDFInstances);
    out.println("nTDFAttributes = "+snTDFAttributes);
    out.println("nTDFInstances = "+snTDFInstances);
    out.println("<br>");
    out.println("nLDFAttributes = "+snLDFAttributes);
    out.println("nLDFInstances = "+snLDFInstances);
    out.println("nPDFAttributes = "+snPDFAttributes);
    out.println("nPDFInstances = "+snPDFInstances);
    */

    String NormalRadio = request.getParameter("NormalRadio");
    String OptimRadio = request.getParameter("OptimRadio");
    String SCRadio = request.getParameter("SCRadio");
    String PRadio = request.getParameter("PRadio");
    String TORadio = request.getParameter("TORadio");
    
    String sNormalRadio = "";
    String sOptimRadio = "";
    String sSCRadio = "";
    String sPRadio = "";
    String sTORadio = "";

    double dNormalRadio=0;
    double dOptimRadio=0;
    double dSCRadio=0;
    double dPRadio=0;
    double dTORadio=0;

    /*
    out.println("NormalRadio = "+NormalRadio);
    out.println("OptimRadio = "+OptimRadio);
    out.println("SCRadio = "+SCRadio);
    out.println("PRadio = "+PRadio);
    out.println("TORadio = "+TORadio);
    out.println("<br>");
    */
    
    String sDataFile = request.getParameter("sDataFile");
    String sTestDataFile = request.getParameter("sTestDataFile");
    String sLearningDataFile = request.getParameter("sLearningDataFile");
    String sPredictionDataFile = request.getParameter("sPredictionDataFile");

    String sFileName = request.getParameter("sFileName");
    String sTestFileName = request.getParameter("sTestFileName");
    String sLearningFileName = request.getParameter("sLearningFileName");
    String sPredictionFileName = request.getParameter("sPredictionFileName");
                
    String dAttributes = request.getParameter("dAttributes");
    String dInstances = request.getParameter("dInstances");
    String dPAttributes = request.getParameter("dPAttributes");
    String dPInstances = request.getParameter("dPInstances");

    String sFileData = request.getParameter("sFileData");
    String sdAttributes = request.getParameter("nDFAttributes");
    String sdInstances = request.getParameter("nDFInstances");

    String sPFileData = request.getParameter("sPFileData");
    String sdPAttributes = request.getParameter("sdPAttributes");
    String sdPInstances = request.getParameter("sdPInstances");

    /*
    out.println("sDataFile = "+sDataFile);
    out.println("sTestDataFile = "+sTestDataFile);
    out.println("<br>");
    out.println("sLearningDataFile = "+sLearningDataFile);
    out.println("sPredictionDataFile = "+sPredictionDataFile);
    out.println("<br>");
    out.println("sFileName = "+sFileName);
    out.println("sTestFileName = "+sTestFileName);
    out.println("<br>");
    out.println("sLearningFileName = "+sLearningFileName);
    out.println("sPredictionFileName = "+sPredictionFileName);
    out.println("<br>");
    */

    String sSpace = "";
    String sDummy = "";
    String sPDummy = "";
    
    String sVariation = "";
    
    String[] headers = null;
    String[] cols;

    /*
    out.println("sdInstances = "+sdInstances);
    out.println("sdAttributes = "+sdAttributes);
    */
    
    int nrow=1;
    nrow=(int)Double.parseDouble(sdInstances);
    int ncol=1;
    ncol=(int)Double.parseDouble(sdAttributes);
    String[][] Datatrain = new String[nrow][ncol];

    int nrowP=(int)Double.parseDouble(sdPInstances);
    int ncolP=(int)Double.parseDouble(sdPAttributes);
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
        <title>NiMOPS: SFA-LSSVR</title>
        
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
            function viewsummarydata2() {
                //alert("Aha ...!");
                //valid = false;
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

                //alert("Aha2 ...!");
                //valid = false;
                
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarNext = document.getElementById("VarNext");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");

                //alert("Aha3 ...!");
                //valid = false;
                
                //to run nimops (extra gate to start running) - not at opening
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "1";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                //to un-hide summary data
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "1";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                    var sLoadingDataExcelClick3 = document.getElementById("sLoadingDataExcelClick3");
                    sLoadingDataExcelClick3 = "";
                    document.getElementById("sLoadingDataExcelClick3").value = sLoadingDataExcelClick3;
                var sLoadingDataExcelClick4 = document.getElementById("sLoadingDataExcelClick4");
                sLoadingDataExcelClick4 = "";
                document.getElementById("sLoadingDataExcelClick4").value = sLoadingDataExcelClick4;
                    var sLoadingDataExcelClick5 = document.getElementById("sLoadingDataExcelClick5");
                    sLoadingDataExcelClick5 = "";
                    document.getElementById("sLoadingDataExcelClick5").value = sLoadingDataExcelClick5;
                var sLoadingDataExcelClick6 = document.getElementById("sLoadingDataExcelClick6");
                sLoadingDataExcelClick6 = "";
                document.getElementById("sLoadingDataExcelClick6").value = sLoadingDataExcelClick6;
                
                //alert("Aha4 ...!");
                //valid = false;
                
                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata3() {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarNext = document.getElementById("VarNext");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");

                //to run nimops (extra gate to start running) - not at opening
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                //to un-hide summary data
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                    var sLoadingDataExcelClick3 = document.getElementById("sLoadingDataExcelClick3");
                    sLoadingDataExcelClick3 = "3";
                    document.getElementById("sLoadingDataExcelClick3").value = sLoadingDataExcelClick3;
                var sLoadingDataExcelClick4 = document.getElementById("sLoadingDataExcelClick4");
                sLoadingDataExcelClick4 = "";
                document.getElementById("sLoadingDataExcelClick4").value = sLoadingDataExcelClick4;
                    var sLoadingDataExcelClick5 = document.getElementById("sLoadingDataExcelClick5");
                    sLoadingDataExcelClick5 = "";
                    document.getElementById("sLoadingDataExcelClick5").value = sLoadingDataExcelClick5;
                var sLoadingDataExcelClick6 = document.getElementById("sLoadingDataExcelClick6");
                sLoadingDataExcelClick6 = "";
                document.getElementById("sLoadingDataExcelClick6").value = sLoadingDataExcelClick6;
                
                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata4() {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarNext = document.getElementById("VarNext");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");

                //to run nimops (extra gate to start running) - not at opening
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                //to un-hide summary data
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                    var sLoadingDataExcelClick3 = document.getElementById("sLoadingDataExcelClick3");
                    sLoadingDataExcelClick3 = "";
                    document.getElementById("sLoadingDataExcelClick3").value = sLoadingDataExcelClick3;
                var sLoadingDataExcelClick4 = document.getElementById("sLoadingDataExcelClick4");
                sLoadingDataExcelClick4 = "4";
                document.getElementById("sLoadingDataExcelClick4").value = sLoadingDataExcelClick4;
                    var sLoadingDataExcelClick5 = document.getElementById("sLoadingDataExcelClick5");
                    sLoadingDataExcelClick5 = "";
                    document.getElementById("sLoadingDataExcelClick5").value = sLoadingDataExcelClick5;
                var sLoadingDataExcelClick6 = document.getElementById("sLoadingDataExcelClick6");
                sLoadingDataExcelClick6 = "";
                document.getElementById("sLoadingDataExcelClick6").value = sLoadingDataExcelClick6;
                
                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata5() {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarNext = document.getElementById("VarNext");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");

                //to run nimops (extra gate to start running) - not at opening
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                //to un-hide summary data
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                    var sLoadingDataExcelClick3 = document.getElementById("sLoadingDataExcelClick3");
                    sLoadingDataExcelClick3 = "";
                    document.getElementById("sLoadingDataExcelClick3").value = sLoadingDataExcelClick3;
                var sLoadingDataExcelClick4 = document.getElementById("sLoadingDataExcelClick4");
                sLoadingDataExcelClick4 = "";
                document.getElementById("sLoadingDataExcelClick4").value = sLoadingDataExcelClick4;
                    var sLoadingDataExcelClick5 = document.getElementById("sLoadingDataExcelClick5");
                    sLoadingDataExcelClick5 = "5";
                    document.getElementById("sLoadingDataExcelClick5").value = sLoadingDataExcelClick5;
                var sLoadingDataExcelClick6 = document.getElementById("sLoadingDataExcelClick6");
                sLoadingDataExcelClick6 = "";
                document.getElementById("sLoadingDataExcelClick6").value = sLoadingDataExcelClick6;
                
                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata6() {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarNext = document.getElementById("VarNext");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");

                //to run nimops (extra gate to start running) - not at opening
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                //to un-hide summary data
                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                    var sLoadingDataExcelClick3 = document.getElementById("sLoadingDataExcelClick3");
                    sLoadingDataExcelClick3 = "";
                    document.getElementById("sLoadingDataExcelClick3").value = sLoadingDataExcelClick3;
                var sLoadingDataExcelClick4 = document.getElementById("sLoadingDataExcelClick4");
                sLoadingDataExcelClick4 = "";
                document.getElementById("sLoadingDataExcelClick4").value = sLoadingDataExcelClick4;
                    var sLoadingDataExcelClick5 = document.getElementById("sLoadingDataExcelClick5");
                    sLoadingDataExcelClick5 = "";
                    document.getElementById("sLoadingDataExcelClick5").value = sLoadingDataExcelClick5;
                var sLoadingDataExcelClick6 = document.getElementById("sLoadingDataExcelClick6");
                sLoadingDataExcelClick6 = "6";
                document.getElementById("sLoadingDataExcelClick6").value = sLoadingDataExcelClick6;
                
                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function closesummarydata2() {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarNext = document.getElementById("VarNext");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "1";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                    var sLoadingDataExcelClick3 = document.getElementById("sLoadingDataExcelClick3");
                    sLoadingDataExcelClick3 = "";
                    document.getElementById("sLoadingDataExcelClick3").value = sLoadingDataExcelClick3;
                var sLoadingDataExcelClick4 = document.getElementById("sLoadingDataExcelClick4");
                sLoadingDataExcelClick4 = "";
                document.getElementById("sLoadingDataExcelClick4").value = sLoadingDataExcelClick4;
                    var sLoadingDataExcelClick5 = document.getElementById("sLoadingDataExcelClick5");
                    sLoadingDataExcelClick5 = "";
                    document.getElementById("sLoadingDataExcelClick5").value = sLoadingDataExcelClick5;
                var sLoadingDataExcelClick6 = document.getElementById("sLoadingDataExcelClick6");
                sLoadingDataExcelClick6 = "";
                document.getElementById("sLoadingDataExcelClick6").value = sLoadingDataExcelClick6;

                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }
            
            function rundata2(val) {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

                var VarNext = document.getElementById("VarNext");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "1";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                    var sLoadingDataExcelClick3 = document.getElementById("sLoadingDataExcelClick3");
                    sLoadingDataExcelClick3 = "";
                    document.getElementById("sLoadingDataExcelClick3").value = sLoadingDataExcelClick3;
                var sLoadingDataExcelClick4 = document.getElementById("sLoadingDataExcelClick4");
                sLoadingDataExcelClick4 = "";
                document.getElementById("sLoadingDataExcelClick4").value = sLoadingDataExcelClick4;
                    var sLoadingDataExcelClick5 = document.getElementById("sLoadingDataExcelClick5");
                    sLoadingDataExcelClick5 = "";
                    document.getElementById("sLoadingDataExcelClick5").value = sLoadingDataExcelClick5;
                var sLoadingDataExcelClick6 = document.getElementById("sLoadingDataExcelClick6");
                sLoadingDataExcelClick6 = "";
                document.getElementById("sLoadingDataExcelClick6").value = sLoadingDataExcelClick6;

                var sRunReportTable = document.getElementById("sRunReportTable");
                sRunReportTable = val;
                document.getElementById("sRunReportTable").value = sRunReportTable;
                var sRRTShow = document.getElementById("sRRTShow");
                sRRTShow = "";
                document.getElementById("sRRTShow").value = sRRTShow;
                var sResult01 = document.getElementById("sResult01");
                var sResult02 = document.getElementById("sResult02");
                var sResult03 = document.getElementById("sResult03");
                var sResult04 = document.getElementById("sResult04");
                var sResult05 = document.getElementById("sResult05");
                var sResult06 = document.getElementById("sResult06");
                //var sReportFile = document.getElementById("sReportFile");
                //var sReportFileTXT = document.getElementById("sReportFileTXT");
                
                var sResult01Name = document.getElementById("sResult01Name");
                var sResult02Name = document.getElementById("sResult02Name");
                var sResult03Name = document.getElementById("sResult03Name");
                var sResult04Name = document.getElementById("sResult04Name");
                var sResult05Name = document.getElementById("sResult05Name");
                var sResult06Name = document.getElementById("sResult06Name");
                //var sReportFileName = document.getElementById("sReportFileName");
                //var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                
                var sViewProceed = document.getElementById("sViewProceed");
                sViewProceed = "";
                document.getElementById("sViewProceed").value = sViewProceed;

                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }

            function showsummaryreport(valData) {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

                var VarNext = document.getElementById("VarNext");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "1";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                    var sLoadingDataExcelClick3 = document.getElementById("sLoadingDataExcelClick3");
                    sLoadingDataExcelClick3 = "";
                    document.getElementById("sLoadingDataExcelClick3").value = sLoadingDataExcelClick3;
                var sLoadingDataExcelClick4 = document.getElementById("sLoadingDataExcelClick4");
                sLoadingDataExcelClick4 = "";
                document.getElementById("sLoadingDataExcelClick4").value = sLoadingDataExcelClick4;
                    var sLoadingDataExcelClick5 = document.getElementById("sLoadingDataExcelClick5");
                    sLoadingDataExcelClick5 = "";
                    document.getElementById("sLoadingDataExcelClick5").value = sLoadingDataExcelClick5;
                var sLoadingDataExcelClick6 = document.getElementById("sLoadingDataExcelClick6");
                sLoadingDataExcelClick6 = "";
                document.getElementById("sLoadingDataExcelClick6").value = sLoadingDataExcelClick6;

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
                    var sResult01 = document.getElementById("sResult01").value;
                    if (sResult01!=="") {
                        var sResult01Name = document.getElementById("sResult01");
                    }
                    else {
                        var sResult01Name = document.getElementById("sResult01Name").value;
                        if (sResult01Name==="") {
                            document.getElementById("sResult01Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result01.txt";
                        }
                    }
                    
                    var sResult02 = document.getElementById("sResult02").value;
                    if (sResult02!=="") {
                        var sResult02Name = document.getElementById("sResult02");
                    }
                    else {
                        //sResult02 = "Result02.txt";
                        //document.getElementById("sResult02").value = sResult02;
                        //var sResult02Name = document.getElementById("sResult02");
                        
                        var sResult02Name = document.getElementById("sResult02Name").value;
                        if (sResult02Name==="") {
                            document.getElementById("sResult02Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result02.txt";
                        }
                    }
                    
                    var sResult03Name = document.getElementById("sResult03Name");
                    var sResult04Name = document.getElementById("sResult04Name");
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");

                    /*
                    if (sResult01.value==="") {
                        if (sResult01Name.value==="") {
                            var sResult01Name="Result01.txt";
                        }
                    }
                    */
                    
                    /*
                    alert("Aha1 ...!");
                    if (sResult02!=="") {
                    }
                    else {
                        alert("Aha2 ...!");
                        if (sResult02Name!=="") {
                            alert("Aha3 ...!");
                        }
                        else {
                            alert("Aha4 ...!");
                            var sResult02 = document.getElementById("sResult02");
                            var sResult02Name = document.getElementById("sResult02Name");
                            sResult02="Result02.txt";
                            sResult02Name="Result02.txt"; 
                            document.getElementById("sResult02").value = sResult02;
                            document.getElementById("sResult02Name").value = sResult02Name;
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
                    var sResult01Name = document.getElementById("sResult01Name");
                    var sResult02Name = document.getElementById("sResult02Name");

                    var sResult03 = document.getElementById("sResult03").value;
                    if (sResult03!=="") {
                        var sResult03Name = document.getElementById("sResult03");
                    }
                    else {
                        var sResult03Name = document.getElementById("sResult03Name").value;
                        if (sResult03Name==="") {
                            document.getElementById("sResult03Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result03.txt";
                        }
                    }
                    
                    var sResult04Name = document.getElementById("sResult04Name");
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");
                }
                else if (valData===3) {
                    var sResult01Name = document.getElementById("sResult01Name");
                    var sResult02Name = document.getElementById("sResult02Name");
                    var sResult03Name = document.getElementById("sResult03Name");
                    
                    var sResult04 = document.getElementById("sResult04").value;
                    if (sResult04!=="") {
                        var sResult04Name = document.getElementById("sResult04");
                    }
                    else {
                        var sResult04Name = document.getElementById("sResult04Name").value;
                        if (sResult04Name==="") {
                            document.getElementById("sResult04Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result04.txt";
                        }
                    }
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");
                }
                else if (valData===4) { 
                    sRunReportTable = valData;
                    document.getElementById("sRunReportTable").value = sRunReportTable;
                    
                    var sResult01Name = document.getElementById("sResult01Name");
                    var sResult02Name = document.getElementById("sResult02Name");
                    var sResult03Name = document.getElementById("sResult03Name");
                    var sResult04Name = document.getElementById("sResult04Name");

                    var sResult05 = document.getElementById("sResult05").value;
                    if (sResult05!=="") {
                        var sResult05Name = document.getElementById("sResult05");
                    }
                    else {
                        var sResult05Name = document.getElementById("sResult05Name").value;
                        if (sResult05Name==="") {
                            document.getElementById("sResult05Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result05.txt";
                        }
                    }

                    var sResult06 = document.getElementById("sResult06").value;
                    if (sResult06!=="") {
                        var sResult06Name = document.getElementById("sResult06");
                    }
                    else {
                        var sResult06Name = document.getElementById("sResult06Name").value;
                        if (sResult06Name==="") {
                            document.getElementById("sResult06Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result06.txt";
                        }
                    }
                }
                else if (valData===5) { 
                    sRunReportTable = valData;
                    document.getElementById("sRunReportTable").value = sRunReportTable;
                    
                    var sResult01Name = document.getElementById("sResult01Name");
                    var sResult02Name = document.getElementById("sResult02Name");
                    var sResult03Name = document.getElementById("sResult03Name");
                    var sResult04Name = document.getElementById("sResult04Name");
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");
                } 
                else if (valData===6) { 
                    sRunReportTable = valData;
                    document.getElementById("sRunReportTable").value = sRunReportTable;
                    
                    var sResult01Name = document.getElementById("sResult01Name");
                    var sResult02Name = document.getElementById("sResult02Name");
                    var sResult03Name = document.getElementById("sResult03Name");
                    var sResult04Name = document.getElementById("sResult04Name");
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");
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
                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }

            function previousscreen() {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarOne = document.getElementById("VarOne");
                document.getElementById("VarOne").value = "One";
                
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                document.getElementById("sLoadingDataExcel").value = "";

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                document.getElementById("sLoadingDataFile").value = "";
                
                document.getElementById("myform2").action = "SFALSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }
                
            function createoutputfiles(val) {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

                var VarNext = document.getElementById("VarNext");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                sLoadingDataExcel = "1";
                document.getElementById("sLoadingDataExcel").value = sLoadingDataExcel;

                var sLoadingDataExcelClick = document.getElementById("sLoadingDataExcelClick");
                sLoadingDataExcelClick = "";
                document.getElementById("sLoadingDataExcelClick").value = sLoadingDataExcelClick;
                    var sLoadingDataExcelClick3 = document.getElementById("sLoadingDataExcelClick3");
                    sLoadingDataExcelClick3 = "";
                    document.getElementById("sLoadingDataExcelClick3").value = sLoadingDataExcelClick3;
                var sLoadingDataExcelClick4 = document.getElementById("sLoadingDataExcelClick4");
                sLoadingDataExcelClick4 = "";
                document.getElementById("sLoadingDataExcelClick4").value = sLoadingDataExcelClick4;
                    var sLoadingDataExcelClick5 = document.getElementById("sLoadingDataExcelClick5");
                    sLoadingDataExcelClick5 = "";
                    document.getElementById("sLoadingDataExcelClick5").value = sLoadingDataExcelClick5;
                var sLoadingDataExcelClick6 = document.getElementById("sLoadingDataExcelClick6");
                sLoadingDataExcelClick6 = "";
                document.getElementById("sLoadingDataExcelClick6").value = sLoadingDataExcelClick6;

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
                
                    var sResult01 = document.getElementById("sResult01").value;
                    if (sResult01!=="") {
                        var sResult01Name = document.getElementById("sResult01");
                    }
                    else {
                        var sResult01Name = document.getElementById("sResult01Name").value;
                        if (sResult01Name==="") {
                            document.getElementById("sResult01Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result01.txt";
                        }
                    }
                    
                    var sResult02 = document.getElementById("sResult02").value;
                    if (sResult02!=="") {
                        var sResult02Name = document.getElementById("sResult02");
                    }
                    else {
                        var sResult02Name = document.getElementById("sResult02Name").value;
                        if (sResult02Name==="") {
                            document.getElementById("sResult02Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result02.txt";
                        }
                    }
                    
                    var sResult03Name = document.getElementById("sResult03Name");
                    var sResult04Name = document.getElementById("sResult04Name");
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");
                
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
                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
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
        <% } else if (VarNext == null) { %>
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
                /*
                out.println("VarSaveData = "+VarSaveData);
                out.println("VarLoadData = "+VarLoadData);
                out.println("VarReportData = "+VarReportData);
                out.println("VarNext = "+VarNext);
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
                
                nFireFlies = Float.parseFloat(snFireFlies);
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
                
                /**/
                nDFAttributes = Float.parseFloat(snDFAttributes);
                nDFInstances = Float.parseFloat(snDFInstances);
                nTDFAttributes = Float.parseFloat(snTDFAttributes);
                nTDFInstances = Float.parseFloat(snTDFInstances);
                nLDFAttributes = Float.parseFloat(snLDFAttributes);
                nLDFInstances = Float.parseFloat(snLDFInstances);
                nPDFAttributes = Float.parseFloat(snPDFAttributes);
                nPDFInstances = Float.parseFloat(snPDFInstances);
                /**/
                
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
                filewriter.write("Biotic potential (a)\t");
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
                
                sNormalRadio = "...";
                if (NormalRadio.equals("NormalRadio1")) {
                    sNormalRadio = "Original value";
                    iRadio=1;
                }
                else if (NormalRadio.equals("NormalRadio2")) {
                    sNormalRadio = "Feature scaling";
                    iRadio=2;
                }

                filewriter.write("18\t");
                filewriter.write("Normalization Method\t");
                filewriter.write("sNormalRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sNormalRadio+"\n");

                sOptimRadio = "...";
                if (OptimRadio.equals("OptimRadio1")) {
                    sOptimRadio = "RMSE validation";
                    iRadio=1;
                }
                else if (NormalRadio.equals("OptimRadio2")) {
                    sOptimRadio = "MAE validation";
                    iRadio=2;
                }
                else if (NormalRadio.equals("OptimRadio3")) {
                    sOptimRadio = "MAPE validation";
                    iRadio=3;
                }
                
                filewriter.write("19\t");
                filewriter.write("Objective Function\t");
                filewriter.write("sOptimRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sOptimRadio+"\n");
                
                sSCRadio = "...";
                if (SCRadio.equals("SCRadio1")) {
                    sSCRadio = "Max. generation is reached";
                    iRadio=1;
                }
                else if (SCRadio.equals("SCRadio2")) {
                    sSCRadio = "Pre-condition is reached";
                    iRadio=2;
                }
                else if (SCRadio.equals("SCRadio3")) {
                    sSCRadio = "Either criterion is reached";
                    iRadio=3;
                }

                filewriter.write("20\t");
                filewriter.write("Stop Criterion\t");
                filewriter.write("sSCRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sSCRadio+"\n");
                
                sPRadio = "...";
                if (PRadio.equals("PRadio1")) {
                    sPRadio = "Evaluation";
                    iRadio=1;
                }
                else if (PRadio.equals("PRadio2")) {
                    sPRadio = "Prediction";
                    iRadio=2;
                }
                    
                filewriter.write("21\t");
                filewriter.write("Purpose\t");
                filewriter.write("sPRadio\t");
                filewriter.write(iRadio+"\t");
                filewriter.write(sPRadio+"\n");
                
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

                    sTORadio = "...";
                    if (TORadio.equals("TORadio1")) {
                        sTORadio = "Use data file";
                        iRadio=1;
                    }
                    else if (TORadio.equals("TORadio2")) {
                        sTORadio = "Hold-out";
                        iRadio=2;
                    }
                    else if (TORadio.equals("TORadio3")) {
                        sTORadio = "Cross-validation";
                        iRadio=3;
                    }
                    else if (TORadio.equals("TORadio4")) {
                        sTORadio = "Use test data file";
                        iRadio=4;
                    }

                    filewriter.write("24\t");
                    filewriter.write("Test Option\t");
                    filewriter.write("sTORadio\t");
                    filewriter.write(iRadio+"\t");
                    filewriter.write(sTORadio+"\n");

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
            %>

            <table>
                <tr>
                    <td>
                        <h2>SFA-LSSVR:</h2>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <font color="black" face="tahoma" size="2">
                        <%
                            out.println("Data already saved to "+file);
                        %>
                        </font>
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
                        </font>
                    </td>
                </tr>
            </table>
            
        <% } else if (VarLoadData != null) { %>
            <%@include file="navmenu.jsp" %>

            <%
                String filename = "Data_SFA_LSSVR.txt";
                String file = application.getRealPath("/") + filename;
                /*
                BufferedReader br = new BufferedReader(new FileReader(file));
                String line = null;
                int j; 
                */
            %>

            <table>
                <tr>
                    <td>
                        <h2>SFA-LSSVR:</h2>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <font color="black" face="tahoma" size="2">
                        <%
                            out.println("Data already loaded from "+file);
                        %>
                        </font>
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
                        </font>
                    </td>
                </tr>
            </table>
            
        <% } else if (VarReportData != null) { %>
            <%
                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-Disposition", "inline; filename="
                        + "Data_SFA_LSSVR.xls");

                nFireFlies = Float.parseFloat(snFireFlies);
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

                /**/
                nDFAttributes = Float.parseFloat(snDFAttributes);
                nDFInstances = Float.parseFloat(snDFInstances);
                nTDFAttributes = Float.parseFloat(snTDFAttributes);
                nTDFInstances = Float.parseFloat(snTDFInstances);
                nLDFAttributes = Float.parseFloat(snLDFAttributes);
                nLDFInstances = Float.parseFloat(snLDFInstances);
                nPDFAttributes = Float.parseFloat(snPDFAttributes);
                nPDFInstances = Float.parseFloat(snPDFInstances); 
                /**/
                
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
            %>

            <form>
                <h2>
                    SFA-LSSVR Data:
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
                        <td>nFireFlies</td>
                        <td><%=nFireFlies%></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Max. generation</td>
                        <td>nMaxGeneration</td>
                        <td><%=nMaxGeneration%></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Beta min.</td>
                        <td>dMinBeta</td>
                        <td><%=dMinBeta%></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Gamma</td>
                        <td>dGamma</td>
                        <td><%=dGamma%></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Alpha</td>
                        <td>dAlpha</td>
                        <td><%=dAlpha%></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Adaptive inertia weight</td>
                        <td>dAIWeight</td>
                        <td><%=dAIWeight%></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Tau</td>
                        <td>dTau</td>
                        <td><%=dTau%></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Biotic potential (a)</td>
                        <td>dBPotential</td>
                        <td><%=dBPotential%></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Range of C1</td>
                        <td>dC1</td>
                        <td><%=dC1%></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>C2</td>
                        <td>dC2</td>
                        <td><%=dC2%></td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>Range of Sigma, S1</td>
                        <td>dS1</td>
                        <td><%=dS1%></td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>S2</td>
                        <td>dS2</td>
                        <td><%=dS2%></td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>Training partition size (%)</td>
                        <td>dTrainingPS</td>
                        <td><%=dTrainingPS%></td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td> Validation partition size (%)</td>
                        <td>dValidationPS</td>
                        <td><%=dValidationPS%></td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td> Total Size (%)</td>
                        <td>dTotalSize</td>
                        <td><%=dTotalSize%></td>
                    </tr>
                    <tr>
                        <td>16</td>
                        <td>No. of Last Changes</td>
                        <td>nLastChange1</td>
                        <td><%=nLastChange1%></td>
                    </tr>
                    <tr>
                        <td>17</td>
                        <td>Constant OF Value</td>
                        <td>nLastChange2</td>
                        <td><%=nLastChange2%></td>
                    </tr>
                    <tr>
                        <td>18</td>
                        <td>Hold-Out (%)</td>
                        <td>dHoldOut</td>
                        <td><%=dHoldOut%></td>
                    </tr>
                    <tr>
                        <td>19</td>
                        <td>Cross-Validation (%)</td>
                        <td>dCrossValidation</td>
                        <td><%=dCrossValidation%></td>
                    </tr>
                    
                    <%
                    sNormalRadio = "...";
                    if (NormalRadio.equals("NormalRadio1")) {
                        sNormalRadio = "Original value";
                    }
                    else if (NormalRadio.equals("NormalRadio2")) {
                        sNormalRadio = "Feature scaling";
                    }
                    %>
                    
                    <tr>
                        <td>20</td>
                        <td>Normalization Method</td>
                        <td>sNormalRadio</td>
                        <td><%=sNormalRadio%></td>
                    </tr>
                    
                    <%
                    sOptimRadio = "...";
                    if (OptimRadio.equals("OptimRadio1")) {
                        sOptimRadio = "RMSE validation";
                    }
                    else if (NormalRadio.equals("OptimRadio2")) {
                        sOptimRadio = "MAE validation";
                    }
                    else if (NormalRadio.equals("OptimRadio3")) {
                        sOptimRadio = "MAPE validation";
                    }
                    %>
                    
                    <tr>
                        <td>21</td>
                        <td>Objective Function</td>
                        <td>sOptimRadio</td>
                        <td><%=sOptimRadio%></td>
                    </tr>
                    
                    <%
                    sSCRadio = "...";
                    if (SCRadio.equals("SCRadio1")) {
                        sSCRadio = "Max. generation is reached";
                    }
                    else if (SCRadio.equals("SCRadio2")) {
                        sSCRadio = "last changes in OF value <";
                    }
                    else if (SCRadio.equals("SCRadio3")) {
                        sSCRadio = "Either criterion is reached";
                    }
                    %>
                    
                    <tr>
                        <td>22</td>
                        <td>Stop Criterion</td>
                        <td>sSCRadio</td>
                        <td><%=sSCRadio%></td>
                    </tr>
                    
                    <%
                    sPRadio = "...";
                    if (PRadio.equals("PRadio1")) {
                        sPRadio = "Evaluation";
                    }
                    else if (PRadio.equals("PRadio2")) {
                        sPRadio = "Prediction";
                    }
                    %>
                    
                    <tr>
                        <td>23</td>
                        <td>Purpose</td>
                        <td>sPRadio</td>
                        <td><%=sPRadio%></td>
                    </tr>

                    <%
                    sTORadio = "...";
                    if (TORadio.equals("TORadio1")) {
                        sTORadio = "Use data file";
                    }
                    else if (TORadio.equals("TORadio2")) {
                        sTORadio = "Hold-out";
                    }
                    else if (TORadio.equals("TORadio3")) {
                        sTORadio = "Cross-validation";
                    }
                    else if (TORadio.equals("TORadio4")) {
                        sTORadio = "Use test data file";
                    }
                    %>

                    <tr>
                        <td>24</td>
                        <td>Test Option</td>
                        <td>sTORadio</td>
                        <td><%=sTORadio%></td>
                    </tr>
                    <tr>
                        <td>25</td>
                        <td>Data File</td>
                        <td>sFileName</td>
                        <td><%=sFileName%></td>
                    </tr>
                    <tr>
                        <td>26</td>
                        <td>No. of Attributes</td>
                        <td>nDFAttributes</td>
                        <td><%=nDFAttributes%></td>
                    </tr>
                    <tr>
                        <td>27</td>
                        <td>No. of Instances</td>
                        <td>nDFInstances</td>
                        <td><%=nDFInstances%></td>
                    </tr>
                    <tr>
                        <td>28</td>
                        <td>Test Data File</td>
                        <td>sTestFileName</td>
                        <td><%=sTestFileName%></td>
                    </tr>
                    <tr>
                        <td>29</td>
                        <td>No. of Attributes</td>
                        <td>nTDFAttributes</td>
                        <td><%=nTDFAttributes%></td>
                    </tr>
                    <tr>
                        <td>30</td>
                        <td>No. of Instances</td>
                        <td>nTDFInstances</td>
                        <td><%=nTDFInstances%></td>
                    </tr>
                    <tr>
                        <td>31</td>
                        <td>Learning Data File</td>
                        <td>sLearningFileName</td>
                        <td><%=sLearningFileName%></td>
                    </tr>
                    <tr>
                        <td>32</td>
                        <td>No. of Attributes</td>
                        <td>nLDFAttributes</td>
                        <td><%=nLDFAttributes%></td>
                    </tr>
                    <tr>
                        <td>33</td>
                        <td>No. of Instances</td>
                        <td>nLDFInstances</td>
                        <td><%=nLDFInstances%></td>
                    </tr>
                    <tr>
                        <td>34</td>
                        <td>Prediction Data File</td>
                        <td>sPredictionFileName</td>
                        <td><%=sPredictionFileName%></td>
                    </tr>
                    <tr>
                        <td>35</td>
                        <td>No. of Attributes</td>
                        <td>nPDFAttributes</td>
                        <td><%=nPDFAttributes%></td>
                    </tr>
                    <tr>
                        <td>36</td>
                        <td>No. of Instances</td>
                        <td>nPDFInstances</td>
                        <td><%=nPDFInstances%></td>
                    </tr>
                </table>
            </form>
                        
        <% } else if (VarNext != null) { %>
            <%@include file="navmenu.jsp" %>

            <form action="ModuleSFALSSVR.jsp" name="myform2" id="myform2">
                <%
                /**/
                nFireFlies = Float.parseFloat(snFireFlies);
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
                /**/
                
                /**/
                nDFAttributes = Float.parseFloat(snDFAttributes);
                nDFInstances = Float.parseFloat(snDFInstances);
                nTDFAttributes = Float.parseFloat(snTDFAttributes);
                nTDFInstances = Float.parseFloat(snTDFInstances);
                nLDFAttributes = Float.parseFloat(snLDFAttributes);
                nLDFInstances = Float.parseFloat(snLDFInstances);
                nPDFAttributes = Float.parseFloat(snPDFAttributes);
                nPDFInstances = Float.parseFloat(snPDFInstances);
                /**/
                
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
                %>
                <input type="hidden" name="VarOne" id="VarOne" value="<%=VarOne%>"/>
                <input type="hidden" name="sLoadingDataFile" id="sLoadingDataFile" value="<%=sLoadingDataFile%>"/>

                <input type="hidden" name="VarNext" id="VarNext" value="<%=VarNext%>"/>
                <input type="hidden" name="sRunReportTable" id="sRunReportTable" value="<%=sRunReportTable%>"/>
                <input type="hidden" name="sRRTShow" id="sRRTShow" value="<%=sRRTShow%>"/>
                <input type="hidden" name="sViewProceed" id="sViewProceed" value="<%=sViewProceed%>"/>
                
                <input type="hidden" name="nFireFlies" id="nFireFlies" value="<%=nFireFlies%>"/>
                <input type="hidden" name="nMaxGeneration" id="nMaxGeneration" value="<%=nMaxGeneration%>"/>
                <input type="hidden" name="dMinBeta" id="dMinBeta" value="<%=dMinBeta%>"/>
                <input type="hidden" name="dGamma" id="dGamma" value="<%=dGamma%>"/>
                <input type="hidden" name="dAlpha" id="dAlpha" value="<%=dAlpha%>"/>
                <input type="hidden" name="dAIWeight" id="dAIWeight" value="<%=dAIWeight%>"/>
                <input type="hidden" name="dTau" id="dTau" value="<%=dTau%>"/>
                <input type="hidden" name="dBPotential" id="dBPotential" value="<%=dBPotential%>"/>
                <input type="hidden" name="dC1" id="dC1" value="<%=dC1%>"/>
                <input type="hidden" name="dC2" id="dC2" value="<%=dC2%>"/>
                <input type="hidden" name="dS1" id="dS1" value="<%=dS1%>"/>
                <input type="hidden" name="dS2" id="dS2" value="<%=dS2%>"/>
                <input type="hidden" name="dTrainingPS" id="dTrainingPS" value="<%=dTrainingPS%>"/>
                <input type="hidden" name="dValidationPS" id="dValidationPS" value="<%=dValidationPS%>"/>
                <input type="hidden" name="dTotalSize" id="dTotalSize" value="<%=dTotalSize%>"/>
                <input type="hidden" name="nLastChange1" id="nLastChange1" value="<%=nLastChange1%>"/>
                <input type="hidden" name="nLastChange2" id="nLastChange2" value="<%=nLastChange2%>"/>
                <input type="hidden" name="dHoldOut" id="dHoldOut" value="<%=dHoldOut%>"/>
                <input type="hidden" name="dCrossValidation" id="dCrossValidation" value="<%=dCrossValidation%>"/>

                <input type="hidden" name="nDFAttributes" id="nDFAttributes" value="<%=nDFAttributes%>"/>
                <input type="hidden" name="nDFInstances" id="nDFInstances" value="<%=nDFInstances%>"/>
                <input type="hidden" name="nTDFAttributes" id="nTDFAttributes" value="<%=nTDFAttributes%>"/>
                <input type="hidden" name="nTDFInstances" id="nTDFInstances" value="<%=nTDFInstances%>"/>
                <input type="hidden" name="nLDFAttributes" id="nLDFAttributes" value="<%=nLDFAttributes%>"/>
                <input type="hidden" name="nLDFInstances" id="nLDFInstances" value="<%=nLDFInstances%>"/>
                <input type="hidden" name="nPDFAttributes" id="nPDFAttributes" value="<%=nPDFAttributes%>"/>
                <input type="hidden" name="nPDFInstances" id="nPDFInstances" value="<%=nPDFInstances%>"/>

                <input type="hidden" name="NormalRadio" id="NormalRadio" value="<%=NormalRadio%>"/>
                <input type="hidden" name="OptimRadio" id="OptimRadio" value="<%=OptimRadio%>"/>
                <input type="hidden" name="SCRadio" id="SCRadio" value="<%=SCRadio%>"/>
                <input type="hidden" name="PRadio" id="PRadio" value="<%=PRadio%>"/>
                <input type="hidden" name="TORadio" id="TORadio" value="<%=TORadio%>"/>

                <input type="hidden" name="sDataFile" id="sDataFile" value="<%if (sDataFile != null) {%><%=sDataFile%><%}%>"/>
                <input type="hidden" name="sTestDataFile" id="sTestDataFile" value="<%if (sTestDataFile != null) {%><%=sTestDataFile%><%}%>"/>
                <input type="hidden" name="sLearningDataFile" id="sLearningDataFile" value="<%if (sLearningDataFile != null) {%><%=sLearningDataFile%><%}%>"/>
                <input type="hidden" name="sPredictionDataFile" id="sPredictionDataFile" value="<%if (sPredictionDataFile != null) {%><%=sPredictionDataFile%><%}%>"/>

                <input type="hidden" name="sFileName" id="sFileName" value="<%=sFileName%>"/>
                <input type="hidden" name="sTestFileName" id="sTestFileName" value="<%=sTestFileName%>"/>
                <input type="hidden" name="sLearningFileName" id="sLearningFileName" value="<%=sLearningFileName%>"/>
                <input type="hidden" name="sPredictionFileName" id="sPredictionFileName" value="<%=sPredictionFileName%>"/>

                <input type="hidden" name="sFileName" id="sFileData" value="<%=sFileData%>"/>
                <input type="hidden" name="sdAttributes" id="sdAttributes" value="<%=sdAttributes%>"/>
                <input type="hidden" name="sdInstances" id="sdInstances" value="<%=sdInstances%>"/>

                <input type="hidden" name="sPFileName" id="sPFileData" value="<%=sPFileData%>"/>
                <input type="hidden" name="sdPAttributes" id="sdPAttributes" value="<%=sdPAttributes%>"/>
                <input type="hidden" name="sdPInstances" id="sdPInstances" value="<%=sdPInstances%>"/>

                <input type="hidden" name="sLoadingDataExcel" id="sLoadingDataExcel" value="<%=sLoadingDataExcel%>"/>
                <input type="hidden" name="sLoadingDataExcelClick" id="sLoadingDataExcelClick" value="<%=sLoadingDataExcelClick%>"/>
                <input type="hidden" name="sLoadingDataExcelClick3" id="sLoadingDataExcelClick3" value="<%=sLoadingDataExcelClick3%>"/>
                <input type="hidden" name="sLoadingDataExcelClick4" id="sLoadingDataExcelClick4" value="<%=sLoadingDataExcelClick4%>"/>
                <input type="hidden" name="sLoadingDataExcelClick5" id="sLoadingDataExcelClick5" value="<%=sLoadingDataExcelClick5%>"/>
                <input type="hidden" name="sLoadingDataExcelClick6" id="sLoadingDataExcelClick6" value="<%=sLoadingDataExcelClick6%>"/>

                <%-->
                <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
                <--%>

                <input type="hidden" name="sBaseFileNameCO" id="sBaseFileNameCO" value="<%=sBaseFileNameCO%>"/>

                <input type="hidden" name="sCreate" id="sCreate" value="<%=sCreate%>"/>

                <input type="hidden" name="vpath" id="vpath" value="<%=vpath%>"/>
                <input type="hidden" name="vfile" id="vfile" value="<%=vfile%>"/>

                <br>
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
                        <li class="active"><a data-toggle="tab" href="#initialize" onclick="return changepurpose(1);">Initialize</a></li>
                        <li><a data-toggle="tab" href="#process" onclick="return changepurpose(2);">Processing</a></li>
                        <li><a data-toggle="tab" href="#result" onclick="return changepurpose(2);">View The Result</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="initialize" class="tab-pane fade in active">
                        </div>
                        <div id="process" class="tab-pane fade">
                        </div>
                        <div id="result" class="tab-pane fade">
                        </div>
                    </div>
                <br>
                <br>
                    <table>
                        <tr>
                            <td>
                                <a onclick="return previousscreen();">
                                    <font color="blue" face="agency FB" size="3" style="float:left;">
                                    <b><u><< BACK</u></b>
                                    </font>
                                </a>
                            </td>
                        </tr>
                        <tr><td>&nbsp;&nbsp;</td></tr>
                        <tr>
                            <td>
                                <div class="container boundary">
                                    <button type="button" onclick="return rundata2(1);" class="btn btn-primary">Initizalize</button>
                                    <button type="button" name="VarTable" value="SUMMARY REPORT" onclick="return rundata2(2);"  class="btn btn-primary">Analysis Report</button>
                                    <button type="button" name="VarReport" value="ANALYSIS REPORT" onclick="return rundata2(3);" class="btn btn-primary">Summary report</button>
                                    <button type="button" name="VarGraph" value="GRAPHIC" onclick="return rundata2(4);" class="btn btn-primary">Graphic Presentation</button>
                                </div>
                            </td>
                            <!--<td style="width:10%">
                                <%
                                    //out.println("<a href='javascript:history.back()'> <b> BACK </b> </a>");
                                %>


                            </td>
                            <td>&nbsp;&nbsp;</td>
                            <td>
                                <input type="submit" name="VarProceed" value="INITIALIZE" onclick="return rundata2(1);"/>
                            </td>-->
                            <td>
                                <% if (sLoadingDataExcel != "") { %>
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
                </div>
                <br>
                <% //#1 displaying input data: 
                if (sLoadingDataExcelClick != "") { 
                %>
                <table>
                    <tr>
                        <td>
                            <b> Setting Data: </b>
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
                            No. of fireflies = <%=nf.format(nFireFlies)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Max. generation = <%=nf.format(nMaxGeneration)%>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            2. Attractiveness:
                        </td>
                        <td>
                            Beta min. = <%=nf2.format(dMinBeta)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Gamma = <%=nf2.format(dGamma)%>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            3. Random movement:
                        </td>
                        <td>
                            Alpha = <%=nf2.format(dAlpha)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Adaptive inertia weight = <%=nf2.format(dAIWeight)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Tau = <%=nf2.format(dTau)%>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            4. Logistic map:
                        </td>
                        <td>
                            Biotic potential, a = <%=nf2.format(dBPotential)%>
                        </td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            5. Hyperparameters:
                        </td>
                        <td>
                            Range of C = <%=ndf.format(dC1)%> to
                            <%=ndf.format(dC2)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            Range of sigma = <%=ndf.format(dS1)%> to
                            <%=ndf.format(dS2)%>&nbsp;&nbsp;
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            6. Learning Option:
                        </td>
                        <td>
                            Training partition size = <%=nf.format(dTrainingPS)%> (%)&nbsp;&nbsp;
                        </td>
                        <td>
                            Validation partition size = <%=nf.format(dValidationPS)%> (%)
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            7. Normalization Method:
                        </td>
                        <td>
                            <%
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
                        <td>&nbsp;&nbsp;&nbsp;</td>
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
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            9. Stop Criterion:
                        </td>
                        <td>
                            <%
                            if (SCRadio.equals("SCRadio1")) {
                                sSCRadio = "Max. generation is reached";
                                %> 
                                <%=sSCRadio%>
                                <%
                            }
                            else if (SCRadio.equals("SCRadio2")) {
                                sSCRadio = "last changes in OF value <";
                                %> 
                                <%=nf.format(nLastChange1)%> <%=sSCRadio%> <%=nf5.format(nLastChange2)%>
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
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            10. Purpose:
                        </td>
                        <td>
                            <%
                            sPRadio = "...";
                            if (PRadio.equals("PRadio1")) {
                                sPRadio = "Evaluation";
                                sDummy = "Data File : ";
                            }
                            else if (PRadio.equals("PRadio2")) {
                                sPRadio = "Prediction";
                                sDummy = "Learning Data File : ";
                                sFileData = sLearningFileName;
                                dAttributes = snLDFAttributes;
                                dInstances = snLDFInstances;
                                sPDummy = "Prediction Data File : ";
                                sPFileData = sPredictionFileName;
                                dPAttributes = snPDFAttributes;
                                dPInstances = snPDFInstances;
                                sVariation = "5";
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
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            11. Test Option: 
                        </td>
                        <td>
                            <%
                            sTORadio = "...";
                            if (TORadio.equals("TORadio2")) { 
                                if (PRadio.equals("PRadio1")) { %>
                                    Hold-out = <%=nf.format(dHoldOut)%> (%) 
                                    <% 
                                    sDummy = "Data File : ";
                                    sFileData = sFileName;
                                    dAttributes = snDFAttributes;
                                    dInstances = snDFInstances;
                                    sVariation = "2";
                                    sPFileData = "";
                                    dPAttributes = "0";
                                    dPInstances = "0";
                                }
                                else if (PRadio.equals("PRadio2")) { %> 
                                    -
                                <% }
                            }
                            else if (TORadio.equals("TORadio3")) {
                                if (PRadio.equals("PRadio1")) { %>
                                    Cross-validation = <%=nf.format(dCrossValidation)%> (folds)
                                    <%
                                    sDummy = "Data File : ";
                                    sFileData = sFileName;
                                    dAttributes = snDFAttributes;
                                    dInstances = snDFInstances;
                                    sVariation = "3";
                                    sPFileData = "";
                                    dPAttributes = "0";
                                    dPInstances = "0";
                                }
                                else if (PRadio.equals("PRadio2")) { %>
                                    -
                                <% }
                            }
                            else {
                                if (TORadio.equals("TORadio1")) {
                                    if (PRadio.equals("PRadio1")) {
                                        sTORadio = "Use data file";
                                        sDummy = "Data File : ";
                                        sFileData = sFileName;
                                        dAttributes = snDFAttributes;  
                                        dInstances = snDFInstances; 
                                        sVariation = "1";
                                        sPFileData = "";
                                        dPAttributes = "0";
                                        dPInstances = "0";
                                    }
                                    else if (PRadio.equals("PRadio2")) {
                                        sTORadio = "-";
                                    }
                                }
                                else if (TORadio.equals("TORadio4")) {
                                    if (PRadio.equals("PRadio1")) {
                                        sTORadio = "Use test data file";
                                        sDummy = "Data File : ";
                                        sFileData = sFileName;
                                        dAttributes = snDFAttributes;
                                        dInstances = snDFInstances; 
                                        sPDummy = "Test Data File : ";
                                        sPFileData = sTestFileName;
                                        dPAttributes = snTDFAttributes; 
                                        dPInstances = snTDFInstances; 
                                        sVariation = "4";
                                    }
                                    else if (PRadio.equals("PRadio2")) {
                                        sTORadio = "-";
                                    }
                                }
                                else {
                                    dAttributes = snDFAttributes;
                                    dInstances = snDFInstances;
                                }%>
                            
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
                            No. of Attributes = <%=nf.format(Double.parseDouble(dAttributes))%>  
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                             No. of Instances = <%=nf.format(Double.parseDouble(dInstances))%>  
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
                                No. of Attributes = <%=nf.format(Double.parseDouble(dPAttributes))%>  
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                 No. of Instances = <%=nf.format(Double.parseDouble(dPInstances))%>  
                            </td>
                        <%}%>
                    </tr>
                </table>
                        
                <% //#2 displaying data file 
                } else if (sLoadingDataExcelClick3 != "") { 
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
                        if (sFileName != "") { 
                            String file = application.getRealPath("/") + sFileName;
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
                                        <% for (j = 0; j < ncols1; j += 1) { %> 
                                            <td align="right">
                                                <%=nf3.format(Double.parseDouble(Dataraw[i][j]))%>
                                            </td>
                                            <td>&nbsp;&nbsp;&nbsp;</td>
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
                } else if (sLoadingDataExcelClick4 != "") { 
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
                        if (sTestFileName != "") { 
                            String file = application.getRealPath("/") + sTestFileName;
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
                                        <% for (j = 0; j < ncols2; j += 1) { %>
                                            <td align="right">
                                                <%=nf3.format(Double.parseDouble(Datatest[i][j]))%>
                                            </td>
                                            <td>&nbsp;&nbsp;&nbsp;</td>
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
                } else if (sLoadingDataExcelClick5 != "") { 
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
                        
                        if (sLearningFileName != "") { 
                            String file = application.getRealPath("/") + sLearningFileName;
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
                                    <td>&nbsp;&nbsp;&nbsp;</td>
                                    <% for (j = 0; j < ncols3; j += 1) { %>
                                        <td align="center">
                                            <%=headers[j]%>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                    <% } %>
                                </tr>
                                        
                                <tr>
                                <td colspan="15">
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

                                //out.println("sError = "+sError);
                                //out.println("OptimRadio = "+OptimRadio);
                                //out.println("sOptimRadio = "+sOptimRadio);
                                    
                                if (sError=="1") {
                                if (sOptimRadio=="MAPE validation") {
                                    out.println("<h4><font color='red'>&nbsp;&nbsp;&nbsp;"
                                        + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                                        + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                                        + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                                        + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                                        + "&nbsp;&nbsp;&nbsp;&nbsp;" 
                                        + "Zero Y value observed, MAPE cannot be chosen as an objective function ... !</font></h4>");
                                }
                                }
                                %>
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
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <% for (j = 0; j < ncols3; j += 1) { %>
                                            <td align="right">
                                                <%-->
                                                <%=Datatrain[i][j]%>
                                                <--%>

                                                <%=nf3.format(Double.parseDouble(Datatrains[i][j]))%>
                                            </td>
                                            <td>&nbsp;&nbsp;&nbsp;</td>
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
                } else if (sLoadingDataExcelClick6 != "") { 
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
                        if (sPredictionFileName != "") { 
                            String file = application.getRealPath("/") + sPredictionFileName;
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
                                    <td>&nbsp;&nbsp;&nbsp;</td>
                                    <% for (j = 0; j < ncols4; j += 1) { %>
                                        <td align="center">
                                            <%=headers[j]%>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
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
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <% for (j = 0; j < ncols4; j += 1) { %>
                                            <td align="right">
                                                <%=nf3.format(Double.parseDouble(Datapres[i][j]))%>
                                            </td>
                                            <td>&nbsp;&nbsp;&nbsp;</td>
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
                        
                <% //#6 displaying header
                } else { 
                %>
                    <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <b> Setting Data: </b>
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
                </h6>
                    <%--<a href="#top">
                        <img src="Icon-Top.png" alt="..." width="13" height="17">
                    </a>--%>
                    <div class="scrollToTop">
                      <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                <% } %>
                
                <% 
                if ((int)Double.parseDouble(sRunReportTable) == 1) {
                    if (sCreate != "") {  
                        sResult01Name = application.getRealPath("/") + sBaseFileName +"01.txt";
                        sResult02Name = application.getRealPath("/") + sBaseFileName +"02.txt";
                        sResult03Name = application.getRealPath("/") + sBaseFileName +"03.txt";
                        sResult04Name = application.getRealPath("/") + sBaseFileName +"04.txt";
                        sResult05Name = application.getRealPath("/") + sBaseFileName +"05.txt";
                        sResult06Name = application.getRealPath("/") + sBaseFileName +"06.txt";
                        %>
                        <script>
                            document.getElementById("sResult01Name").value = sResult01Name;
                            document.getElementById("sResult02Name").value = sResult02Name;
                            document.getElementById("sResult03Name").value = sResult03Name;
                            document.getElementById("sResult04Name").value = sResult04Name;
                            document.getElementById("sResult05Name").value = sResult05Name;
                            document.getElementById("sResult06Name").value = sResult06Name;
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
                                    <input type="text" name="sResult01Name" id="sResult01Name" size="75" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" readonly/>
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                    <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                    <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                                    <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                                    <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
                                    
                                    <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                    </td>
                                </tr> 
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td colspan="4">
                                    <input type="text" name="sResult02Name" id="sResult02Name" size="75" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" readonly/> 
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... validation. </font>
                                    </td>
                                </tr>
                                <% if (sResult05Name != "") { %>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="4">
                                        <input type="text" name="sResult05Name" id="sResult05Name" size="75" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" readonly/> 
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
                                out.println("sResult01Name = " + sResult01Name);
                                out.println("<br>");
                                out.println("sResult03Name = " + sResult03Name);
                                out.println("<br>");
                                out.println("sResult04Name = " + sResult04Name);
                                out.println("<br>");
                                out.println("sResult05Name = " + sResult05Name);
                                out.println("<br>");
                                */

                                if (sResult01Name!="") {
                                String file = "";
                                file = sResult01Name; 
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
                                <% } %>
                            </table>

                            <table>
                                <tr>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <%
                                if (sResult02Name!="") {
                                String file = "";
                                file = sResult02Name; 
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
                                <% br.close(); %> 
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                </tr>
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                <% } %>
                                </tr>
                            </table>    

                            <% if (sResult05Name != "") { %>
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
                                        String file = "";
                                        file = sResult05Name;
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
                                <%--> VIEW Results <--%>
                                <script>
                                    var sfilefileResult01 = document.getElementById("sfilefileResult01"); 
                                    var sfilefileResult02 = document.getElementById("sfilefileResult02"); 
                                </script>

                                <% if (sResult01 != "") { 
                                    sfilefileResult01 = application.getRealPath("/") + sResult01;
                                    sResult01Name=sfilefileResult01; 
                                }
                                else {
                                    sfilefileResult01 = sResult01Name;
                                } %>

                                <script>
                                    var sResult01Name = document.getElementById("sResult01Name");
                                    document.getElementById("sResult01Name").value = sResult01Name;
                                </script>

                                <% if (sResult02 != "") {
                                    sfilefileResult02 = application.getRealPath("/") + sResult02;
                                    sResult02Name=sfilefileResult02; 
                                }
                                else {
                                    sfilefileResult02 = sResult02Name;
                                } %>

                                <script>
                                    var sResult02Name = document.getElementById("sResult02Name");
                                    document.getElementById("sResult02Name").value = sResult02Name;
                                </script>

                                <script>
                                    var sResult03Name = document.getElementById("sResult03Name");
                                    var sResult04Name = document.getElementById("sResult04Name"); 
                                    var sResult05Name = document.getElementById("sResult05Name"); 
                                    var sResult06Name = document.getElementById("sResult06Name"); 
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
                                        <input type="text" name="sResult01Name" id="sResult01Name" size="75" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" readonly/>
                                        <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                        <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                        <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                                        <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                                        <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
                                        <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                        </td>
                                    </tr> 
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="4">
                                        <input type="text" name="sResult02Name" id="sResult02Name" size="75" value="<%=sResult02Name%>" readonly/> 
                                        <font color="teal" face="tahoma" size="2"> &nbsp; ... validation. </font>
                                        </td>
                                    </tr>
                                    <% if (sResult05Name != "") { %>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td colspan="4">
                                            <input type="text" name="sResult05Name" id="sResult05Name" size="75" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" readonly/> 
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
                                    out.println("sResult01Name = " + sResult01Name);
                                    out.println("<br>");
                                    out.println("sResult03Name = " + sResult03Name);
                                    out.println("<br>");
                                    out.println("sResult04Name = " + sResult04Name);
                                    out.println("<br>");
                                    out.println("sResult05Name = " + sResult05Name);
                                    out.println("<br>");
                                    */

                                    if (sResult01Name!="") {
                                    String file = ""; 
                                    file = sResult01Name;
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
                                    <% } %>

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
                                    if (sResult02Name!="") {
                                    String file = ""; 
                                    file = sResult02Name;
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
                                        <% line = br.readLine();
                                    } %>
                                    <% br.close(); %> 
                                    <% } %>
                                        </tr>
                                    <tr>
                                        <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                    </tr>
                                    <tr>
                                        <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                    </tr>
                                </table>    

                                <% if (sResult05Name != "") { %>
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
                                            String file = ""; 
                                            file = sResult05Name;
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

                            <% } else if (sViewProceed == "100") { %>
                                <%--> VIEW Performance in EXCEL <--%>
                                <p>
                                <%@page import="Fillo.*"%>
                                <script>
                                    sReportFile = document.getElementById("sReportFile");
                                </script>
                                <%
                                    if (sReportFile != "") {  
                                    %>
                                        <script>
                                        var sReportFileName = document.getElementById("sReportFileName");
                                        var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                                        </script>
                                    <%
                                    if (sReportFileName != "") {
                                        sReportFileName = application.getRealPath("/") + sReportFileName;
                                    }

                                    if (sReportFileNameTXT != "") {
                                        sReportFileNameTXT = application.getRealPath("/") + sReportFileNameTXT;
                                    }

                                    %>
                                    <script>
                                        document.getElementById("sReportFileName").value = sReportFileName;
                                        document.getElementById("sReportFileNameTXT").value = sReportFileNameTXT;
                                    </script>
                                    <%
                                    } else { %>
                                    <script>
                                        var sReportFileName = document.getElementById("sReportFileName");
                                        var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                                    </script>
                                    <% }
                                %>

                                <table>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <b> Running: </b>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="8">
                                        <input type="text" name="sReportFileName" id="sReportFileName" size="75" value="<%=sReportFileName%>" readonly/>
                                        <input type="hidden" name="sReportFileNameTXT" id="sReportFileNameTXT" value="<%=sReportFileNameTXT%>" />
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
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <th>RMSE Learning</th>
                                        <th>RMSE Test</th>
                                        <th>MAE Learning</th>
                                        <th>MAE Test</th>
                                        <th>MAPE Learning</th>
                                        <th>MAPE Test</th>
                                        <th>R Learning</th>
                                        <th>R Test</th>
                                    </tr>

                                    <%  if (sReportFileName != "") {  
                                    Fillo fillo = new Fillo();

                                    Connection connection = fillo.getConnection(sReportFileName);
                                    String strQuery = "Select * from Performance";
                                    Recordset recordset = connection.executeQuery(strQuery);

                                    while (recordset.next()) { %>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td align="right">
                                            <%=recordset.getField("RMSE_Learning")%>
                                        </td>
                                        <td align="right">
                                            <%=recordset.getField("RMSE_Test")%>
                                        </td>
                                        <td align="right">
                                            <%=recordset.getField("MAE_Learning")%> 
                                        </td> 
                                        <td align="right">
                                            <%=recordset.getField("MAE_Test")%>
                                        </td>
                                        <td align="right">
                                            <%=recordset.getField("MAPE_Learning")%>
                                        </td>
                                        <td align="right">
                                            <%=recordset.getField("MAPE_Test")%>
                                        </td>
                                        <td align="right">
                                            <%=recordset.getField("R_Learning")%>
                                        </td>
                                        <td align="right">
                                            <%=recordset.getField("R_Test")%>
                                        </td>
                                    </tr>
                                    <% } %>
                                    <%
                                        recordset.close();
                                        connection.close();
                                        }
                                    %>
                                </table>

                            <% } else { %>
                                <%--> Start Running opt of sViewProceed <--%>
                                <script>
                                    var sReportFile = document.getElementById("sReportFile");
                                </script>
                                <%
                                    if (sReportFile != "") {  
                                    %>
                                        <script>
                                        var sReportFileName = document.getElementById("sReportFileName");
                                        var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                                        </script>
                                    <%
                                    if (sReportFileName != "") {
                                        sReportFileName = application.getRealPath("/") + sReportFileName;
                                    }

                                    if (sReportFileNameTXT != "") {
                                        sReportFileNameTXT = application.getRealPath("/") + sReportFileNameTXT;
                                    }

                                    %>
                                    <script>
                                        document.getElementById("sReportFileName").value = sReportFileName;
                                        document.getElementById("sReportFileNameTXT").value = sReportFileNameTXT;
                                    </script>
                                    <% } %> 

                                    <script>
                                        var sReportFileName = document.getElementById("sReportFileName");
                                        var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                                    </script>

                                    <% sReportFileName="Result.xls";
                                    sReportFileName = application.getRealPath("/") + sReportFileName;

                                    sReportFileNameTXT="Result.txt";
                                    sReportFileNameTXT = application.getRealPath("/") + sReportFileNameTXT;
                                    %>

                                    <script>
                                        document.getElementById("sReportFileName").value = sReportFileName;
                                        document.getElementById("sReportFileNameTXT").value = sReportFileNameTXT;
                                    </script>

                                    <% 
                                    /*
                                    out.println("<p>");
                                    out.println("sReportFileName = " + sReportFileName);
                                    out.println("sReportFileNameTXT = " + sReportFileNameTXT);
                                    out.println("<br>");
                                    */
                                %>

                                <table>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <b> Running: </b>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="8">
                                        <input type="text" name="sResult01Name" id="sResult01Name" size="60" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" readonly/>
                                        </td>
                                    </tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td colspan="8">
                                        <input type="text" name="sResult02Name" id="sResult02Name" size="60" value="<%=sResult02Name%>" readonly/>
                                        <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                        <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                                        <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                                        <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
                                        <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                        </td>
                                    </tr>
                                </table>
                                <%-->
                                <h3>
                                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                                    <b> Output: &nbsp;&nbsp;&nbsp;&nbsp;</b>
                                </h3>
                                <--%>

                                <% if (sLoadingDataExcel != "") { %>
                                    <%--> #2 
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
                                    <% }%>
                                    <--%>

                                    <%
                                    /*
                                    out.println("nFireFlies = "+snFireFlies);
                                    out.println("nMaxGeneration = "+snMaxGeneration);
                                    out.println("dMinBeta = "+sdMinBeta);
                                    out.println("dGamma = "+sdGamma);
                                    out.println("dAlpha = "+sdAlpha);
                                    out.println("<br>");
                                    out.println("dAIWeight = "+sdAIWeight);
                                    out.println("dTau = "+sdTau);
                                    out.println("dBPotential = "+sdBPotential);
                                    out.println("dC1 = "+sdC1);
                                    out.println("dC2 = "+sdC2);
                                    out.println("<br>");
                                    out.println("dS1 = "+sdS1);
                                    out.println("dS2 = "+sdS2);
                                    out.println("dTrainingPS = "+sdTrainingPS);
                                    out.println("dValidationPS = "+sdValidationPS);
                                    out.println("dTotalSize = "+sdTotalSize);
                                    out.println("<br>");
                                    out.println("nLastChange1 = "+snLastChange1);
                                    out.println("nLastChange2 = "+snLastChange2);
                                    out.println("dHoldOut = "+sdHoldOut);
                                    out.println("dCrossValidation = "+sdCrossValidation);
                                    out.println("<br>");
                                    out.println("NormalRadio = "+NormalRadio);
                                    out.println("OptimRadio = "+OptimRadio);
                                    out.println("SCRadio = "+SCRadio);
                                    out.println("PRadio = "+PRadio);
                                    out.println("TORadio = "+TORadio);
                                    out.println("<br>");
                                    */

                                    if (NormalRadio.equals("NormalRadio1")) {
                                        dNormalRadio=1;
                                    }
                                    else if (NormalRadio.equals("NormalRadio2")) {
                                        dNormalRadio=2;
                                    }

                                    if (OptimRadio.equals("OptimRadio1")) {
                                        dOptimRadio=1;
                                    }    
                                    else if (OptimRadio.equals("OptimRadio2")) {
                                        dOptimRadio=2;
                                    }    
                                    else if (OptimRadio.equals("OptimRadio3")) {
                                        dOptimRadio=3;
                                    }    

                                    if (SCRadio.equals("SCRadio1")) {
                                        dSCRadio=1;
                                    }
                                    else if (SCRadio.equals("SCRadio2")) {
                                        dSCRadio=2;
                                    }
                                    else if (SCRadio.equals("SCRadio3")) {
                                        dSCRadio=3;
                                    }

                                    if (PRadio.equals("PRadio2")) {
                                        sFileData = sLearningFileName;
                                        dAttributes = snLDFAttributes;
                                        dInstances = snLDFInstances;
                                        sPFileData = sPredictionFileName;
                                        dPAttributes = snPDFAttributes;
                                        dPInstances = snPDFInstances;
                                        sVariation = "5";
                                        dPRadio=2;
                                    }

                                    if (TORadio.equals("TORadio2")) { 
                                        dTORadio=2;
                                        if (PRadio.equals("PRadio1")) {
                                            sFileData = sFileName;
                                            dAttributes = snDFAttributes;
                                            dInstances = snDFInstances;
                                            sVariation = "2";
                                            sPFileData = "";
                                            dPAttributes = "1";
                                            dPInstances = "1";
                                            dPRadio=1;
                                        }
                                    }
                                    else if (TORadio.equals("TORadio3")) {
                                        dTORadio=3;
                                        if (PRadio.equals("PRadio1")) {
                                            sFileData = sFileName;
                                            dAttributes = snDFAttributes;
                                            dInstances = snDFInstances;
                                            sVariation = "3";
                                            sPFileData = "";
                                            dPAttributes = "1";
                                            dPInstances = "1";
                                            dPRadio=1;
                                        }
                                    }
                                    else {
                                        if (TORadio.equals("TORadio1")) {
                                            dTORadio=1;
                                            if (PRadio.equals("PRadio1")) {
                                                sFileData = sFileName;
                                                dAttributes = snDFAttributes;  
                                                dInstances = snDFInstances; 
                                                sVariation = "1";
                                                sPFileData = "";
                                                dPAttributes = "1";
                                                dPInstances = "1";
                                                dPRadio=1;
                                            }
                                        }
                                        else if (TORadio.equals("TORadio4")) {
                                            dTORadio=4;
                                            if (PRadio.equals("PRadio1")) {
                                                sFileData = sFileName;
                                                dAttributes = snDFAttributes;  
                                                dInstances = snDFInstances; 
                                                sPFileData = sTestFileName;
                                                dPAttributes = snTDFAttributes; 
                                                dPInstances = snTDFInstances;
                                                sVariation = "4";
                                                dPRadio=1;
                                            }
                                        }
                                    }

                                    /*
                                    out.println("sVariation = "+sVariation);
                                    out.println("<br>");
                                    out.println("sFileData = "+sFileData);
                                    out.println("dAttributes = "+dAttributes);
                                    out.println("dInstances = "+dInstances);
                                    out.println("<br>");
                                    out.println("sPFileData = "+sPFileData);
                                    out.println("dPAttributes = "+dPAttributes);
                                    out.println("dPInstances = "+dPInstances);
                                    */ 

                                    if (sFileData != "") {  
                                        String file = application.getRealPath("/") + sFileData;
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
                                                for (i = 0; i < ncol; i += 1) {
                                                    Datatrain[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                            }
                                        }
                                        br.close();
                                    } else {
                                        //String[][] Datatrain = new String[1][1];
                                    }

                                    /*
                                        out.println("ncol = "+ncol);
                                        out.println("nrow = "+nrow);
                                        out.println("Datatrain[nrow-1][ncol-1] = "+Datatrain[nrow-1][ncol-1]);
                                    */

                                    if (sPFileData == null) {
                                        /*
                                        out.println("<br>");
                                        */
                                    }    
                                    else if (sPFileData != "") {
                                        /*
                                        out.println("<br>");
                                        */

                                        String file = application.getRealPath("/") + sPFileData;
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
                                                for (i = 0; i < ncolP; i += 1) {
                                                    Datapre[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                            }
                                        }
                                        br.close();
                                    } else {
                                        /*
                                        out.println("<br>");
                                        */
                                    }

                                    vpath = application.getRealPath("/");

                                    vfile = sBaseFileNameCO;                  //+"01.txt";
                                    if (vfile == "") {
                                        vfile = "Result";
                                    }
                                    %>
                                    <script> 
                                        document.getElementById("vpath").value = vpath; 
                                        document.getElementById("vfile").value = vfile; 
                                    </script>
                                    <%
                                    
                                    /*
                                    out.println("vfile = "+vfile);
                                    out.println("<br>");
                                    out.println("sBaseFileNameCO = "+sBaseFileNameCO);
                                    out.println("<br>");

                                    out.println("nFireFlies = "+snFireFlies);
                                    out.println("<br>");
                                    out.println("nMaxGeneration = "+snMaxGeneration);
                                    out.println("<br>");
                                    out.println("dMinBeta = "+sdMinBeta);
                                    out.println("<br>");
                                    out.println("dGamma = "+sdGamma);
                                    out.println("<br>");
                                    out.println("dAlpha = "+sdAlpha);
                                    out.println("<br>");
                                    out.println("dAIWeight = "+sdAIWeight);
                                    out.println("<br>");
                                    out.println("dTau = "+sdTau);
                                    out.println("<br>");
                                    out.println("dBPotential = "+sdBPotential);
                                    out.println("<br>");
                                    out.println("dC1 = "+sdC1);
                                    out.println("<br>");
                                    out.println("dC2 = "+sdC2);
                                    out.println("<br>");
                                    out.println("dS1 = "+sdS1);
                                    out.println("<br>");
                                    out.println("dS2 = "+sdS2);
                                    out.println("<br>");
                                    out.println("dTrainingPS = "+sdTrainingPS);
                                    out.println("<br>");
                                    out.println("dValidationPS = "+sdValidationPS);
                                    out.println("<br>");
                                    out.println("dTotalSize = "+sdTotalSize);
                                    out.println("<br>");
                                    out.println("nLastChange1 = "+snLastChange1);
                                    out.println("<br>");
                                    out.println("nLastChange2 = "+snLastChange2);
                                    out.println("<br>");
                                    out.println("dHoldOut = "+sdHoldOut);
                                    out.println("<br>");
                                    out.println("dCrossValidation = "+sdCrossValidation);
                                    out.println("<br>");
                                    out.println("dNormalRadio = "+dNormalRadio); 
                                    out.println("<br>");
                                    out.println("dOptimRadio = "+dOptimRadio); 
                                    out.println("<br>");
                                    out.println("dSCRadio = "+dSCRadio); 
                                    out.println("<br>");
                                    out.println("dPRadio = "+dPRadio); 
                                    out.println("<br>");
                                    out.println("dTORadio = "+dTORadio);
                                    out.println("<br>");
                                    out.println("sVariation = "+sVariation);
                                    out.println("<br>");
                                    out.println("sFileData = "+sFileData);
                                    out.println("<br>");
                                    out.println("dAttributes = "+dAttributes);
                                    out.println("<br>");
                                    out.println("dInstances = "+dInstances);
                                    out.println("<br>");
                                    out.println("sPFileData = "+sPFileData);
                                    out.println("<br>");
                                    out.println("dPAttributes = "+dPAttributes);
                                    out.println("<br>");
                                    out.println("dPInstances = "+dPInstances);

                                    out.println("Datatrain[nrow-1][ncol-1] = "+Datatrain[nrow-1][ncol-1]);
                                    */
                                    %>
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

                                            <jsp:param name="dNormalRadio" value="<%=dNormalRadio%>" />
                                            <jsp:param name="dOptimRadio" value="<%=dOptimRadio%>" />
                                            <jsp:param name="dSCRadio" value="<%=dSCRadio%>" />
                                            <jsp:param name="dPRadio" value="<%=dPRadio%>" />
                                            <jsp:param name="dTORadio" value="<%=dTORadio%>" />

                                            <jsp:param name="sVariation" value="<%=sVariation%>" />

                                            <jsp:param name="dAttributes" value="<%=dAttributes%>" />
                                            <jsp:param name="dInstances" value="<%=dInstances%>" />

                                            <jsp:param name="dPAttributes" value="<%=dPAttributes%>" />
                                            <jsp:param name="dPInstances" value="<%=dPInstances%>" />

                                            <jsp:param name="sFileData" value="<%=sFileData%>" />
                                            <jsp:param name="sPFileData" value="<%=sPFileData%>" />

                                            <jsp:param name="sReportFileName" value="<%=sReportFileName%>" />
                                            <jsp:param name="sReportFileNameTXT" value="<%=sReportFileNameTXT%>" />

                                            <jsp:param name="vpath" value="<%=vpath%>" />
                                            <jsp:param name="vfile" value="<%=vfile%>" />

                                            <jsp:param name="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                                            <jsp:param name="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                                            <jsp:param name="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                            <jsp:param name="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                                            <jsp:param name="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                                            <jsp:param name="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
                                    </jsp:include> 	

                                    <%-->
                                    <table>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td>
                                            </td>
                                        </tr>
                                    </table>

                                    <jsp:param name="Datatrain" value="<%=Datatrain%>" />
                                    <jsp:param name="Datapre" value="<%=Datapre%>" />

                                    <jsp:param name="sFileData" value="<%=sFileData%>" />
                                    <jsp:param name="sPFileData" value="<%=sPFileData%>" />

                                    <jsp:param name="Datatrain[nrow][ncol]" value="<%=Datatrain[nrow][ncol]%>" />
                                    <jsp:param name="Datapre[nrowP][ncolP]" value="<%=Datapre[nrowP][ncolP]%>" />

                                    <jsp:param name="Datatrain[][]" value="<%=Datatrain[][]%>" />
                                    <jsp:param name="Datapre[][]" value="<%=Datapre[][]%>" />
                                    <--%>
                                <% } %>
                            <% } %>
                        <% } else { %> 
                            <%--> End of sViewProceed + Click on button RUN <--%>
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
                                &nbsp;<input type="file" name="sResult01" id="sResult01"/>
                            </td>
                            <td colspan="2">
                                <input type="text" name="sResult01Name" id="sResult01Name" size="60" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" readonly/>
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
                                &nbsp;<input type="file" name="sResult02" id="sResult02"/>
                            </td>
                            <td colspan="2">
                                <input type="text" name="sResult02Name" id="sResult02Name" size="60" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" readonly/>
                                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                                <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                                <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
                            </td>
                            <td>&nbsp;</td>
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
                            var sfilefileResult03 = document.getElementById("sfilefileResult03");
                            </script>
                        <%
                        if (sResult03 != "") {
                            sfilefileResult03 = application.getRealPath("/") + sResult03;
                            sResult03Name=sfilefileResult03; 
                        }
                        else {
                            sfilefileResult03 = sResult03Name;
                        }
                        %>
                            <script>
                                var sResult03Name = document.getElementById("sResult03Name");
                                document.getElementById("sResult03Name").value = sResult03Name;
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
                        <input type="text" name="sResult03Name" id="sResult03Name" size="75" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" readonly/>
                        <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                        <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                        <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                        <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                        <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
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
                        if (sResult03Name != "") {
                        String file = ""; 
                        file = sResult03Name;
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
                        br.close(); 
                        } %>
                    </table>
                    <% } else { %>
                        <script> var sCreate = document.getElementById("sCreate"); 
                            sCreate = "";
                            document.getElementById("sCreate").value = sCreate; 
                        </script>
                            
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
                            &nbsp;<input type="file" name="sResult03" id="sResult03"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="sResult03Name" id="sResult03Name" size="60" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" readonly/>
                            <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                            <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                            <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                            <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                            <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
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
                            var sfilefileResult04 = document.getElementById("sfilefileResult04");
                        </script>
                        <%
                            if (sResult04 != "") {
                                sfilefileResult04 = application.getRealPath("/") + sResult04;
                                sResult04Name=sfilefileResult04; 
                            }
                            else {
                                sfilefileResult04 = sResult04Name;
                            }
                        %>
                        <script>
                            var sResult04Name = document.getElementById("sResult04Name");
                            document.getElementById("sResult04Name").value = sResult04Name;
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
                                <input type="text" name="sResult04Name" id="sResult04Name" size="75" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" readonly/>
                                <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                                <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                                <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
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
                            if (sResult04Name != "") {
                            String file = ""; 
                            file = sResult04Name;
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
                            } %>
                        </table>
                    <% } else { %>
                        <script> var sCreate = document.getElementById("sCreate"); 
                            sCreate = "";
                            document.getElementById("sCreate").value = sCreate; 
                        </script>
                            
                    <table><tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b> Summary: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="sResult04" id="sResult04"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="sResult04Name" id="sResult04Name" size="60" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" readonly/>
                            <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                            <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                            <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                            <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                            <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
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
                            var sfilefileResult05 = document.getElementById("sfilefileResult05");
                        </script>
                        <%
                            if (sResult05 != "") {
                                sfilefileResult05 = application.getRealPath("/") + sResult05;
                                sResult05Name=sfilefileResult05; 
                            }
                            else {
                                sfilefileResult05 = sResult05Name;
                            }
                        %>
                        <script>
                            var sResult05Name = document.getElementById("sResult05Name");
                            document.getElementById("sResult05Name").value = sResult05Name;
                        </script>
                        <%
                            /*
                            out.println("sReportFileName = " + sReportFileName);
                            out.println("<br>");
                            */
                        %>

                        <%
                        vpath = application.getRealPath("/");

                        vfile = sBaseFileNameCO;                  //+"01.txt";
                        if (vfile == "") {
                            vfile = "Result";
                        }
                        %>
                        <script> 
                            document.getElementById("vpath").value = vpath; 
                            document.getElementById("vfile").value = vfile; 
                        </script>
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
                                <input type="text" name="sResult05Name" id="sResult05Name" size="75" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(6);">
                                    <font color="blue" face="tahoma" size="2"> <u>performance</u> </font> </a> &nbsp; 
                                <% if (PRadio.equals("PRadio1")) {
                                    if (TORadio.equals("TORadio3")) { 
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp;
                                        <u>2</u> &nbsp; <u>3</u> &nbsp; <u>4</u> &nbsp; <u>5</u> &nbsp;
                                        <u>6</u> &nbsp; <u>7</u> &nbsp; <u>8</u> &nbsp; <u>9</u> &nbsp;
                                        <u>10</u> &nbsp; </font> <--%>
                                    <% } else {
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font> <--%>
                                    <% }
                                } 
                                else {
                                    %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font> <--%>
                                <% } %>
                                <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                                <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
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
                                <input type="text" name="sResult06Name" id="sResult06Name" size="75" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(5);">
                                    <font color="blue" face="tahoma" size="2"> <u>tracing path</u> </font> </a>
                                <% if (PRadio.equals("PRadio1")) {
                                    if (TORadio.equals("TORadio3")) { 
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
                                        <jsp:param name="dC1" value="<%=dC1%>" /> 
                                        <jsp:param name="dC2" value="<%=dC2%>" /> 
                                        <jsp:param name="dS1" value="<%=dS1%>" /> 
                                        <jsp:param name="dS2" value="<%=dS2%>" /> 

                                        <jsp:param name="vpath" value="<%=vpath%>" />
                                        <jsp:param name="vfile" value="<%=vfile%>" />
                                    </jsp:include> 	
                                </td>
                            </tr>
                        </table>
                    <% } else { %>
                        <script> var sCreate = document.getElementById("sCreate"); 
                            sCreate = "";
                            document.getElementById("sCreate").value = sCreate; 
                        </script>
                            
                    <table><tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b> Graphic: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="sResult05" id="sResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="sResult05Name" id="sResult05Name" size="60" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" readonly/>
                            <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                            <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                            <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                            <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
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
                            <input type="file" name="sResult06" id="sResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="sResult06Name" id="sResult06Name" size="60" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" readonly/>
                        </td>
                    </tr>
                    </table>
                    <% } %>
                <% } else if ((int)Double.parseDouble(sRunReportTable) == 5) { 
                    if (sRRTShow != "") { %> 
                        <script>
                            var sResult06Name = document.getElementById("sResult06Name");
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

                        <%
                        vpath = application.getRealPath("/");

                        vfile = sBaseFileNameCO;                  //+"01.txt";
                        if (vfile == "") {
                            vfile = "Result";
                        }
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
                                <input type="text" name="sResult05Name" id="sResult05Name" size="75" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(6);">
                                    <font color="blue" face="tahoma" size="2"> <u>performance</u> </font> </a> &nbsp; 
                                <% if (PRadio.equals("PRadio1")) {
                                    if (TORadio.equals("TORadio3")) { 
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp;
                                        <u>2</u> &nbsp; <u>3</u> &nbsp; <u>4</u> &nbsp; <u>5</u> &nbsp;
                                        <u>6</u> &nbsp; <u>7</u> &nbsp; <u>8</u> &nbsp; <u>9</u> &nbsp;
                                        <u>10</u> &nbsp; </font> <--%>
                                    <% } else {
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font> <--%>
                                    <% }
                                } 
                                else {
                                    %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font> <--%>
                                <% } %>
                                <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                                <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
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
                                <input type="text" name="sResult06Name" id="sResult06Name" size="75" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(5);">
                                    <font color="blue" face="tahoma" size="2"> <u>tracing path</u> </font> </a>
                                <% if (PRadio.equals("PRadio1")) {
                                    if (TORadio.equals("TORadio3")) { 
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
                                        <jsp:param name="dC1" value="<%=dC1%>" />
                                        <jsp:param name="dC2" value="<%=dC2%>" />
                                        <jsp:param name="dS1" value="<%=dS1%>" />
                                        <jsp:param name="dS2" value="<%=dS2%>" />

                                        <jsp:param name="vpath" value="<%=vpath%>" />
                                        <jsp:param name="vfile" value="<%=vfile%>" />
                                    </jsp:include> 	
                                </td>
                                
                            </tr>
                        </table>
                    <% } else { %>
                        <script> var sCreate = document.getElementById("sCreate"); 
                            sCreate = "";
                            document.getElementById("sCreate").value = sCreate; 
                        </script>
                            
                    <table><tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b> Graphic: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="sResult05" id="sResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="sResult05Name" id="sResult05Name" size="60" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" readonly/>
                            <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                            <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                            <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                            <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
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
                            <input type="file" name="sResult06" id="sResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="sResult06Name" id="sResult06Name" size="60" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" readonly/>
                        </td>
                    </tr>
                    </table>
                    <% } %>
                <% } else if ((int)Double.parseDouble(sRunReportTable) == 6) { 
                    if (sRRTShow != "") { %> 
                        <script>
                            var include = document.getElementById("sResult05Name");
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

                        <%
                        vpath = application.getRealPath("/");

                        vfile = sBaseFileNameCO;                  //+"01.txt";
                        if (vfile == "") {
                            vfile = "Result";
                        }
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
                                <input type="text" name="sResult05Name" id="sResult05Name" size="75" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(6);">
                                    <font color="blue" face="tahoma" size="2"> <u>performance</u> </font> </a> &nbsp; 
                                <% if (PRadio.equals("PRadio1")) {
                                    if (TORadio.equals("TORadio3")) { 
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp;
                                        <u>2</u> &nbsp; <u>3</u> &nbsp; <u>4</u> &nbsp; <u>5</u> &nbsp;
                                        <u>6</u> &nbsp; <u>7</u> &nbsp; <u>8</u> &nbsp; <u>9</u> &nbsp;
                                        <u>10</u> &nbsp; </font> <--%>
                                    <% } else {
                                        %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font> <--%>
                                    <% }
                                } 
                                else {
                                    %> <%--><font color="blue" face="tahoma" size="2"> <u>1</u> &nbsp; </font> <--%>
                                <% } %>
                                <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                                <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                                <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
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
                                <input type="text" name="sResult06Name" id="sResult06Name" size="75" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(5);">
                                    <font color="blue" face="tahoma" size="2"> <u>tracing path</u> </font> </a>
                                <% if (PRadio.equals("PRadio1")) {
                                    if (TORadio.equals("TORadio3")) { 
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
                                        <jsp:param name="dC1" value="<%=dC1%>" />
                                        <jsp:param name="dC2" value="<%=dC2%>" />
                                        <jsp:param name="dS1" value="<%=dS1%>" />
                                        <jsp:param name="dS2" value="<%=dS2%>" />

                                        <jsp:param name="vpath" value="<%=vpath%>" />
                                        <jsp:param name="vfile" value="<%=vfile%>" />
                                    </jsp:include> 	
                                </td>
                                
                            </tr>
                        </table>
                    <% } else { %>
                        <script> var sCreate = document.getElementById("sCreate"); 
                            sCreate = "";
                            document.getElementById("sCreate").value = sCreate; 
                        </script>
                            
                    <table><tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <b> Graphic: </b>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <input type="file" name="sResult05" id="sResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="sResult05Name" id="sResult05Name" size="60" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" readonly/>
                            <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                            <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                            <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                            <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
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
                            <input type="file" name="sResult06" id="sResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="sResult06Name" id="sResult06Name" size="60" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" readonly/>
                        </td>
                    </tr>
                    </table>
                    <% } %>
                <% } else if ((int)Double.parseDouble(sRunReportTable) == 35) { 
                    if (sRRTShow != "") { %> 
                        <p>
                        <%@page import="Fillo.*"%>
                        <%
                            if (sRRTShow != "") {  
                            %>
                                <script>
                                var sfilefile = document.getElementById("sfilefile");
                                </script>
                            <%
                            if (sReportFile != "") {
                                sfilefile = application.getRealPath("/") + sReportFile;
                                sReportFileName=sfilefile; 
                            }
                            else {
                                sfilefile = sReportFileName;
                            }
                            Fillo fillo = new Fillo();
            
                            %>
                            <script>
                                var sReportFileName = document.getElementById("sReportFileName");
                                document.getElementById("sReportFileName").value = sReportFileName;
                            </script>
                            <%
                            /*
                            out.println("<p>");
                            out.println("sReportFile = " + sReportFile);
                            out.println("sfilefile = " + sfilefile);
                            out.println("sReportFileName = " + sReportFileName);
                            out.println("<br>");
                            */
                
                            Connection connection = fillo.getConnection(sReportFileName);
                            String strQuery = "Select * from Performance";
                            Recordset recordset = connection.executeQuery(strQuery);
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
                                <input type="text" name="sReportFileName" id="sReportFileName" size="75" value="<%=sReportFileName%>" readonly/>
                                <input type="hidden" name="sReportFileNameTXT" id="sReportFileNameTXT" value="<%=sReportFileNameTXT%>" />
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
                                <th>RMSE Test</th>
                                <th>MAE Learning</th>
                                <th>MAE Test</th>
                                <th>MAPE Learning</th>
                                <th>MAPE Test</th>
                                <th>R Learning</th>
                                <th>R Test</th>
                            </tr>
                        <% while (recordset.next()) { %>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td align="right">
                                    <%=recordset.getField("RMSE_Learning")%>
                                </td>
                                <td align="right">
                                    <%=recordset.getField("RMSE_Test")%>
                                </td>
                                <td align="right">
                                    <%=recordset.getField("MAE_Learning")%>
                                </td>
                                <td align="right">
                                    <%=recordset.getField("MAE_Test")%>
                                </td>
                                <td align="right">
                                    <%=recordset.getField("MAPE_Learning")%>
                                </td>
                                <td align="right">
                                    <%=recordset.getField("MAPE_Test")%>
                                </td>
                                <td align="right">
                                    <%=recordset.getField("R_Learning")%>
                                </td>
                                <td align="right">
                                    <%=recordset.getField("R_Test")%>
                                </td>
                            </tr>
                        <% } %>
                        </table>
                        <%
                            recordset.close();
                            connection.close();
                            }
                        %>
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
                            &nbsp;<input type="file" name="sResult04" id="sResult04"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="sResult04Name" id="sResult04Name" size="60" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" readonly/>
                            <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                            <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                            <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                            <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                            <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
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
                <% } %>
                
                <BR>
                
                <h6 id="bottompage">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    &nbsp;. . . [END OF OUTPUT FORM] &nbsp;&nbsp;&nbsp;
                    <%--<a href="#top">
                        <img src="Icon-Top.png" alt="..." width="13" height="17">
                    </a>--%>
                </h6>
                <div class="scrollToTop">
                    <img src="arrowup.JPG" alt="..." width="18">  
                </div>
            </form>
        <% } else { %> 

            <BR>
                
            <h6 id="bottompage">
                <img src="Logo-Space.png" alt="     " width="4" height="5">
                &nbsp;. . . [END OF OUTPUT FORM] &nbsp;&nbsp;&nbsp;
            </h6>
                <%--<a href="#top">
                    <img src="Icon-Top.png" alt="..." width="13" height="17">
                </a>--%>
                <div class="scrollToTop">
                      <img src="arrowup.JPG" alt="..." width="18">  
                </div>
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

<%-->
<--%>