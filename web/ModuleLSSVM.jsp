<%-- 
    Document   : ModuleLSSVM
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
    String VarSaveData = request.getParameter("VarSaveData"); 
    String VarLoadData = request.getParameter("VarLoadData");
    String VarReportData = request.getParameter("VarReportData");
    
    //String VarRun = request.getParameter("VarRun");

    String VarB = request.getParameter("VarB");
    String VarNextLSSVM = request.getParameter("VarNextLSSVM");
    
    /*
    out.println("VarB = "+VarB);
    out.println("VarNextLSSVM = "+VarNextLSSVM);
    */
    
    String sPageControl = request.getParameter("sPageControl"); 
    if (sPageControl == null) {
        sPageControl = "1";
    }

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
    String sBaseFileNameLSSVM = request.getParameter("sBaseFileNameLSSVM");
    if (sBaseFileNameLSSVM == null) {
        sBaseFileNameLSSVM = "";
    }
    String sBaseFileNameCO = request.getParameter("sBaseFileNameCO");
    if (sBaseFileNameCO == null) {
        sBaseFileNameCO = "";
    }

    /*
    out.println("sBaseFileName = "+sBaseFileName);
    out.println("sBaseFileNameLSSVM = "+sBaseFileNameLSSVM);
    */
    
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
        String suResult04aName = request.getParameter("suResult04aName");
        if (suResult04aName == null) {
            suResult04aName = "";
        }
        String suResult04bName = request.getParameter("suResult04bName");
        if (suResult04bName == null) {
            suResult04bName = "";
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

    String suResult05 = request.getParameter("suResult05");
    if (suResult05 == null) {
        suResult05 = "";
    }
    String suResult05Name = request.getParameter("suResult05Name");
    if (suResult05Name == null) {
        suResult05Name = "";
    }
    String sufilefileResult05 = request.getParameter("sufilefileResult05");
    if (sufilefileResult05 == null) {
        sufilefileResult05 = "";
    }

    String suResult06 = request.getParameter("suResult06");
    if (suResult06 == null) {
        suResult06 = "";
    }
    String suResult06Name = request.getParameter("suResult06Name");
    if (suResult06Name == null) {
        suResult06Name = "";
    }
    String sufilefileResult06 = request.getParameter("sufilefileResult06"); 
    if (sufilefileResult06 == null) {
        sufilefileResult06 = "";
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

    /*
    out.println("snValueCLSSVM = "+snValueCLSSVM);
    out.println("snValueSLSSVM = "+snValueSLSSVM);
    */
    
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
    //nrow=(int)Double.parseDouble(sdInstancesLSSVM);
    int ncol=1;
    //ncol=(int)Double.parseDouble(sdAttributesLSSVM);
    String[][] Datatrain = new String[nrow][ncol];

    int nrowP=1;
    //nrowP=(int)Double.parseDouble(sdPInstancesLSSVM);
    int ncolP=1; 
    //ncolP==(int)Double.parseDouble(sdPAttributesLSSVM);
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
                //Rev01: val
                //tanpa sBaseNameCO
                document.getElementById("sLoadingDataExcelLSSVM").value = "";
                //to un-hide summary data
 
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

                document.getElementById("sLoadingDataExcelClickLSSVM").value = "";
                    document.getElementById("sLoadingDataExcelClick3LSSVM").value = "";
                document.getElementById("sLoadingDataExcelClick4LSSVM").value = "";
                    document.getElementById("sLoadingDataExcelClick5LSSVM").value = "";
                document.getElementById("sLoadingDataExcelClick6LSSVM").value = "";
                
                sHasil = "";
                document.getElementById("sRunReportTable").value = "0";

                document.getElementById("myform2").action = "ModuleLSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }
    
            function closesummarydata2() {
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
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
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

                document.getElementById("myform2").action = "ModuleLSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }
            
            function rundata2(val) {
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

                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

                var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
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
                var suResult01 = document.getElementById("suResult01");
                var suResult02 = document.getElementById("suResult02");
                var suResult03 = document.getElementById("suResult03");
                var suResult04 = document.getElementById("suResult04");
                var suResult05 = document.getElementById("suResult05");
                var suResult06 = document.getElementById("suResult06");
                //var sReportFile = document.getElementById("sReportFile");
                //var sReportFileTXT = document.getElementById("sReportFileTXT");
                
                var suResult01Name = document.getElementById("suResult01Name");
                var suResult02Name = document.getElementById("suResult02Name");
                var suResult03Name = document.getElementById("suResult03Name");
                var suResult04Name = document.getElementById("suResult04Name");
                var suResult05Name = document.getElementById("suResult05Name");
                var suResult06Name = document.getElementById("suResult06Name");
                //var sReportFileName = document.getElementById("sReportFileName");
                //var sReportFileNameTXT = document.getElementById("sReportFileNameTXT");
                
                var sViewProceed = document.getElementById("sViewProceed");
                sViewProceed = "";
                document.getElementById("sViewProceed").value = sViewProceed;

                document.getElementById("sPageControl").value = "2";
                document.getElementById("myform2").action = "ModuleLSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }

            function showsummaryreport(valData) {
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

                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

                var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
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
                    var suResult01 = document.getElementById("suResult01").value;
                    if (suResult01!=="") {
                        var suResult01Name = document.getElementById("suResult01");
                    }
                    else {
                        var suResult01Name = document.getElementById("suResult01Name").value;
                        if (suResult01Name==="") {
                            document.getElementById("suResult01Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\UResult01.txt";
                        }
                    }
                    
                    var suResult02 = document.getElementById("suResult02").value;
                    if (suResult02!=="") {
                        var suResult02Name = document.getElementById("suResult02");
                    }
                    else {
                        //suResult02 = "Result02.txt";
                        //document.getElementById("suResult02").value = suResult02;
                        //var suResult02Name = document.getElementById("suResult02");
                        
                        var suResult02Name = document.getElementById("suResult02Name").value;
                        if (suResult02Name==="") {
                            document.getElementById("suResult02Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\UResult02.txt";
                        }
                    }
                    
                    var suResult03Name = document.getElementById("suResult03Name");
                    var suResult04Name = document.getElementById("suResult04Name");
                    var suResult05Name = document.getElementById("suResult05Name");
                    var suResult06Name = document.getElementById("suResult06Name");

                    /*
                    if (suResult01.value==="") {
                        if (suResult01Name.value==="") {
                            var suResult01Name="Result01.txt";
                        }
                    }
                    */
                    
                    /*
                    alert("Aha1 ...!");
                    if (suResult02!=="") {
                    }
                    else {
                        alert("Aha2 ...!");
                        if (suResult02Name!=="") {
                            alert("Aha3 ...!");
                        }
                        else {
                            alert("Aha4 ...!");
                            var suResult02 = document.getElementById("suResult02");
                            var suResult02Name = document.getElementById("suResult02Name");
                            suResult02="Result02.txt";
                            suResult02Name="Result02.txt"; 
                            document.getElementById("suResult02").value = suResult02;
                            document.getElementById("suResult02Name").value = suResult02Name;
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
                    var suResult01Name = document.getElementById("suResult01Name");
                    var suResult02Name = document.getElementById("suResult02Name");

                    var suResult03 = document.getElementById("suResult03").value;
                    if (suResult03!=="") {
                        var suResult03Name = document.getElementById("suResult03");
                    }
                    else {
                        var suResult03Name = document.getElementById("suResult03Name").value;
                        if (suResult03Name==="") {
                            document.getElementById("suResult03Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\UResult03.txt";
                        }
                    }
                    
                    var suResult04Name = document.getElementById("suResult04Name");
                    var suResult05Name = document.getElementById("suResult05Name");
                    var suResult06Name = document.getElementById("suResult06Name");
                }
                else if (valData===3) {
                    var suResult01Name = document.getElementById("suResult01Name");
                    var suResult02Name = document.getElementById("suResult02Name");
                    var suResult03Name = document.getElementById("suResult03Name");
                    
                    var suResult04 = document.getElementById("suResult04").value;
                    if (suResult04!=="") {
                        var suResult04Name = document.getElementById("suResult04");
                    }
                    else {
                        var suResult04Name = document.getElementById("suResult04Name").value;
                        if (suResult04Name==="") {
                            document.getElementById("suResult04Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\UResult04.txt";
                        }
                    }
                    var suResult05Name = document.getElementById("suResult05Name");
                    var suResult06Name = document.getElementById("suResult06Name");
                }
                else if (valData===4) { 
                    var suResult01Name = document.getElementById("suResult01Name");
                    var suResult02Name = document.getElementById("suResult02Name");
                    var suResult03Name = document.getElementById("suResult03Name");
                    var suResult04Name = document.getElementById("suResult04Name");

                    var suResult05 = document.getElementById("suResult05").value;
                    if (suResult05!=="") {
                        var suResult05Name = document.getElementById("suResult05");
                    }
                    else {
                        var suResult05Name = document.getElementById("suResult05Name").value;
                        if (suResult05Name==="") {
                            document.getElementById("suResult05Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\UResult05.txt";
                        }
                    }

                    var suResult06 = document.getElementById("suResult06").value;
                    if (suResult06!=="") {
                        var suResult06Name = document.getElementById("suResult06");
                    }
                    else {
                        var suResult06Name = document.getElementById("suResult06Name").value;
                        if (suResult06Name==="") {
                            document.getElementById("suResult06Name").value="E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\UResult06.txt";
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
                document.getElementById("myform2").action = "ModuleLSSVM.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
                return valid;
            }

            function previousscreenLSSVM() {
                var nValueCLSSVM = document.getElementById("nValueCLSSVM");
                var nValueSLSSVM = document.getElementById("nValueSLSSVM");
                var dHoldOutLSSVM = document.getElementById("dHoldOutLSSVM");
                var dCrossValidationLSSVM = document.getElementById("dCrossValidationLSSVM");

                var NormalRadioLSSVM = document.getElementById("NormalRadioLSSVM");
                var PRadioLSSVM = document.getElementById("PRadioLSSVM");
                var TORadioLSSVM = document.getElementById("TORadioLSSVM");
                if (TORadioLSSVM.value === "TORadio4LSSVM")
                {
                    document.getElementById("hiddendatafile").value = "1";
                }
                else
                {
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
                
                var sLoadingDataExcelLSSVM = document.getElementById("sLoadingDataExcelLSSVM");
                document.getElementById("sLoadingDataExcelLSSVM").value = "";

                var sLoadingDataFileLSSVM = document.getElementById("sLoadingDataFileLSSVM");
                document.getElementById("sLoadingDataFileLSSVM").value = "";
                
                document.getElementById("myform2").action = "AllModulesBaseline.jsp";
                document.getElementById("myform2").submit();
                valid = false;
                
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

                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");

                var VarNextLSSVM = document.getElementById("VarNextLSSVM");
                //var sPageControl = document.getElementById("sPageControl");
                
                //var VarProceed = document.getElementById("VarProceed");
                //var VarReport = document.getElementById("VarReport");
                //var VarTable = document.getElementById("VarTable");
                    
                /*
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
                */
        
                document.getElementById("myform2").action = "ModuleLSSVM.jsp";
                document.getElementById("myform2").submit();
                
                return valid;
            }
            
            function changetab(val) {
                if (val === 1)
                {
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
            
        <% } else if (VarLoadData != null) { %>
            <%@include file="navmenu.jsp" %>

            <form action="AllModulesBaseline.jsp" name="myform" id="myform" >
                <%
                String filename = "Data_LSSVM.txt";
                String file = application.getRealPath("/") + filename;
                BufferedReader br = new BufferedReader(new FileReader(file));
                String line = null;
                int j = 0;
                    
                // first line: title
                line = br.readLine();
                if (line == null) {
                    out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
                } else {
                    cols = line.split("[\\s,;\\n\\t]+");

                    // second line: column header
                    line = br.readLine();
                    headers = line.split("[\\s,;\\n\\t]+");

                    while (line != null) {
                        j = j + 1;
                        line = br.readLine();
                        //cols = line.split("[\\s,;\\n\\t]+");
                        if (j==1) {
                        %>
                        <script>document.getElementById("nValueCLSSVM").value = "satu";</script>
                        <%
                        }
                    }
                }
                %>

                <table>
                <tr>
                    <td>
                        <h2>LSSVM:</h2>
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
                <tr>
                            <input type="submit" name="VarSaveData" value="BACK"/>
                </tr>
                </table>
            </form>
                    
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
                    else if (PRadioLSSVM.equals("TORadio4LSSVM")) {
                        sTORadioLSSVM = "Use test dataset";
                        iRadio = 4;
                    }
                    else if (PRadioLSSVM.equals("TORadio2LSSVM")) {
                        sTORadioLSSVM = "Hold-out";
                        iRadio = 2;
                    }
                    else if (PRadioLSSVM.equals("TORadio3LSSVM")) {
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
            <center>
                <img src="headhomepagesub.jpg" alt="Image Not Found ..." width="1000">
            </center>
            <%@include file="navmenu.jsp" %>

            <form action="ModuleLSSVM.jsp" name="myform2" id="myform2">
                <%
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
                
                <input type="hidden" name="VarB" id="VarB" value="<%=VarB%>"/> 
                <input type="hidden" name="sLoadingDataFileLSSVM" id="sLoadingDataFileLSSVM" value="<%=sLoadingDataFileLSSVM%>"/>

                <input type="hidden" name="VarNextLSSVM" id="VarNextLSSVM" value="<%=VarNextLSSVM%>"/>
                <input type="hidden" name="sRunReportTable" id="sRunReportTable" value="<%=sRunReportTable%>"/>
                <input type="hidden" name="sRRTShow" id="sRRTShow" value="<%=sRRTShow%>"/>
                <input type="hidden" name="sViewProceed" id="sViewProceed" value="<%=sViewProceed%>"/>

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

                <input type="hidden" name="sPageControl" id="sPageControl" value="<%=sPageControl%>"/>

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
                suResult04aName = application.getRealPath("/") + sBaseFileNameLSSVM +"04a.txt";
                suResult04bName = application.getRealPath("/") + sBaseFileNameLSSVM +"04b.txt";
                suResult04cName = application.getRealPath("/") + sBaseFileNameLSSVM +"04c.txt";
                suResult04dName = application.getRealPath("/") + sBaseFileNameLSSVM +"04d.txt";
                suResult05Name = application.getRealPath("/") + sBaseFileNameLSSVM +"05.txt";
                suResult06Name = application.getRealPath("/") + sBaseFileNameLSSVM +"06.txt";
                        /*
                        out.println("<p>");
                        out.println("sLoadingDataSet1 = "+sLoadingDataSet1);
                        out.println("sLoadingDataSet3 = "+sLoadingDataSet3);
                        */
                %>
                <script>
                    document.getElementById("suResult01Name").value = suResult01Name;
                    document.getElementById("suResult02Name").value = suResult02Name;
                    document.getElementById("suResult03Name").value = suResult03Name;
                    document.getElementById("suResult04Name").value = suResult04Name;
                    document.getElementById("suResult04aName").value = suResult04cName;
                    document.getElementById("suResult04bName").value = suResult04cName;
                    document.getElementById("suResult04cName").value = suResult04cName;
                    document.getElementById("suResult04dName").value = suResult04dName;
                    document.getElementById("suResult05Name").value = suResult05Name;
                    document.getElementById("suResult06Name").value = suResult06Name;
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
                                                sNormalRadioLSSVM = "Original value";
                                            }
                                            else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
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
                                                    sPRadioLSSVM = "Evaluation";
                                                    sDummy = "Learning Dataset : ";
                                                }
                                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                    sPRadioLSSVM = "Prediction";
                                                    sDummy = "Learning Dataset : "; 
                                                    sFileDataLSSVM = sLearningFileNameLSSVM;
                                                    dAttributesLSSVM = snLDFAttributesLSSVM;
                                                    dInstancesLSSVM = snLDFInstancesLSSVM;
                                                    sPDummy = "Prediction Dataset : ";
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
                                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) { %>
                                                        Hold-out = <%=nf.format(dHoldOutLSSVM)%> (%) 
                                                        <% 
                                                        sDummy = "Learning Dataset : ";
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
                                                        sDummy = "Learning Dataset : ";
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
                                                            sTORadioLSSVM = "Use learning dataset";
                                                            sDummy = "Learning Dataset : ";
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
                                                            sTORadioLSSVM = "Use test dataset";
                                                            sDummy = "Learning Dataset : ";
                                                            sFileDataLSSVM = sFileNameLSSVM;
                                                            dAttributesLSSVM = snDFAttributesLSSVM;
                                                            dInstancesLSSVM = snDFInstancesLSSVM; 
                                                            sPDummy = "Test Dataset : ";
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
                                            <div class="col-md-4"><%=sFileDataLSSVM%></div>
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
                                                <div class="col-md-4">
                                                    <font color="black">
                                                        Base output file name: &nbsp;<b><%=sBaseFileNameLSSVM%></b>
                                                    </font>
                                                </div>
                                            <% } else { %>
                                                <div class="col-md-4">
                                                    &nbsp;
                                                </div>
                                                <div class="col-md-4">
                                                    <font color="black">
                                                        Base output file name: &nbsp;<b><%=sBaseFileNameLSSVM%></b>
                                                    </font>
                                                </div>
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
                                            <div class="col-md-4">
                                                <font color="black">
                                                Base output file name: &nbsp;<b><%=sBaseFileNameLSSVM%></b> 
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
                            <li class="active"><a data-toggle="tab" href="#Main" id="Menu">Output Table</a></li>
                            <li><a data-toggle="tab" href="#PGraph">Prediction Graph of Learning Data</a></li>
                            <li><a data-toggle="tab" href="#PTGraph">Prediction Graph of Test Data</a></li>
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
                                    <font size="4" id="Optimum">Main output - Best performance</font>
                                    <a href="#Partition"><span class="glyphicon glyphicon-menu-down"></span></a>
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
                                <br> 
                                <center>
                                    <font size="4" id="Partition">Performance and mean performance of learning and test data</font>
                                    <a href="#Optimum"><span class="glyphicon glyphicon-menu-up"></span></a> 
                                    <a href="#Report"><span class="glyphicon glyphicon-menu-down"></span></a> 
                                    <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a> 
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
                                    <font size="4" id="Report">Analysis report</font>
                                    <a href="#Partition"><span class="glyphicon glyphicon-menu-up"></span></a> 
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
                                    <font size="4" id="Performance">Best performance; Learning and test data with predicted values of the best fold</font> 
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
                                            <% if (jj==1) { %> <font size="4" id="PG1">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG2"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>
                                            <% if (jj==2) { %> <font size="4" id="PG2">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG1"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG3"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==3) { %> <font size="4" id="PG3">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG2"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG4"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==4) { %> <font size="4" id="PG4">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG3"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG5"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==5) { %> <font size="4" id="PG5">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG4"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG6"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==6) { %> <font size="4" id="PG6">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG5"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG7"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==7) { %> <font size="4" id="PG7">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG6"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG8"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==8) { %> <font size="4" id="PG8">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG7"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG9"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==9) { %> <font size="4" id="PG9">Prediction of Learning Data - Fold No. <%=jj%></font>
                                                <a href="#PG8"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PG10"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==10) { %> <font size="4" id="PG10">Prediction of Learning Data - Fold No. <%=jj%></font>
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
                                            <% if (jj==1) { %> <font size="4" id="PT1">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT2"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>
                                            <% if (jj==2) { %> <font size="4" id="PT2">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT1"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT3"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==3) { %> <font size="4" id="PT3">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT2"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT4"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %>  
                                            <% if (jj==4) { %> <font size="4" id="PT4">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT3"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT5"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==5) { %> <font size="4" id="PT5">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT4"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT6"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==6) { %> <font size="4" id="PT6">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT5"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT7"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==7) { %> <font size="4" id="PT7">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT6"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT8"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==8) { %> <font size="4" id="PT8">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT7"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT9"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==9) { %> <font size="4" id="PT9">Prediction of Test Data - Fold No. <%=jj%></font>
                                                <a href="#PT8"><span class="glyphicon glyphicon-menu-up"></span></a>
                                                <a href="#PT10"><span class="glyphicon glyphicon-menu-down"></span></a>
                                                <a href="#Menu"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                                            <% } %> 
                                            <% if (jj==10) { %> <font size="4" id="PT10">Prediction of Test Data - Fold No. <%=jj%></font>
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

                                <br><br>
                                <a href="#title">
                                    <img src="Arrow top.png" alt="..." width="18" style="float:right">
                                </a>
                                <center id="bottomform2">
                                    <button type="button" onclick="" class="btn btn-primary">Save</button>
                                </center>
                                <br>
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
                                            <h4><b><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Graph Type:</font></b></h4>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <td align="right">
                                            <h4><font color="black" face="Palatino Linotype, Book Antiqua, Palatino, serif">Prediction Graph</font></h4>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;</td>
                                        <td>
                                            <button type="button" onclick="return plotgraph(31);">Test Data</button>
                                            <button type="button" onclick="return plotgraph(32);">Learning Data</button>
                                            <%--><button type="button" onclick="return plotgraph(35);">All Data</button><--%>
                                        </td>
                                    </tr>
                                </table>
                                <input type="hidden" name="sBaseFileName" id="sBaseFileName" value="<%=sBaseFileName%>">
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
                    
                <%-->
                <table>
                    <tr>    
                        <td style="width:10%;">
                            <a onclick="return previousscreenLSSVM();" style="float: left;">
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
                <--%>
                
                <% //#1 displaying input data: 
                if (sLoadingDataExcelClickLSSVM != "") { 
                %>
                <%-->
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
                            Value of C = <%=nf.format(nValueCLSSVM)%>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <%
                            nf.setMaximumFractionDigits(2);
                            nf.setMinimumFractionDigits(2);
                            %>
                            Value of Sigma = <%=nf.format(nValueSLSSVM)%>
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
                            Hold-out = <%=nf.format(dHoldOutLSSVM)%> (%)
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <%
                            nf.setMaximumFractionDigits(2);
                            nf.setMinimumFractionDigits(2);
                            %>
                             Cross-validation = <%=nf.format(dCrossValidationLSSVM)%> (folds)
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
                            sPRadioLSSVM = "...";
                            if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                sPRadioLSSVM = "Evaluation";
                                sDummy = "Dataset : ";
                            }
                            else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                sPRadioLSSVM = "Prediction";
                                sDummy = "Learning Dataset : ";
                                sFileDataLSSVMLSSVM = sLearningFileNameLSSVM;
                                dAttributesLSSVM = snLDFAttributesLSSVM;
                                dInstancesLSSVM = snLDFInstancesLSSVM; 
                                sPDummy = "Prediction Dataset : ";
                                sPFileDataLSSVM = sPredictionFileNameLSSVM;
                                dPAttributesLSSVM = snPDFAttributesLSSVM;
                                dPInstancesLSSVM = snPDFInstancesLSSVM;
                                sVariation = "5";
                            }
                            %>
                            <%=sPRadioLSSVM%>
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
                            sTORadioLSSVM = "...";
                            nf.setMaximumFractionDigits(0);
                            nf.setMinimumFractionDigits(0);
                            if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                                sTORadioLSSVM = "Use learning dataset";
                                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    sDummy = "Dataset : ";
                                    sFileDataLSSVM = sFileNameLSSVM;
                                    dAttributesLSSVM = snDFAttributesLSSVM; 
                                    dInstancesLSSVM = snDFInstancesLSSVM; 
                                    sVariation = "1";
                                }
                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                    sTORadioLSSVM = "-";
                                }
                            }
                            else if (TORadioLSSVM.equals("TORadio2LSSVM")) {
                                sTORadioLSSVM = "Hold-out "+nf.format(dHoldOutLSSVM)+" (%)";
                                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    sDummy = "Dataset : ";
                                    sFileDataLSSVM = sFileNameLSSVM; 
                                    dAttributesLSSVM = snDFAttributesLSSVM; 
                                    dInstancesLSSVM = snDFInstancesLSSVM; 
                                    sVariation = "2";
                                }
                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                    sTORadioLSSVM = "-";
                                }
                            }
                            else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                                sTORadioLSSVM = "Cross-validation "+nf.format(dCrossValidationLSSVM)+" (folds)";
                                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    sDummy = "Dataset : ";
                                    sFileDataLSSVM = sFileNameLSSVM;
                                    dAttributesLSSVM = snDFAttributesLSSVM;
                                    dInstancesLSSVM = snDFInstancesLSSVM;
                                    sVariation = "3";
                                }
                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                    sTORadioLSSVM = "-";
                                }
                            }
                            else if (TORadioLSSVM.equals("TORadio4LSSVM")) {
                                sTORadioLSSVM = "Use test dataset";
                                if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                    sDummy = "Dataset : ";
                                    sFileDataLSSVM = sFileNameLSSVM;
                                    dAttributesLSSVM = snDFAttributesLSSVM;
                                    dInstancesLSSVM = snDFInstancesLSSVM;
                                    sPDummy = "Test Dataset : ";
                                    sPFileDataLSSVM = sTestFileNameLSSVM;
                                    dPAttributesLSSVM = snTDFAttributesLSSVM;
                                    dPInstancesLSSVM = snTDFInstancesLSSVM; 
                                    sVariation = "4";
                                }
                                else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                    sTORadioLSSVM = "-";
                                }
                            } 
                            %>
                            <%=sTORadioLSSVM%>
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
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
                <--%>

                <% //#2 displaying dataset 
                } else if (sLoadingDataExcelClick3LSSVM != "") { 
                %>
                <table>
                    <tr>
                        <td>
                            &nbsp;
			</td>
                        <td>
                            <b> Dataset </b>
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
                                        &nbsp;&nbsp;Dataset not available ... !
                                        </font>
                                    </td>
                                </tr>
                        <% } %>
                        </table>
                        
                <% //#3 displaying test dataset 
                } else if (sLoadingDataExcelClick4LSSVM != "") { 
                %>
                    <%--Fileopen.mat Filetest.mat Fileopen.mat FilePredict.mat--%>
                    <table>
                    <tr>
                        <td>
                            &nbsp;
			</td>
                        <td>
                            <b> Test Dataset : </b>
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
                                        &nbsp;&nbsp;Test dataset not available ... !
                                        </font>
                                    </td>
                                </tr>
                        <% } %>
                        </table>
                     
                <% //#4 displaying learning dataset 
                } else if (sLoadingDataExcelClick5LSSVM != "") { 
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
                                out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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
                                        &nbsp;&nbsp;Learning dataset not available ... !
                                        </font>
                                    </td>
                                </tr>
                        <% } %>
                        </table>
                        
                <% //#5 displaying prediction dataset 
                } else if (sLoadingDataExcelClick6LSSVM != "") { 
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
                        if (sPredictionFileNameLSSVM != "") { 
                            String file = application.getRealPath("/") + sPredictionFileNameLSSVM;
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
                            out.println("<h3><font color='red'>Dataset file is empty ...!</font></h3>");
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
                            out.println("<h3><font color='red'>Dataset is empty ...!</font></h3>");
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

                /*
                out.println("<p>");
                out.println("sRunReportTable = " + sRunReportTable);
                */

                if ((int)Double.parseDouble(sRunReportTable) == 1) { 
                    if (sCreate != "") {  
                        suResult01Name = application.getRealPath("/") + sBaseFileNameLSSVM +"01.txt";
                        suResult02Name = application.getRealPath("/") + sBaseFileNameLSSVM +"02.txt";
                        suResult03Name = application.getRealPath("/") + sBaseFileNameLSSVM +"03.txt";
                        suResult04Name = application.getRealPath("/") + sBaseFileNameLSSVM +"04.txt";
                        suResult05Name = application.getRealPath("/") + sBaseFileNameLSSVM +"05.txt";
                        suResult06Name = application.getRealPath("/") + sBaseFileNameLSSVM +"06.txt";
                        %>
                        <script>
                            document.getElementById("suResult01Name").value = suResult01Name;
                            document.getElementById("suResult02Name").value = suResult02Name;
                            document.getElementById("suResult03Name").value = suResult03Name;
                            document.getElementById("suResult04Name").value = suResult04Name;
                            document.getElementById("suResult05Name").value = suResult05Name;
                            document.getElementById("suResult06Name").value = suResult06Name;
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
                                    <input type="text" name="suResult01Name" id="suResult01Name" size="75" value="<%=suResult01Name%>" readonly/>
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                    <input type="hidden" name="suResult03Name" id="suResult03Name" value="<%=suResult03Name%>" />
                                    <input type="hidden" name="suResult04Name" id="suResult04Name" value="<%=suResult04Name%>" />
                                    <input type="hidden" name="suResult05Name" id="suResult05Name" value="<%=suResult05Name%>" />
                                    <input type="hidden" name="suResult06Name" id="suResult06Name" value="<%=suResult06Name%>" />
                                    <input type="hidden" name="sBaseFileNameLSSVM" id="sBaseFileNameLSSVM" value="<%=sBaseFileNameLSSVM%>">
                                    </td>
                                </tr> 
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td colspan="4">
                                    <input type="text" name="suResult02Name" id="suResult02Name" size="75" value="<%=suResult02Name%>" readonly/> 
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... validation. </font>
                                    </td>
                                </tr>
                                <% if (suResult05Name != "") { %>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="4">
                                        <input type="text" name="suResult05Name" id="suResult05Name" size="75" value="<%=suResult05Name%>" readonly/> 
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
                                out.println("suResult01Name = " + suResult01Name);
                                out.println("<br>");
                                out.println("suResult03Name = " + suResult03Name);
                                out.println("<br>");
                                out.println("suResult04Name = " + suResult04Name);
                                out.println("<br>");
                                out.println("suResult05Name = " + suResult05Name);
                                out.println("<br>");
                                */

                                String file = ""; 
                                file = suResult01Name;
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
                            </table>

                            <table>
                                <tr>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <%
                                file = suResult02Name;
                                br = new BufferedReader(new FileReader(file));

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
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                </tr>
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                </tr>
                            </table>    
                            <% br.close(); %> 

                            <% if (suResult05Name != "") { %>
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
                                        file = suResult05Name;
                                        br = new BufferedReader(new FileReader(file));

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
                            <script>
                                var sufilefileResult01 = document.getElementById("sufilefileResult01"); 
                                var sufilefileResult02 = document.getElementById("sufilefileResult02"); 
                            </script>

                            <% if (suResult01 != "") { 
                                sufilefileResult01 = application.getRealPath("/") + suResult01;
                                suResult01Name=sufilefileResult01; 
                            }
                            else {
                                sufilefileResult01 = suResult01Name;
                            } %>

                            <script>
                                var suResult01Name = document.getElementById("suResult01Name");
                                document.getElementById("suResult01Name").value = suResult01Name;
                            </script>

                            <% if (suResult02 != "") {
                                sufilefileResult02 = application.getRealPath("/") + suResult02;
                                suResult02Name=sufilefileResult02; 
                            }
                            else {
                                sufilefileResult02 = suResult02Name;
                            } %>

                            <script>
                                var suResult02Name = document.getElementById("suResult02Name");
                                document.getElementById("suResult02Name").value = suResult02Name;
                            </script>

                            <script>
                                var suResult03Name = document.getElementById("suResult03Name");
                                var suResult04Name = document.getElementById("suResult04Name"); 
                                var suResult05Name = document.getElementById("suResult05Name"); 
                                var suResult06Name = document.getElementById("suResult06Name"); 
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
                                    <input type="text" name="suResult01Name" id="suResult01Name" size="75" value="<%=suResult01Name%>" readonly/>
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... main output. </font>
                                    <input type="hidden" name="suResult03Name" id="suResult03Name" value="<%=suResult03Name%>" />
                                    <input type="hidden" name="suResult04Name" id="suResult04Name" value="<%=suResult04Name%>" />
                                    <input type="hidden" name="suResult05Name" id="suResult05Name" value="<%=suResult05Name%>" />
                                    <input type="hidden" name="suResult06Name" id="suResult06Name" value="<%=suResult06Name%>" />
                                    </td>
                                </tr> 
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td colspan="4">
                                    <input type="text" name="suResult02Name" id="suResult02Name" size="75" value="<%=suResult02Name%>" readonly/> 
                                    <font color="teal" face="tahoma" size="2"> &nbsp; ... validation. </font>
                                    </td>
                                </tr>
                                <% if (suResult05Name != "") { %>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td colspan="4">
                                        <input type="text" name="suResult05Name" id="suResult05Name" size="75" value="<%=suResult05Name%>" readonly/> 
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
                                file = suResult01Name;
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
                            </table>

                            <% //Validation Result: %>
                            <table>
                                <tr>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <%
                                file = suResult02Name;
                                br = new BufferedReader(new FileReader(file));

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
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                </tr>
                                <tr>
                                    <td colspan="6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> 
                                </tr>
                                <% br.close(); %> 
                            </table>    

                            <% //Performance Result: %>
                            <% if (suResult05Name != "") { %>
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
                                        file = suResult05Name;
                                        br = new BufferedReader(new FileReader(file));

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
                                    <input type="text" name="sBaseFileNameLSSVM" id="sBaseFileNameLSSVM" size="20" value="<%=sBaseFileNameLSSVM%>"> 
                                </td>
                                <td colspan="2">
                                    &nbsp;&nbsp; - - -
                                    <%--><a onclick="return createoutputfiles(1);">
                                        <font color="blue" face="tahoma" size="2"> <u>Accept</u>, </font>
                                    </a><--%>
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
                                &nbsp;<input type="file" name="suResult01" id="suResult01"/>
                            </td>
                            <td colspan="2">
                                <input type="text" name="suResult01Name" id="suResult01Name" size="60" value="<%=suResult01Name%>" readonly/>
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
                                &nbsp;<input type="file" name="suResult02" id="suResult02"/>
                            </td>
                            <td colspan="2">
                                <input type="text" name="suResult02Name" id="suResult02Name" size="60" value="<%=suResult02Name%>" readonly/>
                                <input type="hidden" name="suResult03Name" id="suResult03Name" value="<%=suResult03Name%>" />
                                <input type="hidden" name="suResult04Name" id="suResult04Name" value="<%=suResult04Name%>" />
                                <input type="hidden" name="suResult05Name" id="suResult05Name" value="<%=suResult05Name%>" />
                                <input type="hidden" name="suResult06Name" id="suResult06Name" value="<%=suResult06Name%>" />
                            </td>
                        </tr></table>

                            <script>
                                //alert("Aha1 ...!");
                                var sBaseFileNameCO = document.getElementById("sBaseFileNameCO");
                                if (sBaseFileNameCO !== "") {
                                    var sBaseFileNameLSSVM = document.getElementById("sBaseFileNameLSSVM");
                                    sBaseFileNameLSSVM = sBaseFileNameCO;
                                    document.getElementById("sBaseFileNameLSSVM").value = sBaseFileNameCO.value;
                                }
                            </script>
                        <% } %>
                    <% } %>
                <% } else if ((int)Double.parseDouble(sRunReportTable) == 2) {
                    if (sRRTShow != "") { 
                        %>
                            <script>
                            var sufilefileResult03 = document.getElementById("sufilefileResult03");
                            </script>
                        <%
                        if (suResult03 != "") {
                            sufilefileResult03 = application.getRealPath("/") + suResult03;
                            suResult03Name=sufilefileResult03; 
                        }
                        else {
                            sufilefileResult03 = suResult03Name;
                        }
                        %>
                            <script>
                                var suResult03Name = document.getElementById("suResult03Name");
                                document.getElementById("suResult03Name").value = suResult03Name;
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
                        <input type="text" name="suResult03Name" id="suResult03Name" size="75" value="<%=suResult03Name%>" readonly/>
                        <input type="hidden" name="suResult01Name" id="suResult01Name" value="<%=suResult01Name%>" />
                        <input type="hidden" name="suResult02Name" id="suResult02Name" value="<%=suResult02Name%>" />
                        <input type="hidden" name="suResult04Name" id="suResult04Name" value="<%=suResult04Name%>" />
                        <input type="hidden" name="suResult05Name" id="suResult05Name" value="<%=suResult05Name%>" />
                        <input type="hidden" name="suResult06Name" id="suResult06Name" value="<%=suResult06Name%>" />
                        <input type="hidden" name="sBaseFileNameLSSVM" id="sBaseFileNameLSSVM" value="<%=sBaseFileNameLSSVM%>">
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
                        file = suResult03Name;
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
                            &nbsp;<input type="file" name="suResult03" id="suResult03"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="suResult03Name" id="suResult03Name" size="60" value="<%=suResult03Name%>" readonly/>
                            <input type="hidden" name="suResult01Name" id="suResult01Name" value="<%=suResult01Name%>" />
                            <input type="hidden" name="suResult02Name" id="suResult02Name" value="<%=suResult02Name%>" />
                            <input type="hidden" name="suResult04Name" id="suResult04Name" value="<%=suResult04Name%>" />
                            <input type="hidden" name="suResult05Name" id="suResult05Name" value="<%=suResult05Name%>" />
                            <input type="hidden" name="suResult06Name" id="suResult06Name" value="<%=suResult06Name%>" />
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
                            var sufilefileResult04 = document.getElementById("sufilefileResult04");
                        </script>
                        <%
                            if (suResult04 != "") {
                                sufilefileResult04 = application.getRealPath("/") + suResult04;
                                suResult04Name=sufilefileResult04; 
                            }
                            else {
                                sufilefileResult04 = suResult04Name;
                            }
                        %>
                        <script>
                            var suResult04Name = document.getElementById("suResult04Name");
                            document.getElementById("suResult04Name").value = suResult04Name;
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
                                <input type="text" name="suResult04Name" id="suResult04Name" size="75" value="<%=suResult04Name%>" readonly/>
                                <input type="hidden" name="suResult01Name" id="suResult01Name" value="<%=suResult01Name%>" />
                                <input type="hidden" name="suResult02Name" id="suResult02Name" value="<%=suResult02Name%>" />
                                <input type="hidden" name="suResult03Name" id="suResult03Name" value="<%=suResult03Name%>" />
                                <input type="hidden" name="suResult05Name" id="suResult05Name" value="<%=suResult05Name%>" />
                                <input type="hidden" name="suResult06Name" id="suResult06Name" value="<%=suResult06Name%>" />
                                <input type="hidden" name="sBaseFileNameLSSVM" id="sBaseFileNameLSSVM" value="<%=sBaseFileNameLSSVM%>">
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
                            file = suResult04Name;
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
                            <input type="file" name="suResult04" id="suResult04"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="suResult04Name" id="suResult04Name" size="60" value="<%=suResult04Name%>" readonly/>
                            <input type="hidden" name="suResult01Name" id="suResult01Name" value="<%=suResult01Name%>" />
                            <input type="hidden" name="suResult02Name" id="suResult02Name" value="<%=suResult02Name%>" />
                            <input type="hidden" name="suResult03Name" id="suResult03Name" value="<%=suResult03Name%>" />
                            <input type="hidden" name="suResult05Name" id="suResult05Name" value="<%=suResult05Name%>" />
                            <input type="hidden" name="suResult06Name" id="suResult06Name" value="<%=suResult06Name%>" />
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
                            var sufilefileResult05 = document.getElementById("sufilefileResult05");
                        </script>
                        <%
                            if (suResult05 != "") {
                                sufilefileResult05 = application.getRealPath("/") + suResult05;
                                suResult05Name=sufilefileResult05;
                            }
                            else {
                                sufilefileResult05 = suResult05Name;
                            }
                        %>
                        <script>
                            var suResult05Name = document.getElementById("suResult05Name");
                            document.getElementById("suResult05Name").value = suResult05Name;
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
                                <input type="text" name="suResult05Name" id="suResult05Name" size="75" value="<%=suResult05Name%>" readonly/>
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
                                <input type="hidden" name="suResult01Name" id="suResult01Name" value="<%=suResult01Name%>" />
                                <input type="hidden" name="suResult02Name" id="suResult02Name" value="<%=suResult02Name%>" />
                                <input type="hidden" name="suResult03Name" id="suResult03Name" value="<%=suResult03Name%>" />
                                <input type="hidden" name="suResult04Name" id="suResult04Name" value="<%=suResult04Name%>" />
                                <input type="hidden" name="sBaseFileNameLSSVM" id="sBaseFileNameLSSVM" value="<%=sBaseFileNameLSSVM%>">
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
                                <input type="text" name="suResult06Name" id="suResult06Name" size="75" value="<%=suResult06Name%>" readonly/>
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
                            <input type="file" name="suResult05" id="suResult05"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="suResult05Name" id="suResult05Name" size="60" value="<%=suResult05Name%>" readonly/>
                            <input type="hidden" name="suResult01Name" id="suResult01Name" value="<%=suResult01Name%>" />
                            <input type="hidden" name="suResult02Name" id="suResult02Name" value="<%=suResult02Name%>" />
                            <input type="hidden" name="suResult03Name" id="suResult03Name" value="<%=suResult03Name%>" />
                            <input type="hidden" name="suResult04Name" id="suResult04Name" value="<%=suResult04Name%>" />
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
                            <input type="file" name="suResult06" id="suResult06"/>
                        </td>
                        <td>
                            &nbsp;<input type="text" name="suResult06Name" id="suResult06Name" size="60" value="<%=suResult06Name%>" readonly/>
                        </td>
                    </tr>
                    </table>
                    <% } %>
                <% } %>
                
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
            </form>
        <% } else {%> 
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
