<%-- 
    Document   : ModuleSFALSSVR
    Created on : Sep 20, 2015, 4:15:27 PM
    Author     : JDK
--%>

<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
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

    String VarOne = request.getParameter("VarOne");
    String VarNext = request.getParameter("VarNext");

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
        sopt = "2";
    }
    opt=(int)Double.parseDouble(sopt); 
    
    int GraphNo;
    String sGraphNo = request.getParameter("sGraphNo");
    if (sGraphNo == null) {
        sGraphNo = "31";
    }
    GraphNo=(int)Double.parseDouble(sGraphNo); 
    
    String sPageControl = request.getParameter("sPageControl"); 
    if (sPageControl == null) {
        sPageControl = "1";
    }

    String sBaseFileName = request.getParameter("sBaseFileName");
    if (sBaseFileName == null) {
        sBaseFileName = "";
    }

    String vpath = request.getParameter("vpath"); 
    if (vpath == null) {
        vpath = "";
    }
        String vfile = request.getParameter("vfile"); 
        if (vfile == null) {
            vfile = "";
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

    String snFireFlies = request.getParameter("nFireFlies");
    String snMaxGeneration = request.getParameter("nMaxGeneration");
    int nGeneration=(int)Double.parseDouble(snMaxGeneration);          
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

    String sValueC = "";
    String sValueS = ""; 

    String sDataFile = request.getParameter("sDataFile");
    String sTestDataFile = request.getParameter("sTestDataFile");
    String sLearningDataFile = request.getParameter("sLearningDataFile"); 
    String sPredictionDataFile = request.getParameter("sPredictionDataFile"); 

    String sFileName = request.getParameter("sFileName");
    String sTestFileName = request.getParameter("sTestFileName"); 
    String sLearningFileName = request.getParameter("sLearningFileName"); 
    String sPredictionFileName = request.getParameter("sPredictionFileName"); 
                
    String sFileData = request.getParameter("sFileData"); 
    String sdAttributes = request.getParameter("sdAttributes");
    String sdInstances = request.getParameter("sdInstances"); 

    String sPFileData = request.getParameter("sPFileData"); 
    String sdPAttributes = request.getParameter("sdPAttributes"); 
    String sdPInstances = request.getParameter("sdPInstances"); 

    String dAttributes=""; 
    String dInstances="";
    String dPAttributes=""; 
    String dPInstances="";

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
        <title>NiMOPS: SFA-LSSVR</title>
        
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
                var sResult01Name = document.getElementById("sResult01Name");
                var sResult02Name = document.getElementById("sResult02Name");
                var sResult03Name = document.getElementById("sResult03Name");
                var sResult04Name = document.getElementById("sResult04Name");
                var sResult04aName = document.getElementById("sResult04aName");
                var sResult04bName = document.getElementById("sResult04bName");
                var sResult04cName = document.getElementById("sResult04cName");
                var sResult04dName = document.getElementById("sResult04dName");
                var sResult05Name = document.getElementById("sResult05Name");
                var sResult06Name = document.getElementById("sResult06Name");
                
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
                if (TORadio.value === "TORadio4") {
                    document.getElementById("hiddendatafile").value = "1";
                } else {
                    document.getElementById("hiddendatafile").value = "0";
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarOne = document.getElementById("VarOne");
                document.getElementById("VarOne").value = "One";
                
                document.getElementById("myform2").action = "SFALSSVR.jsp";
                document.getElementById("myform2").submit();
                                
                return valid;
            }
            
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarNext = document.getElementById("VarNext");
                
                var sResult01Name = document.getElementById("sResult01Name");
                var sResult02Name = document.getElementById("sResult02Name");
                var sResult03Name = document.getElementById("sResult03Name");
                var sResult04Name = document.getElementById("sResult04Name");
                var sResult04aName = document.getElementById("sResult04aName");
                var sResult04bName = document.getElementById("sResult04bName");
                var sResult04cName = document.getElementById("sResult04cName");
                var sResult04dName = document.getElementById("sResult04dName");
                var sResult05Name = document.getElementById("sResult05Name");
                var sResult06Name = document.getElementById("sResult06Name");

                document.getElementById("myform2").action = "ModuleSFALSSVR.jsp";
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
                document.getElementById("sGraphNo").value = val;
                if (val===31 || val===32 || val===33 || val===34 || val===35) {
                    document.getElementById("sopt").value = 2;
                } else if (val===41 || val===42 || val===43 || val===44 || val===45) {
                    document.getElementById("sopt").value = 0;
                } else if (val===46 || val===47 || val===48 || val===49 || val===410) {
                    document.getElementById("sopt").value = 0;
                } else if (val===51 || val===52 || val===53 || val===54 || val===55) {
                    document.getElementById("sopt").value = 1;
                } else if (val===56 || val===57 || val===58 || val===59 || val===510) {
                    document.getElementById("sopt").value = 1;
                } else {
                    document.getElementById("sopt").value = 2;
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
                if (document.getElementById("PRadio").value === "PRadio2")
                {
                    savemodelaction = "SaveSFALSSVRPreModel.jsp";
                }
                
                document.getElementById("myform2").action = savemodelaction;
                document.getElementById("myform2").method = "POST";
                document.getElementById("myform2").submit();
                
                return valid;
            }
            
            function saveresult() {
                var valid = true;
                var saveaction;
                if (document.getElementById("MenuMO").className === "active")
                {
                    saveaction = "SaveSFALSSVRResultMO.jsp";
                }
                else if (document.getElementById("MenuPO").className === "active")
                {
                    saveaction = "SaveSFALSSVRResultPO.jsp";
                }
                else if (document.getElementById("MenuPTD").className === "active")
                {
                    saveaction = "SaveSFALSSVRResultPTD.jsp";
                }
                else if (document.getElementById("MenuTPD").className === "active")
                {
                    saveaction = "SaveSFALSSVRResultTPD.jsp";
                }
                else
                {
                    valid = false;
                }
                
                document.getElementById("myform2").action = saveaction;
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

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;

        <% if (VarSaveData != null) { %>            
        <% } else if (VarLoadData != null) { %>             
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
                        sSCRadio = "consecutive rates of change in OF values is reached";
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
                        sTORadio = "Use learning dataset";
                    }
                    else if (TORadio.equals("TORadio4")) {
                        sTORadio = "Use test dataset";
                    }
                    else if (TORadio.equals("TORadio2")) {
                        sTORadio = "Hold-out";
                    }
                    else if (TORadio.equals("TORadio3")) {
                        sTORadio = "Cross-validation";
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
                
                if (PRadio.equals("PRadio1")) {
                    dHoldOut = Float.parseFloat(sdHoldOut);
                    dCrossValidation = Float.parseFloat(sdCrossValidation);
                } else {
                    dHoldOut = 20.0;
                    dCrossValidation = 10;
                }
                
                nDFAttributes = Float.parseFloat(snDFAttributes);
                nDFInstances = Float.parseFloat(snDFInstances);
                nTDFAttributes = Float.parseFloat(snTDFAttributes);
                nTDFInstances = Float.parseFloat(snTDFInstances);
                nLDFAttributes = Float.parseFloat(snLDFAttributes);
                nLDFInstances = Float.parseFloat(snLDFInstances);
                nPDFAttributes = Float.parseFloat(snPDFAttributes);
                nPDFInstances = Float.parseFloat(snPDFInstances);
                /**/
                %>
                
                <input type="hidden" name="VarOne" id="VarOne" value="<%=VarOne%>"/>
                <input type="hidden" name="VarNext" id="VarNext" value="<%=VarNext%>"/>
                
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
                <input type="hidden" name="hiddendatafile" id="hiddendatafile" value=""/>

                <input type="hidden" name="sDataFile" id="sDataFile" value="<%if (sDataFile != null) {%><%=sDataFile%><%}%>"/>
                <input type="hidden" name="sTestDataFile" id="sTestDataFile" value="<%if (sTestDataFile != null) {%><%=sTestDataFile%><%}%>"/>
                <input type="hidden" name="sLearningDataFile" id="sLearningDataFile" value="<%if (sLearningDataFile != null) {%><%=sLearningDataFile%><%}%>"/>
                <input type="hidden" name="sPredictionDataFile" id="sPredictionDataFile" value="<%if (sPredictionDataFile != null) {%><%=sPredictionDataFile%><%}%>"/>

                <input type="hidden" name="sFileName" id="sFileName" value="<%=sFileName%>"/>
                <input type="hidden" name="sTestFileName" id="sTestFileName" value="<%=sTestFileName%>"/>
                <input type="hidden" name="sLearningFileName" id="sLearningFileName" value="<%=sLearningFileName%>"/>
                <input type="hidden" name="sPredictionFileName" id="sPredictionFileName" value="<%=sPredictionFileName%>"/>

                <input type="hidden" name="sFileData" id="sFileData" value="<%=sFileData%>"/>
                <input type="hidden" name="sdAttributes" id="sdAttributes" value="<%=sdAttributes%>"/>
                <input type="hidden" name="sdInstances" id="sdInstances" value="<%=sdInstances%>"/>

                <input type="hidden" name="sPFileData" id="sPFileData" value="<%=sPFileData%>"/>
                <input type="hidden" name="sdPAttributes" id="sdPAttributes" value="<%=sdPAttributes%>"/>
                <input type="hidden" name="sdPInstances" id="sdPInstances" value="<%=sdPInstances%>"/>

                <input type="hidden" name="sLoadingDataSet1" id="sLoadingDataSet1" value="<%=sLoadingDataSet1%>"/>
                <input type="hidden" name="sLoadingDataSet2" id="sLoadingDataSet2" value="<%=sLoadingDataSet2%>"/>
                <input type="hidden" name="sLoadingDataSet3" id="sLoadingDataSet3" value="<%=sLoadingDataSet3%>"/>
                <input type="hidden" name="sLoadingDataSet4" id="sLoadingDataSet4" value="<%=sLoadingDataSet4%>"/>
                <input type="hidden" name="sLoadingDataSet5" id="sLoadingDataSet5" value="<%=sLoadingDataSet5%>"/>

                <input type="hidden" name="vpath" id="vpath" value="<%=vpath%>"/> 
                <input type="hidden" name="vfile" id="vfile" value="<%=vfile%>"/>

                <input type="hidden" name="sPageControl" id="sPageControl" value="<%=sPageControl%>"/>

                <input type="hidden" name="sopt" id="sopt" value="<%=sopt%>"/>
                <input type="hidden" name="sGraphNo" id="sGraphNo" value="<%=sGraphNo%>"/>
                <input type="hidden" name="sBestFold" id="sBestFold" value="<%=sBestFold%>"/>
                
                <input type="hidden" name="sProcessRun" id="sProcessRun" value="<%=sProcessRun%>"/>                
                <input type="hidden" name="sSaveModel" id="sSaveModel" value="<%=sSaveModel%>"/>
                
                <input type="hidden" name="sValueC" id="sValueC" value="<%=sValueC%>"/>
                <input type="hidden" name="sValueS" id="sValueS" value="<%=sValueS%>"/>
                <br><br>
                <center id="title">
                    <font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt" color="#2F4F4F">
                        <b>NiMOPS for Regression</b>
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
                                        <a onclick="return previousscreen();" style="float:left;">
                                            <font color="blue" face="agency FB" size="3">
                                            &nbsp;&nbsp;&nbsp;<b><u><< BACK</u></b>
                                            </font>
                                        </a>                            
                                    </td>
                                    <%--><font color="black" face="Arial" size="2" style="float:right">Base output file name:&nbsp;&nbsp;<%=sBaseFileName%>&nbsp;&nbsp;&nbsp;&nbsp;</font><--%>
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
                                            
                            <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                            
                            <a href="#bottomform">
                                <img src="Arrow bottom.png" alt="..." width="18" style="float:right">
                            </a>
                                            
                            <%                
                            sResult01Name = application.getRealPath("/") + sBaseFileName +"01.txt";
                            sResult02Name = application.getRealPath("/") + sBaseFileName +"02.txt";
                            sResult03Name = application.getRealPath("/") + sBaseFileName +"03.txt";
                            sResult04Name = application.getRealPath("/") + sBaseFileName +"04.txt";
                            sResult04aName = application.getRealPath("/") + sBaseFileName +"04a.txt";
                            sResult04bName = application.getRealPath("/") + sBaseFileName +"04b.txt";
                            sResult04cName = application.getRealPath("/") + sBaseFileName +"04c.txt";
                            sResult04dName = application.getRealPath("/") + sBaseFileName +"04d.txt";
                            sResult05Name = application.getRealPath("/") + sBaseFileName +"05.txt";
                            sResult06Name = application.getRealPath("/") + sBaseFileName +"06.txt";
                            %>
                            <script>
                                document.getElementById("sResult01Name").value = sResult01Name;
                                document.getElementById("sResult02Name").value = sResult02Name;
                                document.getElementById("sResult03Name").value = sResult03Name;
                                document.getElementById("sResult04Name").value = sResult04Name;
                                document.getElementById("sResult04aName").value = sResult04aName;
                                document.getElementById("sResult04bName").value = sResult04bName;
                                document.getElementById("sResult04cName").value = sResult04cName;
                                document.getElementById("sResult04dName").value = sResult04dName;
                                document.getElementById("sResult05Name").value = sResult05Name;
                                document.getElementById("sResult06Name").value = sResult06Name;
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
                                                <div class="col-md-4">No. of fireflies = <%=nf.format(nFireFlies)%></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"></div>
                                                <div class="col-md-4">Max. generation = <%=nf.format(nMaxGeneration)%></div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Attractiveness:</div>
                                                <div class="col-md-4">Beta min. = <%=nf2.format(dMinBeta)%></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"></div>
                                                <div class="col-md-4">Gamma = <%=nf2.format(dGamma)%></div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Random movement:</div>
                                                <div class="col-md-4">Alpha = <%=nf2.format(dAlpha)%></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"></div>
                                                <div class="col-md-4">Adaptive inertia weight = <%=nf2.format(dAIWeight)%></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"></div>
                                                <div class="col-md-4">Tau = <%=nf2.format(dTau)%></div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Logistic map:</div>
                                                <div class="col-md-4">Biotic potential, a = <%=nf2.format(dBPotential)%></div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Hyperparameters:</div>
                                                <div class="col-md-4">Range of C = <%=ndf.format(dC1)%> to <%=ndf.format(dC2)%></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"></div>
                                                <div class="col-md-4">Range of sigma = <%=ndf.format(dS1)%> to <%=ndf.format(dS2)%></div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Learning Option:</div>
                                                <div class="col-md-4">Training partition size = <%=nf.format(dTrainingPS)%> (%)</div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"></div>
                                                <div class="col-md-4">Validation partition size = <%=nf.format(dValidationPS)%> (%)</div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Normalization Method:</div>
                                                <div class="col-md-4">
                                                    <%
                                                    if (NormalRadio.equals("NormalRadio1")) {
                                                        sNormalRadio = "Original value";
                                                    } else if (NormalRadio.equals("NormalRadio2")) {
                                                        sNormalRadio = "Feature scaling";
                                                    }
                                                    %>
                                                    <%=sNormalRadio%>
                                                </div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Objective Function (OF):</div>
                                                <div class="col-md-3">
                                                    <%
                                                    if (OptimRadio.equals("OptimRadio1")) {
                                                        dOptimRadio=1;
                                                        sOptimRadio = "RMSE validation";
                                                    } else if (OptimRadio.equals("OptimRadio2")) {
                                                        dOptimRadio=2;
                                                        sOptimRadio = "MAE validation";
                                                    } else if (OptimRadio.equals("OptimRadio3")) {
                                                        dOptimRadio=3;
                                                        sOptimRadio = "MAPE validation";
                                                    }
                                                    %>
                                                    <%=sOptimRadio%>
                                                </div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Stop Criterion:</div>
                                                <div class="col-md-3">
                                                    <%
                                                    if (SCRadio.equals("SCRadio1")) {
                                                        dSCRadio=1;
                                                        sSCRadio = "Max. generation is reached";
                                                        %> 
                                                        <%=sSCRadio%>
                                                        <%
                                                    } else if (SCRadio.equals("SCRadio2")) {
                                                        dSCRadio=2;
                                                        sSCRadio = "Consecutive rates of change in OF values <";
                                                        %> 
                                                        <%=nf.format(nLastChange1)%> <%=sSCRadio%> <%=nf5.format(nLastChange2)%>
                                                        <%
                                                    } else if (SCRadio.equals("SCRadio3")) {
                                                        dSCRadio=3;
                                                        sSCRadio = "Either criterion is reached";
                                                        %> 
                                                        <%=sSCRadio%>
                                                        <%
                                                    }
                                                    %>
                                                </div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Purpose:</div>
                                                <div class="col-md-3">
                                                    <%
                                                    sPRadio = "...";
                                                    if (NormalRadio.equals("NormalRadio1")) {
                                                        if (PRadio.equals("PRadio1")) {
                                                            dPRadio=1;
                                                            sPRadio = "Evaluation";
                                                            sDummy = "Learning Dataset: ";
                                                        } else if (PRadio.equals("PRadio2")) {
                                                            dPRadio=2;
                                                            sPRadio = "Prediction";
                                                            sDummy = "Learning Dataset: ";
                                                            sFileData = sLearningFileName;
                                                            dAttributes = snLDFAttributes;
                                                            dInstances = snLDFInstances;
                                                            sPDummy = "Prediction Dataset: ";
                                                            sPFileData = sPredictionFileName;
                                                            dPAttributes = snPDFAttributes;
                                                            dPInstances = snPDFInstances;
                                                            sVariation = "5";
                                                        }
                                                    } else {
                                                        if (PRadio.equals("PRadio1")) {
                                                            dPRadio=1;
                                                            sPRadio = "Evaluation";
                                                            sDummy = "Learning Dataset: ";
                                                        } else if (PRadio.equals("PRadio2")) {
                                                            dPRadio=2;
                                                            sPRadio = "Prediction";
                                                            sDummy = "Learning Dataset: ";
                                                            sFileData = sLearningFileName;
                                                            dAttributes = snLDFAttributes;
                                                            dInstances = snLDFInstances;
                                                            sPDummy = "Prediction Dataset: ";
                                                            sPFileData = sPredictionFileName;
                                                            dPAttributes = snPDFAttributes;
                                                            dPInstances = snPDFInstances;
                                                            sVariation = "10";
                                                        }
                                                    }
                                                    %>
                                                    <%=sPRadio%>
                                                </div>
                                            </div><br>
                                            <div class="row">
                                                <div class="col-md-4">Test Option:</div>
                                                <div class="col-md-4">
                                                    <%
                                                    sTORadio = "";
                                                    if (NormalRadio.equals("NormalRadio1")) {
                                                        dNormalRadio=1;
                                                        if (TORadio.equals("TORadio2")) {
                                                            dTORadio=2;
                                                            if (PRadio.equals("PRadio1")) { %>
                                                                Hold-out = <%=nf.format(dHoldOut)%> (%) 
                                                                <% 
                                                                sDummy = "Learning Dataset: ";
                                                                sFileData = sFileName;
                                                                dAttributes = snDFAttributes;
                                                                dInstances = snDFInstances;
                                                                sVariation = "2";
                                                                sPFileData = "";
                                                                dPAttributes = "0";
                                                                dPInstances = "0";
                                                            } else if (PRadio.equals("PRadio2")) { %> 
                                                                -
                                                            <% }
                                                        } else if (TORadio.equals("TORadio3")) {
                                                            dTORadio=3;
                                                            if (PRadio.equals("PRadio1")) { %>
                                                                Cross-validation = <%=nf.format(dCrossValidation)%> (folds)
                                                                <%
                                                                sDummy = "Learning Dataset: ";
                                                                sFileData = sFileName;
                                                                dAttributes = snDFAttributes;
                                                                dInstances = snDFInstances;
                                                                sVariation = "3";
                                                                sPFileData = "";
                                                                dPAttributes = "0";
                                                                dPInstances = "0";
                                                            } else if (PRadio.equals("PRadio2")) { %>
                                                                -
                                                            <% }
                                                        } else {
                                                            if (TORadio.equals("TORadio1")) {
                                                                dTORadio=1;
                                                                if (PRadio.equals("PRadio1")) {
                                                                    sTORadio = "Use learning dataset";
                                                                    sDummy = "Learning Dataset: ";
                                                                    sFileData = sFileName;
                                                                    dAttributes = snDFAttributes;  
                                                                    dInstances = snDFInstances; 
                                                                    sVariation = "1";
                                                                    sPFileData = "";
                                                                    dPAttributes = "0";
                                                                    dPInstances = "0";
                                                                } else if (PRadio.equals("PRadio2")) {
                                                                    sTORadio = "-";
                                                                }
                                                            } else if (TORadio.equals("TORadio4")) {
                                                                dTORadio=4;
                                                                if (PRadio.equals("PRadio1")) {
                                                                    sTORadio = "Use test dataset";
                                                                    sDummy = "Learning Dataset: ";
                                                                    sFileData = sFileName;
                                                                    dAttributes = snDFAttributes;
                                                                    dInstances = snDFInstances; 
                                                                    sPDummy = "Test Dataset: ";
                                                                    sPFileData = sTestFileName;
                                                                    dPAttributes = snTDFAttributes; 
                                                                    dPInstances = snTDFInstances; 
                                                                    sVariation = "4";
                                                                } else if (PRadio.equals("PRadio2")) {
                                                                    sTORadio = "-";
                                                                }
                                                            }
                                                        } 
                                                    } else {
                                                        dNormalRadio=2;
                                                        if (TORadio.equals("TORadio2")) { 
                                                            dTORadio=2;
                                                            if (PRadio.equals("PRadio1")) { %>
                                                                Hold-out = <%=nf.format(dHoldOut)%> (%) 
                                                                <% 
                                                                sDummy = "Learning Dataset: ";
                                                                sFileData = sFileName;
                                                                dAttributes = snDFAttributes;
                                                                dInstances = snDFInstances;
                                                                sVariation = "7";
                                                                sPFileData = "";
                                                                dPAttributes = "0";
                                                                dPInstances = "0";
                                                            } else if (PRadio.equals("PRadio2")) { %> 
                                                                -
                                                            <% }
                                                        } else if (TORadio.equals("TORadio3")) {
                                                            dTORadio=3;
                                                            if (PRadio.equals("PRadio1")) { %>
                                                                Cross-validation = <%=nf.format(dCrossValidation)%> (folds)
                                                                <%
                                                                sDummy = "Learning Dataset: ";
                                                                sFileData = sFileName;
                                                                dAttributes = snDFAttributes;
                                                                dInstances = snDFInstances;
                                                                sVariation = "8";
                                                                sPFileData = "";
                                                                dPAttributes = "0";
                                                                dPInstances = "0";
                                                            } else if (PRadio.equals("PRadio2")) { %>
                                                                -
                                                            <% }
                                                        } else {
                                                            if (TORadio.equals("TORadio1")) {
                                                                dTORadio=1;
                                                                if (PRadio.equals("PRadio1")) {
                                                                    sTORadio = "Use learning dataset";
                                                                    sDummy = "Learning Dataset: ";
                                                                    sFileData = sFileName;
                                                                    dAttributes = snDFAttributes;  
                                                                    dInstances = snDFInstances; 
                                                                    sVariation = "6";
                                                                    sPFileData = "";
                                                                    dPAttributes = "0";
                                                                    dPInstances = "0";
                                                                } else if (PRadio.equals("PRadio2")) {
                                                                    sTORadio = "-";
                                                                }
                                                            } else if (TORadio.equals("TORadio4")) {
                                                                dTORadio=4;
                                                                if (PRadio.equals("PRadio1")) {
                                                                    sTORadio = "Use test dataset";
                                                                    sDummy = "Learning Dataset: ";
                                                                    sFileData = sFileName;
                                                                    dAttributes = snDFAttributes;
                                                                    dInstances = snDFInstances; 
                                                                    sPDummy = "Test Dataset: ";
                                                                    sPFileData = sTestFileName;
                                                                    dPAttributes = snTDFAttributes; 
                                                                    dPInstances = snTDFInstances; 
                                                                    sVariation = "9";
                                                                } else if (PRadio.equals("PRadio2")) {
                                                                    sTORadio = "-";
                                                                }
                                                            } else {
                                                                dAttributes = snDFAttributes;
                                                                dInstances = snDFInstances;
                                                            }
                                                        }
                                                    } %>
                                                    <%=sTORadio%>
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
                                                <%
                                                    Path p = Paths.get(sFileData);
                                                    String filedataname = p.getFileName().toString();
                                                %>
                                                <div class="col-md-4"><%=filedataname%></div>
                                                <div class="col-md-2">No. of Attributes = <%=nf.format(Double.parseDouble(dAttributes))%></div>
                                                <div class="col-md-3">No. of Instances = <%=nf.format(Double.parseDouble(dInstances))%></div>
                                            </div>
                                            <%if (sVariation == "4" || sVariation == "5" || sVariation == "9" || sVariation == "10") {%>
                                                <div class="row">
                                                    <div class="col-md-4"><h4><%=sPDummy%></h4></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4"><%=sPFileData%></div>
                                                                <div class="col-md-2">No. of Attributes = <%=nf.format(Double.parseDouble(dPAttributes))%></div>
                                                    <div class="col-md-3">No. of Instances = <%=nf.format(Double.parseDouble(dPInstances))%></div>
                                                </div>
                                            <%}%>
                                        </div>
                                        <br>
                                        <div class="container boundary" id="view">
                                            <h4>View Dataset</h4>
                                            <div class="row">
                                                <% if (PRadio.equals("PRadio1")) { %> 
                                                    <div class="col-md-2">
                                                        <a onclick="return viewdataset(1);">
                                                            <font color="blue">
                                                            <u>Learning Dataset</u>
                                                            </font>
                                                        </a>
                                                    </div>
                                                    <% if (TORadio.equals("TORadio4")) { %> 
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
                                                    <% } else { %>
                                                        <div class="col-md-4">
                                                            &nbsp;
                                                        </div>
                                                        <%--><div class="col-md-4">
                                                            <font color="black">
                                                                Base output file name: &nbsp;<b><%=sBaseFileName%></b>
                                                            </font>
                                                        </div><--%>
                                                    <% } %>
                                                    
                                                <% } else if (PRadio.equals("PRadio2")) { %> 
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

                            <% if (sLoadingDataSet1 != "" || sLoadingDataSet3 != "") { 
                                if (sLoadingDataSet1 != "") {
                                    sFileData = sFileName;
                                } else if (sLoadingDataSet3 != "") {
                                    sFileData = sLearningFileName;
                                    ncols1=ncols3;
                                    nrows1=nrows3;
                                }
                                
                                if (sFileData != "") {    //sFileName   sFileData
                                    String file = application.getRealPath("/") + sFileData;
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
                                    <button type="button" onclick="return rundata2(1);" class="btn btn-primary">RUN</button>
                                </center>
                                <br>
                                <script>
                                    window.scrollTo(0,document.getElementById("view").offsetTop);
                                </script>    
                                
                            <% } else if (sLoadingDataSet2 != "" || sLoadingDataSet4 != "") { 
                                if (sLoadingDataSet2 != "") {
                                    sPFileData = sTestFileName;
                                } else if (sLoadingDataSet4 != "") {
                                    sPFileData = sPredictionFileName;
                                    ncols2=ncols4;
                                    nrows2=nrows4;
                                }
                                
                                if (sPFileData != "") {    //sFileName   sFileData
                                    String file = application.getRealPath("/") + sPFileData;
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
                                    <button type="button" onclick="return rundata2(2);" class="btn btn-primary">Run</button>
                                </center>
                                <br>
                            <% } %>
                        </div>
                        
                        <%
                        vpath = application.getRealPath("/"); 

                        vfile = sBaseFileName;               
                        if (vfile == "") { 
                            vfile = "SFAR03Result";
                        }

                        if (PRadio.equals("PRadio1")) {
                            if (TORadio.equals("TORadio4")) {
                            } else {
                                dPAttributes=dAttributes;
                                dPInstances=dInstances;
                            }
                        }
                        %>
                        
                        <% if (sPageControl.equals("1")) { %>
                            <% if (sProcessRun != "") { %>
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

                                    <jsp:param name="vpath" value="<%=vpath%>" />
                                    <jsp:param name="vfile" value="<%=vfile%>" />

                                    <jsp:param name="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                                    <jsp:param name="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                                    <jsp:param name="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                                    <jsp:param name="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                                    <jsp:param name="sResult04aName" value="<%if (sResult04aName != null) {%><%=sResult04aName%><%}%>" />
                                    <jsp:param name="sResult04bName" value="<%if (sResult04bName != null) {%><%=sResult04bName%><%}%>" />
                                    <jsp:param name="sResult04cName" value="<%if (sResult04cName != null) {%><%=sResult04cName%><%}%>" />
                                    <jsp:param name="sResult04dName" value="<%if (sResult04dName != null) {%><%=sResult04dName%><%}%>" />
                                    <jsp:param name="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                                    <jsp:param name="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
                                </jsp:include> 	
                            <% } %>
                        <% } %>
                        
                        <% if (sPageControl.equals("2")) { %>
                            <div id="results" class="tab-pane fade in active">
                        <% } else { %>
                            <div id="results" class="tab-pane fade in">
                        <% } %>
                        
                        <table>
                            <tr>
                                <td style="width: 10%">
                                    <a onclick="return previousscreen();" style="float:left;">
                                        <font color="blue" face="Agency FB" size="3">
                                        &nbsp;&nbsp;&nbsp;<b><u><< BACK</u></b>
                                        </font>
                                    </a>                            
                                    <i><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif" size="3" style="float:right">Base output file name:&nbsp;&nbsp;<%=sBaseFileName%>&nbsp;&nbsp;&nbsp;&nbsp;</font></i><%--><--%>
                                </td>
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
                                    <h3><span class="glyphicon glyphicon-bookmark"></span></h3>
                                </td>
                                <td>&nbsp;&nbsp;</td>
                                <td>
                                    <div>
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
                            <li id="MenuMO" class="active"><a data-toggle="tab" href="#Main" id="Menu">Main Output</a></li>
                            <li id="MenuPO" ><a data-toggle="tab" href="#PGraph">Prediction Output</a></li>
                            <li id="MenuPTD" ><a data-toggle="tab" href="#PTGraph">Performance Trajectory Data</a></li>
                            <li id="MenuTPD" ><a data-toggle="tab" href="#TPGraph">Tracing Path Data</a></li>
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
                                    <%  File a = new File(sResult01Name);
                                    if (sResult01Name != "" && a.exists() && !a.isDirectory()) {  
                                        String file = sResult01Name;
                                        BufferedReader br = new BufferedReader(new FileReader(file)); 
                                        String line = null;
                                        int i;
                                        int j;

                                        // first and only line
                                        line = br.readLine();
                                        if (line == null) {
                                            %><center><div><table><tr>
                                                <td align="center">
                                                    <h3><font color='red'>Output file empty !</font></h3>
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
                                                            <% if (OptimRadio.equals("OptimRadio1")) { %>
                                                                <td align="right">RMSE</td>
                                                            <% } else if (OptimRadio.equals("OptimRadio2")) { %>
                                                                <td align="right">MAE</td>
                                                            <% } else if (OptimRadio.equals("OptimRadio3")) { %>
                                                                <td align="right">MAPE</td>
                                                            <% } %>
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
                                        <br>
                                    </center>
                                    <br> 
                                    
                                    <% File b = new File(sResult02Name);
                                    String[][] datatemp2 = new String[21][9];
                                    if (sResult02Name != "" && b.exists() && !b.isDirectory()) {  
                                        String file = sResult02Name;
                                        BufferedReader br = new BufferedReader(new FileReader(file)); 
                                        String line = null;
                                        String stemp;
                                        int i;
                                        int j;
                                        int ii;
                                        stemp="1"; 
                                        i=1;
                                        ii=1;
                                        String[][] datatemp = new String[21][9];

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
                                                            <% if (OptimRadio.equals("OptimRadio1")) { %>
                                                                <td align="center">RMSE of Validation Data</td>
                                                            <% } else if (OptimRadio.equals("OptimRadio2")) { %>
                                                                <td align="center">MAE of Validation Data</td>
                                                            <% } else if (OptimRadio.equals("OptimRadio3")) { %>
                                                                <td align="center">MAPE of Validation Data</td>
                                                            <% } %>
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
                                                <% if (PRadio.equals("PRadio2")) { %>
                                                    <button class="btn btn-primary" onclick="return savingmodelexport();">Save Optimum Hyperparameters</button>
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
                                                <% if (PRadio.equals("PRadio1")) { %>
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
                                            stemp="1"; 
                                            j=0;
                                            while (stemp == "1") {
                                                for (i = 0; i < 8; i += 1) {
                                                    datatemp2[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                                cols = line.split("\\t");
                                                ncol = cols.length;
                                                if (ncol != 8) {
                                                    stemp="0";      //to exit loop 
                                                }
                                            }
                                            
                                            line = br.readLine();
                                            j=0;
                                            while (line != null) {
                                                cols = line.split("\\t");
                                                for (i = 0; i < 8; i += 1) {
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
                                                        <% if (PRadio.equals("PRadio1")) { %>
                                                            <td align="center">Fold No.</td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">RMSE Learning</td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">RMSE Test</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAE Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAE Test</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAPE Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAPE Test</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">R Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">R Test</td>
                                                        <% } else { %>
                                                            <td align="center">Fold No.</td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">RMSE Learning</td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">RMSE Prediction</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAE Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAE Prediction</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAPE Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAPE Prediction</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">R Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">R Prediction</td>
                                                        <% } %>
                                                        </tr> 
                                                        <% for (i = 0; i < j; i += 1) { %>
                                                            <tr>
                                                            <td align="center"><%=(i+1)%></td>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp2[i][0]%></td>
                                                            <% for (ii = 1; ii < 8; ii += 1) { %>
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
                                                <u><font size="4">Performance of training and validation partitions of learning data</font></u>
                                                <br>
                                                <br>
                                        
                                                <div> 
                                                    <table>
                                                        <tr>
                                                            <td align="center">Fold No.</td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">RMSE Training</td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">RMSE Validation</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAE Training</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAE Validation</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAPE Training</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">MAPE Validation</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">R Training</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">R Validation</td> 
                                                        </tr> 
                                                        <% for (i = 0; i < j; i += 1) { %>
                                                            <tr>
                                                            <td align="center"><%=(i+1)%></td>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp[i][0]%></td>
                                                            <% for (ii = 1; ii < 8; ii += 1) { %>
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
                                    
                                    <% File c = new File(sResult03Name);
                                    if (sResult03Name != "" && c.exists() && !c.isDirectory()) {  
                                        String file = sResult03Name;
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
                                        <% if (PRadio.equals("PRadio1")) { %>
                                            <u><font size="4" id="Dataset1">Test data with predicted values of the best fold</font></u>
                                        <% } else { %>
                                            <u><font size="4" id="Dataset1">Prediction data with predicted values of the best fold</font></u>
                                        <% } %>
                                        <a href="#Dataset2"><span class="glyphicon glyphicon-triangle-bottom"></span></a> 
                                    </center>
                                    <br>
                                    
                                    <% File d = new File(sResult04Name);
                                    if (sResult04Name != "" && d.exists() && !d.isDirectory()) {  
                                        String file = sResult04Name;
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
                                        
                                        stemp="1"; //initial value
                                        i=1;
                                        ii=1;
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
                                                        <% if (PRadio.equals("PRadio1")) { %> 
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
                                        <%--><label><input type="checkbox" name="TDCheck1" id="TDCheck1" value="TDCheck1" onclick="fTDCheckBox(1);">&nbsp;</label><--%>
                                        <% if (PRadio.equals("PRadio1")) { %> 
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
                                        <% if (PRadio.equals("PRadio1")) { %> 
                                            <b><font size="4" id="TDataset">Predicted Values of Test Data</font></b>
                                        <% } else { %>
                                            <b><font size="4" id="TDataset">Predicted Values of Prediction Data</font></b>
                                        <% } %>
                                        <a href="#LDataset"><span class="glyphicon glyphicon-menu-down"></span></a> 
                                        <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a> 
                                        <br>
                                    </center>
                                    <br>
                                    
                                    <% File e = new File(sResult04aName); 
                                    if (sResult04aName != "" && e.exists() && !e.isDirectory()) {  
                                        String file = sResult04aName;
                                        BufferedReader br = new BufferedReader(new FileReader(file)); 
                                        String line = null;
                                        String stemp;
                                        int i;
                                        int j;
                                        int ii;
                                        
                                        stemp="1"; //initial value
                                        i=1;
                                        ii=1;
                                        String[][] datatemp = new String[1021][9];

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
                                    
                                    <% File f = new File(sResult04bName); 
                                    if (sResult04bName != "" && f.exists() && !f.isDirectory()) {  
                                        String file = sResult04bName;
                                        BufferedReader br = new BufferedReader(new FileReader(file)); 
                                        String line = null;
                                        String stemp;
                                        int i;
                                        int j;
                                        int ii;
                                        
                                        stemp="1"; //initial value
                                        i=1;
                                        ii=1;
                                        String[][] datatemp = new String[1021][9];

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
                                    
                                    <% File g = new File(sResult04cName); 
                                    if (sResult04cName != "" && g.exists() && !g.isDirectory()) {  
                                        String file = sResult04cName;
                                        BufferedReader br = new BufferedReader(new FileReader(file)); 
                                        String line = null;
                                        String stemp;
                                        int i;
                                        int j;
                                        int ii;
                                        
                                        stemp="1"; //initial value
                                        i=1;
                                        ii=1;
                                        String[][] datatemp = new String[1021][9];

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
                                    
                                    <% File h = new File(sResult04dName); 
                                    if (sResult04dName != "" && h.exists() && !h.isDirectory()) {  
                                        String file = sResult04dName;
                                        BufferedReader br = new BufferedReader(new FileReader(file)); 
                                        String line = null;
                                        String stemp;
                                        int i;
                                        int j;
                                        int ii;
                                        
                                        stemp="1"; //initial value
                                        i=1;
                                        ii=1;
                                        String[][] datatemp = new String[1021][9];

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
                                        <%--><label><input type="checkbox" name="TDCheck2" id="TDCheck2" value="TDCheck2" onclick="fTDCheckBox(1);">&nbsp;&nbsp;Fold No.:&nbsp;</label><--%>
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
                                    
                                    <% File ist = new File(sResult05Name); 
                                    if (sResult05Name != "" && ist.exists() && !ist.isDirectory()) {  
                                        String file = sResult05Name;
                                        BufferedReader br = new BufferedReader(new FileReader(file)); 
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
                                        String[][] datatemp = new String[1000][21];

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
                                            if (jj>1) { %>
                                                <br><br>
                                            <% } %>

                                            <center>
                                            <% if (PRadio.equals("PRadio2")) { %>
                                                <b><font size="4">Performance Trajectory of Prediction Data - Fold No. <%=jj%></font></b>
                                            <% } else { %>    
                                                <% if (jj==1) { %> <b><font size="4" id="PT1">Performance Trajectory of Test Data - Fold No. <%=jj%></font></b>
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
                                        <%--><label><input type="checkbox" name="TDCheck3" id="TDCheck3" value="TDCheck3" onclick="fTDCheckBox(1);">&nbsp;&nbsp;Fold No.:&nbsp;</label><--%>
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
                                    
                                    <% File jst = new File(sResult06Name); 
                                    if (sResult06Name != "" && jst.exists() && !jst.isDirectory()) {  
                                        String file = sResult06Name;
                                        BufferedReader br = new BufferedReader(new FileReader(file)); 
                                        String line = null;
                                        String stemp;
                                        int i; 
                                        int j;
                                        int ii;
                                        int jj;
                                        int nNilai1=1;
                                        int nNilai2;
                                        
                                        nrow = 0;
                                        // make the system read the content flexible
                                        while ((line = br.readLine()) != null) {
                                            nrow += 1;
                                        }
                                        
                                        br = new BufferedReader(new FileReader(file)); 
                                        
                                        stemp="1"; //initial value
                                        i=1;
                                        ii=1;
                                        jj=0; 
                                        String[][] datatemp = new String[nrow][21];

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
                                            <% if (PRadio.equals("PRadio2")) { %>
                                            <b><font size="4">Tracing Path for Searching Best Performance of Prediction Data - Fold No. <%=jj%></font></b>
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
                            <center id="bottomform2">
                                <button type="button" onclick="return saveresult();" class="btn btn-primary">Save</button>
                            </center>
                            <br>
                            </div>
                        <% if (sSaveModel != "") { 
                            String filename;
                            filename = "SVRModel.txt";
                            String file = application.getRealPath("/") + filename;
                            FileWriter filewriter = new FileWriter(file, false);
                            int iRadio = 0;
                            String temp = "";

                            filewriter.write("Penalty Parameter, C\t");
                            filewriter.write(sValueC+"\n"); 
                            filewriter.write("Kernel Parameter, S\t");
                            filewriter.write(sValueS+"\n");

                            if (NormalRadio.equals("NormalRadio1")) {
                                temp = "Original value";
                                iRadio=1;
                            }
                            else if (NormalRadio.equals("NormalRadio2")) {
                                temp = "Feature scaling";
                                iRadio=2;
                            }
                            filewriter.write("Normalization Method\t");
                            filewriter.write("sNormalRadio\t");
                            filewriter.write(iRadio+"\t");
                            filewriter.write(temp+"\n");

                            filewriter.write("Learning Data File\t");
                            filewriter.write("sLearningDataFile\t");
                            filewriter.write(sLearningFileName+"\n");

                            filewriter.write("No. of Attributes\t");
                            filewriter.write("nLDFAttributes\t");
                            filewriter.write(nLDFAttributes+"\n");

                            filewriter.write("No. of Instances\t");
                            filewriter.write("nLDFInstances\t");
                            filewriter.write(nLDFInstances+"\n");
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
                                            <a onclick="return previousscreen();" style="float:left;">
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
                                            <% if (PRadio.equals("PRadio1")) { %> 
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
                                            <% if (PRadio.equals("PRadio1")) { %>
                                                <% if (TORadio.equals("TORadio3")) { %>
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
                                                
                                                vpath = application.getRealPath("/"); 

                                                vfile = sBaseFileName;                 
                                                if (vfile == "") { 
                                                    vfile = "SFAR03Result";
                                                }
                                            %>
                                            <% if (GraphNo == 31) { %>
                                                <% if (PRadio.equals("PRadio1")) { %> 
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
                                            <jsp:include page="SFALSSVRGraphServlet">
                                                <jsp:param name="nGeneration" value="<%=nGeneration%>" />
                                                <jsp:param name="sBestFold" value="<%=sBestFold%>" />
                                                <jsp:param name="GraphNo" value="<%=GraphNo%>" />
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
                                </center>
                            <% } %>

                            <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                            </div>
                        </div>
                        <input type="hidden" name="sResult01Name" id="sResult01Name" value="<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>" />
                        <input type="hidden" name="sResult02Name" id="sResult02Name" value="<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>" />
                        <input type="hidden" name="sResult03Name" id="sResult03Name" value="<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>" />
                        <input type="hidden" name="sResult04Name" id="sResult04Name" value="<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>" />
                        <input type="hidden" name="sResult04aName" id="sResult04aName" value="<%if (sResult04aName != null) {%><%=sResult04aName%><%}%>" />
                        <input type="hidden" name="sResult04bName" id="sResult04bName" value="<%if (sResult04bName != null) {%><%=sResult04bName%><%}%>" />
                        <input type="hidden" name="sResult04cName" id="sResult04cName" value="<%if (sResult04cName != null) {%><%=sResult04cName%><%}%>" />
                        <input type="hidden" name="sResult04dName" id="sResult04dName" value="<%if (sResult04dName != null) {%><%=sResult04dName%><%}%>" />
                        <input type="hidden" name="sResult05Name" id="sResult05Name" value="<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>" />
                        <input type="hidden" name="sResult06Name" id="sResult06Name" value="<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>" />
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