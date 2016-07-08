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

    String stResult01Name = request.getParameter("stResult01Name");
    if (stResult01Name == null) {
        stResult01Name = "";
    }
    String stResult02Name = request.getParameter("stResult02Name");
    if (stResult02Name == null) {
        stResult02Name = "";
    }
    String stResult03Name = request.getParameter("stResult03Name");
    if (stResult03Name == null) {
        stResult03Name = "";
    }
    String stResult04Name = request.getParameter("stResult04Name");
    if (stResult04Name == null) {
        stResult04Name = "";
    }
    String stResult04cName = request.getParameter("stResult04cName"); 
    if (stResult04cName == null) {
        stResult04cName = "";
    }
    String stResult04dName = request.getParameter("stResult04dName"); 
    if (stResult04dName == null) {
        stResult04dName = "";
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
        <title>NiMOPS: LSSVR</title>
        
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
                var stResult01Name = document.getElementById("stResult01Name");
                var stResult02Name = document.getElementById("stResult02Name");
                var stResult03Name = document.getElementById("stResult03Name");
                var stResult04Name = document.getElementById("stResult04Name");
                var stResult04cName = document.getElementById("stResult04cName");
                var stResult04dName = document.getElementById("stResult04dName");
                
                var sProcessRun = document.getElementById("sProcessRun");
                sProcessRun = "1";
                document.getElementById("sProcessRun").value = sProcessRun;
                
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
                var nValueC = document.getElementById("nValueC");
                var nValueS = document.getElementById("nValueS");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var NormalRadio = document.getElementById("NormalRadio");
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
                
                document.getElementById("stResult01Name").value = "";
                document.getElementById("stResult02Name").value = "";
                document.getElementById("stResult03Name").value = "";
                document.getElementById("stResult04Name").value = "";
                document.getElementById("stResult04cName").value = "";
                document.getElementById("stResult04dName").value = "";
                
                var VarA = document.getElementById("VarA");
                document.getElementById("VarA").value = "One";
                
                document.getElementById("myform2").action = "AllModulesBaseline.jsp";
                document.getElementById("myform2").submit();
                
                return valid;
            }
            
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

                var sFileData = document.getElementById("sFileData");
                var sdInstances = document.getElementById("sdInstances");
                var sdAttributes = document.getElementById("sdAttributes");

                var sPFileData = document.getElementById("sPFileData");
                var sPdInstances = document.getElementById("sdPInstances");
                var sPdAttributes = document.getElementById("sdPAttributes");

                var VarNext = document.getElementById("VarNext");
                    
                var stResult01Name = document.getElementById("stResult01Name");
                var stResult02Name = document.getElementById("stResult02Name");
                var stResult03Name = document.getElementById("stResult03Name");
                var stResult04Name = document.getElementById("stResult04Name");
                var stResult04cName = document.getElementById("stResult04cName");
                var stResult04dName = document.getElementById("stResult04dName");

                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
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
                return refreshform(val);
            } 
            
            function plotgraph(val) {
                document.getElementById("sGraphNo").value = val;
                document.getElementById("sopt").value = 2;
                return refreshform(val);
            }
            
            function saveresult() {
                var valid = true;
                var saveaction;
                if (document.getElementById("MenuMO").className === "active")
                {
                    saveaction = "SaveLSSVRResultMO.jsp";
                }
                else if (document.getElementById("MenuPOT") !== null && document.getElementById("MenuPOT").className === "active")
                {
                    saveaction = "SaveLSSVRResultPOT.jsp";
                }
                else if (document.getElementById("MenuPOP") !== null && document.getElementById("MenuPOP").className === "active")
                {
                    saveaction = "SaveLSSVRResultPOP.jsp";
                }
                else if (document.getElementById("MenuPOL").className === "active")
                {
                    saveaction = "SaveLSSVRResultPOL.jsp";
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

        <% if (VarSaveData != null) { %>
        <% } else if (VarLoadData != null) { %>                 
        <% } else if (VarReportData != null) { %>
            <%
                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-Disposition", "inline; filename="
                        + "Data_LSSVR.xls");

                int iRadio = 0;

                nValueC = Float.parseFloat(snValueC);
                nValueS = Float.parseFloat(snValueS);
                //dHoldOut = Float.parseFloat(sdHoldOut);
                //dCrossValidation = Float.parseFloat(sdCrossValidation);

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
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Cross-Validation (%)</td>
                        <td>dCrossValidation</td>
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
                        sTORadio = "Use learning dataset";
                        iRadio = 1;
                    }
                    else if (PRadio.equals("TORadio4")) {
                        sTORadio = "Use test dataset";
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
                        <td>Dataset</td>
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
                        <td>Test Dataset</td>
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
                        <td>Learning Dataset</td>
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
                        <td>Prediction Dataset</td>
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
            <form action="ModuleLSSVR.jsp" name="myform2" id="myform2">
                <%
                    nValueC = Float.parseFloat(snValueC);
                    nValueS = Float.parseFloat(snValueS);
                    
                    
                    if (PRadio.equals("PRadio1")) {
                        if (TORadio.equals("TORadio2"))
                        {
                            dHoldOut = Float.parseFloat(sdHoldOut);
                        }
                        else
                        {
                            dHoldOut = 20.0;
                        }
                        if (TORadio.equals("TORadio3"))
                        {
                            dCrossValidation = Float.parseFloat(sdCrossValidation);
                        }
                        else
                        {
                            dCrossValidation = 10;
                        }
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
                %>
                
                <input type="hidden" name="VarA" id="VarA" value="<%=VarA%>"/> 
                <input type="hidden" name="VarNext" id="VarNext" value="<%=VarNext%>"/>
                
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

                <input type="hidden" name="sPFileName" id="sPFileData" value="<%=sPFileData%>"/>
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
                
                <br><br><br>
                <center id="title">
                    <font style="font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt" color="#2F4F4F">
                        <b>Least Squares Support Vector Regression (LSSVR)</b>
                    </font>
                </center>
                <br>
                
                <div class="container boundary">
                    <ul class="nav nav-tabs"></ul>
                </div>
                <br>
                
                <div class="tab-content">
                    <% if (sPageControl.equals("1")) { %>
                    <div id="processing" class="tab-pane fade in active">
                    <% } else { %>
                    <div id="processing" class="tab-pane fade in">
                    <% } %>
                    
                        <%                
                        stResult01Name = application.getRealPath("/") + sBaseFileName +"01.txt";
                        stResult02Name = application.getRealPath("/") + sBaseFileName +"02.txt";
                        stResult03Name = application.getRealPath("/") + sBaseFileName +"03.txt";
                        stResult04Name = application.getRealPath("/") + sBaseFileName +"04.txt";
                        stResult04cName = application.getRealPath("/") + sBaseFileName +"04c.txt";
                        stResult04dName = application.getRealPath("/") + sBaseFileName +"04d.txt";
                        %>
                        <script>
                            document.getElementById("stResult01Name").value = stResult01Name;
                            document.getElementById("stResult02Name").value = stResult02Name;
                            document.getElementById("stResult03Name").value = stResult03Name;
                            document.getElementById("stResult04Name").value = stResult04Name;
                            document.getElementById("stResult04cName").value = stResult04cName;
                            document.getElementById("stResult04dName").value = stResult04dName;
                        </script>

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
                                            <div class="col-md-4">System parameters:</div>
                                            <div class="col-md-3">Value of C = <%=nf2.format(nValueC)%></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-4">Value of sigma = <%=nf2.format(nValueS)%></div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col-md-4">Test Option parameters:</div>
                                            <div class="col-md-4">Hold-out = <%=nf.format(dHoldOut)%> (%)</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-4">Cross-validation = <%=nf.format(dCrossValidation)%> (folds)</div>
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
                                            <div class="col-md-4">Purpose:</div>
                                            <div class="col-md-3">
                                                <%
                                                    sPRadio = "...";
                                                    if (NormalRadio.equals("NormalRadio1")) {
                                                        dNormalRadio=1;    
                                                        if (PRadio.equals("PRadio1")) {
                                                            sPRadio = "Evaluation";
                                                            sDummy = "Learning Dataset: ";
                                                        }
                                                        else if (PRadio.equals("PRadio2")) {
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
                                                        dNormalRadio=2;    
                                                        if (PRadio.equals("PRadio1")) {
                                                            sPRadio = "Evaluation";
                                                            sDummy = "Learning Dataset: ";
                                                        }
                                                        else if (PRadio.equals("PRadio2")) {
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
                                                            dPRadio=1;
                                                            sDummy = "Learning Dataset: ";
                                                            sFileData = sFileName;
                                                            dAttributes = snDFAttributes;
                                                            dInstances = snDFInstances;
                                                            sVariation = "2";
                                                            sPFileData = "";
                                                            dPAttributes = "0";
                                                            dPInstances = "0";
                                                        } else if (PRadio.equals("PRadio2")) {        
                                                            dPRadio=2;
                                                            %> 
                                                            -
                                                        <% }
                                                    } else if (TORadio.equals("TORadio3")) {
                                                        dTORadio=3;
                                                        if (PRadio.equals("PRadio1")) { %>
                                                            Cross-validation = <%=nf.format(dCrossValidation)%> (folds)
                                                            <%
                                                            dPRadio=1;
                                                            sDummy = "Learning Dataset: ";
                                                            sFileData = sFileName;
                                                            dAttributes = snDFAttributes;
                                                            dInstances = snDFInstances;
                                                            sVariation = "3";
                                                            sPFileData = "";
                                                            dPAttributes = "0";
                                                            dPInstances = "0";
                                                        } else if (PRadio.equals("PRadio2")) {
                                                            dPRadio=2;
                                                            %> 
                                                            -
                                                        <% }
                                                    } else {
                                                        if (TORadio.equals("TORadio1")) {
                                                            dTORadio=1;
                                                            if (PRadio.equals("PRadio1")) {
                                                                dPRadio=1;
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
                                                                dPRadio=2;
                                                                sTORadio = "-";
                                                            }
                                                        } else if (TORadio.equals("TORadio4")) {
                                                            dTORadio=4;
                                                            if (PRadio.equals("PRadio1")) {
                                                                dPRadio=1;
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
                                                                dPRadio=2;
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
                                                            dPRadio=1;
                                                            sDummy = "Learning Dataset: ";
                                                            sFileData = sFileName;
                                                            dAttributes = snDFAttributes;
                                                            dInstances = snDFInstances;
                                                            sVariation = "7";
                                                            sPFileData = "";
                                                            dPAttributes = "0";
                                                            dPInstances = "0";
                                                        } else if (PRadio.equals("PRadio2")) {
                                                            dPRadio=2; %> 
                                                            -
                                                        <% }
                                                    } else if (TORadio.equals("TORadio3")) {
                                                        dTORadio=3;
                                                        if (PRadio.equals("PRadio1")) { %>
                                                            Cross-validation = <%=nf.format(dCrossValidation)%> (folds)
                                                            <%
                                                            dPRadio=1;
                                                            sDummy = "Learning Dataset: ";
                                                            sFileData = sFileName;
                                                            dAttributes = snDFAttributes;
                                                            dInstances = snDFInstances;
                                                            sVariation = "8";
                                                            sPFileData = "";
                                                            dPAttributes = "0";
                                                            dPInstances = "0";
                                                        } else if (PRadio.equals("PRadio2")) { 
                                                            dPRadio=2; %> 
                                                            -
                                                        <% }
                                                    } else {
                                                        if (TORadio.equals("TORadio1")) {
                                                            dTORadio=1;
                                                            if (PRadio.equals("PRadio1")) {
                                                                dPRadio=1;
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
                                                                dPRadio=2;
                                                                sTORadio = "-";
                                                            }
                                                        } else if (TORadio.equals("TORadio4")) {
                                                            dTORadio=4;
                                                            if (PRadio.equals("PRadio1")) {
                                                                dPRadio=1;
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
                                                                dPRadio=2;
                                                                sTORadio = "-";
                                                            }
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
                                            <div class="col-md-4"><%=sFileData%></div>
                                            <div class="col-md-2">No. of Attributes = <%=nf.format(Double.parseDouble(dAttributes))%></div>
                                            <div class="col-md-3">No. of Instances = <%=nf.format(Double.parseDouble(dInstances))%></div>
                                        </div>
                                        <%if (sVariation == "4" || sVariation == "5") {%>
                                            <div class="row">
                                                <div class="col-md-4"><h4><%=sPDummy%></h4></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"><%=sPFileData%></div>
                                                <div class="col-md-2">No. of Attributes = <%=nf.format(Double.parseDouble(dPAttributes))%></div>
                                                <div class="col-md-3">No. of Instances = <%=nf.format(Double.parseDouble(dPInstances))%></div>
                                            </div>
                                        <%}%>
                                    </div><br>
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

                        <% //displaying dataset 
                        if (sLoadingDataSet1 != "" || sLoadingDataSet3 != "") { 
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
                                    out .println("<h3><font color='red'>Dataset is empty !</font></h3>");
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
                            <% } else { %>
                                <div class="container boundary">
                                    <table>
                                        <tr>
                                            <td align="left">
                                                <font color='red'>
                                                &nbsp;&nbsp;Dataset not available !
                                                </font>
                                            </td> 
                                        </tr>
                                    </table>
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
                        <% //#3 displaying test dataset 
                        } else if (sLoadingDataSet2 != "" || sLoadingDataSet4 != "") { 
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
                                    out.println("<h3><font color='red'>Dataset is empty !</font></h3>");
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
                            <% } else { %>
                                <div class="container boundary">
                                    <table>
                                        <tr>
                                            <td align="left">
                                                <font color='red'>
                                                    Dataset not available !
                                                </font>
                                            </td> 
                                        </tr>
                                    </table>
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
                        vfile = "SVR03Result";
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
                            <jsp:include page="LSSVRServlet">
                                <jsp:param name="nValueC" value="<%=nValueC%>" />
                                <jsp:param name="nValueS" value="<%=nValueS%>" />
                                <jsp:param name="dHoldOut" value="<%=dHoldOut%>" />
                                <jsp:param name="dCrossValidation" value="<%=dCrossValidation%>" />

                                <jsp:param name="dNormalRadio" value="<%=dNormalRadio%>" />
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

                                <jsp:param name="stResult01Name" value="<%if (stResult01Name != null) {%><%=stResult01Name%><%}%>" />
                                <jsp:param name="stResult02Name" value="<%if (stResult02Name != null) {%><%=stResult02Name%><%}%>" />
                                <jsp:param name="stResult03Name" value="<%if (stResult03Name != null) {%><%=stResult03Name%><%}%>" />
                                <jsp:param name="stResult04Name" value="<%if (stResult04Name != null) {%><%=stResult04Name%><%}%>" />
                                <jsp:param name="stResult04cName" value="<%if (stResult04cName != null) {%><%=stResult04cName%><%}%>" />
                                <jsp:param name="stResult04dName" value="<%if (stResult04dName != null) {%><%=stResult04dName%><%}%>" />
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
                            <% if (PRadio.equals("PRadio1")) { %> 
                                <li id="MenuPOT"><a data-toggle="tab" href="#PGraph">Prediction Output of Test Data</a></li>
                            <% } else { %>
                                <li id="MenuPOP"><a data-toggle="tab" href="#PGraph">Prediction Output of Prediction Data</a></li>
                            <% } %>
                            <li id="MenuPOL"><a data-toggle="tab" href="#PTGraph">Prediction Output of Learning Data</a></li>
                        </ul>
                        <br>
                        <div class="tab-content">
                            <div id="Main" class="tab-pane fade in active">
                                <a href="#Optimum">Performance</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <a href="#Report">Analysis report</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <% if (PRadio.equals("PRadio1")) { %> 
                                    <a href="#Performance">Test and learning data with prediction</a>
                                <% } else { %>
                                    <a href="#Performance">Prediction and learning data with prediction</a>
                                <% } %> 
                                <br>
                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="Optimum">Main Output</font></b>
                                    <a href="#Report"><span class="glyphicon glyphicon-menu-down"></span></a>
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                    <br><br>
                                    <u><font size="4">Best performance</font></u>
                                </center>
                                <br>
                                    
                                <%  File a = new File(stResult01Name);
                                if (stResult01Name != "" && a.exists() && !a.isDirectory()) {  
                                    String file = stResult01Name; 
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
                                        sBestFold=cols[2];
                                        nBestFold = (int)Double.parseDouble(cols[2]);
                                        %>
                                        <center>
                                            <div> 
                                                <table>
                                                    <tr>
                                                        <% if (PRadio.equals("PRadio1")) { %> 
                                                            <td align="right">Mean RMSE of Test Data</td>
                                                        <% } else { %>
                                                            <td align="right">Mean RMSE of Prediction Data</td>
                                                        <% } %>
                                                        <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td align="left"><%=cols[0]%></td>
                                                    </tr> 
                                                    <tr>
                                                        <% if (PRadio.equals("PRadio1")) { %> 
                                                            <td align="right">Mean R of Test Data</td> 
                                                        <% } else { %>
                                                            <td align="right">Mean R of Prediction Data</td> 
                                                        <% } %>
                                                        <td align="center">=</td> 
                                                        <td align="left"><%=cols[1]%></td>
                                                    </tr> 
                                                    <tr>
                                                        <td align="right">Best Fold</td> 
                                                        <td align="center">=</td> 
                                                        <td align="left"><%=cols[2]%></td>
                                                    </tr> 
                                                    <tr>
                                                        <td align="right">Computing time, s (sec)</td> 
                                                        <td align="center">=</td> 
                                                        <td align="left"><%=cols[3]%></td>
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
                                    <% if (PRadio.equals("PRadio1")) { %> 
                                        <u><font size="4" id="Partition">Performance of learning and test data</font></u>
                                    <% } else { %>
                                        <u><font size="4" id="Partition">Performance of learning and prediction data</font></u>
                                    <% } %>
                                    <br>
                                </center>
                                <br>
                                
                                <% File b = new File(stResult02Name);
                                    String[][] datatemp2 = new String[21][9];
                                    if (stResult02Name != "" && b.exists() && !b.isDirectory()) {  
                                        String file = stResult02Name;
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
                                        ncol = cols.length;
                                        j=0;
                                        while (stemp == "1") {
                                            for (i = 0; i < ncol; i += 1) {
                                                datatemp[j][i]=cols[i];
                                            }
                                            j=j+1;
                                            line = br.readLine();
                                            if (line != null)
                                            {
                                                cols = line.split("\\t");
                                                ncol = cols.length;
                                                if (ncol != 8) {
                                                    stemp="0";      //to exit loop 
                                                }
                                            }
                                            else
                                            {
                                                stemp="0"; //to exit loop
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
                                                            <td align="center"><%=i+1%></td>
                                                            <% for (ii = 0; ii < 8; ii += 1) { %>
                                                                <td>&nbsp;</td>
                                                                <td align="center"><%=datatemp[i][ii]%></td> 
                                                            <% } %>
                                                            </tr>
                                                        <% } %>
                                                    </table> 
                                                    <br>
                                                        
                                                    <% 
                                                        line = br.readLine();
                                                        cols = line.split("\\t");
                                                        datatemp[0][0] = cols[0];
                                                        datatemp[1][0] = cols[1];
                                                        datatemp[2][0] = cols[2];
                                                        datatemp[3][0] = cols[3];
                                                        
                                                        line = br.readLine();
                                                        cols = line.split("\\t");
                                                        datatemp[4][0] = cols[0];
                                                        datatemp[5][0] = cols[1];
                                                        datatemp[6][0] = cols[2];
                                                        datatemp[7][0] = cols[3];
                                                    %>
                                                        
                                                    <% if (PRadio.equals("PRadio1")) { %> 
                                                        <u><font size="4">Mean performance of learning and test data</font></u>
                                                    <% } else { %>
                                                        <u><font size="4">Mean performance of learning and prediction data</font></u>
                                                    <% } %>
                                                    <br>
                                                    <br>
                                                    
                                                    <table> 
                                                        <tr>
                                                            <td align="center">Mean RMSE Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean MAE Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean MAPE Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean R Learning</td>
                                                        </tr> 
                                                        <tr>
                                                            <td align="center"><%=datatemp[0][0]%></td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center"><%=datatemp[1][0]%></td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center"><%=datatemp[2][0]%></td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center"><%=datatemp[3][0]%></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="7">&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        </tr> 
                                                        <tr>
                                                        <% if (PRadio.equals("PRadio1")) { %> 
                                                            <td align="center">Mean RMSE Test</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean MAE Test</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean MAPE Test</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean R Test</td>
                                                        <% } else { %>
                                                            <td align="center">Mean RMSE Prediction</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean MAE Prediction</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean MAPE Prediction</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean R Prediction</td>
                                                        <% } %>
                                                        </tr> 
                                                        <tr>
                                                            <td align="center"><%=datatemp[4][0]%></td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center"><%=datatemp[5][0]%></td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center"><%=datatemp[6][0]%></td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center"><%=datatemp[7][0]%></td>
                                                        </tr>
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
                                    <a href="#Optimum"><span class="glyphicon glyphicon-menu-up"></span></a> 
                                    <a href="#Performance"><span class="glyphicon glyphicon-menu-down"></span></a> 
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a> 
                                    <br>
                                </center>
                                <br>
                                
                                <% File c = new File(stResult03Name);
                                if (stResult03Name != "" && c.exists() && !c.isDirectory()) {  
                                    String file = stResult03Name;
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
                                
                                <% File d = new File(stResult04Name);
                                if (stResult04Name != "" && d.exists() && !d.isDirectory()) {  
                                    String file = stResult04Name;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    int colcount = 0;
                                    int rowcount = 0;
                                    int coln;
                                    String sent;
                                    //colcount = br.readLine().split("\\t").length;
                                    while ((sent = br.readLine()) != null)
                                    {
                                        coln = sent.split("\\t").length;
                                        if (colcount < coln)
                                        {
                                            colcount = coln;
                                        }
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
                                    int ncol2;                                    
                                    stemp="1"; //initial value
                                    i=1;
                                    ii=1;
                                    String[][] datatemp = new String[rowcount][colcount];
                                    String[][] datatemp3 = new String[rowcount][colcount];

                                    // first block
                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    j=0;
                                    while (stemp == "1") {
                                        for (i = 0; i < 8; i += 1) {
                                            datatemp2[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        if (j == nBestFold) {
                                            datatemp[0][0]=cols[0];
                                            datatemp[0][1]=cols[1];
                                            datatemp[0][2]=cols[2];
                                            datatemp[0][3]=cols[3];
                                            datatemp[0][4]=cols[4];
                                            datatemp[0][5]=cols[5];
                                            datatemp[0][6]=cols[6];
                                            datatemp[0][7]=cols[7];
                                        }
                                        line = br.readLine();
                                        cols = line.split("\\t");
                                        ncol = cols.length;
                                        if (ncol != 8) {
                                            stemp="0";      //to exit loop 
                                        }
                                    } %>

                                    
                                    <% stemp = "1";
                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    j=0;
                                    ncol2 = ncol;
                                    while (stemp == "1") {
                                        for (i = 0; i < ncol; i += 1) { 
                                            datatemp3[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        line = br.readLine();
                                        cols = line.split("\\t");
                                        ncol = cols.length;
                                        if (ncol != ncol2) {
                                            stemp="0";      //to exit loop 
                                        }
                                    }
                                    int ncol3 = ncol2;
                                    %> 

                                    <%
                                    /**/
                                    stemp = "1";
                                    line = br.readLine(); 
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    ncol2 = ncol;
                                    jj=0;
                                    while (line != null && stemp == "1") {
                                        cols = line.split("\\t");
                                        for (i = 0; i < ncol; i += 1) {
                                            datatemp[jj][i]=cols[i]; 
                                        }
                                        jj=jj+1; 
                                        line = br.readLine();
                                        if (line != null) {
                                            cols = line.split("\\t");
                                            ncol = cols.length;
                                            if (ncol != ncol2) {
                                                stemp="0";      //to exit loop 
                                            }
                                        }
                                        //}
                                        //while (line != null) {
                                    }/**/ 
                                    %>
                                    
                                    <center>
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <% if (PRadio.equals("PRadio1")) { %> 
                                                        <% for (ii = 1; ii < ncol2-1; ii += 1) { %>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">X<%=ii%></td> 
                                                        <% } %> 
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Actual Y</td> 
                                                    <% } else { %>
                                                        <% for (ii = 1; ii < ncol2; ii += 1) { %>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">X<%=ii%></td> 
                                                        <% } %> 
                                                    <% } %> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Predicted Y</td> 
                                                </tr> 
                                                <% for (i = 0; i < jj; i += 1) { %>
                                                    <tr>
                                                    <td align="center"><%=(i+1)%></td>
                                                    <td>&nbsp;</td>
                                                    <td align="center"><%=datatemp[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol2; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table>
                                            <%--<table>
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <% for (ii = 1; ii < ncol2-1; ii += 1) { %>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">X<%=ii%></td> 
                                                    <% } %> 
                                                    <%--<td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Actual Y</td> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Predicted Y</td> 
                                                </tr> 
                                                <% for (i = 0; i < jj; i += 1) { %>
                                                    <tr>
                                                    <td align="center"><%=(i+1)%></td>
                                                    <%--<td>&nbsp;</td>
                                                    <td align="center"><%=datatemp[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol2; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table>--%> 
                                        </div> 
                                    </center> 
                                    <br>
                                    
                                    <center>
                                        <u><font size="4" id="Dataset2">Learning data with predicted values of the best fold</font></u>
                                        <a href="#Dataset1"><span class="glyphicon glyphicon-triangle-top"></span></a> 
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <% for (ii = 1; ii < ncol3-1; ii += 1) { %>
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
                                                    <td align="center"><%=datatemp3[i][0]%></td>
                                                    <% for (ii = 1; ii < ncol3; ii += 1) { %>
                                                        <td>&nbsp;</td>
                                                        <td align="center"><%=datatemp3[i][ii]%></td> 
                                                    <% } %>
                                                    </tr>
                                                <% } %>
                                            </table> 
                                        </div> 
                                    </center> 
                                    
                                    <% br.close(); %>

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 

                                <br>
                                <a href="#title">
                                    <img src="Arrow top.png" alt="..." width="18" style="float:right">
                                </a>
                                <br>
                                <center id="bottomform2">
                                    <button type="button" onclick="return saveresult();" class="btn btn-primary">Save</button>
                                </center>
                            </div>

                            <div id="PGraph" class="tab-pane fade in"> 
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
                                    
                                <% File kst = new File(stResult04dName); 
                                if (stResult04dName != "" && kst.exists() && !kst.isDirectory()) {  
                                    String file = stResult04dName; 
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    int colcount = 0;
                                    int rowcount = 0;
                                    int coln;
                                    String sent;
                                    //colcount = br.readLine().split("\\t").length;
                                    while ((sent = br.readLine()) != null)
                                    {
                                        coln = sent.split("\\t").length;
                                        if (colcount < coln)
                                        {
                                            colcount = coln;
                                        }
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
                                    String[][] datatemp = new String[rowcount][colcount];

                                    line = br.readLine();
                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    nNilai2 = ncol; 

                                    while (line != null) {
                                        stemp="1";
                                        j=0;
                                        while (line != null && stemp=="1") {
                                            if (j==0) {
                                                cols = line.split("\\t");
                                                for (i = 0; i < ncol; i += 1) {
                                                    datatemp[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                                cols = line.split("\\t");
                                                nNilai1 = cols.length;
                                            }
                                            else if (nNilai1 == nNilai2) {
                                                cols = line.split("\\t");
                                                for (i = 0; i < ncol; i += 1) {
                                                    datatemp[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                                if (line != null) {
                                                    cols = line.split("\\t");
                                                    nNilai1 = cols.length;
                                                }
                                            }
                                            else {
                                                stemp="0";
                                            }
                                        }
                                        jj = jj + 1;
                                        if (jj>1) { %>
                                            <br><br>
                                        <% } %>

                                        <center>
                                        <% if (PRadio.equals("PRadio2")) { %> 
                                        <b><font size="4" id="PT1">Prediction Data - Fold No. <%=jj%></font></b>
                                        <% } else {
                                            if (jj==1) { %> <b><font size="4" id="PT1">Prediction of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT2"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>
                                            <% if (jj==2) { %> <b><font size="4" id="PT2">Prediction of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT1"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT3"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==3) { %> <b><font size="4" id="PT3">Prediction of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT2"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT4"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==4) { %> <b><font size="4" id="PT4">Prediction of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT3"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT5"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==5) { %> <b><font size="4" id="PT5">Prediction of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT4"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT6"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==6) { %> <b><font size="4" id="PT6">Prediction of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT5"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT7"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==7) { %> <b><font size="4" id="PT7">Prediction of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT6"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT8"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==8) { %> <b><font size="4" id="PT8">Prediction of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT7"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT9"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==9) { %> <b><font size="4" id="PT9">Prediction of Test Data - Fold No. <%=jj%></font></b>
                                                <a href="#PT8"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT10"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==10) { %> <b><font size="4" id="PT10">Prediction of Test Data - Fold No. <%=jj%></font></b>
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
                                                        <td align="center">Data No.</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Actual Value</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Predicted Value</td> 
                                                    </tr> 
                                                    <% for (i = 0; i < j; i += 1) { %>
                                                        <tr>
                                                        <td align="center"><%=i+1%></td>
                                                        <% for (ii = 0; ii < nNilai2; ii += 1) { %>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp[i][ii]%></td> 
                                                        <% } %>
                                                        </tr>
                                                    <% } %>
                                                </table> 
                                            </div> 
                                        </center> 
                                        <% line = br.readLine();
                                        line = br.readLine();
                                    } %>   

                                    <% br.close(); %>

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %>

                                <br>
                                <a href="#title">
                                    <img src="Arrow top.png" alt="..." width="18" style="float:right">
                                </a>
                                <br>
                                <center id="bottomform2"> 
                                    <button type="button" onclick="return saveresult();" class="btn btn-primary">Save</button>
                                </center>
                            </div>

                            <div id="PTGraph" class="tab-pane fade in">
                                <div class="edittab">
                                    <%--><label><input type="checkbox" name="TDCheck" id="TDCheck1" value="TDCheck1" onclick="fTDCheckBox(1);" checked>&nbsp;&nbsp;Fold No.:&nbsp;</label><--%>
                                    Fold No.:&nbsp;
                                    <a href="#PG1">1</a>
                                    <%if (sVariation == "3" || sVariation == "8") { %>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PG2">2</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PG3">3</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PG4">4</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PG5">5</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PG6">6</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PG7">7</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PG8">8</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PG9">9</a>
                                        <span class="glyphicon glyphicon-minus"></span> 
                                        <a href="#PG10">10</a>
                                    <% } %>
                                </div>
                                <br>
                                <br>
                                    
                                <% File jst = new File(stResult04cName); 
                                if (stResult04cName != "" && jst.exists() && !jst.isDirectory()) {  
                                    String file = stResult04cName; 
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    int colcount = 0;
                                    int rowcount = 0;
                                    int coln;
                                    String sent;
                                    //colcount = br.readLine().split("\\t").length;
                                    while ((sent = br.readLine()) != null)
                                    {
                                        coln = sent.split("\\t").length;
                                        if (colcount < coln)
                                        {
                                            colcount = coln;
                                        }
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
                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    ncol = cols.length;
                                    nNilai2 = ncol; 

                                    while (line != null) {
                                        stemp="1";
                                        j=0;
                                        while (line != null && stemp=="1") {
                                            if (j==0) {
                                                cols = line.split("\\t");
                                                for (i = 0; i < ncol; i += 1) {
                                                    datatemp[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                                cols = line.split("\\t");
                                                nNilai1 = cols.length;
                                            }
                                            else if (nNilai1 == nNilai2) {
                                                cols = line.split("\\t");
                                                for (i = 0; i < ncol; i += 1) {
                                                    datatemp[j][i]=cols[i];
                                                }
                                                j=j+1;
                                                line = br.readLine();
                                                if (line != null) {
                                                    cols = line.split("\\t");
                                                    nNilai1 = cols.length;
                                                }
                                            }
                                            else { 
                                                stemp="0";
                                            }
                                        }
                                        jj = jj + 1;
                                        if (jj>1) { %>
                                            <br><br>
                                        <% } %>

                                        <center>
                                            <% if (jj==1) { %> <b><font size="4" id="PG1">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG2"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>
                                            <% if (jj==2) { %> <b><font size="4" id="PG2">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG1"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG3"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==3) { %> <b><font size="4" id="PG3">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG2"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG4"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==4) { %> <b><font size="4" id="PG4">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG3"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG5"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==5) { %> <b><font size="4" id="PG5">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG4"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG6"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==6) { %> <b><font size="4" id="PG6">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG5"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG7"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==7) { %> <b><font size="4" id="PG7">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG6"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG8"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==8) { %> <b><font size="4" id="PG8">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG7"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG9"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==9) { %> <b><font size="4" id="PG9">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG8"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG10"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==10) { %> <b><font size="4" id="PG10">Prediction of Learning Data - Fold No. <%=jj%></font></b>
                                                <a href="#PG9"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                        </center>
                                        <br>

                                        <center>
                                            <div> 
                                                <table>
                                                    <tr>
                                                        <td align="center">Data No.</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Actual Value</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">Predicted Value</td> 
                                                    </tr> 
                                                    <% for (i = 0; i < j; i += 1) { %>
                                                        <tr>
                                                        <td align="center"><%=i+1%></td>
                                                        <% for (ii = 0; ii < nNilai2; ii += 1) { %>
                                                            <td>&nbsp;</td>
                                                            <td align="center"><%=datatemp[i][ii]%></td> 
                                                        <% } %>
                                                        </tr>
                                                    <% } %>
                                                </table> 
                                            </div> 
                                        </center> 
                                        <% line = br.readLine();
                                        line = br.readLine();
                                    } %>   

                                    <% br.close(); %>

                                <% } else { %>  
                                    <center><div><table><tr>  
                                        <td align="center">
                                            <h4><font color='red'>Output file not found !</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %>

                                <br>
                                <a href="#title">
                                    <img src="Arrow top.png" alt="..." width="18" style="float:right">
                                </a>
                                <br>
                                <center id="bottomform2">
                                    <button type="button" onclick="return saveresult();" class="btn btn-primary">Save</button>
                                </center>
                            </div>
                            <br>
                            <!--<div id="TPGraph" class="tab-pane fade in">
                                <br>
                                <br>
                                <br>
                                <center>
                                    <i><font color="red" size="4">... n.a. for baseline system.</font></i>
                                </center>
                            </div>-->
                        </div>
                    </div>
                                
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
                                        <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Type:</font></b></h4>
                                    </td>
                                    <td>&nbsp;&nbsp;&nbsp;</td>
                                    <td align="right">
                                        <% if (PRadio.equals("PRadio1")) { %> 
                                            <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Prediction Graph of Test Data</font></h4>
                                        <% } else { %>
                                            <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Prediction Graph of Prediction Data</font></h4>
                                        <% } %>
                                    </td>
                                    <td>&nbsp;&nbsp;&nbsp;</td>
                                    <td>
                                        <button type="button" onclick="return plotgraph(31);">Fold #1</button>
                                        <% if (PRadio.equals("PRadio1")) { %>
                                            <% if (TORadio.equals("TORadio3")) { %>
                                                <button type="button" onclick="return plotgraph(32);">#2</button>
                                                <button type="button" onclick="return plotgraph(33);">#3</button>
                                                <button type="button" onclick="return plotgraph(34);">#4</button>
                                                <button type="button" onclick="return plotgraph(35);">#5</button>
                                                <button type="button" onclick="return plotgraph(36);">#6</button>
                                                <button type="button" onclick="return plotgraph(37);">#7</button>
                                                <button type="button" onclick="return plotgraph(38);">#8</button>
                                                <button type="button" onclick="return plotgraph(39);">#9</button>
                                                <button type="button" onclick="return plotgraph(310);">#10</button>
                                                <%--><button type="button" onclick="return plotgraph(35);">All Data</button><--%>
                                            <% } else { %>
                                                <% if ((int)Double.parseDouble(sBestFold) != 1) { %> 
                                                    <script>
                                                        document.getElementById("sBestFold").value = 1;
                                                    </script>
                                                <% } %>

                                                <%if ((int)Double.parseDouble(sGraphNo) >= 41) { %>        
                                                    <script>
                                                        document.getElementById("sGraphNo").value = 41;
                                                    </script>
                                                <% } else { %>
                                                    <script>
                                                        document.getElementById("sGraphNo").value = 31;
                                                    </script>
                                                <% } %>
                                            <% } %>
                                        <% } else { %>
                                            <% if ((int)Double.parseDouble(sBestFold) != 1) { %> 
                                                <script>
                                                    document.getElementById("sBestFold").value = 1;
                                                </script>
                                            <% } %>

                                            <%if ((int)Double.parseDouble(sGraphNo) >= 41) { %>        
                                                <script>
                                                    document.getElementById("sGraphNo").value = 41;
                                                </script>
                                            <% } else { %>
                                                <script>
                                                    document.getElementById("sGraphNo").value = 31;
                                                </script>
                                            <% } %>
                                        <% } %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;</td>
                                    <td align="right">
                                        <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Prediction Graph of Learning Data</font></h4>
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
                                                <%--><button type="button" onclick="return plotgraph(35);">All Data</button><--%>
                                            <% } %>
                                        <% } %> 
                                    </td>
                                </tr>
                            </table>
                                    
                            <center>
                                <% // calling matlab graphic - performance
                                    opt=(int)Double.parseDouble(sopt); 
                                    GraphNo=(int)Double.parseDouble(sGraphNo);

                                    vpath = application.getRealPath("/"); 

                                    vfile = sBaseFileName;                 
                                    if (vfile == "") { 
                                        vfile = "SVR03Result";
                                    }
                                %>
                                
                                <br>
                                
                                <% if (GraphNo == 31) { %>
                                    <% if (PRadio.equals("PRadio1")) { %> 
                                        <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #1:</font></b></h4> 
                                    <% } else { %>
                                        <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Prediction data prediction of fold #1:</font></b></h4> 
                                    <% } %>
                                <% } else if (GraphNo == 32) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #2:</font></b></h4> 
                                <% } else if (GraphNo == 33) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #3:</font></b></h4> 
                                <% } else if (GraphNo == 34) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #4:</font></b></h4> 
                                <% } else if (GraphNo == 35) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #5:</font></b></h4> 
                                <% } else if (GraphNo == 36) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #6:</font></b></h4> 
                                <% } else if (GraphNo == 37) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #7:</font></b></h4> 
                                <% } else if (GraphNo == 38) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #8:</font></b></h4> 
                                <% } else if (GraphNo == 39) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #9:</font></b></h4> 
                                <% } else if (GraphNo == 310) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #10:</font></b></h4> 
                                <% } else if (GraphNo == 41) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #1:</font></b></h4> 
                                <% } else if (GraphNo == 42) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #2:</font></b></h4> 
                                <% } else if (GraphNo == 43) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #3:</font></b></h4> 
                                <% } else if (GraphNo == 44) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #4:</font></b></h4> 
                                <% } else if (GraphNo == 45) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #5:</font></b></h4> 
                                <% } else if (GraphNo == 46) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #6:</font></b></h4> 
                                <% } else if (GraphNo == 47) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #7:</font></b></h4> 
                                <% } else if (GraphNo == 48) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #8:</font></b></h4> 
                                <% } else if (GraphNo == 49) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #9:</font></b></h4> 
                                <% } else if (GraphNo == 410) { %>        
                                    <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Learning data prediction of fold #10:</font></b></h4> 
                                <% } %>
                                    
                                <jsp:include page="LSSVRGraphServlet">
                                    <jsp:param name="sBestFold" value="<%=sBestFold%>" />
                                    <jsp:param name="GraphNo" value="<%=GraphNo%>" />
                                    <jsp:param name="opt" value="<%=opt%>" /> 
                                    <jsp:param name="PRadio" value="<%=PRadio%>" /> 
                                    <jsp:param name="TORadio" value="<%=TORadio%>" /> 
                                    
                                    <jsp:param name="vpath" value="<%=vpath%>" />
                                    <jsp:param name="vfile" value="<%=vfile%>" />
                                </jsp:include> 
                            </center>    
                        <% } %>
                    </div>
                    </div>  
                    <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%if (stResult01Name != null) {%><%=stResult01Name%><%}%>" />
                    <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%if (stResult02Name != null) {%><%=stResult02Name%><%}%>" />
                    <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%if (stResult03Name != null) {%><%=stResult03Name%><%}%>" />
                    <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%if (stResult04Name != null) {%><%=stResult04Name%><%}%>" />
                    <input type="hidden" name="stResult04cName" id="stResult04cName" value="<%if (stResult04cName != null) {%><%=stResult04cName%><%}%>" />
                    <input type="hidden" name="stResult04dName" id="stResult04dName" value="<%if (stResult04dName != null) {%><%=stResult04dName%><%}%>" />
                    </div>
                    </div>
                </div>
            </form>
        </div>
        <% } %>
        
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
