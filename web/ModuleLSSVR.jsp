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
    String sPageControl = request.getParameter("sPageControl"); 
    if (sPageControl == null) {
        sPageControl = "1";
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
    String stResult04aName = request.getParameter("stResult04aName");
    if (stResult04aName == null) {
        stResult04aName = "";
    } 
    String stResult04bName = request.getParameter("stResult04bName"); 
    if (stResult04bName == null) {
        stResult04bName = "";
    } 
    String stResult04cName = request.getParameter("stResult04cName"); 
    if (stResult04cName == null) {
        stResult04cName = "";
    }
    String stResult04dName = request.getParameter("stResult04dName"); 
    if (stResult04dName == null) {
        stResult04dName = "";
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

    /*
    int nrow=1;
    nrow=(int)Double.parseDouble(sdInstances);
    int ncol=1;
    ncol=(int)Double.parseDouble(sdAttributes);
    String[][] Datatrain = new String[nrow][ncol];

    int nrowP=(int)Double.parseDouble(sdPInstances);
    int ncolP=(int)Double.parseDouble(sdPAttributes);
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
                //Rev01: val
                //tanpa sBaseNameCO
                document.getElementById("sLoadingDataExcel").value = "";
                //to un-hide summary data
 
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

                document.getElementById("sLoadingDataExcelClick").value = "";
                    document.getElementById("sLoadingDataExcelClick3").value = "";
                document.getElementById("sLoadingDataExcelClick4").value = "";
                    document.getElementById("sLoadingDataExcelClick5").value = "";
                document.getElementById("sLoadingDataExcelClick6").value = "";
                
                document.getElementById("sRunReportTable").value = "0";

                return refreshform(0);
            }
    
            function closesummarydata2() {
                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

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

                return refreshform(0);
            }
            
            function rundata2(val) {
                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

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
                //alert("Aha1 ...!");
                if (sRunReportTable.value==="1") {
                    sRunReportTable = "";
                }
                else {
                    //alert("Aha14 ...!");
                    sRunReportTable = val;
                }
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
                var sResult04aName = document.getElementById("sResult04aName");
                var sResult04bName = document.getElementById("sResult04bName");
                var sResult04cName = document.getElementById("sResult04cName");
                var sResult04dName = document.getElementById("sResult04dName");
                var sResult05Name = document.getElementById("sResult05Name");
                var sResult06Name = document.getElementById("sResult06Name");
                //var sReportFileName = document.getElementById("sReportFileName");
                //var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                
                var sViewProceed = document.getElementById("sViewProceed");
                sViewProceed = "";
                document.getElementById("sViewProceed").value = sViewProceed;

                document.getElementById("sPageControl").value = "2";
                document.getElementById("sRunReportTable").value = "1";

                return refreshform(val);
            }
            
            function showsummaryreport(valData) {
                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

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
                    var sResult04aName = document.getElementById("sResult04aName");
                    var sResult04bName = document.getElementById("sResult04bName");
                    var sResult04cName = document.getElementById("sResult04cName");
                    var sResult04dName = document.getElementById("sResult04dName");
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");
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
                    var sResult04aName = document.getElementById("sResult04aName");
                    var sResult04bName = document.getElementById("sResult04bName");
                    var sResult04cName = document.getElementById("sResult04cName");
                    var sResult04dName = document.getElementById("sResult04dName");
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
                    var sResult04aName = document.getElementById("sResult04aName");
                    var sResult04bName = document.getElementById("sResult04bName");
                    var sResult04cName = document.getElementById("sResult04cName");
                    var sResult04dName = document.getElementById("sResult04dName");
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
                    var sResult04aName = document.getElementById("sResult04aName");
                    var sResult04bName = document.getElementById("sResult04bName");
                    var sResult04cName = document.getElementById("sResult04cName");
                    var sResult04dName = document.getElementById("sResult04dName");

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
                    var sResult04aName = document.getElementById("sResult04aName");
                    var sResult04bName = document.getElementById("sResult04bName");
                    var sResult04cName = document.getElementById("sResult04cName");
                    var sResult04dName = document.getElementById("sResult04dName");
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
                    var sResult04aName = document.getElementById("sResult04aName");
                    var sResult04bName = document.getElementById("sResult04bName");
                    var sResult04cName = document.getElementById("sResult04cName");
                    var sResult04dName = document.getElementById("sResult04dName");
                    var sResult05Name = document.getElementById("sResult05Name");
                    var sResult06Name = document.getElementById("sResult06Name");
                } 
                
                return refreshform(valData);
            }

            function previousscreen() {
                var nValueC = document.getElementById("nValueC");
                var nValueS = document.getElementById("nValueS");
                var dHoldOut = document.getElementById("dHoldOut");
                var dCrossValidation = document.getElementById("dCrossValidation");

                var NormalRadio = document.getElementById("NormalRadio");
                var PRadio = document.getElementById("PRadio");
                var TORadio = document.getElementById("TORadio");
                if (TORadio.value === "TORadio4")
                {
                    document.getElementById("hiddendatafile").value = "1";
                }
                else
                {
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

                var VarA = document.getElementById("VarA");
                document.getElementById("VarA").value = "One";
                
                var sLoadingDataExcel = document.getElementById("sLoadingDataExcel");
                document.getElementById("sLoadingDataExcel").value = "";

                var sLoadingDataFile = document.getElementById("sLoadingDataFile");
                document.getElementById("sLoadingDataFile").value = "";
                
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
                //var OptimRadio = document.getElementById("OptimRadio");
                //var SCRadio = document.getElementById("SCRadio");
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
                document.getElementById("sRunReportTable").value = "1";
                //
                //var sPageControl = document.getElementById("sPageControl");
                
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
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

                document.getElementById("myform2").action = "ModuleLSSVR.jsp";
                document.getElementById("myform2").submit();
                
                return valid;
            }
            
            function changetab(val) {
                if (val === 1)
                {
                    document.getElementById("sPageControl").value = "1";
                }
                else {
                    document.getElementById("sPageControl").value = "2";
                }
                //document.getElementById("sRunReportTable").value = "1";
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

            <%
            /*
            out.println("<p>");
            out.println("VarSaveData = "+VarSaveData);
            out.println("VarLoadData = "+VarLoadData);
            out.println("VarReportData = "+VarReportData);
            out.println("VarNext = "+VarNext);
            */
            %> 
                
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
                    
                    if (PRadio.equals("PRadio1"))
                    {
                        dHoldOut = Float.parseFloat(sdHoldOut);
                        dCrossValidation = Float.parseFloat(sdCrossValidation);
                    }
                    else
                    {
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

                <input type="hidden" name="sPageControl" id="sPageControl" value="<%=sPageControl%>"/>

                <br>
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
                                <div title="View pre-computed results..." onclick="changetab(2)">
                                    <%--><h3><u><i><font face="Palatino Linotype, Book Antiqua, Palatino, serif">II. The Results</font></i></u></h3><--%>
                                    <h3><font color="skyblue" face="Palatino Linotype, Book Antiqua, Palatino, serif">The Results</font></h3>
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
                                            }
                                            else if (NormalRadio.equals("NormalRadio2")) {
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
                                                    if (PRadio.equals("PRadio1")) {
                                                        sPRadio = "Evaluation";
                                                        sDummy = "Learning Dataset : ";
                                                    }
                                                    else if (PRadio.equals("PRadio2")) {
                                                        sPRadio = "Prediction";
                                                        sDummy = "Learning Dataset : "; 
                                                        sFileData = sLearningFileName;
                                                        dAttributes = snLDFAttributes;
                                                        dInstances = snLDFInstances;
                                                        sPDummy = "Prediction Dataset : ";
                                                        sPFileData = sPredictionFileName;
                                                        dPAttributes = snPDFAttributes;
                                                        dPInstances = snPDFInstances;
                                                        sVariation = "5";
                                                    }
                                                } else {
                                                    if (PRadio.equals("PRadio1")) {
                                                        sPRadio = "Evaluation";
                                                        sDummy = "Learning Dataset : ";
                                                    }
                                                    else if (PRadio.equals("PRadio2")) {
                                                        sPRadio = "Prediction";
                                                        sDummy = "Learning Dataset : "; 
                                                        sFileData = sLearningFileName;
                                                        dAttributes = snLDFAttributes;
                                                        dInstances = snLDFInstances;
                                                        sPDummy = "Prediction Dataset : ";
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
                                                sTORadio = "...";
                                                if (NormalRadio.equals("NormalRadio1")) {
                                                    if (TORadio.equals("TORadio2")) { 
                                                        if (PRadio.equals("PRadio1")) { %>
                                                            Hold-out = <%=nf.format(dHoldOut)%> (%) 
                                                            <% 
                                                            sDummy = "Learning Dataset : ";
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
                                                            sDummy = "Learning Dataset : ";
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
                                                                sTORadio = "Use learning dataset";
                                                                sDummy = "Learning Dataset : ";
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
                                                                sTORadio = "Use test dataset";
                                                                sDummy = "Learning Dataset : ";
                                                                sFileData = sFileName;
                                                                dAttributes = snDFAttributes;
                                                                dInstances = snDFInstances; 
                                                                sPDummy = "Test Dataset : ";
                                                                sPFileData = sTestFileName;
                                                                dPAttributes = snTDFAttributes; 
                                                                dPInstances = snTDFInstances; 
                                                                sVariation = "4";
                                                            }
                                                            else if (PRadio.equals("PRadio2")) {
                                                                sTORadio = "-";
                                                            }
                                                        } 
                                                    } 
                                                } else {
                                                    if (TORadio.equals("TORadio2")) { 
                                                        if (PRadio.equals("PRadio1")) { %>
                                                            Hold-out = <%=nf.format(dHoldOut)%> (%) 
                                                            <% 
                                                            sDummy = "Learning Dataset : ";
                                                            sFileData = sFileName;
                                                            dAttributes = snDFAttributes;
                                                            dInstances = snDFInstances;
                                                            sVariation = "7";
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
                                                            sDummy = "Learning Dataset : ";
                                                            sFileData = sFileName;
                                                            dAttributes = snDFAttributes;
                                                            dInstances = snDFInstances;
                                                            sVariation = "8";
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
                                                                sTORadio = "Use learning dataset";
                                                                sDummy = "Learning Dataset : ";
                                                                sFileData = sFileName;
                                                                dAttributes = snDFAttributes;  
                                                                dInstances = snDFInstances; 
                                                                sVariation = "6";
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
                                                                sTORadio = "Use test dataset";
                                                                sDummy = "Learning Dataset : ";
                                                                sFileData = sFileName;
                                                                dAttributes = snDFAttributes;
                                                                dInstances = snDFInstances; 
                                                                sPDummy = "Test Dataset : ";
                                                                sPFileData = sTestFileName;
                                                                dPAttributes = snTDFAttributes; 
                                                                dPInstances = snTDFInstances; 
                                                                sVariation = "9";
                                                            }
                                                            else if (PRadio.equals("PRadio2")) {
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
                                            <div class="col-md-4"><%=sFileData%></div>
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
                                                <div class="col-md-4">
                                                    <font color="black">
                                                        Base output file name: &nbsp;<b><%=sBaseFileName%></b>
                                                    </font>
                                                </div>
                                            <% } else { %>
                                                <div class="col-md-4">
                                                    &nbsp;
                                                </div>
                                                <div class="col-md-4">
                                                    <font color="black">
                                                        Base output file name: &nbsp;<b><%=sBaseFileName%></b>
                                                    </font>
                                                </div>
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
                                            <div class="col-md-4">
                                                <font color="black">
                                                Base output file name: &nbsp;<b><%=sBaseFileName%></b>
                                                </font>
                                            </div>
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
                            <button type="button" onclick="return rundata2(1);" class="btn btn-primary">Run</button>
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
                    
                    <% if ((int)Double.parseDouble(sRunReportTable) == 1) {
                        if (sCreate != "") {  
                            stResult01Name = application.getRealPath("/") + sBaseFileName +"01.txt";
                            stResult02Name = application.getRealPath("/") + sBaseFileName +"02.txt";
                            stResult03Name = application.getRealPath("/") + sBaseFileName +"03.txt";
                            stResult04Name = application.getRealPath("/") + sBaseFileName +"04.txt";
                            stResult04aName = application.getRealPath("/") + sBaseFileName +"04a.txt";
                            stResult04bName = application.getRealPath("/") + sBaseFileName +"04b.txt";
                            stResult04cName = application.getRealPath("/") + sBaseFileName +"04c.txt";
                            stResult04dName = application.getRealPath("/") + sBaseFileName +"04d.txt";
                            stResult05Name = application.getRealPath("/") + sBaseFileName +"05.txt";
                            stResult06Name = application.getRealPath("/") + sBaseFileName +"06.txt";
                            %>
                            <script>
                                document.getElementById("stResult01Name").value = stResult01Name;
                                document.getElementById("stResult02Name").value = stResult02Name;
                                document.getElementById("stResult03Name").value = stResult03Name;
                                document.getElementById("stResult04Name").value = stResult04Name;
                                document.getElementById("stResult04aName").value = stResult04cName;
                                document.getElementById("stResult04bName").value = stResult04cName;
                                document.getElementById("stResult04cName").value = stResult04cName;
                                document.getElementById("stResult04dName").value = stResult04dName;
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
                                        <input type="text" name="stResult01Name" id="stResult01Name" size="75" value="<%if (stResult01Name != null) {%><%=stResult01Name%><%}%>" readonly/>
                                        <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                        <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%if (stResult03Name != null) {%><%=stResult03Name%><%}%>" />
                                        <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%if (stResult04Name != null) {%><%=stResult04Name%><%}%>" />
                                        <input type="hidden" name="stResult04aName" id="stResult04aName" value="<%if (stResult04aName != null) {%><%=stResult04aName%><%}%>" />
                                        <input type="hidden" name="stResult04bName" id="stResult04bName" value="<%if (stResult04bName != null) {%><%=stResult04bName%><%}%>" />
                                        <input type="hidden" name="stResult04cName" id="stResult04cName" value="<%if (stResult04cName != null) {%><%=stResult04cName%><%}%>" />
                                        <input type="hidden" name="stResult04dName" id="stResult04dName" value="<%if (stResult04dName != null) {%><%=stResult04dName%><%}%>" />
                                        <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%if (stResult05Name != null) {%><%=stResult05Name%><%}%>" />
                                        <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%if (stResult06Name != null) {%><%=stResult06Name%><%}%>" />

                                        <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
                                        </td>
                                    </tr> 
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="4">
                                        <input type="text" name="stResult02Name" id="stResult02Name" size="75" value="<%if (stResult02Name != null) {%><%=stResult02Name%><%}%>" readonly/> 
                                        <font color="teal" face="tahoma" size="2"> &nbsp; ... validation. </font>
                                        </td>
                                    </tr>
                                    <% if (stResult05Name != "") { %>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td colspan="4">
                                            <input type="text" name="stResult05Name" id="stResult05Name" size="75" value="<%if (stResult05Name != null) {%><%=stResult05Name%><%}%>" readonly/> 
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

                                    if (stResult01Name!="") {
                                    String file = "";
                                    file = stResult01Name; 
                                    BufferedReader br = new BufferedReader(new FileReader(file));
                                    String line = null;
                                    int i;
                                    int j;

                                    // first line: title
                                    line = br.readLine();
                                    if (line == null) {
                                        out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                    if (stResult02Name!="") {
                                    String file = "";
                                    file = stResult02Name; 
                                    BufferedReader br = new BufferedReader(new FileReader(file)); 
                                    String line = null;
                                    int i;
                                    int j;

                                    // first line: title
                                    line = br.readLine(); 
                                    if (line == null) { 
                                        out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                            String file = "";
                                            file = stResult05Name;
                                            BufferedReader br = new BufferedReader(new FileReader(file));
                                            String line = null;
                                            int i;
                                            int j;

                                            // first line: title
                                            line = br.readLine();
                                            if (line == null) {
                                                out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                        var stResult04aName = document.getElementById("stResult04aName"); 
                                        var stResult04bName = document.getElementById("stResult04bName"); 
                                        var stResult04cName = document.getElementById("stResult04cName"); 
                                        var stResult04dName = document.getElementById("stResult04dName"); 
                                        var stResult05Name = document.getElementById("stResult05Name"); 
                                        var stResult06Name = document.getElementById("stResult06Name"); 
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
                                            <input type="text" name="stResult01Name" id="stResult01Name" size="75" value="<%if (stResult01Name != null) {%><%=stResult01Name%><%}%>" readonly/>
                                            <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                            <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%if (stResult03Name != null) {%><%=stResult03Name%><%}%>" />
                                            <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%if (stResult04Name != null) {%><%=stResult04Name%><%}%>" />
                                            <input type="hidden" name="stResult04aName" id="stResult04aName" value="<%if (stResult04aName != null) {%><%=stResult04aName%><%}%>" />
                                            <input type="hidden" name="stResult04bName" id="stResult04bName" value="<%if (stResult04bName != null) {%><%=stResult04bName%><%}%>" />
                                            <input type="hidden" name="stResult04cName" id="stResult04cName" value="<%if (stResult04cName != null) {%><%=stResult04cName%><%}%>" />
                                            <input type="hidden" name="stResult04dName" id="stResult04dName" value="<%if (stResult04dName != null) {%><%=stResult04dName%><%}%>" />
                                            <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%if (stResult05Name != null) {%><%=stResult05Name%><%}%>" />
                                            <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%if (stResult06Name != null) {%><%=stResult06Name%><%}%>" />
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
                                                <input type="text" name="stResult05Name" id="stResult05Name" size="75" value="<%if (stResult05Name != null) {%><%=stResult05Name%><%}%>" readonly/> 
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

                                        if (stResult01Name!="") {
                                        String file = ""; 
                                        file = stResult01Name;
                                        BufferedReader br = new BufferedReader(new FileReader(file));
                                        String line = null;
                                        int i;
                                        int j;

                                        // first line: title
                                        line = br.readLine();
                                        if (line == null) {
                                            out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                        if (stResult02Name!="") {
                                        String file = ""; 
                                        file = stResult02Name;
                                        BufferedReader br = new BufferedReader(new FileReader(file));
                                        String line = null;
                                        int i;
                                        int j;

                                        // first line: title
                                        line = br.readLine();
                                        if (line == null) {
                                            out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                                String file = ""; 
                                                file = stResult05Name;
                                                BufferedReader br = new BufferedReader(new FileReader(file));
                                                String line = null;
                                                int i;
                                                int j;

                                                // first line: title
                                                line = br.readLine(); 
                                                if (line == null) { 
                                                    out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                            <input type="text" name="stResult01Name" id="stResult01Name" size="60" value="<%if (stResult01Name != null) {%><%=stResult01Name%><%}%>" readonly/>
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
                                            <input type="text" name="stResult02Name" id="stResult02Name" size="60" value="<%=stResult02Name%>" readonly/>
                                            <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%if (stResult03Name != null) {%><%=stResult03Name%><%}%>" />
                                            <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%if (stResult04Name != null) {%><%=stResult04Name%><%}%>" />
                                            <input type="hidden" name="stResult04aName" id="stResult04aName" value="<%if (stResult04aName != null) {%><%=stResult04aName%><%}%>" />
                                            <input type="hidden" name="stResult04bName" id="stResult04bName" value="<%if (stResult04bName != null) {%><%=stResult04bName%><%}%>" />
                                            <input type="hidden" name="stResult04cName" id="stResult04cName" value="<%if (stResult04cName != null) {%><%=stResult04cName%><%}%>" />
                                            <input type="hidden" name="stResult04dName" id="stResult04dName" value="<%if (stResult04dName != null) {%><%=stResult04dName%><%}%>" />
                                            <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%if (stResult05Name != null) {%><%=stResult05Name%><%}%>" />
                                            <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%if (stResult06Name != null) {%><%=stResult06Name%><%}%>" />
                                            <input type="hidden" name="stBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
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
                                                -->
                                                <a href="stop.jsp?<%=params%>">Stop</a>
                                            <% } else {%>
                                                <!--
                                                <FORM METHOD="GET" ACTION="start.jsp">
                                                <INPUT TYPE="SUBMIT" VALUE="Start">
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
                                                out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                                        Datatrains[j][i]=cols[i];
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
                                                out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                                        Datapres[j][i]=cols[i];
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

                                            <jsp:param name="sReportFileName" value="<%=sReportFileName%>" />
                                            <jsp:param name="sReportFileNameTXT" value="<%=sReportFileNameTXT%>" />

                                            <jsp:param name="vpath" value="<%=vpath%>" />
                                            <jsp:param name="vfile" value="<%=vfile%>" />

                                            <jsp:param name="stResult01Name" value="<%if (stResult01Name != null) {%><%=stResult01Name%><%}%>" />
                                            <jsp:param name="stResult02Name" value="<%if (stResult02Name != null) {%><%=stResult02Name%><%}%>" />
                                            <jsp:param name="stResult03Name" value="<%if (stResult03Name != null) {%><%=stResult03Name%><%}%>" />
                                            <jsp:param name="stResult04Name" value="<%if (stResult04Name != null) {%><%=stResult04Name%><%}%>" />
                                            <jsp:param name="stResult04aName" value="<%if (stResult04aName != null) {%><%=stResult04aName%><%}%>" />
                                            <jsp:param name="stResult04bName" value="<%if (stResult04bName != null) {%><%=stResult04bName%><%}%>" />
                                            <jsp:param name="stResult04cName" value="<%if (stResult04cName != null) {%><%=stResult04cName%><%}%>" />
                                            <jsp:param name="stResult04dName" value="<%if (stResult04dName != null) {%><%=stResult04dName%><%}%>" />
                                            <jsp:param name="stResult05Name" value="<%if (stResult05Name != null) {%><%=stResult05Name%><%}%>" />
                                            <jsp:param name="stResult06Name" value="<%if (stResult06Name != null) {%><%=stResult06Name%><%}%>" />
                                        </jsp:include> 	
                                    <% } %>
                                <% } %>
                            <% } else { %> 
                                <%--> End of sViewProceed + Click on button RUN <--%>
                                <%
                                    /*
                                    out.println("sBaseFileName = "+sBaseFileName);
                                    out.println("<br>");
                                    */
                                    if (sBaseFileName!="") {
                                        /*
                                        out.println("sRunReportTable = "+sRunReportTable);
                                        out.println("<br>");
                                        */
                                        stResult01Name = application.getRealPath("/") + sBaseFileName +"01.txt";
                                        stResult02Name = application.getRealPath("/") + sBaseFileName +"02.txt";
                                        stResult03Name = application.getRealPath("/") + sBaseFileName +"03.txt";
                                        stResult04Name = application.getRealPath("/") + sBaseFileName +"04.txt";
                                        stResult04aName = application.getRealPath("/") + sBaseFileName +"04a.txt";
                                        stResult04bName = application.getRealPath("/") + sBaseFileName +"04b.txt";
                                        stResult04cName = application.getRealPath("/") + sBaseFileName +"04c.txt";
                                        stResult04dName = application.getRealPath("/") + sBaseFileName +"04d.txt";
                                        stResult05Name = application.getRealPath("/") + sBaseFileName +"05.txt";
                                        stResult06Name = application.getRealPath("/") + sBaseFileName +"06.txt";

                                        %>
                                        <script>
                                            document.getElementById("sBaseFileName").value = sBaseFileName.value;
                                        </script>

                                        <table style="display:none;">
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>
                                                    <b> Output Files: </b>
                                                </td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult01Name" id="stResult01Name" size="65" value="<%if (stResult01Name != null) {%><%=stResult01Name%><%}%>" readonly/>
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Main results - Optimum hyperparameters</font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult02Name" id="stResult02Name" size="65" value="<%if (stResult02Name != null) {%><%=stResult02Name%><%}%>" readonly/>
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Hyperparameters; Performance of training and validation partitions</font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult03Name" id="stResult03Name" size="65" value="<%if (stResult03Name != null) {%><%=stResult03Name%><%}%>" readonly/> 
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Analysis report</font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult04Name" id="stResult04Name" size="65" value="<%if (stResult04Name != null) {%><%=stResult04Name%><%}%>" readonly/>
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Learning and test performances; Test dataset and predicted values</font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult04aName" id="stResult04aName" size="65" value="<%if (stResult04aName != null) {%><%=stResult04aName%><%}%>" readonly/>
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Prediction graph of training partition from learning dataset</font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult04bName" id="stResult04bName" size="65" value="<%if (stResult04bName != null) {%><%=stResult04bName%><%}%>" readonly/>
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Prediction graph of validation partition from learning dataset </font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult04cName" id="stResult04cName" size="65" value="<%if (stResult04cName != null) {%><%=stResult04cName%><%}%>" readonly/>
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Prediction graph of learning dataset </font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult04dName" id="stResult04dName" size="65" value="<%if (stResult04dName != null) {%><%=stResult04dName%><%}%>" readonly/>
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Prediction graph of test dataset </font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult05Name" id="stResult05Name" size="65" value="<%if (stResult05Name != null) {%><%=stResult05Name%><%}%>" readonly/>
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Performance trajectory graph of test dataset </font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <input type="text" name="stResult06Name" id="stResult06Name" size="65" value="<%if (stResult06Name != null) {%><%=stResult06Name%><%}%>" readonly/>
                                                    &nbsp;
                                                    <font color="teal" face="tahoma" size="2">Tracing path graph of test dataset </font>
                                                </td>
                                            </tr>
                                        </table>                
                                        <%
                                    }
                                    else {
                                        /*
                                        out.println("sRunReportTable = "+sRunReportTable);
                                        out.println("<br>");
                                        out.println("sBaseFileName = "+sBaseFileName);
                                        out.println("<br>");
                                        */
                                        %>
                                        <script>
                                            document.getElementById("sBaseFileName").value = "Result";
                                        </script>
                                        <%
                                    } 
                            }
                        }
                    }
                    else if ((int)Double.parseDouble(sRunReportTable) == 2) {
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
                                out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                    out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                
                <% if (sRunReportTable == "") { %> 
                <%--><h6 id="bottompage">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    &nbsp;. . . [END OF OUTPUT FORM] &nbsp;&nbsp;&nbsp;
                    <a href="#top">
                    <img src="arrowup.JPG" alt="..." width="18">
                    </a>
                    <div class="scrollToTop">
                          <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                </h6><--%>
                <% } %>
                <%-->
                <table>
                    <tr>
                        <td style="width: 10%">
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
                            
                            <input type="submit" name="VarGraph" value="GRAPHIC" onclick="return rundata2(4);" />
                            <input type="submit" name="VarTable" value="CONVERGENCE" onclick="return loadingdataform();" />
                            <input type="submit" name="VarGraph" value="TRAJECTORY" />
                            <input type="submit" name="VarSeries" value="TIME SERIES" />
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
                <--%>

                    <% //#1 displaying input data: 
                    if (sLoadingDataExcelClick != "") { 
                    %>

                    <% //#3 displaying test dataset 
                    } else if (sLoadingDataExcelClick3 != "") {  
                    %>

                    <% 
                    } else if (sLoadingDataExcelClick4 != "") {
                    %>
                        <%--Fileopen.mat Filetest.mat Fileopen.mat FilePredict.mat--%>
                        <div class="bs-example">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="container boundary">
                                        <table>
                                            <tr>
                                                <td>
                                                    <b> Test Dataset: </b>
                                                </td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    <a onclick="return closesummarydata2();">
                                                        <img src="Icon-2ArrowLeft.png" alt="..." width="11" height="17">
                                                    </a>
                                                </td>
                                                <td>&nbsp;&nbsp;</td>
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
                                                        out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                                        &nbsp;&nbsp;Test dataset not available ... !
                                                        </font>
                                                    </td>
                                                </tr>
                                                <% } %>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <% //#4 displaying learning dataset 
                    } else if (sLoadingDataExcelClick5 != "") { 
                    %>
                        <table>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <b> Learning Dataset : </b>
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
                                    out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                        &nbsp;&nbsp;Learning dataset not available ... !
                                    </font>
                                </td>
                                </tr>
                            <% } %>
                        </table>

                    <% //#5 displaying prediction dataset 
                    } else if (sLoadingDataExcelClick6 != "") { 
                    %>
                        <table>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <b> Predicted Dataset : </b>
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
                                    out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                        &nbsp;&nbsp;Prediction dataset not available ... !
                                    </font>
                                </td>
                                </tr>
                            <% } %>
                        </table>
                    <% } else { %>
                        <%-->
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
                                    <u>Dataset</u>
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
                        <--%>
                    <% } %>

                    <!--<table>
                        <tr>
                            <td>
                                <div title="GoTo Next Page" class="container boundary" onclick="changetab(2)">
                                    <font color='blue' size="4" face="Palatino Linotype, Book Antiqua, Palatino, serif">II. View the Results</font>
                                </div>
                            </td>
                        </tr>
                    </table>-->
                    </div>
                
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
                                        <b><u><< BACK</u></b>
                                        </font>
                                    </a>                            
                                </td>
                            </tr>
                        </table> 
                            
                        <table>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <%--><div title="Go to previous page" onclick="changetab(1)"><--%>
                                    <div title="View the previous page" onclick="changetab(1)">
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
                                        <h3><b><font face="Palatino Linotype, Book Antiqua, Palatino, serif">The Results</font></b></h3>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <br>
                        <ul class="nav nav-pills nav-justified" style="background-color: lavender;">
                            <li class="active"><a data-toggle="tab" href="#Main" id="Menu">Output Table</a></li>
                            <li><a data-toggle="tab" href="#PGraph">Prediction Graph of Learning Data</a></li>
                            <li><a data-toggle="tab" href="#PTGraph">Prediction Graph of Test Data</a></li>
                            <li><a data-toggle="tab" href="#TPGraph">Performance and Tracing Path Graph</a></li><%-->Performance Trajectory Graph<--%>
                        </ul>
                        <br>
                        <div class="tab-content">
                            <div id="Main" class="tab-pane fade in active">
                                <a href="#Optimum">Best performance</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <a href="#Partition">Performance of learning and test data</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <a href="#Report">Analysis report</a>
                                <span class="glyphicon glyphicon-minus"></span>
                                <a href="#Performance">Learning and test data with prediction</a>
                                <br>
                                <br>
                                <br>
                                <center>
                                    <font size="4" id="Optimum">Main results - Best performance</font>
                                    <a href="#Partition"><span class="glyphicon glyphicon-menu-right"></span></a>
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                    <br>
                                </center>
                                <br>
                                    
                                <%  File a = new File(stResult01Name);
                                int BestFold = 0;
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
                                                        <td align="right">Mean RMSE of Test Data</td>
                                                        <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td align="left"><%=cols[0]%></td>
                                                    </tr> 
                                                    <tr>
                                                        <td align="right">Mean R of Test Data</td> 
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
                                <br> 
                                <center>
                                    <font size="4" id="Partition">Performance and mean performance of learning and test data</font>
                                    <a href="#Optimum"><span class="glyphicon glyphicon-menu-left"></span></a> 
                                    <a href="#Report"><span class="glyphicon glyphicon-menu-right"></span></a> 
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a> 
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
                                                            <td align="center">Mean RMSE Test</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean MAE Test</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean MAPE Test</td> 
                                                            <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                            <td align="center">Mean R Test</td>
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
                                                <h4><font color='red'>Output file not found ...!</font></h4>
                                            </td>
                                        </tr></table></div></center> 
                                    <% } %> 
                                    
                                <br>
                                <br>
                                <center>
                                    <font size="4" id="Report">Analysis report</font>
                                    <a href="#Partition"><span class="glyphicon glyphicon-menu-left"></span></a> 
                                    <a href="#Performance"><span class="glyphicon glyphicon-menu-right"></span></a> 
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
                                            <h4><font color='red'>Output file not found ...!</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 
                                
                                <br>
                                <br>
                                <center>
                                    <font size="4" id="Performance">Best performance; Learning and test data with predicted values of the best fold</font> 
                                    <a href="#Report"><span class="glyphicon glyphicon-menu-left"></span></a> 
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a> 
                                    <br>
                                </center>
                                <br>
                                
                                <% File d = new File(stResult04Name);
                                if (stResult04Name != "" && d.exists() && !d.isDirectory()) {  
                                    String file = stResult04Name;
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
                                    line = br.readLine();
                                    cols = line.split("\\t");
                                    j=0;
                                    while (stemp == "1") {
                                        for (i = 0; i < 8; i += 1) {
                                            datatemp2[j][i]=cols[i];
                                        }
                                        j=j+1;
                                        if (j == BestFold) {
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

                                    <center>
                                        <div> 
                                            <table>
                                                <tr>
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
                                                </tr> 
                                                <tr>
                                                    <td align="center"><%=BestFold%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=datatemp[0][0]%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=datatemp[0][1]%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=datatemp[0][2]%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=datatemp[0][3]%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=datatemp[0][4]%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=datatemp[0][5]%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=datatemp[0][6]%></td>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp</td>
                                                    <td align="center"><%=datatemp[0][7]%></td>
                                                </tr>
                                            </table> 
                                        </div> 
                                    </center> 
                                    <br>

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
                                    
                                    <br>
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

                                    <% br.close(); %>

                                <% } else { %>  
                                    <center><div><table><tr>
                                        <td align="center">
                                            <h4><font color='red'>Output file not found ...!</font></h4>
                                        </td>
                                    </tr></table></div></center> 
                                <% } %> 

                                <br><br>
                                <center id="bottomform2">
                                    <button type="button" onclick="" class="btn btn-primary">Save</button>
                                </center>
                                <br>
                            </div>

                            <div id="PGraph" class="tab-pane fade in"> 
                                <div class="edittab">
                                    <label><input type="checkbox" name="TDCheck" id="TDCheck1" value="TDCheck1" onclick="fTDCheckBox(1);" checked>&nbsp;&nbsp;Fold No.:&nbsp;</label>
                                    <%-->Fold No.:&nbsp;<--%>
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
                                            <% if (jj==1) { %> <font size="4" id="PG1">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG2"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>
                                            <% if (jj==2) { %> <font size="4" id="PG2">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG1"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PG3"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==3) { %> <font size="4" id="PG3">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG2"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PG4"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==4) { %> <font size="4" id="PG4">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG3"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PG5"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==5) { %> <font size="4" id="PG5">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG4"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PG6"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==6) { %> <font size="4" id="PG6">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG5"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PG7"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==7) { %> <font size="4" id="PG7">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG6"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PG8"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==8) { %> <font size="4" id="PG8">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG7"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PG9"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==9) { %> <font size="4" id="PG9">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG8"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PG10"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==10) { %> <font size="4" id="PG10">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG9"><span class="glyphicon glyphicon-menu-left"></span></a>
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

                                <br><br>
                                <center id="bottomform2">
                                    <button type="button" onclick="" class="btn btn-primary">Save</button>
                                </center>
                                <br>
                            </div>

                            <div id="PTGraph" class="tab-pane fade in">
                                <div class="edittab">
                                    <label><input type="checkbox" name="TDCheck" id="TDCheck1" value="TDCheck1" onclick="fTDCheckBox(1);" checked>&nbsp;&nbsp;Fold No.:&nbsp;</label>
                                    <%-->Fold No.:&nbsp;<--%>
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
                                            <% if (jj==1) { %> <font size="4" id="PT1">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT2"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>
                                            <% if (jj==2) { %> <font size="4" id="PT2">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT1"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PT3"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==3) { %> <font size="4" id="PT3">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT2"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PT4"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==4) { %> <font size="4" id="PT4">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT3"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PT5"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==5) { %> <font size="4" id="PT5">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT4"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PT6"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==6) { %> <font size="4" id="PT6">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT5"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PT7"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==7) { %> <font size="4" id="PT7">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT6"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PT8"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==8) { %> <font size="4" id="PT8">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT7"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PT9"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==9) { %> <font size="4" id="PT9">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT8"><span class="glyphicon glyphicon-menu-left"></span></a>
                                                <a href="#PT10"><span class="glyphicon glyphicon-menu-right"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==10) { %> <font size="4" id="PT10">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT9"><span class="glyphicon glyphicon-menu-left"></span></a>
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

                                <br><br>
                                <center id="bottomform2">
                                    <button type="button" onclick="" class="btn btn-primary">Save</button>
                                </center>
                                <br>
                            </div>

                            <div id="TPGraph" class="tab-pane fade in">
                                <br>
                                <br>
                                <br>
                                <center>
                                    <i><font color="red" size="4">... n.a. for baseline system.</font></i>
                                </center>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="stResult01Name" id="stResult01Name" value="<%if (stResult01Name != null) {%><%=stResult01Name%><%}%>" />
                    <input type="hidden" name="stResult02Name" id="stResult02Name" value="<%if (stResult02Name != null) {%><%=stResult02Name%><%}%>" />
                    <input type="hidden" name="stResult03Name" id="stResult03Name" value="<%if (stResult03Name != null) {%><%=stResult03Name%><%}%>" />
                    <input type="hidden" name="stResult04Name" id="stResult04Name" value="<%if (stResult04Name != null) {%><%=stResult04Name%><%}%>" />
                    <input type="hidden" name="stResult04aName" id="stResult04aName" value="<%if (stResult04aName != null) {%><%=stResult04aName%><%}%>" />
                    <input type="hidden" name="stResult04bName" id="stResult04bName" value="<%if (stResult04bName != null) {%><%=stResult04bName%><%}%>" />
                    <input type="hidden" name="stResult04cName" id="stResult04cName" value="<%if (stResult04cName != null) {%><%=stResult04cName%><%}%>" />
                    <input type="hidden" name="stResult04dName" id="stResult04dName" value="<%if (stResult04dName != null) {%><%=stResult04dName%><%}%>" />
                    <input type="hidden" name="stResult05Name" id="stResult05Name" value="<%if (stResult05Name != null) {%><%=stResult05Name%><%}%>" />
                    <input type="hidden" name="stResult06Name" id="stResult06Name" value="<%if (stResult06Name != null) {%><%=stResult06Name%><%}%>" />
                    </div>
                    </div>
                </div>
            </form>
                <%--><h6 id="bottompage">
                    <img src="Logo-Space.png" alt="     " width="4" height="5">
                    &nbsp;. . . [END OF OUTPUT FORM] &nbsp;&nbsp;&nbsp;
                    <a href="#top">
                    <img src="arrowup.JPG" alt="..." width="18">
                    </a>
                    <div class="scrollToTop"> 
                          <img src="arrowup.JPG" alt="..." width="18">  
                    </div>
                </h6><--%>
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
