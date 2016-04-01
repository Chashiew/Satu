<%-- 
    Document   : ModuleLSSVM
    Created on : Sep 20, 2015, 11:54:15 PM
    Author     : JDK
--%>

<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>

<%
    if (session.getAttribute("username") != "PiMLab" && session.getAttribute("username") != "guest")
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

    String VarB = request.getParameter("VarB");
    String VarNextLSSVM = request.getParameter("VarNextLSSVM");
    
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
    sopt = "3";
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
        sGraphType = "1";        
    };
    GraphType=(int)Double.parseDouble(sGraphType);

    String sPageControl = request.getParameter("sPageControl"); 
    if (sPageControl == null) {
        sPageControl = "1";
    }

    String sBaseFileNameLSSVM = request.getParameter("sBaseFileNameLSSVM");
    if (sBaseFileNameLSSVM == null) {
        sBaseFileNameLSSVM = "";
    }

    String vpath = request.getParameter("vpath");
    if (vpath == null) {
        vpath = "";
    }
        String vfile = request.getParameter("vfile");
        if (vfile == null) {
            vfile = "";
        }

    String suResult01 = request.getParameter("suResult01");
    if (suResult01 == null) {
        suResult01 = "";
    }
    String suResult01Name = request.getParameter("suResult01Name");
    if (suResult01Name == null) {
        suResult01Name = "";
    }
    String sufilefileResult01 = request.getParameter("sufilefileResult01");
    if (sufilefileResult01 == null) {
        sufilefileResult01 = "";
    }

    String suResult02 = request.getParameter("suResult02");
    if (suResult02 == null) {
        suResult02 = "";
    }
    String suResult02Name = request.getParameter("suResult02Name");
    if (suResult02Name == null) {
        suResult02Name = "";
    }
    String sufilefileResult02 = request.getParameter("sufilefileResult02");
    if (sufilefileResult02 == null) {
        sufilefileResult02 = "";
    }

    String suResult03 = request.getParameter("suResult03");
    if (suResult03 == null) {
        suResult03 = "";
    }
    String suResult03Name = request.getParameter("suResult03Name");
    if (suResult03Name == null) {
        suResult03Name = "";
    }
    String sufilefileResult03 = request.getParameter("sufilefileResult03");
    if (sufilefileResult03 == null) {
        sufilefileResult03 = "";
    }

    String suResult04 = request.getParameter("suResult04");
    if (suResult04 == null) {
        suResult04 = "";
    }
    String suResult04Name = request.getParameter("suResult04Name");
    if (suResult04Name == null) {
        suResult04Name = "";
    }
        String suResult04cName = request.getParameter("suResult04cName");
        if (suResult04cName == null) {
            suResult04cName = "";
        }
        String suResult04dName = request.getParameter("suResult04dName");
        if (suResult04dName == null) {
            suResult04dName = "";
        }
    String sufilefileResult04 = request.getParameter("sufilefileResult04");
    if (sufilefileResult04 == null) {
        sufilefileResult04 = "";
    }

    String sfilefile = request.getParameter("sfilefile");
    if (sfilefile == null) {
        sfilefile = "";
    }

    String sfilefileTXT = request.getParameter("sfilefileTXT");
    if (sfilefileTXT == null) {
        sfilefileTXT = "";
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
    
    String snValueCLSSVM = request.getParameter("nValueCLSSVM");
    String snValueSLSSVM = request.getParameter("nValueSLSSVM");
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

    double nValueCLSSVM;
    double nValueSLSSVM;
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
    String PRadioLSSVM = request.getParameter("PRadioLSSVM");
    String TORadioLSSVM = request.getParameter("TORadioLSSVM");
    
    String sNormalRadioLSSVM = "";
    String sPRadioLSSVM = "";
    String sTORadioLSSVM = "";

    double dNormalRadioLSSVM =0;
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
    int ncol=1;

    /*int nrow=1;
    //nrow=(int)Double.parseDouble(sdInstancesLSSVM);
    int ncol=1;
    //ncol=(int)Double.parseDouble(sdAttributesLSSVM);
    String[][] Datatrain = new String[nrow][ncol];

    int nrowP=1;
    //nrowP=(int)Double.parseDouble(sdPInstancesLSSVM);
    int ncolP=1; 
    //ncolP==(int)Double.parseDouble(sdPAttributesLSSVM);
    String[][] Datapre = new String[nrowP][ncolP];
    */
    
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
        <%
        /*
        String hdf = request.getParameter("hiddendatafile");
        if (hdf == null) {
            hdf = "0";
        }
        */
        %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NiMOPS: LSSVM</title>
        
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
                    //alert("Aha1 ...!");
                    document.getElementById("sLoadingDataSet1").value = val;
                    document.getElementById("sLoadingDataSet2").value = "";
                    document.getElementById("sLoadingDataSet3").value = "";
                    document.getElementById("sLoadingDataSet4").value = "";
                    document.getElementById("sLoadingDataSet5").value = "";
                }
                else if (val===2) {
                    //alert("Aha2 ...!");
                    document.getElementById("sLoadingDataSet1").value = "";
                    document.getElementById("sLoadingDataSet2").value = val;
                    document.getElementById("sLoadingDataSet3").value = "";
                    document.getElementById("sLoadingDataSet4").value = "";
                    document.getElementById("sLoadingDataSet5").value = "";
                }
                else if (val===3) {
                    //alert("Aha3 ...!");
                    document.getElementById("sLoadingDataSet1").value = "";
                    document.getElementById("sLoadingDataSet2").value = "";
                    document.getElementById("sLoadingDataSet3").value = val;
                    document.getElementById("sLoadingDataSet4").value = "";
                    document.getElementById("sLoadingDataSet5").value = "";
                }
                else if (val===4) {
                    //alert("Aha4 ...!");
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
                var suResult01Name = document.getElementById("suResult01Name");
                var suResult02Name = document.getElementById("suResult02Name");
                var suResult03Name = document.getElementById("suResult03Name");
                var suResult04Name = document.getElementById("suResult04Name");
                var suResult04cName = document.getElementById("suResult04cName");
                var suResult04dName = document.getElementById("suResult04dName");
                
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

            function previousscreenLSSVM() {
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var nValueSLSSVM = document.getElementById("nValueSLSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
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

                var VarB = document.getElementById("VarB");
                document.getElementById("VarB").value = "B";
                
                document.getElementById("myform2").action = "AllModulesBaseline.jsp";
                document.getElementById("myform2").submit();
                
                return valid;
            }
            
            function refreshform(val) {
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

                var sFileDataLSSVM = document.getElementById("sFileDataLSSVM");
                var sdInstancesLSSVM = document.getElementById("sdInstancesLSSVM");
                var sdAttributesLSSVM = document.getElementById("sdAttributesLSSVM");

                var sPFileDataLSSVM = document.getElementById("sPFileDataLSSVM");
                var sPdInstancesLSSVM = document.getElementById("sdPInstancesLSSVM");
                var sPdAttributesLSSVM = document.getElementById("sdPAttributesLSSVM");

                var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                
                var suResult01Name = document.getElementById("suResult01Name");
                var suResult02Name = document.getElementById("suResult02Name");
                var suResult03Name = document.getElementById("suResult03Name");
                var suResult04Name = document.getElementById("suResult04Name");
                var suResult04cName = document.getElementById("suResult04cName");
                var suResult04dName = document.getElementById("suResult04dName");
                
                document.getElementById("myform2").action = "ModuleLSSVM.jsp";
                document.getElementById("myform2").submit();
                
                return valid;
            }
            
            function changetab(val) {
                var sProcessRun = document.getElementById("sProcessRun");
                sProcessRun = "";
                document.getElementById("sProcessRun").value = sProcessRun;
                
                if (val === 1) {
                    document.getElementById("sPageControl").value = "1";
                }
                else if (val === 2) {
                    document.getElementById("sPageControl").value = "2";
                }
                else {
                    document.getElementById("sPageControl").value = "3";
                }
                return refreshform(val);
            } 
            
            function plotgraph(val) {
                //alert("Aha1 ...!");
                document.getElementById("sGraphNo").value = val;

                var sGraphType = document.getElementById("sGraphType");
                if (sGraphNo.value==="41") {
                    //alert("Aha2 ...!");
                    if (sGraphType.value==="1") {
                        //alert("Aha21 ...!");
                        document.getElementById("sGraphType").value = 2;
                    }
                    else if (sGraphType.value==="2") {
                        //alert("Aha22 ...!");
                        document.getElementById("sGraphType").value = 3;
                    }
                    else if (sGraphType.value==="3") {
                        //alert("Aha23 ...!");
                        document.getElementById("sGraphType").value = 1;
                    }
                    else {
                        //alert("Aha24 ...!");
                        document.getElementById("sGraphType").value = 1;
                    }
                }

                document.getElementById("sopt").value = 3;
                
                //alert("Aha4 ...!");
                return refreshform(val);
            } 
        </script>
    </head>
    <body>
        <div class="sfawrap">
            <center>
                <img src="headhomepagesub.jpg" alt="Image Not Found ..." width="1000">
            </center>
            <%@include file="navmenu.jsp" %>

        <% if (VarSaveData != null) { %>
            
        <% } else if (VarLoadData != null) { %>

        <% } else if (VarReportData != null) { %>
            <%
                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-Disposition", "inline; filename="
                        + "Data_LSSVM.xls");

                int iRadio = 0;

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
            %>

            <form>
                <h2>
                    LSSVM Data:
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
                        <td>nValueCLSSVM</td>
                        <td><%=nValueCLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Value of Sigma</td>
                        <td>nValueSLSSVM</td>
                        <td><%=nValueSLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Hold-Out (%)</td>
                        <td>dHoldOutLSSVM</td>
                        <td><%=dHoldOutLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Cross-Validation (%)</td>
                        <td>dCrossValidationLSSVM</td>
                        <td><%=dCrossValidationLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <%
                    sNormalRadioLSSVM = "...";
                    if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                        sNormalRadioLSSVM = "Original value";
                        iRadio = 1;
                    }
                    else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                        sNormalRadioLSSVM = "Feature scaling";
                        iRadio = 2;
                    }
                    %>
                    
                    <tr>
                        <td>5</td>
                        <td>Normalization Method</td>
                        <td>sNormalRadioLSSVM</td>
                        <td><%=iRadio%></td>
                        <td><%=sNormalRadioLSSVM%></td>
                    </tr>
                    
                    <%
                    sPRadioLSSVM = "...";
                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                        sPRadioLSSVM = "Evaluation";
                        iRadio = 1;
                    }
                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                        sPRadioLSSVM = "Prediction";
                        iRadio = 2;
                    }
                    %>
                    <tr>
                        <td>6</td>
                        <td>Purpose</td>
                        <td>sPRadioLSSVM</td>
                        <td><%=iRadio%></td>
                        <td><%=sPRadioLSSVM%></td>
                    </tr>

                    <%
                    sTORadioLSSVM = "...";
                    if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                        sTORadioLSSVM = "Use learning dataset";
                        iRadio = 1;
                    }
                    else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                        sTORadioLSSVM = "Use test dataset";
                        iRadio = 4;
                    }
                    else if (TORadioLSSVM.equals("TORadio2LSSVM")) {
                        sTORadioLSSVM = "Hold-out";
                        iRadio = 2;
                    }
                    else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                        sTORadioLSSVM = "Cross-validation";
                        iRadio = 3;
                    }
                    %>

                    <tr>
                        <td>7</td>
                        <td>Test Option</td>
                        <td>sTORadioLSSVM</td>
                        <td><%=iRadio%></td>
                        <td><%=sTORadioLSSVM%></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Dataset</td>
                        <td>sDataFileLSSVM</td>
                        <td><%=sFileNameLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>No. of Attributes</td>
                        <td>nDFAttributesLSSVM</td>
                        <td><%=nDFAttributesLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>No. of Instances</td>
                        <td>nDFInstancesLSSVM</td>
                        <td><%=nDFInstancesLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>Test Dataset</td>
                        <td>sTestDataFileLSSVM</td>
                        <td><%=sTestFileNameLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>No. of Attributes</td>
                        <td>nTDFAttributesLSSVM</td>
                        <td><%=nTDFAttributesLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>No. of Instances</td>
                        <td>nTDFInstancesLSSVM</td>
                        <td><%=nTDFInstancesLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td>Learning Dataset</td>
                        <td>sLearningDataFileLSSVM</td>
                        <td><%=sLearningFileNameLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td>No. of Attributes</td>
                        <td>nLDFAttributesLSSVM</td>
                        <td><%=nLDFAttributesLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>16</td>
                        <td>No. of Instances</td>
                        <td>nLDFInstancesLSSVM</td>
                        <td><%=nLDFInstancesLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>17</td>
                        <td>Prediction Dataset</td>
                        <td>sPredictionDataFileLSSVM</td>
                        <td><%=sPredictionFileNameLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>18</td>
                        <td>No. of Attributes</td>
                        <td>nPDFAttributesLSSVM</td>
                        <td><%=nPDFAttributesLSSVM%></td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>19</td>
                        <td>No. of Instances</td>
                        <td>nPDFInstancesLSSVM</td>
                        <td><%=nPDFInstancesLSSVM%></td>
                        <td>-</td>
                    </tr>
                </table>
            </form>
                        
        <% } else if (VarNextLSSVM != null) { %>
            <form action="ModuleLSSVM.jsp" name="myform2" id="myform2">
                <%
                nValueCLSSVM = Float.parseFloat(snValueCLSSVM);
                nValueSLSSVM = Float.parseFloat(snValueSLSSVM);

                if (PRadioLSSVM.equals("PRadio1LSSVM"))
                {
                    dHoldOutLSSVM = Float.parseFloat(sdHoldOutLSSVM);  
                    dCrossValidationLSSVM = Float.parseFloat(sdCrossValidationLSSVM); 
                }
                else
                {
                    dHoldOutLSSVM = 20.0;
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
                
                <input type="hidden" name="VarB" id="VarB" value="<%=VarB%>"/> 

                <input type="hidden" name="VarNextLSSVM" id="VarNextLSSVM" value="<%=VarNextLSSVM%>"/>

                <input type="hidden" name="nValueCLSSVM" id="nValueCLSSVM" value="<%=nValueCLSSVM%>"/>
                <input type="hidden" name="nValueSLSSVM" id="nValueSLSSVM" value="<%=nValueSLSSVM%>"/>
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
                
                <input type="hidden" name="vpath" id="vpath" value="<%=vpath%>"/> 
                <input type="hidden" name="vfile" id="vfile" value="<%=vfile%>"/>

                <input type="hidden" name="sPageControl" id="sPageControl" value="<%=sPageControl%>"/>

                <input type="hidden" name="sopt" id="sopt" value="<%=sopt%>"/>
                <input type="hidden" name="sGraphNo" id="sGraphNo" value="<%=sGraphNo%>"/>
                <input type="hidden" name="sBestFold" id="sBestFold" value="<%=sBestFold%>"/>
                <input type="hidden" name="sGraphType" id="sGraphType" value="<%=sGraphType%>" /> 
                
                <input type="hidden" name="sProcessRun" id="sProcessRun" value="<%=sProcessRun%>"/>
                
                <br>
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
                    </ul>
                </div>
                <br>

                <%
                suResult01Name = application.getRealPath("/") + sBaseFileNameLSSVM +"01.txt";
                suResult02Name = application.getRealPath("/") + sBaseFileNameLSSVM +"02.txt";
                suResult03Name = application.getRealPath("/") + sBaseFileNameLSSVM +"03.txt";
                suResult04Name = application.getRealPath("/") + sBaseFileNameLSSVM +"04.txt";
                suResult04cName = application.getRealPath("/") + sBaseFileNameLSSVM +"04c.txt";
                suResult04dName = application.getRealPath("/") + sBaseFileNameLSSVM +"04d.txt";
                %>
                <script>
                    document.getElementById("suResult01Name").value = suResult01Name;
                    document.getElementById("suResult02Name").value = suResult02Name;
                    document.getElementById("suResult03Name").value = suResult03Name;
                    document.getElementById("suResult04Name").value = suResult04Name;
                    document.getElementById("suResult04cName").value = suResult04cName;
                    document.getElementById("suResult04dName").value = suResult04dName;
                </script>

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

                            <%--><font color="black" face="Arial" size="2" style="float:right">Base output file name:&nbsp;&nbsp;<%=sBaseFileNameLSSVM%>&nbsp;&nbsp;&nbsp;&nbsp;</font><--%>
                            
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
                                <div title="View pre-computed numerical results..." onclick="changetab(2)">
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
                    <input type="hidden" name="sBaseFileNameLSSVM" id="sBaseFileNameLSSVM" value="<%=sBaseFileNameLSSVM%>">

                    <div class="bs-example">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="container boundary">
                                    <div class="row">
                                        <div class="col-md-4"><h4>Base Output File Name</h4></div>
                                        <div class="col-md-4"><h5><%=sBaseFileNameLSSVM%></h5></div>
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
                                        <div class="col-md-3">Value of C = <%=nf2.format(nValueCLSSVM)%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">Value of sigma = <%=nf2.format(nValueSLSSVM)%></div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-md-4">Test Option parameters:</div>
                                        <div class="col-md-4">Hold-out = <%=nf.format(dHoldOutLSSVM)%> (%)</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">Cross-validation = <%=nf.format(dCrossValidationLSSVM)%> (folds)</div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-md-4">Normalization Method:</div>
                                        <div class="col-md-4">
                                            <%
                                            if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                                                dNormalRadioLSSVM = 1;
                                                sNormalRadioLSSVM = "Original value";
                                            }
                                            else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                                                dNormalRadioLSSVM = 2;
                                                sNormalRadioLSSVM = "Feature scaling";
                                            }
                                            %>
                                            <%=sNormalRadioLSSVM%>
                                        </div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-md-4">Purpose:</div>
                                        <div class="col-md-3">
                                            <%
                                                sPRadioLSSVM = "...";
                                                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                    dPRadioLSSVM = 1;
                                                    sPRadioLSSVM = "Evaluation";
                                                    sDummy = "Learning Dataset: ";
                                                }
                                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
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
                                            %>
                                            <%=sPRadioLSSVM%>
                                        </div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-md-4">Test Option:</div>
                                        <div class="col-md-4">
                                            <%
                                                sTORadioLSSVM = "...";
                                                if (TORadioLSSVM.equals("TORadio2LSSVM")) { 
                                                    dTORadioLSSVM = 2;
                                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
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
                                                    }
                                                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) { %> 
                                                        -
                                                    <% }
                                                }
                                                else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                                                    dTORadioLSSVM = 3;
                                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
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
                                                    }
                                                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) { %>
                                                        -
                                                    <% }
                                                }
                                                else {
                                                    if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                                                        dTORadioLSSVM = 1;
                                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                            sTORadioLSSVM = "Use learning dataset";
                                                            sDummy = "Learning Dataset: ";
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
                                                        dTORadioLSSVM = 4;
                                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) {
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
                                                        }
                                                        else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                            sTORadioLSSVM = "-";
                                                        }
                                                    } %>

                                                <%=sTORadioLSSVM%> 
                                            <% } %>
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
                                                        Base output file name: &nbsp;<b><%=sBaseFileNameLSSVM%></b>
                                                    </font>
                                                </div><--%>
                                            <% } else { %>
                                                <div class="col-md-4">
                                                    &nbsp;
                                                </div>
                                                <%--><div class="col-md-4">
                                                    <font color="black">
                                                        Base output file name: &nbsp;<b><%=sBaseFileNameLSSVM%></b>
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
                                                Base output file name: &nbsp;<b><%=sBaseFileNameLSSVM%></b> 
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
                        /*
                        out.println("<p>");
                        out.println("sLoadingDataSet1 = "+sLoadingDataSet1);
                        out.println("sLoadingDataSet3 = "+sLoadingDataSet3);
                        */

                        if (sLoadingDataSet1 != "") {
                            sFileDataLSSVM = sFileNameLSSVM;
                        } else if (sLoadingDataSet3 != "") {
                            sFileDataLSSVM = sLearningFileNameLSSVM;
                            ncols1=ncols3;
                            nrows1=nrows3;
                        }

                        if (sFileDataLSSVM != "") {    //sFileNameLSSVM   sFileDataLSSVM
                            String file = application.getRealPath("/") + sFileDataLSSVM;
                            BufferedReader br = new BufferedReader(new FileReader(file)); 
                            String line = null;
                            int i;
                            int j; 

                            // first line: title
                            line = br.readLine();
                            if (line == null) {
                                out .println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                                        &nbsp;&nbsp;Dataset not available ... !
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
                            <button type="button" onclick="return rundata2(0);" class="btn btn-primary">Run</button>
                        </center>
                        <br>
                        <script>
                            window.scrollTo(0,document.getElementById("view").offsetTop);
                        </script> 
                    <% //#3 displaying test dataset 
                    } else if (sLoadingDataSet2 != "" || sLoadingDataSet4 != "") { 
                        /*
                        out.println("<p>");
                        out.println("sLoadingDataSet1 = "+sLoadingDataSet1);
                        out.println("sLoadingDataSet3 = "+sLoadingDataSet3);
                        */

                        if (sLoadingDataSet2 != "") {
                            sPFileDataLSSVM = sTestFileNameLSSVM; 
                        } else if (sLoadingDataSet4 != "") {
                            sPFileDataLSSVM = sPredictionFileNameLSSVM;
                            ncols2=ncols4;
                            nrows2=nrows4;
                        }

                        if (sPFileDataLSSVM != "") {    //sFileNameLSSVM   sFileData
                            String file = application.getRealPath("/") + sPFileDataLSSVM;
                            BufferedReader br = new BufferedReader(new FileReader(file)); 
                            String line = null;
                            int i;
                            int j; 

                            // first line: title
                            line = br.readLine();
                            if (line == null) {
                                out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                                            Dataset not available ... !
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
                            <button type="button" onclick="return rundata2(0);" class="btn btn-primary">Run</button>
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
                            <button type="button" onclick="return rundata2(0);" class="btn btn-primary">Run</button>
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
                            <button type="button" onclick="return rundata2(0);" class="btn btn-primary">Run</button>
                        </center>
                        <br>
                    <% } %>
                    <%
                    vpath = application.getRealPath("/"); 

                    vfile = sBaseFileNameLSSVM;               
                    if (vfile == "") { 
                        vfile = "SVM03Result";
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

                            <%
                            /*
                            out.println("dPAttributes = "+dPAttributes);
                            out.println("<br>");
                            out.println("dPInstances = "+dPInstances);
                            out.println("<br>");
                            out.println("sPFileData = "+sPFileData);
                            out.println("<br>");
                            */
                            %>

                            <jsp:include page="LSSVMServlet">
                                <jsp:param name="nValueCLSSVM" value="<%=nValueCLSSVM%>" />
                                <jsp:param name="nValueSLSSVM" value="<%=nValueSLSSVM%>" />
                                <jsp:param name="dHoldOutLSSVM" value="<%=dHoldOutLSSVM%>" />
                                <jsp:param name="dCrossValidationLSSVM" value="<%=dCrossValidationLSSVM%>" />

                                <jsp:param name="dNormalRadioLSSVM" value="<%=dNormalRadioLSSVM%>" />
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

                                <jsp:param name="suResult01Name" value="<%if (suResult01Name != null) {%><%=suResult01Name%><%}%>" />
                                <jsp:param name="suResult02Name" value="<%if (suResult02Name != null) {%><%=suResult02Name%><%}%>" />
                                <jsp:param name="suResult03Name" value="<%if (suResult03Name != null) {%><%=suResult03Name%><%}%>" />
                                <jsp:param name="suResult04Name" value="<%if (suResult04Name != null) {%><%=suResult04Name%><%}%>" />
                                <jsp:param name="suResult04cName" value="<%if (suResult04cName != null) {%><%=suResult04cName%><%}%>" />
                                <jsp:param name="suResult04dName" value="<%if (suResult04dName != null) {%><%=suResult04dName%><%}%>" />
                            </jsp:include> 	
                        <% } %>
                    <% } %>
                    </div>

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

                                <font color="black" face="Arial" size="2" style="float:right">Base output file name:&nbsp;&nbsp;<%=sBaseFileNameLSSVM%>&nbsp;&nbsp;&nbsp;&nbsp;</font>
                            
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
                            <li class="active"><a data-toggle="tab" href="#Main" id="Menu">Main Output</a></li>
                            <li><a data-toggle="tab" href="#PGraph">Prediction Output of Test Data</a></li>
                            <li><a data-toggle="tab" href="#PTGraph">Prediction Output of Learning Data</a></li>
                        </ul>
                        <br>
                        <div class="tab-content">
                            <div id="Main" class="tab-pane fade in active">
                                <a href="#Optimum">Performance</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <%--><a href="#Partition">Performance of learning and test data</a>
                                <span class="glyphicon glyphicon-minus"></span><--%>
                                <a href="#Report">Analysis report</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <a href="#Performance">Test and learning data with prediction</a>
                                <br>
                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="Optimum">Main output - Best performance</font></b>
                                    <a href="#Report"><span class="glyphicon glyphicon-menu-down"></span></a>
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                    <br>
                                </center>
                                <br>
                                
                                <% int BestFold = 1;
                                File a = new File(suResult01Name);
                                if (suResult01Name != "" && a.exists() && !a.isDirectory()) {  
                                    String file = suResult01Name;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    String line = null;
                                    int i;
                                    int j;

                                    // first and only line
                                    line = br.readLine();
                                    if (line == null) {
                                        %><center><div><table><tr>
                                            <td align="center">
                                                <h3><font color='red'>Output file empty ...!</font></h3>
                                            </td>
                                        </tr></table></div></center><% 
                                    } else {
                                        cols = line.split("\\t");
                                        BestFold = (int)Double.parseDouble(cols[2]);
                                        %>
                                        <center>
                                            <div> 
                                                <table>
                                                    <tr>
                                                        <td align="right">Percent Accuracy of Learning Data</td>
                                                        <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td align="left"><%=cols[0]%></td>
                                                    </tr> 
                                                    <tr>
                                                        <td align="right">Percent Accuracy of Test Data</td> 
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
                                            <h4><font color='red'>Output file not found ...!</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 

                                <br> 
                                <center>
                                    <font size="4" id="Partition">Performance of learning and test data</font>
                                    <%--><a href="#Optimum"><span class="glyphicon glyphicon-menu-up"></span></a> 
                                    <a href="#Report"><span class="glyphicon glyphicon-menu-down"></span></a> 
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a><--%>
                                    <br>
                                </center>
                                <br>

                                <% File b = new File(suResult02Name);
                                    String[][] datatemp2 = new String[21][9];
                                    if (suResult02Name != "" && b.exists() && !b.isDirectory()) {  
                                        String file = suResult02Name;
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
                                                if (ncol != 2) {
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
                                                    <h2><font color='red'>Output file empty ...!</font></h2>
                                                </td>
                                            </tr></table></div></center> 
                                        <% } else { %>
                                            <center>
                                                <div> 
                                                    <table>
                                                        <tr>
                                                            <td align="center">Fold No.</td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Percent Accuracy Learning</td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Percent Accuracy Test</td>
                                                        </tr>
                                                        
                                                        <% for (i = 0; i < j; i += 1) { %>
                                                            <tr>
                                                            <td align="center"><%=i+1%></td>
                                                            <% for (ii = 0; ii < 2; ii += 1) { %>
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
                                                    %>
                                                        
                                                    <font size="4">Mean performance of learning and test data</font>
                                                    <br>
                                                    <br>
                                    
                                                    <table> 
                                                        <tr>
                                                            <td align="center">Mean Percent Accuracy Learning</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean Percent Accuracy Test</td> 
                                                        </tr> 
                                                        <tr>
                                                            <td align="center"><%=datatemp[0][0]%></td>
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center"><%=datatemp[1][0]%></td>
                                                        </tr>
                                                    </table> 
                                                </div> 
                                            </center> 
                                        <% } 
                                        br.close(); 
                                    } else { %> 
                                        <center><div><table><tr>
                                            <td align="center">
                                                <h4><font color='red'>Output file not found ...!</font></h4>
                                            </td>
                                        </tr></table></div></center> 
                                    <% } %> 
                                    
                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="Report">Analysis report</font></b>
                                    <a href="#Optimum"><span class="glyphicon glyphicon-menu-up"></span></a> 
                                    <a href="#Performance"><span class="glyphicon glyphicon-menu-down"></span></a> 
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a> 
                                    <br>
                                </center>
                                <br>

                                <% File c = new File(suResult03Name);
                                if (suResult03Name != "" && c.exists() && !c.isDirectory()) {  
                                    String file = suResult03Name;
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
                                            <h4><font color='red'>Output file not found ...!</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 
                                
                                <br>
                                <br>
                                <center>
                                    <b><font size="4" id="Performance">Test data with predicted values of the best fold</font></b>
                                    <a href="#Report"><span class="glyphicon glyphicon-menu-up"></span></a> 
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a> 
                                    <br>
                                </center>
                                <br>
                                
                                <% File d = new File(suResult04Name);
                                if (suResult04Name != "" && d.exists() && !d.isDirectory()) {  
                                    String file = suResult04Name;
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
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
                                    String[][] datatemp = new String[2021][19];
                                    String[][] datatemp3 = new String[2021][19];

                                    // first block
                                    //if (sVariation == "3" || sVariation == "8") { 
                                        line = br.readLine();
                                        cols = line.split("\\t");
                                        j=0;
                                        while (line != null && stemp == "1") { 
                                            for (i = 0; i < 2; i += 1) {
                                                datatemp2[j][i]=cols[i];
                                            }
                                            j=j+1;
                                            if (j == BestFold) {
                                                datatemp[0][0]=cols[0];
                                                datatemp[0][1]=cols[1];
                                            }
                                            line = br.readLine();
                                            if (line != null) {
                                                cols = line.split("\\t");
                                                ncol = cols.length;
                                                if (ncol != 2) {
                                                    stemp="0";      //to exit loop 
                                                }
                                            }
                                        } 
                                    //} 
                                    //else {
                                    //    j=0;
                                    //}
                                    %>

                                    <%-->
                                    <center>
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td align="center">Fold No.</td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Percent Accuracy Learning</td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Percent Accuracy Test</td> 
                                                </tr> 
                                                <tr>
                                                    <td align="center"><%=BestFold%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=Double.parseDouble(datatemp[0][0])*100%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=Double.parseDouble(datatemp[0][1])*100%></td>
                                                </tr>
                                            </table> 
                                        </div> 
                                    </center> 
                                    <br>
                                    <--%>
                                    
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
                                    %> 

                                    <%
                                    /**/
                                    stemp = "1";
                                    line = br.readLine(); 
                                    cols = line.split("\\t");
                                    ncol = cols.length;
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
                                                    <% for (ii = 1; ii < ncol2-1; ii += 1) { %>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                        <td align="center">X<%=ii%></td> 
                                                    <% } %> 
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center">Actual Y</td> 
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
                                        </div> 
                                    </center>
                                    
                                    <br>
                                    <center>
                                        <font size="4">Learning data with predicted values of the best fold</font>
                                        <br>
                                        <br>
                                            
                                        <div> 
                                            <table>
                                                <tr>
                                                    <td align="center">Data No.</td>
                                                    <% for (ii = 1; ii < ncol2-1; ii += 1) { %>
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
                                                    <% for (ii = 1; ii < ncol2; ii += 1) { %>
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
                                            <h4><font color='red'>Output file not found ...!</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 

                                <br>
                                <a href="#title">
                                    <img src="Arrow top.png" alt="..." width="18" style="float:right">
                                </a>
                                <br>
                                <center id="bottomform2">
                                    <button type="button" onclick="" class="btn btn-primary">Save</button>
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
                                    
                                <% File kst = new File(suResult04dName); 
                                if (suResult04dName != "" && kst.exists() && !kst.isDirectory()) {  
                                    String file = suResult04dName; 
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
                                            <% if (jj==1) { %> <b><font size="4" id="PT1">Prediction of Test Data - Fold No. <%=jj%></font></b>
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
                                            <h4><font color='red'>Output file not found ...!</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %>

                                <br>
                                <a href="#title">
                                    <img src="Arrow top.png" alt="..." width="18" style="float:right">
                                </a>
                                <br>
                                <center id="bottomform2">
                                    <button type="button" onclick="" class="btn btn-primary">Save</button>
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
                                    
                                <% File jst = new File(suResult04cName); 
                                if (suResult04cName != "" && jst.exists() && !jst.isDirectory()) {  
                                    String file = suResult04cName; 
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
                                            <h4><font color='red'>Output file not found ...!</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %>

                                <br>
                                <a href="#title">
                                    <img src="Arrow top.png" alt="..." width="18" style="float:right">
                                </a>
                                <br>
                                <center id="bottomform2">
                                    <button type="button" onclick="" class="btn btn-primary">Save</button>
                                </center>
                            </div>

                            <!--><div id="TPGraph" class="tab-pane fade in">
                                <br>
                                <br>
                                <br>
                                <center>
                                    <i><font color="red" size="4">... n.a. for baseline system.</font></i>
                                </center>
                            </div><-->
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
                                            <a onclick="return previousscreenLSSVM();" style="float:left;">
                                                <font color="blue" face="agency FB" size="3">
                                                &nbsp;&nbsp;&nbsp;<b><u><< BACK</u></b>
                                                </font>
                                            </a>                            
                                        </td>

                                        <font color="black" face="Arial" size="2" style="float:right">Base output file name:&nbsp;&nbsp;<%=sBaseFileNameLSSVM%>&nbsp;&nbsp;&nbsp;&nbsp;</font>
                            
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
                                            <div title="View pre-computed numerical results..." onclick="changetab(2)">
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
                                            <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Prediction Graph of Test Data</font></h4>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <td>
                                            <button type="button" onclick="return plotgraph(31);">Fold #1</button>
                                            <% if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                                                <% if (TORadioLSSVM.equals("TORadio3LSSVM")) { %>
                                                    <button type="button" onclick="return plotgraph(32);">#2</button>
                                                    <button type="button" onclick="return plotgraph(33);">#3</button>
                                                    <button type="button" onclick="return plotgraph(34);">#4</button>
                                                    <button type="button" onclick="return plotgraph(35);">#5</button>
                                                    <button type="button" onclick="return plotgraph(36);">#6</button>
                                                    <button type="button" onclick="return plotgraph(37);">#7</button>
                                                    <button type="button" onclick="return plotgraph(38);">#8</button>
                                                    <button type="button" onclick="return plotgraph(39);">#9</button>
                                                    <button type="button" onclick="return plotgraph(310);">#10</button>
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
                                            <%--><button type="button" onclick="return plotgraph(35);">All Data</button><--%>
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
                                        GraphType=(int)Double.parseDouble(sGraphType);

                                        vpath = application.getRealPath("/"); 

                                        vfile = sBaseFileNameLSSVM;                 
                                        if (vfile == "") { 
                                            vfile = "SVM03Result";
                                        }
                                    %>

                                    <br>

                                    <% if (GraphNo == 31) { %>
                                        <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Test data prediction of fold #1:</font></b></h4> 
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

                                    <jsp:include page="LSSVMGraphServlet">
                                        <jsp:param name="sBestFold" value="<%=sBestFold%>" />
                                        <jsp:param name="GraphNo" value="<%=GraphNo%>" />
                                        <jsp:param name="GraphType" value="<%=GraphType%>" />
                                        <jsp:param name="opt" value="<%=opt%>" /> 
                                        <jsp:param name="PRadioLSSVM" value="<%=PRadioLSSVM%>" /> 
                                        <jsp:param name="TORadioLSSVM" value="<%=TORadioLSSVM%>" /> 
                                        <jsp:param name="vpath" value="<%=vpath%>" />
                                        <jsp:param name="vfile" value="<%=vfile%>" />
                                    </jsp:include> 
                                </center>         
                            <% } %>
                            
                            <input type="hidden" name="sBaseFileNameLSSVM" id="sBaseFileNameLSSVM" value="<%=sBaseFileNameLSSVM%>">
                        </div>
                    </div>
                        
                    <input type="hidden" name="suResult01Name" id="suResult01Name" value="<%if (suResult01Name != null) {%><%=suResult01Name%><%}%>" />
                    <input type="hidden" name="suResult02Name" id="suResult02Name" value="<%if (suResult02Name != null) {%><%=suResult02Name%><%}%>" />
                    <input type="hidden" name="suResult03Name" id="suResult03Name" value="<%if (suResult03Name != null) {%><%=suResult03Name%><%}%>" />
                    <input type="hidden" name="suResult04Name" id="suResult04Name" value="<%if (suResult04Name != null) {%><%=suResult04Name%><%}%>" />
                    <input type="hidden" name="suResult04cName" id="suResult04cName" value="<%if (suResult04cName != null) {%><%=suResult04cName%><%}%>" />
                    <input type="hidden" name="suResult04dName" id="suResult04dName" value="<%if (suResult04dName != null) {%><%=suResult04dName%><%}%>" />
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
