<%-- 
    Document   : ModuleLSSVR
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
    String VarSaveData = request.getParameter("VarSaveData");
    String VarLoadData = request.getParameter("VarLoadData");
    String VarReportData = request.getParameter("VarReportData");

    //String VarRun = request.getParameter("VarRun");

    String VarA = request.getParameter("VarA");
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

    String stResult01 = request.getParameter("stResult01");
    if (stResult01 == null) {
        stResult01 = "";
    }
    String stResult01Name = request.getParameter("stResult01Name");
    if (stResult01Name == null) {
        stResult01Name = "";
    }
    String stfilefileResult01 = request.getParameter("stfilefileResult01");
    if (stfilefileResult01 == null) {
        stfilefileResult01 = "";
    }

    String stResult02 = request.getParameter("stResult02");
    if (stResult02 == null) {
        stResult02 = "";
    }
    String stResult02Name = request.getParameter("stResult02Name");
    if (stResult02Name == null) {
        stResult02Name = "";
    }
    String stfilefileResult02 = request.getParameter("stfilefileResult02");
    if (stfilefileResult02 == null) {
        stfilefileResult02 = "";
    }

    String stResult03 = request.getParameter("stResult03");
    if (stResult03 == null) {
        stResult03 = "";
    }
    String stResult03Name = request.getParameter("stResult03Name");
    if (stResult03Name == null) {
        stResult03Name = "";
    }
    String stfilefileResult03 = request.getParameter("stfilefileResult03");
    if (stfilefileResult03 == null) {
        stfilefileResult03 = "";
    }

    String stResult04 = request.getParameter("stResult04");
    if (stResult04 == null) {
        stResult04 = "";
    }
    String stResult04Name = request.getParameter("stResult04Name");
    if (stResult04Name == null) {
        stResult04Name = "";
    }
    String stfilefileResult04 = request.getParameter("stfilefileResult04");
    if (stfilefileResult04 == null) {
        stfilefileResult04 = "";
    }

    String stResult05 = request.getParameter("stResult05");
    if (stResult05 == null) {
        stResult05 = "";
    }
    String stResult05Name = request.getParameter("stResult05Name");
    if (stResult05Name == null) {
        stResult05Name = "";
    }
    String stfilefileResult05 = request.getParameter("stfilefileResult05");
    if (stfilefileResult05 == null) {
        stfilefileResult05 = "";
    }

    String stResult06 = request.getParameter("stResult06");
    if (stResult06 == null) {
        stResult06 = "";
    }
    String stResult06Name = request.getParameter("stResult06Name");
    if (stResult06Name == null) {
        stResult06Name = "";
    }
    String stfilefileResult06 = request.getParameter("stfilefileResult06"); 
    if (stfilefileResult06 == null) {
        stfilefileResult06 = "";
    }

    String sViewProceed = request.getParameter("sViewProceed");
    if (sViewProceed == null) {
        sViewProceed = "";
    }

    String res = request.getParameter("res");
    if (res == null) {
        res = "";
    }

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

    String snValueC = request.getParameter("nValueC");
    String snValueS = request.getParameter("nValueS");
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

    int nrows1=(int)Double.parseDouble(snDFInstances); 
    int ncols1=(int)Double.parseDouble(snDFAttributes);
    String[][] Dataraw = new String[nrows1][ncols1];

    int nrows2=(int)Double.parseDouble(snTDFInstances);
    int ncols2=(int)Double.parseDouble(snTDFAttributes);
    String[][] Datatest = new String[nrows2][ncols2];

    int nrows3=(int)Double.parseDouble(snLDFInstances);
    int ncols3=(int)Double.parseDouble(snLDFAttributes);
    String[][] Datatrains = new String[nrows3][ncols3];

    int nrows4=(int)Double.parseDouble(snPDFInstances);
    int ncols4=(int)Double.parseDouble(snPDFAttributes);
    String[][] Datapres = new String[nrows4][ncols4];

    double nValueC;
    double nValueS;
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

    String NormalRadio = request.getParameter("NormalRadio");
    String PRadio = request.getParameter("PRadio");
    String TORadio = request.getParameter("TORadio");
    
    String sNormalRadio = "";
    String sPRadio = "";
    String sTORadio = "";

    double dNormalRadio=0;
    double dPRadio=0;
    double dTORadio=0;
    
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
    String sdAttributes = request.getParameter("sdAttributes");
    String sdInstances = request.getParameter("sdInstances");

    String sPFileData = request.getParameter("sPFileData");
    String sdPAttributes = request.getParameter("sdPAttributes");
    String sdPInstances = request.getParameter("sdPInstances");

    String sSpace = "";
    String sDummy = "";
    String sPDummy = "";
    
    String sVariation = "";
    
    String[] headers = null;
    String[] cols;
    
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
                
                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata3() {
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
                
                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata4() {
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
                
                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata5() {
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
                
                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function viewsummarydata6() {
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
                
                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;

                return valid;
            }

            function closesummarydata2() {
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

                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }
            
            function rundata2(val) {
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
                var stResult01 = document.getElementById("stResult01");
                var stResult02 = document.getElementById("stResult02");
                var stResult03 = document.getElementById("stResult03");
                var stResult04 = document.getElementById("stResult04");
                var stResult05 = document.getElementById("stResult05");
                var stResult06 = document.getElementById("stResult06");
                //var sReportFile = document.getElementById("sReportFile");
                //var sReportFileTXT = document.getElementById("sReportFileTXT");
                
                var stResult01Name = document.getElementById("stResult01Name");
                var stResult02Name = document.getElementById("stResult02Name");
                var stResult03Name = document.getElementById("stResult03Name");
                var stResult04Name = document.getElementById("stResult04Name");
                var stResult05Name = document.getElementById("stResult05Name");
                var stResult06Name = document.getElementById("stResult06Name");
                //var sReportFileName = document.getElementById("sReportFileName");
                //var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                
                var sViewProceed = document.getElementById("sViewProceed");
                sViewProceed = "";
                document.getElementById("sViewProceed").value = sViewProceed;

                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }

            function showsummaryreport(valData) {
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
                    var stResult01 = document.getElementById("stResult01").value;
                    if (stResult01!=="") {
                        var stResult01Name = document.getElementById("stResult01");
                    }
                    else {
                        var stResult01Name = document.getElementById("stResult01Name").value;
                        if (stResult01Name==="") {
                            document.getElementById("stResult01Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\TResult01.txt";
                        }
                    }
                    
                    var stResult02 = document.getElementById("stResult02").value;
                    if (stResult02!=="") {
                        var stResult02Name = document.getElementById("stResult02");
                    }
                    else {
                        //stResult02 = "Result02.txt";
                        //document.getElementById("stResult02").value = stResult02;
                        //var stResult02Name = document.getElementById("stResult02");
                        
                        var stResult02Name = document.getElementById("stResult02Name").value;
                        if (stResult02Name==="") {
                            document.getElementById("stResult02Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\TResult02.txt";
                        }
                    }
                    
                    var stResult03Name = document.getElementById("stResult03Name");
                    var stResult04Name = document.getElementById("stResult04Name");
                    var stResult05Name = document.getElementById("stResult05Name");
                    var stResult06Name = document.getElementById("stResult06Name");

                    /*
                    if (stResult01.value==="") {
                        if (stResult01Name.value==="") {
                            var stResult01Name="Result01.txt";
                        }
                    }
                    */
                    
                    /*
                    alert("Aha1 ...!");
                    if (stResult02!=="") {
                    }
                    else {
                        alert("Aha2 ...!");
                        if (stResult02Name!=="") {
                            alert("Aha3 ...!");
                        }
                        else {
                            alert("Aha4 ...!");
                            var stResult02 = document.getElementById("stResult02");
                            var stResult02Name = document.getElementById("stResult02Name");
                            stResult02="Result02.txt";
                            stResult02Name="Result02.txt"; 
                            document.getElementById("stResult02").value = stResult02;
                            document.getElementById("stResult02Name").value = stResult02Name;
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
                    var stResult01Name = document.getElementById("stResult01Name");
                    var stResult02Name = document.getElementById("stResult02Name");

                    var stResult03 = document.getElementById("stResult03").value;
                    if (stResult03!=="") {
                        var stResult03Name = document.getElementById("stResult03");
                    }
                    else {
                        var stResult03Name = document.getElementById("stResult03Name").value;
                        if (stResult03Name==="") {
                            document.getElementById("stResult03Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\TResult03.txt";
                        }
                    }
                    
                    var stResult04Name = document.getElementById("stResult04Name");
                    var stResult05Name = document.getElementById("stResult05Name");
                    var stResult06Name = document.getElementById("stResult06Name");
                }
                else if (valData===3) {
                    var stResult01Name = document.getElementById("stResult01Name");
                    var stResult02Name = document.getElementById("stResult02Name");
                    var stResult03Name = document.getElementById("stResult03Name");
                    
                    var stResult04 = document.getElementById("stResult04").value;
                    if (stResult04!=="") {
                        var stResult04Name = document.getElementById("stResult04");
                    }
                    else {
                        var stResult04Name = document.getElementById("stResult04Name").value;
                        if (stResult04Name==="") {
                            document.getElementById("stResult04Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\TResult04.txt";
                        }
                    }
                    var stResult05Name = document.getElementById("stResult05Name");
                    var stResult06Name = document.getElementById("stResult06Name");
                }
                else if (valData===4) { 
                    var stResult01Name = document.getElementById("stResult01Name");
                    var stResult02Name = document.getElementById("stResult02Name");
                    var stResult03Name = document.getElementById("stResult03Name");
                    var stResult04Name = document.getElementById("stResult04Name");

                    var stResult05 = document.getElementById("stResult05").value;
                    if (stResult05!=="") {
                        var stResult05Name = document.getElementById("stResult05");
                    }
                    else {
                        var stResult05Name = document.getElementById("stResult05Name").value;
                        if (stResult05Name==="") {
                            document.getElementById("stResult05Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\TResult05.txt";
                        }
                    }

                    var stResult06 = document.getElementById("stResult06").value;
                    if (stResult06!=="") {
                        var stResult06Name = document.getElementById("stResult06");
                    }
                    else {
                        var stResult06Name = document.getElementById("stResult06Name").value;
                        if (stResult06Name==="") {
                            document.getElementById("stResult06Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\TResult06.txt";
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
                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }

            function previousscreen() {
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarA = document.getElementById("VarA");
                document.getElementById("VarA").value = "One";
                
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                document.getElementById("sLoadingDataExcel").value = "";

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                document.getElementById("sLoadingDataFile").value = "";
                
                document.getElementById("myform2").action = "AllModulesBaseline.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }
            
            function createoutputfiles(val) {
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
                
                    var stResult01 = document.getElementById("stResult01").value;
                    if (stResult01!=="") {
                        var stResult01Name = document.getElementById("stResult01");
                    }
                    else {
                        var stResult01Name = document.getElementById("stResult01Name").value;
                        if (stResult01Name==="") {
                            document.getElementById("stResult01Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result01.txt";
                        }
                    }
                    
                    var stResult02 = document.getElementById("stResult02").value;
                    if (stResult02!=="") {
                        var stResult02Name = document.getElementById("stResult02");
                    }
                    else {
                        var stResult02Name = document.getElementById("stResult02Name").value;
                        if (stResult02Name==="") {
                            document.getElementById("stResult02Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\Result02.txt";
                        }
                    }
                    
                    var stResult03Name = document.getElementById("stResult03Name");
                    var stResult04Name = document.getElementById("stResult04Name");
                    var stResult05Name = document.getElementById("stResult05Name");
                    var stResult06Name = document.getElementById("stResult06Name");
                
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
                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
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
                        sTORadio = "Use data file";
                        iRadio=1;
                    }
                    else if (TORadio.equals("TORadio4")) {
                        sTORadio = "Use test data file";
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
            %>

            <table>
                <tr>
                    <td>
                        <h2>LSSVR:</h2>
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
                String filename = "Data_LSSVR.txt";
                String file = application.getRealPath("/") + filename;
                BufferedReader br = new BufferedReader(new FileReader(file));
                String line = null;
                int j;
            %>

            <table>
                <tr>
                    <td>
                        <h2>LSSVR:</h2>
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
                        + "Data_LSSVR.xls");

                int iRadio = 0;

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
            %>

            <form>
                <h2>
                    LSSVR Data:
                </h2>

                <table>
                    <tr>
                        <th>No.</th>
                        <th>Description</th>
                        <th>Variable</th>
                        <th>Value</th>
                        <th>Remark</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Value of C</td>
                        <td>nValueC</td>
                        <td><%=nValueC%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Value of Sigma</td>
                        <td>nValueS</td>
                        <td><%=nValueS%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Hold-Out (%)</td>
                        <td>dHoldOut</td>
                        <td><%=dHoldOut%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Cross-Validation (%)</td>
                        <td>dCrossValidation</td>
                        <td><%=dCrossValidation%></td>
                        <td>-</td>
                    </tr>
                    
                    <%
                    sNormalRadio = "...";
                    if (NormalRadio.equals("NormalRadio1")) {
                        sNormalRadio = "Original value";
                        iRadio = 1;
                    }
                    else if (NormalRadio.equals("NormalRadio2")) {
                        sNormalRadio = "Feature scaling";
                        iRadio = 2;
                    }
                    %>
                    
                    <tr>
                        <td>5</td>
                        <td>Normalization Method</td>
                        <td>sNormalRadio</td>
                        <td><%=iRadio%></td>
                        <td><%=sNormalRadio%></td>
                    </tr>
                    
                    <%
                    sPRadio = "...";
                    if (PRadio.equals("PRadio1")) {
                        sPRadio = "Evaluation";
                        iRadio = 1;
                    }
                    else if (PRadio.equals("PRadio2")) {
                        sPRadio = "Prediction";
                        iRadio = 2;
                    }
                    %>
                    
                    <tr>
                        <td>6</td>
                        <td>Purpose</td>
                        <td>sPRadio</td>
                        <td><%=iRadio%></td>
                        <td><%=sPRadio%></td>
                    </tr>

                    <%
                    sTORadio = "...";
                    if (TORadio.equals("TORadio1")) {
                        sTORadio = "Use data file";
                        iRadio = 1;
                    }
                    else if (PRadio.equals("TORadio4")) {
                        sTORadio = "Use test data file";
                        iRadio = 4;
                    }
                    else if (PRadio.equals("TORadio2")) {
                        sTORadio = "Hold-out";
                        iRadio = 2;
                    }
                    else if (PRadio.equals("TORadio3")) {
                        sTORadio = "Cross-validation";
                        iRadio = 3;
                    }
                    %>

                    <tr>
                        <td>7</td>
                        <td>Test Option</td>
                        <td>sTORadio</td>
                        <td><%=iRadio%></td>
                        <td><%=sTORadio%></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Data File</td>
                        <td>sDataFile</td>
                        <td><%=sFileName%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>No. of Attributes</td>
                        <td>nDFAttributes</td>
                        <td><%=nDFAttributes%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>No. of Instances</td>
                        <td>nDFInstances</td>
                        <td><%=nDFInstances%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>Test Data File</td>
                        <td>sTestDataFile</td>
                        <td><%=sTestFileName%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>No. of Attributes</td>
                        <td>nTDFAttributes</td>
                        <td><%=nTDFAttributes%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>No. of Instances</td>
                        <td>nTDFInstances</td>
                        <td><%=nTDFInstances%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td>Learning Data File</td>
                        <td>sLearningDataFile</td>
                        <td><%=sLearningFileName%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td>No. of Attributes</td>
                        <td>nLDFAttributes</td>
                        <td><%=nLDFAttributes%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>16</td>
                        <td>No. of Instances</td>
                        <td>nLDFInstances</td>
                        <td><%=nLDFInstances%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>17</td>
                        <td>Prediction Data File</td>
                        <td>sPredictionDataFile</td>
                        <td><%=sPredictionFileName%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>18</td>
                        <td>No. of Attributes</td>
                        <td>nPDFAttributes</td>
                        <td><%=nPDFAttributes%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>19</td>
                        <td>No. of Instances</td>
                        <td>nPDFInstances</td>
                        <td><%=nPDFInstances%></td>
                        <td>-</td>
                    </tr>
                </table>
            </form>
                        
        <% } else if (VarNext != null) { %>
            <%@include file="navmenu.jsp" %>

            <form action="ModuleLSSVR.jsp" name="myform2" id="myform2">
                <%
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
                %>
                
                <input type="hidden" name="VarA" id="VarA" value="<%=VarA%>"/> 
                <input type="hidden" name="sLoadingDataFile" id="sLoadingDataFile" value="<%=sLoadingDataFile%>"/>

                <input type="hidden" name="VarNext" id="VarNext" value="<%=VarNext%>"/>
                <input type="hidden" name="sRunReportTable" id="sRunReportTable" value="<%=sRunReportTable%>"/>
                <input type="hidden" name="sRRTShow" id="sRRTShow" value="<%=sRRTShow%>"/>
                <input type="hidden" name="sViewProceed" id="sViewProceed" value="<%=sViewProceed%>"/>
                
                <input type="hidden" name="nValueC" id="nValueC" value="<%=nValueC%>"/>
                <input type="hidden" name="nValueS" id="nValueS" value="<%=nValueS%>"/>
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
                                <b>Least Squares Support Vector Regression (LSSVR)</b>
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

                            <a onclick="return previousscreen();" style="float:left;">
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
                            <%-->
                            <input type="submit" name="VarGraph" value="GRAPHIC" onclick="return rundata2(4);" />
                            
                            <input type="submit" name="VarTable" value="CONVERGENCE" onclick="return loadingdataform();" />
                            <input type="submit" name="VarGraph" value="TRAJECTORY" />
                            <input type="submit" name="VarSeries" value="TIME SERIES" />
                            <--%>
                        </td>
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
                        
                <% //#1 displaying input data: 
                if (sLoadingDataExcelClick != "") { 
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
                            1.
                        </td>
                        <td>
                            Hyperparameters:
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <%
                            nf.setMaximumFractionDigits(2);
                            nf.setMinimumFractionDigits(2);
                            %>
                            Value of C = <%=nf.format(nValueC)%>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <%
                            nf.setMaximumFractionDigits(2);
                            nf.setMinimumFractionDigits(2);
                            %>
                            Value of Sigma = <%=nf.format(nValueS)%>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            2.
                        </td>
                        <td>
                            Analysis Option:
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <%
                            nf.setMaximumFractionDigits(2);
                            nf.setMinimumFractionDigits(2);
                            %>
                            Hold-out = <%=nf.format(dHoldOut)%> (%)
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <%
                            nf.setMaximumFractionDigits(2);
                            nf.setMinimumFractionDigits(2);
                            %>
                             Cross-validation = <%=nf.format(dCrossValidation)%> (folds)
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            3.
                        </td>
                        <td>
                            Normalization Method:
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
                        <td>&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            4.
                        </td>
                        <td>
                            Purpose:
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            5.
                        </td>
                        <td>
                            Test Option:
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <%
                            sTORadio = "...";
                            nf.setMaximumFractionDigits(0);
                            nf.setMinimumFractionDigits(0);
                            if (TORadio.equals("TORadio1")) {
                                sTORadio = "Use data file";
                                if (PRadio.equals("PRadio1")) {
                                    sDummy = "Data File : ";
                                    sFileData = sFileName;
                                    dAttributes = snDFAttributes; 
                                    dInstances = snDFInstances; 
                                    sVariation = "1";
                                }
                                else if (PRadio.equals("PRadio2")) {
                                    sTORadio = "-";
                                }
                            }
                            else if (TORadio.equals("TORadio2")) {
                                sTORadio = "Hold-out "+nf.format(dHoldOut)+" (%)";
                                if (PRadio.equals("PRadio1")) {
                                    sDummy = "Data File : ";
                                    sFileData = sFileName;
                                    dAttributes = snDFAttributes;
                                    dInstances = snDFInstances;
                                    sVariation = "2";
                                }
                                else if (PRadio.equals("PRadio2")) {
                                    sTORadio = "-";
                                }
                            }
                            else if (TORadio.equals("TORadio3")) {
                                sTORadio = "Cross-validation "+nf.format(dCrossValidation)+" (folds)";
                                if (PRadio.equals("PRadio1")) {
                                    sDummy = "Data File : ";
                                    sFileData = sFileName;
                                    dAttributes = snDFAttributes;
                                    dInstances = snDFInstances;
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
                            %>
                            <%=sTORadio%>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                             <b> Run variation # <%=sVariation%> </b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>

                <table>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
                } else if (sLoadingDataExcelClick4 != "") { 
                %>
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
                        if (sLearningFileName != "") { 
                            String file = application.getRealPath("/") + sLearningFileName;
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
                            br.close();
                            %>
                            
                            <td align="center">
                                No.
                            </td>
                            <% for (j = 0; j < ncols3; j += 1) { %>
                                <td align="center">
                                    <%=headers[j]%>
                                </td>
                            <% } %>
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
                if (sFileData != "") {
                    /**/
                    String filename = sFileData;
                    String file = application.getRealPath("/") + filename;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    int j = 0;
                    int i = 0;
                    /**/
                    
                    /**/
                    out.println("<p>");
                    out.println(sFileData);
                    out.println("dAttributes = " + dAttributes);
                    out.println("dInstances = " + dInstances);
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
                            
                            // //if (j == 1 || j == dInstances) { 
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
                                // //out.println("<p>");
                                // //out.println(cols[0]);
                                // //out.println(cols[1]);
                                // //out.println(cols[2]);
                                // //out.println(cols[3]);
                                // //out.println(cols[4]);
                                // //out.println(cols[5]);
                                // //out.println(cols[6]);
                                // //out.println(cols[7]);
                                // //out.println(cols[8]);
                                // //out.println("<br>");
                            // //}
                            line = br.readLine();
                        }
                    }
                    /**/
                    br.close(); 
                } 

                if (sPFileData != "") {
                    String filename = sPFileData;
                    String file = application.getRealPath("/") + filename;
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String line = null;
                    int j = 0;
                    int i = 0;
                
                    /**/
                    out.println("<p>");
                    out.println(sPFileData);
                    out.println("dPAttributes = " + dPAttributes);
                    out.println("dPInstances = " + dPInstances);
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
                        stResult01Name = application.getRealPath("/") + sBaseFileName +"01.txt";
                        stResult02Name = application.getRealPath("/") + sBaseFileName +"02.txt";
                        stResult03Name = application.getRealPath("/") + sBaseFileName +"03.txt";
                        stResult04Name = application.getRealPath("/") + sBaseFileName +"04.txt";
                        stResult05Name = application.getRealPath("/") + sBaseFileName +"05.txt";
                        stResult06Name = application.getRealPath("/") + sBaseFileName +"06.txt";
                        %>
                        <script>
                            document.getElementById("stResult01Name").value = stResult01Name;
                            document.getElementById("stResult02Name").value = stResult02Name;
                            document.getElementById("stResult03Name").value = stResult03Name;
                            document.getElementById("stResult04Name").value = stResult04Name;
                            document.getElementById("stResult05Name").value = stResult05Name;
                            document.getElementById("stResult06Name").value = stResult06Name;
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
                                    <input type="text" name="stResult01Name" id="stResult01Name" size="75" value="<%=stResult01Name%>" readonly/>
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                    <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                                    <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
                                    <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%=stResult05Name%>" />
                                    <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%=stResult06Name%>" />
                                    <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                    </td>
                                </tr> 
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td colspan="4">
                                    <input type="text" name="stResult02Name" id="stResult02Name" size="75" value="<%=stResult02Name%>" readonly/> 
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... validation. </font>
                                    </td>
                                </tr>
                                <% if (stResult05Name != "") { %>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="4">
                                        <input type="text" name="stResult05Name" id="stResult05Name" size="75" value="<%=stResult05Name%>" readonly/> 
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
                                out.println("stResult01Name = " + stResult01Name);
                                out.println("<br>");
                                out.println("stResult03Name = " + stResult03Name);
                                out.println("<br>");
                                out.println("stResult04Name = " + stResult04Name);
                                out.println("<br>");
                                out.println("stResult05Name = " + stResult05Name);
                                out.println("<br>");
                                */

                                String file = ""; 
                                file = stResult01Name;
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
                                file = stResult02Name;
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

                            <% if (stResult05Name != "") { %>
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
                                        file = stResult05Name;
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
                                var stfilefileResult01 = document.getElementById("stfilefileResult01"); 
                                var stfilefileResult02 = document.getElementById("stfilefileResult02"); 
                            </script>

                            <% if (stResult01 != "") { 
                                stfilefileResult01 = application.getRealPath("/") + stResult01;
                                stResult01Name=stfilefileResult01; 
                            }
                            else {
                                stfilefileResult01 = stResult01Name;
                            } %>

                            <script>
                                var stResult01Name = document.getElementById("stResult01Name");
                                document.getElementById("stResult01Name").value = stResult01Name;
                            </script>

                            <% if (stResult02 != "") {
                                stfilefileResult02 = application.getRealPath("/") + stResult02;
                                stResult02Name=stfilefileResult02; 
                            }
                            else {
                                stfilefileResult02 = stResult02Name;
                            } %>

                            <script>
                                var stResult02Name = document.getElementById("stResult02Name");
                                document.getElementById("stResult02Name").value = stResult02Name;
                            </script>

                            <script>
                                var stResult03Name = document.getElementById("stResult03Name");
                                var stResult04Name = document.getElementById("stResult04Name"); 
                                var stResult05Name = document.getElementById("stResult05Name"); 
                                var stResult06Name = document.getElementById("stResult06Name"); 
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
                                    <input type="text" name="stResult01Name" id="stResult01Name" size="75" value="<%=stResult01Name%>" readonly/>
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                    <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                                    <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
                                    <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%=stResult05Name%>" />
                                    <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%=stResult06Name%>" />
                                    </td>
                                </tr> 
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td colspan="4">
                                    <input type="text" name="stResult02Name" id="stResult02Name" size="75" value="<%=stResult02Name%>" readonly/> 
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... validation. </font>
                                    </td>
                                </tr>
                                <% if (stResult05Name != "") { %>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="4">
                                        <input type="text" name="stResult05Name" id="stResult05Name" size="75" value="<%=stResult05Name%>" readonly/> 
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
                                file = stResult01Name;
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
                                file = stResult02Name;
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
                            <% if (stResult05Name != "") { %>
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
                                        file = stResult05Name;
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
                                &nbsp;<input type="file" name="stResult01" id="stResult01"/>
                            </td>
                            <td colspan="2">
                                <input type="text" name="stResult01Name" id="stResult01Name" size="60" value="<%=stResult01Name%>" readonly/>
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
                                &nbsp;<input type="file" name="stResult02" id="stResult02"/>
                            </td>
                            <td colspan="2">
                                <input type="text" name="stResult02Name" id="stResult02Name" size="60" value="<%=stResult02Name%>" readonly/>
                                <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                                <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
                                <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%=stResult05Name%>" />
                                <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%=stResult06Name%>" />
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
                            var stfilefileResult03 = document.getElementById("stfilefileResult03");
                            </script>
                        <%
                        if (stResult03 != "") {
                            stfilefileResult03 = application.getRealPath("/") + stResult03;
                            stResult03Name=stfilefileResult03; 
                        }
                        else {
                            stfilefileResult03 = stResult03Name;
                        }
                        %>
                            <script>
                                var stResult03Name = document.getElementById("stResult03Name");
                                document.getElementById("stResult03Name").value = stResult03Name;
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
                        <input type="text" name="stResult03Name" id="stResult03Name" size="75" value="<%=stResult03Name%>" readonly/>
                        <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                        <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                        <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
                        <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%=stResult05Name%>" />
                        <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%=stResult06Name%>" />
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
                        file = stResult03Name;
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
                            &nbsp;<input type="file" name="stResult03" id="stResult03"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="stResult03Name" id="stResult03Name" size="60" value="<%=stResult03Name%>" readonly/>
                            <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                            <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                            <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
                            <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%=stResult05Name%>" />
                            <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%=stResult06Name%>" />
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
                            var stfilefileResult04 = document.getElementById("stfilefileResult04");
                        </script>
                        <%
                            if (stResult04 != "") {
                                stfilefileResult04 = application.getRealPath("/") + stResult04;
                                stResult04Name=stfilefileResult04; 
                            }
                            else {
                                stfilefileResult04 = stResult04Name;
                            }
                        %>
                        <script>
                            var stResult04Name = document.getElementById("stResult04Name");
                            document.getElementById("stResult04Name").value = stResult04Name;
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
                                <input type="text" name="stResult04Name" id="stResult04Name" size="75" value="<%=stResult04Name%>" readonly/>
                                <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                                <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                                <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                                <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%=stResult05Name%>" />
                                <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%=stResult06Name%>" />
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
                            file = stResult04Name;
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
                            <input type="file" name="stResult04" id="stResult04"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="stResult04Name" id="stResult04Name" size="60" value="<%=stResult04Name%>" readonly/>
                            <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                            <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                            <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                            <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%=stResult05Name%>" />
                            <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%=stResult06Name%>" />
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
                            var stfilefileResult05 = document.getElementById("stfilefileResult05");
                        </script>
                        <%
                            if (stResult05 != "") {
                                stfilefileResult05 = application.getRealPath("/") + stResult05;
                                stResult05Name=stfilefileResult05; 
                            }
                            else {
                                stfilefileResult05 = stResult05Name;
                            }
                        %>
                        <script>
                            var stResult05Name = document.getElementById("stResult05Name");
                            document.getElementById("stResult05Name").value = stResult05Name;
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
                                <input type="text" name="stResult05Name" id="stResult05Name" size="75" value="<%=stResult05Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(6);">
                                    <font color="blue" face="tahoma" size="2"> <u>performance</u> </font> </a> &nbsp; 
                                <% if (PRadio.equals("PRadio1")) {
                                    if (TORadio.equals("TORadio3")) { 
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
                                <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                                <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                                <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                                <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
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
                                <input type="text" name="stResult06Name" id="stResult06Name" size="75" value="<%=stResult06Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ... tracing path : </font>
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
                            <input type="file" name="stResult05" id="stResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="stResult05Name" id="stResult05Name" size="60" value="<%=stResult05Name%>" readonly/>
                            <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                            <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                            <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                            <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
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
                            <input type="file" name="stResult06" id="stResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="stResult06Name" id="stResult06Name" size="60" value="<%=stResult06Name%>" readonly/>
                        </td>
                    </tr>
                    </table>
                    <% } %>
                <% } else if ((int)Double.parseDouble(sRunReportTable) == 5) {
                    if (sRRTShow != "") { %> 
                        <script>
                            var stfilefileResult05 = document.getElementById("stfilefileResult05");
                        </script>
                        <%
                            if (stResult05 != "") {
                                stfilefileResult05 = application.getRealPath("/") + stResult05;
                                stResult05Name=stfilefileResult05; 
                            }
                            else {
                                stfilefileResult05 = stResult05Name;
                            }
                        %>
                        <script>
                            var stResult05Name = document.getElementById("stResult05Name");
                            document.getElementById("stResult05Name").value = stResult05Name;
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
                                <input type="text" name="stResult05Name" id="stResult05Name" size="75" value="<%=stResult05Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(6);">
                                    <font color="blue" face="tahoma" size="2"> <u>performance</u> </font> </a> &nbsp; 
                                <% if (PRadio.equals("PRadio1")) {
                                    if (TORadio.equals("TORadio3")) { 
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
                                <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                                <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                                <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                                <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
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
                                <input type="text" name="stResult06Name" id="stResult06Name" size="75" value="<%=stResult06Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ... tracing path : </font>
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
                            <input type="file" name="stResult05" id="stResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="stResult05Name" id="stResult05Name" size="60" value="<%=stResult05Name%>" readonly/>
                            <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                            <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                            <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                            <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
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
                            <input type="file" name="stResult06" id="stResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="stResult06Name" id="stResult06Name" size="60" value="<%=stResult06Name%>" readonly/>
                        </td>
                    </tr>
                    </table>
                    <% } %>
                <% } else if ((int)Double.parseDouble(sRunReportTable) == 6) {
                    if (sRRTShow != "") { %> 
                        <script>
                            var stfilefileResult05 = document.getElementById("stfilefileResult05");
                        </script>
                        <%
                            if (stResult05 != "") {
                                stfilefileResult05 = application.getRealPath("/") + stResult05;
                                stResult05Name=stfilefileResult05; 
                            }
                            else {
                                stfilefileResult05 = stResult05Name;
                            }
                        %>
                        <script>
                            var stResult05Name = document.getElementById("stResult05Name");
                            document.getElementById("stResult05Name").value = stResult05Name;
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
                                <input type="text" name="stResult05Name" id="stResult05Name" size="75" value="<%=stResult05Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ...</font> 
                                <a onclick="return showsummaryreport(6);">
                                    <font color="blue" face="tahoma" size="2"> <u>performance</u> </font> </a> &nbsp; 
                                <% if (PRadio.equals("PRadio1")) {
                                    if (TORadio.equals("TORadio3")) { 
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
                                <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                                <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                                <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                                <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
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
                                <input type="text" name="stResult06Name" id="stResult06Name" size="75" value="<%=stResult06Name%>" readonly/>
                                <font color="teal" face="tahoma" size="2"> &nbsp; ... tracing path : </font>
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
                            <input type="file" name="stResult05" id="stResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="stResult05Name" id="stResult05Name" size="60" value="<%=stResult05Name%>" readonly/>
                            <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%=stResult01Name%>" />
                            <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%=stResult02Name%>" />
                            <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%=stResult03Name%>" />
                            <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%=stResult04Name%>" />
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
                            <input type="file" name="stResult06" id="stResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="stResult06Name" id="stResult06Name" size="60" value="<%=stResult06Name%>" readonly/>
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
