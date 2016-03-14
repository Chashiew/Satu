package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.NumberFormat;
import java.io.*;
import java.text.*;
import Fillo.*;
import Fillo.*;

public final class ModuleSFALSSVR_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/navmenu.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    if (session.getAttribute("username") != "PiMLab" && session.getAttribute("username") != "a")
    {
        response.sendRedirect("loginpage.jsp");
        return;
    }

      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');

    String params = request.getQueryString();

      out.write('\n');
      out.write('\n');

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

    String sHasil = request.getParameter("sHasil"); 
    if (sHasil == null) {
        sHasil = "";
    }

    String sPageControl = request.getParameter("sPageControl"); 
    if (sPageControl == null) {
        sPageControl = "1";
    }
    /*
    out.println("<p>");
    out.println("VarNext = "+VarNext);
    */ 

    String sPageControlVisible = request.getParameter("sPageControlVisible"); 
    if (sPageControlVisible == null) {
        sPageControlVisible = "";
    }
    
    /**/
    if (sPageControl == "1") {
        sPageControlVisible = "1"; 
    }
    else if (sPageControl == "2") {
        sPageControlVisible = "2"; 
    }
    else if (sPageControl == "3") {
        sPageControlVisible = "3"; 
    }
    /**/
    
    /*
    out.println("<p>");
    out.println("sPageControl = "+sPageControl);
    out.println("sPageControlVisible = "+sPageControlVisible); 
    */
    
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

    /* 
    out.println("nrows1 = "+nrows1);
    out.println("ncols1 = "+ncols1);
    out.println("<br>"); 
    out.println("nrows2 = "+nrows2);
    out.println("ncols2 = "+ncols2);
    out.println("<br>");
    out.println("nrows3 = "+nrows3);
    out.println("ncols3 = "+ncols3);
    out.println("<br>");
    out.println("nrows4 = "+nrows4);
    out.println("ncols4 = "+ncols4);
    out.println("<br>");
    */
    
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
    
    //String sFileName = request.getParameter("sFileName");
    
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

    /*
    out.println("sFileName = "+sFileName);
    out.println("<br>");
    out.println("sTestFileName = "+sTestFileName);
    out.println("<br>");
    out.println("sLearningFileName = "+sLearningFileName);
    out.println("<br>");
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
    int ncol=1;

    /*
    nrow=(int)Double.parseDouble(sdInstances);
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");

        /*
        String hdf = request.getParameter("hiddendatafile");
        if (hdf == null) {
            hdf = "0";
        } 
        */
        
      out.write("\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>NiMOPS: SFA-LSSVR</title>\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"mystyle.css\">\n");
      out.write("        <link rel=\"Stylesheet\" type=\"text/css\"\n");
      out.write("              media=all href=\"./StyleSheet.css\" />\n");
      out.write("        <link href=\"StyleSheet.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap-filestyle.js\"></script>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .bs-example{\n");
      out.write("                margin: 20px;\n");
      out.write("            }\n");
      out.write("            #section1 {padding-top:50px;height:500px;color: #fff; background-color: #1E88E5;}\n");
      out.write("            #section2 {padding-top:50px;height:500px;color: #fff; background-color: #673ab7;}\n");
      out.write("            #section3 {padding-top:50px;height:500px;color: #fff; background-color: #ff9800;}\n");
      out.write("            #section4 {padding-top:50px;height:500px;color: #fff; background-color: #00bcd4;}\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function viewsummarydata2() {\n");
      out.write("                //tanpa sBaseNameCO\n");
      out.write("                \n");
      out.write("                var sLoadingDataSet1 = document.getElementById(\"sLoadingDataSet1\");\n");
      out.write("                sLoadingDataSet1 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet1\").value = sLoadingDataSet1;\n");
      out.write("                var sLoadingDataSet2 = document.getElementById(\"sLoadingDataSet2\");\n");
      out.write("                sLoadingDataSet2 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet2\").value = sLoadingDataSet2;\n");
      out.write("                var sLoadingDataSet3 = document.getElementById(\"sLoadingDataSet3\");\n");
      out.write("                sLoadingDataSet3 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet3\").value = sLoadingDataSet3;\n");
      out.write("                var sLoadingDataSet4 = document.getElementById(\"sLoadingDataSet4\");\n");
      out.write("                sLoadingDataSet4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet4\").value = sLoadingDataSet4;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                sLoadingDataExcel = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = sLoadingDataExcel;\n");
      out.write("\n");
      out.write("                //to un-hide summary data\n");
      out.write("                var sLoadingDataExcelClick = document.getElementById(\"sLoadingDataExcelClick\");\n");
      out.write("                sLoadingDataExcelClick = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = sLoadingDataExcelClick;\n");
      out.write("                    var sLoadingDataExcelClick3 = document.getElementById(\"sLoadingDataExcelClick3\");\n");
      out.write("                    sLoadingDataExcelClick3 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = sLoadingDataExcelClick3;\n");
      out.write("                var sLoadingDataExcelClick4 = document.getElementById(\"sLoadingDataExcelClick4\");\n");
      out.write("                sLoadingDataExcelClick4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = sLoadingDataExcelClick4;\n");
      out.write("                    var sLoadingDataExcelClick5 = document.getElementById(\"sLoadingDataExcelClick5\");\n");
      out.write("                    sLoadingDataExcelClick5 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = sLoadingDataExcelClick5;\n");
      out.write("                var sLoadingDataExcelClick6 = document.getElementById(\"sLoadingDataExcelClick6\");\n");
      out.write("                sLoadingDataExcelClick6 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = sLoadingDataExcelClick6;\n");
      out.write("                \n");
      out.write("                sHasil = \"\";\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = \"0\";\n");
      out.write("\n");
      out.write("                return refreshform(0);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function viewdataset(val) {\n");
      out.write("                //Rev01: val\n");
      out.write("                //tanpa sBaseNameCO\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = \"\";\n");
      out.write("                //to un-hide summary data\n");
      out.write(" \n");
      out.write("                if (val===1) {\n");
      out.write("                    //alert(\"Aha1 ...!\");\n");
      out.write("                    document.getElementById(\"sLoadingDataSet1\").value = val;\n");
      out.write("                    document.getElementById(\"sLoadingDataSet2\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataSet3\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataSet4\").value = \"\";\n");
      out.write("                }\n");
      out.write("                else if (val===2) {\n");
      out.write("                    //alert(\"Aha2 ...!\");\n");
      out.write("                    document.getElementById(\"sLoadingDataSet1\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataSet2\").value = val;\n");
      out.write("                    document.getElementById(\"sLoadingDataSet3\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataSet4\").value = \"\";\n");
      out.write("                }\n");
      out.write("                else if (val===3) {\n");
      out.write("                    //alert(\"Aha3 ...!\");\n");
      out.write("                    document.getElementById(\"sLoadingDataSet1\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataSet2\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataSet3\").value = val;\n");
      out.write("                    document.getElementById(\"sLoadingDataSet4\").value = \"\";\n");
      out.write("                }\n");
      out.write("                else if (val===4) {\n");
      out.write("                    //alert(\"Aha4 ...!\");\n");
      out.write("                    document.getElementById(\"sLoadingDataSet1\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataSet2\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataSet3\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataSet4\").value = val;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = \"\";\n");
      out.write("                \n");
      out.write("                sHasil = \"\";\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = \"0\";\n");
      out.write("\n");
      out.write("                return refreshform(0);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function viewsummarydata4() {\n");
      out.write("                //tanpa sBaseNameCO\n");
      out.write("                \n");
      out.write("                var sLoadingDataSet1 = document.getElementById(\"sLoadingDataSet1\");\n");
      out.write("                sLoadingDataSet1 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet1\").value = sLoadingDataSet1;\n");
      out.write("                var sLoadingDataSet2 = document.getElementById(\"sLoadingDataSet2\");\n");
      out.write("                sLoadingDataSet2 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet2\").value = sLoadingDataSet2;\n");
      out.write("                var sLoadingDataSet3 = document.getElementById(\"sLoadingDataSet3\");\n");
      out.write("                sLoadingDataSet3 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet3\").value = sLoadingDataSet3;\n");
      out.write("                var sLoadingDataSet4 = document.getElementById(\"sLoadingDataSet4\");\n");
      out.write("                sLoadingDataSet4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet4\").value = sLoadingDataSet4;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                sLoadingDataExcel = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = sLoadingDataExcel;\n");
      out.write("\n");
      out.write("                //to un-hide summary data\n");
      out.write("                var sLoadingDataExcelClick = document.getElementById(\"sLoadingDataExcelClick\");\n");
      out.write("                sLoadingDataExcelClick = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = sLoadingDataExcelClick;\n");
      out.write("                    var sLoadingDataExcelClick3 = document.getElementById(\"sLoadingDataExcelClick3\");\n");
      out.write("                    sLoadingDataExcelClick3 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = sLoadingDataExcelClick3;\n");
      out.write("                var sLoadingDataExcelClick4 = document.getElementById(\"sLoadingDataExcelClick4\");\n");
      out.write("                sLoadingDataExcelClick4 = \"4\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = sLoadingDataExcelClick4;\n");
      out.write("                    var sLoadingDataExcelClick5 = document.getElementById(\"sLoadingDataExcelClick5\");\n");
      out.write("                    sLoadingDataExcelClick5 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = sLoadingDataExcelClick5;\n");
      out.write("                var sLoadingDataExcelClick6 = document.getElementById(\"sLoadingDataExcelClick6\");\n");
      out.write("                sLoadingDataExcelClick6 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = sLoadingDataExcelClick6;\n");
      out.write("                \n");
      out.write("                sHasil = \"\";\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = \"0\";\n");
      out.write("\n");
      out.write("                return refreshform(0);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function viewsummarydata5() {\n");
      out.write("                //tanpa sBaseNameCO\n");
      out.write("                \n");
      out.write("                var sLoadingDataSet1 = document.getElementById(\"sLoadingDataSet1\");\n");
      out.write("                sLoadingDataSet1 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet1\").value = sLoadingDataSet1;\n");
      out.write("                var sLoadingDataSet2 = document.getElementById(\"sLoadingDataSet2\");\n");
      out.write("                sLoadingDataSet2 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet2\").value = sLoadingDataSet2;\n");
      out.write("                var sLoadingDataSet3 = document.getElementById(\"sLoadingDataSet3\");\n");
      out.write("                sLoadingDataSet3 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet3\").value = sLoadingDataSet3;\n");
      out.write("                var sLoadingDataSet4 = document.getElementById(\"sLoadingDataSet4\");\n");
      out.write("                sLoadingDataSet4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet4\").value = sLoadingDataSet4;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                sLoadingDataExcel = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = sLoadingDataExcel;\n");
      out.write("\n");
      out.write("                //to un-hide summary data\n");
      out.write("                var sLoadingDataExcelClick = document.getElementById(\"sLoadingDataExcelClick\");\n");
      out.write("                sLoadingDataExcelClick = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = sLoadingDataExcelClick;\n");
      out.write("                    var sLoadingDataExcelClick3 = document.getElementById(\"sLoadingDataExcelClick3\");\n");
      out.write("                    sLoadingDataExcelClick3 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = sLoadingDataExcelClick3;\n");
      out.write("                var sLoadingDataExcelClick4 = document.getElementById(\"sLoadingDataExcelClick4\");\n");
      out.write("                sLoadingDataExcelClick4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = sLoadingDataExcelClick4;\n");
      out.write("                    var sLoadingDataExcelClick5 = document.getElementById(\"sLoadingDataExcelClick5\");\n");
      out.write("                    sLoadingDataExcelClick5 = \"5\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = sLoadingDataExcelClick5;\n");
      out.write("                var sLoadingDataExcelClick6 = document.getElementById(\"sLoadingDataExcelClick6\");\n");
      out.write("                sLoadingDataExcelClick6 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = sLoadingDataExcelClick6;\n");
      out.write("                \n");
      out.write("                sHasil = \"\";\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = \"0\";\n");
      out.write("\n");
      out.write("                return refreshform(0);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function viewsummarydata6() {\n");
      out.write("                //tanpa sBaseNameCO\n");
      out.write("                \n");
      out.write("                var sLoadingDataSet1 = document.getElementById(\"sLoadingDataSet1\");\n");
      out.write("                sLoadingDataSet1 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet1\").value = sLoadingDataSet1;\n");
      out.write("                var sLoadingDataSet2 = document.getElementById(\"sLoadingDataSet2\");\n");
      out.write("                sLoadingDataSet2 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet2\").value = sLoadingDataSet2;\n");
      out.write("                var sLoadingDataSet3 = document.getElementById(\"sLoadingDataSet3\");\n");
      out.write("                sLoadingDataSet3 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet3\").value = sLoadingDataSet3;\n");
      out.write("                var sLoadingDataSet4 = document.getElementById(\"sLoadingDataSet4\");\n");
      out.write("                sLoadingDataSet4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet4\").value = sLoadingDataSet4;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                sLoadingDataExcel = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = sLoadingDataExcel;\n");
      out.write("\n");
      out.write("                //to un-hide summary data\n");
      out.write("                var sLoadingDataExcelClick = document.getElementById(\"sLoadingDataExcelClick\");\n");
      out.write("                sLoadingDataExcelClick = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = sLoadingDataExcelClick;\n");
      out.write("                    var sLoadingDataExcelClick3 = document.getElementById(\"sLoadingDataExcelClick3\");\n");
      out.write("                    sLoadingDataExcelClick3 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = sLoadingDataExcelClick3;\n");
      out.write("                var sLoadingDataExcelClick4 = document.getElementById(\"sLoadingDataExcelClick4\");\n");
      out.write("                sLoadingDataExcelClick4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = sLoadingDataExcelClick4;\n");
      out.write("                    var sLoadingDataExcelClick5 = document.getElementById(\"sLoadingDataExcelClick5\");\n");
      out.write("                    sLoadingDataExcelClick5 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = sLoadingDataExcelClick5;\n");
      out.write("                var sLoadingDataExcelClick6 = document.getElementById(\"sLoadingDataExcelClick6\");\n");
      out.write("                sLoadingDataExcelClick6 = \"6\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = sLoadingDataExcelClick6;\n");
      out.write("                \n");
      out.write("                sHasil = \"\";\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = \"0\";\n");
      out.write("\n");
      out.write("                return refreshform(0);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function closesummarydata2() {\n");
      out.write("                var sBaseFileNameCO = document.getElementById(\"sBaseFileNameCO\");\n");
      out.write("\n");
      out.write("                var sLoadingDataSet1 = document.getElementById(\"sLoadingDataSet1\");\n");
      out.write("                sLoadingDataSet1 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet1\").value = sLoadingDataSet1;\n");
      out.write("                var sLoadingDataSet2 = document.getElementById(\"sLoadingDataSet2\");\n");
      out.write("                sLoadingDataSet2 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet2\").value = sLoadingDataSet2;\n");
      out.write("                var sLoadingDataSet3 = document.getElementById(\"sLoadingDataSet3\");\n");
      out.write("                sLoadingDataSet3 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet3\").value = sLoadingDataSet3;\n");
      out.write("                var sLoadingDataSet4 = document.getElementById(\"sLoadingDataSet4\");\n");
      out.write("                sLoadingDataSet4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet4\").value = sLoadingDataSet4;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                sLoadingDataExcel = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = sLoadingDataExcel;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcelClick = document.getElementById(\"sLoadingDataExcelClick\");\n");
      out.write("                sLoadingDataExcelClick = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = sLoadingDataExcelClick;\n");
      out.write("                    var sLoadingDataExcelClick3 = document.getElementById(\"sLoadingDataExcelClick3\");\n");
      out.write("                    sLoadingDataExcelClick3 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = sLoadingDataExcelClick3;\n");
      out.write("                var sLoadingDataExcelClick4 = document.getElementById(\"sLoadingDataExcelClick4\");\n");
      out.write("                sLoadingDataExcelClick4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = sLoadingDataExcelClick4;\n");
      out.write("                    var sLoadingDataExcelClick5 = document.getElementById(\"sLoadingDataExcelClick5\");\n");
      out.write("                    sLoadingDataExcelClick5 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = sLoadingDataExcelClick5;\n");
      out.write("                var sLoadingDataExcelClick6 = document.getElementById(\"sLoadingDataExcelClick6\");\n");
      out.write("                sLoadingDataExcelClick6 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = sLoadingDataExcelClick6;\n");
      out.write("\n");
      out.write("                return refreshform(0);\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function rundata2(val) {\n");
      out.write("                var sBaseFileNameCO = document.getElementById(\"sBaseFileNameCO\");\n");
      out.write("\n");
      out.write("                var sLoadingDataSet1 = document.getElementById(\"sLoadingDataSet1\");\n");
      out.write("                sLoadingDataSet1 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet1\").value = sLoadingDataSet1;\n");
      out.write("                var sLoadingDataSet2 = document.getElementById(\"sLoadingDataSet2\");\n");
      out.write("                sLoadingDataSet2 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet2\").value = sLoadingDataSet2;\n");
      out.write("                var sLoadingDataSet3 = document.getElementById(\"sLoadingDataSet3\");\n");
      out.write("                sLoadingDataSet3 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet3\").value = sLoadingDataSet3;\n");
      out.write("                var sLoadingDataSet4 = document.getElementById(\"sLoadingDataSet4\");\n");
      out.write("                sLoadingDataSet4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet4\").value = sLoadingDataSet4;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                sLoadingDataExcel = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = sLoadingDataExcel;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcelClick = document.getElementById(\"sLoadingDataExcelClick\");\n");
      out.write("                sLoadingDataExcelClick = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = sLoadingDataExcelClick;\n");
      out.write("                    var sLoadingDataExcelClick3 = document.getElementById(\"sLoadingDataExcelClick3\");\n");
      out.write("                    sLoadingDataExcelClick3 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = sLoadingDataExcelClick3;\n");
      out.write("                var sLoadingDataExcelClick4 = document.getElementById(\"sLoadingDataExcelClick4\");\n");
      out.write("                sLoadingDataExcelClick4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = sLoadingDataExcelClick4;\n");
      out.write("                    var sLoadingDataExcelClick5 = document.getElementById(\"sLoadingDataExcelClick5\");\n");
      out.write("                    sLoadingDataExcelClick5 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = sLoadingDataExcelClick5;\n");
      out.write("                var sLoadingDataExcelClick6 = document.getElementById(\"sLoadingDataExcelClick6\");\n");
      out.write("                sLoadingDataExcelClick6 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = sLoadingDataExcelClick6;\n");
      out.write("\n");
      out.write("                var sRunReportTable = document.getElementById(\"sRunReportTable\");\n");
      out.write("                var sHasil = document.getElementById(\"sHasil\");\n");
      out.write("                //alert(\"Aha1 ...!\");\n");
      out.write("                if (sRunReportTable.value===\"1\") {\n");
      out.write("                    //sRunReportTable = val;\n");
      out.write("                    //document.getElementById(\"sRunReportTable\").value = sRunReportTable;\n");
      out.write("                    //alert(\"Aha11 ...!\");\n");
      out.write("                    //if (sRunReportTable.value===\"9\") {\n");
      out.write("                    //if (val===\"9\") {\n");
      out.write("                    //if (sRunReportTable===\"9\") {\n");
      out.write("                    //if (val.value===\"9\") {\n");
      out.write("                        //sRunReportTable = \"1\";\n");
      out.write("                        //sHasil=\"1\";\n");
      out.write("                        //alert(\"Aha12 ...!\");\n");
      out.write("                    //}\n");
      out.write("                    //else {\n");
      out.write("                        sRunReportTable = \"\";\n");
      out.write("                        sHasil=\"\";\n");
      out.write("                        //alert(\"Aha13 ...!\");\n");
      out.write("                    //}\n");
      out.write("                }\n");
      out.write("                else {\n");
      out.write("                    //alert(\"Aha14 ...!\");\n");
      out.write("                    sRunReportTable = val;\n");
      out.write("                    sHasil=\"\";\n");
      out.write("                }\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = sRunReportTable;\n");
      out.write("                document.getElementById(\"sHasil\").value = sHasil;\n");
      out.write("                var sRRTShow = document.getElementById(\"sRRTShow\");\n");
      out.write("                sRRTShow = \"\";\n");
      out.write("                document.getElementById(\"sRRTShow\").value = sRRTShow;\n");
      out.write("                var sResult01 = document.getElementById(\"sResult01\");\n");
      out.write("                var sResult02 = document.getElementById(\"sResult02\");\n");
      out.write("                var sResult03 = document.getElementById(\"sResult03\");\n");
      out.write("                var sResult04 = document.getElementById(\"sResult04\");\n");
      out.write("                var sResult05 = document.getElementById(\"sResult05\");\n");
      out.write("                var sResult06 = document.getElementById(\"sResult06\");\n");
      out.write("                //var sReportFile = document.getElementById(\"sReportFile\");\n");
      out.write("                //var sReportFileTXT = document.getElementById(\"sReportFileTXT\");\n");
      out.write("                \n");
      out.write("                var sResult01Name = document.getElementById(\"sResult01Name\");\n");
      out.write("                var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("                var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                var sResult04Name = document.getElementById(\"sResult04Name\");\n");
      out.write("                var sResult04aName = document.getElementById(\"sResult04aName\");\n");
      out.write("                var sResult04bName = document.getElementById(\"sResult04bName\");\n");
      out.write("                var sResult04cName = document.getElementById(\"sResult04cName\");\n");
      out.write("                var sResult04dName = document.getElementById(\"sResult04dName\");\n");
      out.write("                var sResult05Name = document.getElementById(\"sResult05Name\");\n");
      out.write("                var sResult06Name = document.getElementById(\"sResult06Name\");\n");
      out.write("                //var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                //var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                \n");
      out.write("                var sViewProceed = document.getElementById(\"sViewProceed\");\n");
      out.write("                sViewProceed = \"\";\n");
      out.write("                document.getElementById(\"sViewProceed\").value = sViewProceed;\n");
      out.write("\n");
      out.write("                return refreshform(val);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function rundata22(val) {\n");
      out.write("                var sBaseFileNameCO = document.getElementById(\"sBaseFileNameCO\");\n");
      out.write("\n");
      out.write("                var sLoadingDataSet1 = document.getElementById(\"sLoadingDataSet1\");\n");
      out.write("                sLoadingDataSet1 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet1\").value = sLoadingDataSet1;\n");
      out.write("                var sLoadingDataSet2 = document.getElementById(\"sLoadingDataSet2\");\n");
      out.write("                sLoadingDataSet2 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet2\").value = sLoadingDataSet2;\n");
      out.write("                var sLoadingDataSet3 = document.getElementById(\"sLoadingDataSet3\");\n");
      out.write("                sLoadingDataSet3 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet3\").value = sLoadingDataSet3;\n");
      out.write("                var sLoadingDataSet4 = document.getElementById(\"sLoadingDataSet4\");\n");
      out.write("                sLoadingDataSet4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet4\").value = sLoadingDataSet4;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                sLoadingDataExcel = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = sLoadingDataExcel;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcelClick = document.getElementById(\"sLoadingDataExcelClick\");\n");
      out.write("                sLoadingDataExcelClick = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = sLoadingDataExcelClick;\n");
      out.write("                    var sLoadingDataExcelClick3 = document.getElementById(\"sLoadingDataExcelClick3\");\n");
      out.write("                    sLoadingDataExcelClick3 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = sLoadingDataExcelClick3;\n");
      out.write("                var sLoadingDataExcelClick4 = document.getElementById(\"sLoadingDataExcelClick4\");\n");
      out.write("                sLoadingDataExcelClick4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = sLoadingDataExcelClick4;\n");
      out.write("                    var sLoadingDataExcelClick5 = document.getElementById(\"sLoadingDataExcelClick5\");\n");
      out.write("                    sLoadingDataExcelClick5 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = sLoadingDataExcelClick5;\n");
      out.write("                var sLoadingDataExcelClick6 = document.getElementById(\"sLoadingDataExcelClick6\");\n");
      out.write("                sLoadingDataExcelClick6 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = sLoadingDataExcelClick6;\n");
      out.write("\n");
      out.write("                var sRunReportTable = document.getElementById(\"sRunReportTable\");\n");
      out.write("                sRunReportTable = \"1\";\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = sRunReportTable;\n");
      out.write("\n");
      out.write("                var sHasil = document.getElementById(\"sHasil\");\n");
      out.write("                sHasil=\"1\";\n");
      out.write("                document.getElementById(\"sHasil\").value = sHasil;\n");
      out.write("                \n");
      out.write("                var sRRTShow = document.getElementById(\"sRRTShow\");\n");
      out.write("                sRRTShow = \"\";\n");
      out.write("                document.getElementById(\"sRRTShow\").value = sRRTShow;\n");
      out.write("                var sResult01 = document.getElementById(\"sResult01\");\n");
      out.write("                var sResult02 = document.getElementById(\"sResult02\");\n");
      out.write("                var sResult03 = document.getElementById(\"sResult03\");\n");
      out.write("                var sResult04 = document.getElementById(\"sResult04\");\n");
      out.write("                var sResult05 = document.getElementById(\"sResult05\");\n");
      out.write("                var sResult06 = document.getElementById(\"sResult06\");\n");
      out.write("                //var sReportFile = document.getElementById(\"sReportFile\");\n");
      out.write("                //var sReportFileTXT = document.getElementById(\"sReportFileTXT\");\n");
      out.write("                \n");
      out.write("                var sResult01Name = document.getElementById(\"sResult01Name\");\n");
      out.write("                var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("                var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                var sResult04Name = document.getElementById(\"sResult04Name\");\n");
      out.write("                var sResult04aName = document.getElementById(\"sResult04aName\");\n");
      out.write("                var sResult04bName = document.getElementById(\"sResult04bName\");\n");
      out.write("                var sResult04cName = document.getElementById(\"sResult04cName\");\n");
      out.write("                var sResult04dName = document.getElementById(\"sResult04dName\");\n");
      out.write("                var sResult05Name = document.getElementById(\"sResult05Name\");\n");
      out.write("                var sResult06Name = document.getElementById(\"sResult06Name\");\n");
      out.write("                //var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                //var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                \n");
      out.write("                var sViewProceed = document.getElementById(\"sViewProceed\");\n");
      out.write("                sViewProceed = \"\";\n");
      out.write("                document.getElementById(\"sViewProceed\").value = sViewProceed;\n");
      out.write("\n");
      out.write("                return refreshform(val);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function showsummaryreport(valData) {\n");
      out.write("                var sBaseFileNameCO = document.getElementById(\"sBaseFileNameCO\");\n");
      out.write("\n");
      out.write("                var sLoadingDataSet1 = document.getElementById(\"sLoadingDataSet1\");\n");
      out.write("                sLoadingDataSet1 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet1\").value = sLoadingDataSet1;\n");
      out.write("                var sLoadingDataSet2 = document.getElementById(\"sLoadingDataSet2\");\n");
      out.write("                sLoadingDataSet2 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet2\").value = sLoadingDataSet2;\n");
      out.write("                var sLoadingDataSet3 = document.getElementById(\"sLoadingDataSet3\");\n");
      out.write("                sLoadingDataSet3 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet3\").value = sLoadingDataSet3;\n");
      out.write("                var sLoadingDataSet4 = document.getElementById(\"sLoadingDataSet4\");\n");
      out.write("                sLoadingDataSet4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet4\").value = sLoadingDataSet4;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                sLoadingDataExcel = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = sLoadingDataExcel;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcelClick = document.getElementById(\"sLoadingDataExcelClick\");\n");
      out.write("                sLoadingDataExcelClick = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = sLoadingDataExcelClick;\n");
      out.write("                    var sLoadingDataExcelClick3 = document.getElementById(\"sLoadingDataExcelClick3\");\n");
      out.write("                    sLoadingDataExcelClick3 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = sLoadingDataExcelClick3;\n");
      out.write("                var sLoadingDataExcelClick4 = document.getElementById(\"sLoadingDataExcelClick4\");\n");
      out.write("                sLoadingDataExcelClick4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = sLoadingDataExcelClick4;\n");
      out.write("                    var sLoadingDataExcelClick5 = document.getElementById(\"sLoadingDataExcelClick5\");\n");
      out.write("                    sLoadingDataExcelClick5 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = sLoadingDataExcelClick5;\n");
      out.write("                var sLoadingDataExcelClick6 = document.getElementById(\"sLoadingDataExcelClick6\");\n");
      out.write("                sLoadingDataExcelClick6 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = sLoadingDataExcelClick6;\n");
      out.write("\n");
      out.write("                var sRunReportTable = document.getElementById(\"sRunReportTable\");\n");
      out.write("                //var sRunReportTable = document.getElementById(\"sRunReportTable\");\n");
      out.write("                //sRunReportTable = val;\n");
      out.write("                //document.getElementById(\"sRunReportTable\").value = sRunReportTable;\n");
      out.write("                var sRRTShow = document.getElementById(\"sRRTShow\"); \n");
      out.write("                sRRTShow = \"1\"; \n");
      out.write("                document.getElementById(\"sRRTShow\").value = \"1\";\n");
      out.write("                \n");
      out.write("                var sViewProceed = document.getElementById(\"sViewProceed\");\n");
      out.write("                if (valData===11) { \n");
      out.write("                    //alert(\"Aha1 ...!\");\n");
      out.write("                    sViewProceed = \"\";\n");
      out.write("                }\n");
      out.write("                else if (valData===12) { \n");
      out.write("                    //alert(\"Aha2 ...!\");\n");
      out.write("                    sViewProceed = \"1\";\n");
      out.write("                }\n");
      out.write("                document.getElementById(\"sViewProceed\").value = sViewProceed;\n");
      out.write("                \n");
      out.write("                if (valData===11 || valData===12) { \n");
      out.write("                    var sResult01 = document.getElementById(\"sResult01\").value;\n");
      out.write("                    if (sResult01!==\"\") {\n");
      out.write("                        var sResult01Name = document.getElementById(\"sResult01\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var sResult01Name = document.getElementById(\"sResult01Name\").value;\n");
      out.write("                        if (sResult01Name===\"\") {\n");
      out.write("                            document.getElementById(\"sResult01Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\Result01.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var sResult02 = document.getElementById(\"sResult02\").value;\n");
      out.write("                    if (sResult02!==\"\") {\n");
      out.write("                        var sResult02Name = document.getElementById(\"sResult02\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        //sResult02 = \"Result02.txt\";\n");
      out.write("                        //document.getElementById(\"sResult02\").value = sResult02;\n");
      out.write("                        //var sResult02Name = document.getElementById(\"sResult02\");\n");
      out.write("                        \n");
      out.write("                        var sResult02Name = document.getElementById(\"sResult02Name\").value;\n");
      out.write("                        if (sResult02Name===\"\") {\n");
      out.write("                            document.getElementById(\"sResult02Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\Result02.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                    var sResult04Name = document.getElementById(\"sResult04Name\");\n");
      out.write("                    var sResult04aName = document.getElementById(\"sResult04aName\");\n");
      out.write("                    var sResult04bName = document.getElementById(\"sResult04bName\");\n");
      out.write("                    var sResult04cName = document.getElementById(\"sResult04cName\");\n");
      out.write("                    var sResult04dName = document.getElementById(\"sResult04dName\");\n");
      out.write("                    var sResult05Name = document.getElementById(\"sResult05Name\");\n");
      out.write("                    var sResult06Name = document.getElementById(\"sResult06Name\");\n");
      out.write("\n");
      out.write("                    /*\n");
      out.write("                    if (sResult01.value===\"\") {\n");
      out.write("                        if (sResult01Name.value===\"\") {\n");
      out.write("                            var sResult01Name=\"Result01.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    */\n");
      out.write("                    \n");
      out.write("                    /*\n");
      out.write("                    alert(\"Aha1 ...!\");\n");
      out.write("                    if (sResult02!==\"\") {\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        alert(\"Aha2 ...!\");\n");
      out.write("                        if (sResult02Name!==\"\") {\n");
      out.write("                            alert(\"Aha3 ...!\");\n");
      out.write("                        }\n");
      out.write("                        else {\n");
      out.write("                            alert(\"Aha4 ...!\");\n");
      out.write("                            var sResult02 = document.getElementById(\"sResult02\");\n");
      out.write("                            var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("                            sResult02=\"Result02.txt\";\n");
      out.write("                            sResult02Name=\"Result02.txt\"; \n");
      out.write("                            document.getElementById(\"sResult02\").value = sResult02;\n");
      out.write("                            document.getElementById(\"sResult02Name\").value = sResult02Name;\n");
      out.write("                        }\n");
      out.write("                        alert(\"Aha5 ...!\");\n");
      out.write("                    }\n");
      out.write("                    */\n");
      out.write("           \n");
      out.write("                    /*\n");
      out.write("                    var sReportFile = document.getElementById(\"sReportFile\").value;\n");
      out.write("                    //alert(\"Aha3 ...!\");\n");
      out.write("                    if (sReportFile!==\"\") {\n");
      out.write("                        //alert(\"Aha4 ...!\");\n");
      out.write("                        if (sReportFile!==\"\") {\n");
      out.write("                            //var sReportFile = document.getElementById(\"sReportFile\").value;\n");
      out.write("                            \n");
      out.write("                            var res = sReportFile.replace(/.xls/gi, \"\");\n");
      out.write("                            //alert(\"Aha41 ...!\");\n");
      out.write("                            \n");
      out.write("                            var sReportFile = res.replace(/.txt/gi, \"\");\n");
      out.write("                            //alert(\"Aha42 ...!\");\n");
      out.write("                            \n");
      out.write("                            var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                            sReportFileName = sReportFile+\".xls\";\n");
      out.write("                            document.getElementById(\"sReportFileName\").value = sReportFileName;\n");
      out.write("                        \n");
      out.write("                            var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                            sReportFileNameTXT = sReportFile+\".txt\";\n");
      out.write("                            document.getElementById(\"sReportFileNameTXT\").value = sReportFileNameTXT;\n");
      out.write("                        }\n");
      out.write("                        //sReportFile = sReportFile.split(\".\");\n");
      out.write("\n");
      out.write("                        //alert(\"Aha43 ...!\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                        var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                    }\n");
      out.write("                    */\n");
      out.write("                }\n");
      out.write("                else if (valData===2) {\n");
      out.write("                    var sResult01Name = document.getElementById(\"sResult01Name\");\n");
      out.write("                    var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("\n");
      out.write("                    var sResult03 = document.getElementById(\"sResult03\").value;\n");
      out.write("                    if (sResult03!==\"\") {\n");
      out.write("                        var sResult03Name = document.getElementById(\"sResult03\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var sResult03Name = document.getElementById(\"sResult03Name\").value;\n");
      out.write("                        if (sResult03Name===\"\") {\n");
      out.write("                            document.getElementById(\"sResult03Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\Result03.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var sResult04Name = document.getElementById(\"sResult04Name\");\n");
      out.write("                    var sResult04aName = document.getElementById(\"sResult04aName\");\n");
      out.write("                    var sResult04bName = document.getElementById(\"sResult04bName\");\n");
      out.write("                    var sResult04cName = document.getElementById(\"sResult04cName\");\n");
      out.write("                    var sResult04dName = document.getElementById(\"sResult04dName\");\n");
      out.write("                    var sResult05Name = document.getElementById(\"sResult05Name\");\n");
      out.write("                    var sResult06Name = document.getElementById(\"sResult06Name\");\n");
      out.write("                }\n");
      out.write("                else if (valData===3) {\n");
      out.write("                    var sResult01Name = document.getElementById(\"sResult01Name\");\n");
      out.write("                    var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("                    var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                    \n");
      out.write("                    var sResult04 = document.getElementById(\"sResult04\").value;\n");
      out.write("                    if (sResult04!==\"\") {\n");
      out.write("                        var sResult04Name = document.getElementById(\"sResult04\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var sResult04Name = document.getElementById(\"sResult04Name\").value;\n");
      out.write("                        if (sResult04Name===\"\") {\n");
      out.write("                            document.getElementById(\"sResult04Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\Result04.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    var sResult04aName = document.getElementById(\"sResult04aName\");\n");
      out.write("                    var sResult04bName = document.getElementById(\"sResult04bName\");\n");
      out.write("                    var sResult04cName = document.getElementById(\"sResult04cName\");\n");
      out.write("                    var sResult04dName = document.getElementById(\"sResult04dName\");\n");
      out.write("                    var sResult05Name = document.getElementById(\"sResult05Name\");\n");
      out.write("                    var sResult06Name = document.getElementById(\"sResult06Name\");\n");
      out.write("                }\n");
      out.write("                else if (valData===4) { \n");
      out.write("                    sRunReportTable = valData;\n");
      out.write("                    document.getElementById(\"sRunReportTable\").value = sRunReportTable;\n");
      out.write("                    \n");
      out.write("                    var sResult01Name = document.getElementById(\"sResult01Name\");\n");
      out.write("                    var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("                    var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                    var sResult04Name = document.getElementById(\"sResult04Name\");\n");
      out.write("                    var sResult04aName = document.getElementById(\"sResult04aName\");\n");
      out.write("                    var sResult04bName = document.getElementById(\"sResult04bName\");\n");
      out.write("                    var sResult04cName = document.getElementById(\"sResult04cName\");\n");
      out.write("                    var sResult04dName = document.getElementById(\"sResult04dName\");\n");
      out.write("\n");
      out.write("                    var sResult05 = document.getElementById(\"sResult05\").value;\n");
      out.write("                    if (sResult05!==\"\") {\n");
      out.write("                        var sResult05Name = document.getElementById(\"sResult05\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var sResult05Name = document.getElementById(\"sResult05Name\").value;\n");
      out.write("                        if (sResult05Name===\"\") {\n");
      out.write("                            document.getElementById(\"sResult05Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\Result05.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    var sResult06 = document.getElementById(\"sResult06\").value;\n");
      out.write("                    if (sResult06!==\"\") {\n");
      out.write("                        var sResult06Name = document.getElementById(\"sResult06\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var sResult06Name = document.getElementById(\"sResult06Name\").value;\n");
      out.write("                        if (sResult06Name===\"\") {\n");
      out.write("                            document.getElementById(\"sResult06Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\Result06.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                else if (valData===5) { \n");
      out.write("                    sRunReportTable = valData;\n");
      out.write("                    document.getElementById(\"sRunReportTable\").value = sRunReportTable;\n");
      out.write("                    \n");
      out.write("                    var sResult01Name = document.getElementById(\"sResult01Name\");\n");
      out.write("                    var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("                    var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                    var sResult04Name = document.getElementById(\"sResult04Name\");\n");
      out.write("                    var sResult04aName = document.getElementById(\"sResult04aName\");\n");
      out.write("                    var sResult04bName = document.getElementById(\"sResult04bName\");\n");
      out.write("                    var sResult04cName = document.getElementById(\"sResult04cName\");\n");
      out.write("                    var sResult04dName = document.getElementById(\"sResult04dName\");\n");
      out.write("                    var sResult05Name = document.getElementById(\"sResult05Name\");\n");
      out.write("                    var sResult06Name = document.getElementById(\"sResult06Name\");\n");
      out.write("                } \n");
      out.write("                else if (valData===6) { \n");
      out.write("                    sRunReportTable = valData;\n");
      out.write("                    document.getElementById(\"sRunReportTable\").value = sRunReportTable;\n");
      out.write("                    \n");
      out.write("                    var sResult01Name = document.getElementById(\"sResult01Name\");\n");
      out.write("                    var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("                    var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                    var sResult04Name = document.getElementById(\"sResult04Name\");\n");
      out.write("                    var sResult04aName = document.getElementById(\"sResult04aName\");\n");
      out.write("                    var sResult04bName = document.getElementById(\"sResult04bName\");\n");
      out.write("                    var sResult04cName = document.getElementById(\"sResult04cName\");\n");
      out.write("                    var sResult04dName = document.getElementById(\"sResult04dName\");\n");
      out.write("                    var sResult05Name = document.getElementById(\"sResult05Name\");\n");
      out.write("                    var sResult06Name = document.getElementById(\"sResult06Name\");\n");
      out.write("                } \n");
      out.write("                \n");
      out.write("                return refreshform(valData);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function previousscreen() {\n");
      out.write("                var nFireFlies = document.getElementById(\"nFireFlies\");\n");
      out.write("                var nMaxGeneration = document.getElementById(\"nMaxGeneration\");\n");
      out.write("                var dMinBeta = document.getElementById(\"dMinBeta\");\n");
      out.write("                var dGamma = document.getElementById(\"dGamma\");\n");
      out.write("                var dAlpha = document.getElementById(\"dAlpha\");\n");
      out.write("                var dAIWeight = document.getElementById(\"dAIWeight\");\n");
      out.write("                var dTau = document.getElementById(\"dTau\");\n");
      out.write("                var dBPotential = document.getElementById(\"dBPotential\");\n");
      out.write("                var dC1 = document.getElementById(\"dC1\");\n");
      out.write("                var dC2 = document.getElementById(\"dC2\");\n");
      out.write("                var dS1 = document.getElementById(\"dS1\");\n");
      out.write("                var dS2 = document.getElementById(\"dS2\");\n");
      out.write("                var dTrainingPS = document.getElementById(\"dTrainingPS\");\n");
      out.write("                var dValidationPS = document.getElementById(\"dValidationPS\");\n");
      out.write("                var dTotalSize = document.getElementById(\"dTotalSize\");\n");
      out.write("                var nLastChange1 = document.getElementById(\"nLastChange1\");\n");
      out.write("                var nLastChange2 = document.getElementById(\"nLastChange2\");\n");
      out.write("                var dHoldOut = document.getElementById(\"dHoldOut\");\n");
      out.write("                var dCrossValidation = document.getElementById(\"dCrossValidation\");\n");
      out.write("\n");
      out.write("                var NormalRadio = document.getElementById(\"NormalRadio\");\n");
      out.write("                var OptimRadio = document.getElementById(\"OptimRadio\");\n");
      out.write("                var SCRadio = document.getElementById(\"SCRadio\");\n");
      out.write("                var PRadio = document.getElementById(\"PRadio\");\n");
      out.write("                var TORadio = document.getElementById(\"TORadio\");\n");
      out.write("\n");
      out.write("                var sDataFile = document.getElementById(\"sDataFile\");\n");
      out.write("                var nDFInstances = document.getElementById(\"nDFInstances\");\n");
      out.write("                var nDFAttributes = document.getElementById(\"nDFAttributes\");\n");
      out.write("                var sTestDataFile = document.getElementById(\"sTestDataFile\");\n");
      out.write("                var nTDFInstances = document.getElementById(\"nTDFInstances\");\n");
      out.write("                var nTDFAttributes = document.getElementById(\"nTDFAttributes\");\n");
      out.write("                var sLearningDataFile = document.getElementById(\"sLearningDataFile\");\n");
      out.write("                var nLDFInstances = document.getElementById(\"nLDFInstances\");\n");
      out.write("                var nLDFAttributes = document.getElementById(\"nLDFAttributes\");\n");
      out.write("                var sPredictionDataFile = document.getElementById(\"sPredictionDataFile\");\n");
      out.write("                var nPDFInstances = document.getElementById(\"nPDFInstances\");\n");
      out.write("                var nPDFAttributes = document.getElementById(\"nPDFAttributes\");\n");
      out.write("                var fullPath = document.getElementById(\"fullPath\");\n");
      out.write("                var fullPathT = document.getElementById(\"fullPathT\");\n");
      out.write("                var fullPathL = document.getElementById(\"fullPathL\");\n");
      out.write("                var fullPathP = document.getElementById(\"fullPathP\");\n");
      out.write("\n");
      out.write("                var sFileName = document.getElementById(\"sFileName\");\n");
      out.write("                var sTestFileName = document.getElementById(\"sTestFileName\");\n");
      out.write("                var sLearningFileName = document.getElementById(\"sLearningFileName\");\n");
      out.write("                var sPredictionFileName = document.getElementById(\"sPredictionFileName\");\n");
      out.write("\n");
      out.write("                var sFileData = document.getElementById(\"sFileData\");\n");
      out.write("                var sdInstances = document.getElementById(\"sdInstances\");\n");
      out.write("                var sdAttributes = document.getElementById(\"sdAttributes\");\n");
      out.write("\n");
      out.write("                var sPFileData = document.getElementById(\"sPFileData\");\n");
      out.write("                var sPdInstances = document.getElementById(\"sdPInstances\");\n");
      out.write("                var sPdAttributes = document.getElementById(\"sdPAttributes\");\n");
      out.write("\n");
      out.write("                var VarOne = document.getElementById(\"VarOne\");\n");
      out.write("                document.getElementById(\"VarOne\").value = \"One\";\n");
      out.write("                \n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = \"\";\n");
      out.write("\n");
      out.write("                var sLoadingDataFile = document.getElementById(\"sLoadingDataFile\");\n");
      out.write("                document.getElementById(\"sLoadingDataFile\").value = \"\";\n");
      out.write("                \n");
      out.write("                document.getElementById(\"myform2\").action = \"SFALSSVR.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                                \n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function refreshform(val) {\n");
      out.write("                var valid = false;\n");
      out.write("                \n");
      out.write("                var nFireFlies = document.getElementById(\"nFireFlies\");\n");
      out.write("                var nMaxGeneration = document.getElementById(\"nMaxGeneration\");\n");
      out.write("                var dMinBeta = document.getElementById(\"dMinBeta\");\n");
      out.write("                var dGamma = document.getElementById(\"dGamma\");\n");
      out.write("                var dAlpha = document.getElementById(\"dAlpha\");\n");
      out.write("                var dAIWeight = document.getElementById(\"dAIWeight\");\n");
      out.write("                var dTau = document.getElementById(\"dTau\");\n");
      out.write("                var dBPotential = document.getElementById(\"dBPotential\");\n");
      out.write("                var dC1 = document.getElementById(\"dC1\");\n");
      out.write("                var dC2 = document.getElementById(\"dC2\");\n");
      out.write("                var dS1 = document.getElementById(\"dS1\");\n");
      out.write("                var dS2 = document.getElementById(\"dS2\");\n");
      out.write("                var dTrainingPS = document.getElementById(\"dTrainingPS\");\n");
      out.write("                var dValidationPS = document.getElementById(\"dValidationPS\");\n");
      out.write("                var dTotalSize = document.getElementById(\"dTotalSize\");\n");
      out.write("                var nLastChange1 = document.getElementById(\"nLastChange1\");\n");
      out.write("                var nLastChange2 = document.getElementById(\"nLastChange2\");\n");
      out.write("                var dHoldOut = document.getElementById(\"dHoldOut\");\n");
      out.write("                var dCrossValidation = document.getElementById(\"dCrossValidation\");\n");
      out.write("\n");
      out.write("                var NormalRadio = document.getElementById(\"NormalRadio\");\n");
      out.write("                var OptimRadio = document.getElementById(\"OptimRadio\");\n");
      out.write("                var SCRadio = document.getElementById(\"SCRadio\");\n");
      out.write("                var PRadio = document.getElementById(\"PRadio\");\n");
      out.write("                var TORadio = document.getElementById(\"TORadio\");\n");
      out.write("\n");
      out.write("                var sDataFile = document.getElementById(\"sDataFile\");\n");
      out.write("                var nDFInstances = document.getElementById(\"nDFInstances\");\n");
      out.write("                var nDFAttributes = document.getElementById(\"nDFAttributes\");\n");
      out.write("                var sTestDataFile = document.getElementById(\"sTestDataFile\");\n");
      out.write("                var nTDFInstances = document.getElementById(\"nTDFInstances\");\n");
      out.write("                var nTDFAttributes = document.getElementById(\"nTDFAttributes\");\n");
      out.write("                var sLearningDataFile = document.getElementById(\"sLearningDataFile\");\n");
      out.write("                var nLDFInstances = document.getElementById(\"nLDFInstances\");\n");
      out.write("                var nLDFAttributes = document.getElementById(\"nLDFAttributes\");\n");
      out.write("                var sPredictionDataFile = document.getElementById(\"sPredictionDataFile\");\n");
      out.write("                var nPDFInstances = document.getElementById(\"nPDFInstances\");\n");
      out.write("                var nPDFAttributes = document.getElementById(\"nPDFAttributes\");\n");
      out.write("                var fullPath = document.getElementById(\"fullPath\");\n");
      out.write("                var fullPathT = document.getElementById(\"fullPathT\");\n");
      out.write("                var fullPathL = document.getElementById(\"fullPathL\");\n");
      out.write("                var fullPathP = document.getElementById(\"fullPathP\");\n");
      out.write("\n");
      out.write("                var sFileName = document.getElementById(\"sFileName\");\n");
      out.write("                var sTestFileName = document.getElementById(\"sTestFileName\");\n");
      out.write("                var sLearningFileName = document.getElementById(\"sLearningFileName\");\n");
      out.write("                var sPredictionFileName = document.getElementById(\"sPredictionFileName\");\n");
      out.write("\n");
      out.write("                var sFileData = document.getElementById(\"sFileData\");\n");
      out.write("                var sdInstances = document.getElementById(\"sdInstances\");\n");
      out.write("                var sdAttributes = document.getElementById(\"sdAttributes\");\n");
      out.write("\n");
      out.write("                var sPFileData = document.getElementById(\"sPFileData\");\n");
      out.write("                var sPdInstances = document.getElementById(\"sdPInstances\");\n");
      out.write("                var sPdAttributes = document.getElementById(\"sdPAttributes\");\n");
      out.write("\n");
      out.write("                var VarNext = document.getElementById(\"VarNext\");\n");
      out.write("                //\n");
      out.write("                //var sPageControl = document.getElementById(\"sPageControl\");\n");
      out.write("                \n");
      out.write("                //var VarProceed = document.getElementById(\"VarProceed\");\n");
      out.write("                //var VarReport = document.getElementById(\"VarReport\");\n");
      out.write("                //var VarTable = document.getElementById(\"VarTable\");\n");
      out.write("                    \n");
      out.write("                document.getElementById(\"myform2\").action = \"ModuleSFALSSVR.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                \n");
      out.write("                return valid;\n");
      out.write("            }           \n");
      out.write("\n");
      out.write("            function changepurpose(val) {\n");
      out.write("                var sBaseFileNameCO = document.getElementById(\"sBaseFileNameCO\");\n");
      out.write("\n");
      out.write("                var sLoadingDataSet1 = document.getElementById(\"sLoadingDataSet1\");\n");
      out.write("                sLoadingDataSet1 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet1\").value = sLoadingDataSet1;\n");
      out.write("                var sLoadingDataSet2 = document.getElementById(\"sLoadingDataSet2\");\n");
      out.write("                sLoadingDataSet2 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet2\").value = sLoadingDataSet2;\n");
      out.write("                var sLoadingDataSet3 = document.getElementById(\"sLoadingDataSet3\");\n");
      out.write("                sLoadingDataSet3 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet3\").value = sLoadingDataSet3;\n");
      out.write("                var sLoadingDataSet4 = document.getElementById(\"sLoadingDataSet4\");\n");
      out.write("                sLoadingDataSet4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataSet4\").value = sLoadingDataSet4;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcel = document.getElementById(\"sLoadingDataExcel\");\n");
      out.write("                sLoadingDataExcel = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcel\").value = sLoadingDataExcel;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcelClick = document.getElementById(\"sLoadingDataExcelClick\");\n");
      out.write("                sLoadingDataExcelClick = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick\").value = sLoadingDataExcelClick;\n");
      out.write("                    var sLoadingDataExcelClick3 = document.getElementById(\"sLoadingDataExcelClick3\");\n");
      out.write("                    sLoadingDataExcelClick3 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3\").value = sLoadingDataExcelClick3;\n");
      out.write("                var sLoadingDataExcelClick4 = document.getElementById(\"sLoadingDataExcelClick4\");\n");
      out.write("                sLoadingDataExcelClick4 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4\").value = sLoadingDataExcelClick4;\n");
      out.write("                    var sLoadingDataExcelClick5 = document.getElementById(\"sLoadingDataExcelClick5\");\n");
      out.write("                    sLoadingDataExcelClick5 = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5\").value = sLoadingDataExcelClick5;\n");
      out.write("                var sLoadingDataExcelClick6 = document.getElementById(\"sLoadingDataExcelClick6\");\n");
      out.write("                sLoadingDataExcelClick6 = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6\").value = sLoadingDataExcelClick6;\n");
      out.write("\n");
      out.write("                var sRunReportTable = document.getElementById(\"sRunReportTable\");\n");
      out.write("                var sHasil = document.getElementById(\"sHasil\");\n");
      out.write("                sRunReportTable = \"\";\n");
      out.write("                sHasil=\"\";\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = sRunReportTable;\n");
      out.write("                document.getElementById(\"sHasil\").value = sHasil;\n");
      out.write("\n");
      out.write("                var sRRTShow = document.getElementById(\"sRRTShow\");\n");
      out.write("                sRRTShow = \"\";\n");
      out.write("                document.getElementById(\"sRRTShow\").value = sRRTShow;\n");
      out.write("                var sResult01 = document.getElementById(\"sResult01\");\n");
      out.write("                var sResult02 = document.getElementById(\"sResult02\");\n");
      out.write("                var sResult03 = document.getElementById(\"sResult03\");\n");
      out.write("                var sResult04 = document.getElementById(\"sResult04\");\n");
      out.write("                var sResult05 = document.getElementById(\"sResult05\");\n");
      out.write("                var sResult06 = document.getElementById(\"sResult06\");\n");
      out.write("                //var sReportFile = document.getElementById(\"sReportFile\");\n");
      out.write("                //var sReportFileTXT = document.getElementById(\"sReportFileTXT\");\n");
      out.write("                \n");
      out.write("                var sResult01Name = document.getElementById(\"sResult01Name\");\n");
      out.write("                var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("                var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                var sResult04Name = document.getElementById(\"sResult04Name\");\n");
      out.write("                var sResult04aName = document.getElementById(\"sResult04aName\");\n");
      out.write("                var sResult04bName = document.getElementById(\"sResult04bName\");\n");
      out.write("                var sResult04cName = document.getElementById(\"sResult04cName\");\n");
      out.write("                var sResult04dName = document.getElementById(\"sResult04dName\");\n");
      out.write("                var sResult05Name = document.getElementById(\"sResult05Name\");\n");
      out.write("                var sResult06Name = document.getElementById(\"sResult06Name\");\n");
      out.write("                //var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                //var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                \n");
      out.write("                var sViewProceed = document.getElementById(\"sViewProceed\");\n");
      out.write("                sViewProceed = \"\";\n");
      out.write("                document.getElementById(\"sViewProceed\").value = sViewProceed;\n");
      out.write("\n");
      out.write("                var sPageControl = document.getElementById(\"sPageControl\");\n");
      out.write("                sPageControl = \"val\"; \n");
      out.write("                document.getElementById(\"sPageControl\").value = \"sPageControl\";\n");
      out.write("                \n");
      out.write("                //alert(\"Aha1 ...!\");\n");
      out.write("                /*if (val === 1) {\n");
      out.write("                    //alert(\"Aha11 ...!\");\n");
      out.write("                    sPageControlVisible = \"1\"; \n");
      out.write("                    document.getElementById(\"sPageControl\").value = \"1\";\n");
      out.write("                } else if (val === 2) {\n");
      out.write("                    //alert(\"Aha12 ...!\");\n");
      out.write("                    sPageControlVisible = \"2\"; \n");
      out.write("                    document.getElementById(\"sPageControl\").value = \"2\";\n");
      out.write("                } else if (val === 3) {\n");
      out.write("                    //alert(\"Aha13 ...!\");\n");
      out.write("                    sPageControlVisible = \"3\"; \n");
      out.write("                    document.getElementById(\"sPageControl\").value = \"3\";\n");
      out.write("                }*/\n");
      out.write("                return refreshform(val);\n");
      out.write("            }\n");
      out.write("                        \n");
      out.write("            function changetab(val) {\n");
      out.write("                if (val === 1)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"sPageControl\").value = \"1\";\n");
      out.write("                }\n");
      out.write("                else if (val === 2)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"sPageControl\").value = \"2\";\n");
      out.write("                }\n");
      out.write("                else if (val === 3)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"sPageControl\").value = \"3\";\n");
      out.write("                }\n");
      out.write("                return refreshform(val);\n");
      out.write("            } \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"sfawrap\">\n");
      out.write("            <center>\n");
      out.write("                <img src=\"headhomepagesub.jpg\" alt=\"Image Not Found ...\" width=\"1000\"> \n");
      out.write("            </center>\n");
      out.write("\n");
      out.write("            ");
      out.write("<!--<div class=\" visible-lg-block wdetail\">-->\n");
      out.write("<div class=\"wdetail\">\n");
      out.write("    <div id=\"wrap\">\n");
      out.write("        <ul class=\"navbarcss\">\n");
      out.write("            <li><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"#\" onclick=\"show(1);\">About</a>\n");
      out.write("                <ul id=\"ulabout\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"About.jsp\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            Brief Introduction\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"HowTo.jsp\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            User Manual\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\" onclick=\"show(2);\">Baseline Model</a>\n");
      out.write("                ");

                    if (null == session.getAttribute("username"))
                    {
                        //session.setAttribute("username", "");
                    }

                    //if (session.getAttribute("username").toString() == "PiMLab")
                    //{
                
      out.write("\n");
      out.write("                <ul id=\"ulbaseline\">\n");
      out.write("                   <li>\n");
      out.write("                        <a href=\"AllModulesBaseline.jsp?VarA=1\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            Regression\n");
      out.write("                        </a>\n");
      out.write("                   </li>\n");
      out.write("\n");
      out.write("                   <li>\n");
      out.write("                        <a href=\"AllModulesBaseline.jsp?VarB=2\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            Classification\n");
      out.write("                        </a>\n");
      out.write("                   </li>\n");
      out.write("                </ul> \n");
      out.write("                ");
 
                    //}
                
      out.write("\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\" onclick=\"show(3);\">NiMOPS System</a>\n");
      out.write("                ");
 
                    if (session.getAttribute("username").toString() == "PiMLab")
                    {
                
      out.write("\n");
      out.write("                <ul id=\"ulnimops\">\n");
      out.write("                   ");

                        String ua=request.getHeader("User-Agent").toLowerCase();
                        if(ua.matches("(?i).*((android|bb\\d+|meego).+mobile|avantgo|bada\\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\\.(browser|link)|vodafone|wap|windows ce|xda|xiino).*")||ua.substring(0,4).matches("(?i)1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\\-|your|zeto|zte\\-")) {
                    
      out.write("\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"AllModulesmobile.jsp?VarOne=1&PRadio=PRadio1\" style=\"border-right: 1px solid #ffffff\" >\n");
      out.write("                            NiMOPS for Regression\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    ");
} else {
      out.write("\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"SFALSSVR.jsp?VarOne=1&PRadio=PRadio1\" style=\"border-right: 1px solid #ffffff\" >\n");
      out.write("                            NiMOPS for Regression\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"SFALSSVM.jsp?VarTwo=2\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            NiMOPS for Classification\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    </ul>  \n");
      out.write("                ");
 
                    }
                
      out.write("\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"Contact.jsp\">Contact Us</a></li>\n");
      out.write("            ");
 
                if (session.getAttribute("username").toString() != "PiMLab")
                {
            
      out.write("\n");
      out.write("            <li>\n");
      out.write("                <a href=\"loginpage.jsp\" style=\"border-right: 1px solid #ffffff\">Log In</a>\n");
      out.write("            </li>\n");
      out.write("            ");
 
                } 
                else
                {
            
      out.write("\n");
      out.write("            <li>\n");
      out.write("                <a href=\"logoutpage.jsp\" style=\"border-right: 1px solid #ffffff\">Log Out</a>\n");
      out.write("            </li>\n");
      out.write("            ");
 
                }
            
      out.write("\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("<!--<div class=\"visible-sm-block wdetailsm\">\n");
      out.write("    <center>\n");
      out.write("        <img src=\"headhomepage.jpg\" alt=\"Image Not Found ...\" width=\"800\">\n");
      out.write("    </center>\n");
      out.write("    \n");
      out.write("    <div id=\"wrapsm\">\n");
      out.write("        <ul class=\"navbarsm\">\n");
      out.write("            <li><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"#\" onclick=\"show(1);\">About</a>\n");
      out.write("                <ul id=\"ulaboutsm\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"About.jsp\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            Brief Introduction\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"HowTo.jsp\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            User Manual\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\" onclick=\"show(2);\">Baseline Model</a>\n");
      out.write("                ");

                    if (null == session.getAttribute("username"))
                    {
                        //session.setAttribute("username", "");
                    }

                    //if (session.getAttribute("username").toString() == "PiMLab")
                    //{
                
      out.write("\n");
      out.write("                <ul id=\"ulbaselinesm\">\n");
      out.write("                   <li>\n");
      out.write("                        <a href=\"AllModulesBaseline.jsp?VarA=1\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            Regression\n");
      out.write("                        </a>\n");
      out.write("                   </li>\n");
      out.write("\n");
      out.write("                   <li>\n");
      out.write("                        <a href=\"AllModulesBaseline.jsp?VarB=2\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            Classification\n");
      out.write("                        </a>\n");
      out.write("                   </li>\n");
      out.write("                </ul> \n");
      out.write("                ");
 
                    //}
                
      out.write("\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\" onclick=\"show(3);\">NiMOPS System</a>\n");
      out.write("                ");
 
                    if (session.getAttribute("username").toString() == "PiMLab")
                    {
                
      out.write("\n");
      out.write("                <ul id=\"ulnimopssm\">\n");
      out.write("                   <li>\n");
      out.write("                        <a href=\"AllModules.jsp?VarOne=1&PRadio=PRadio1\" style=\"border-right: 1px solid #ffffff\" >\n");
      out.write("                            NiMOPS for Regression\n");
      out.write("                        </a>\n");
      out.write("                   </li>\n");
      out.write("\n");
      out.write("                   <li>\n");
      out.write("                        <a href=\"AllModules.jsp?VarTwo=2\" style=\"border-right: 1px solid #ffffff\">\n");
      out.write("                            NiMOPS for Classification\n");
      out.write("                        </a>\n");
      out.write("                   </li>\n");
      out.write("                </ul>  \n");
      out.write("                ");
 
                    }
                
      out.write("\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"Contact.jsp\">Contact Us</a></li>\n");
      out.write("            ");
 
                if (session.getAttribute("username").toString() != "PiMLab")
                {
            
      out.write("\n");
      out.write("            <li>\n");
      out.write("                <a href=\"loginpage.jsp\" style=\"border-right: 1px solid #ffffff\">Log In</a>\n");
      out.write("            </li>\n");
      out.write("            ");
 
                } 
                else
                {
            
      out.write("\n");
      out.write("            <li>\n");
      out.write("                <a href=\"logoutpage.jsp\" style=\"border-right: 1px solid #ffffff\">Log Out</a>\n");
      out.write("            </li>\n");
      out.write("            ");
 
                }
            
      out.write("\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("</div>-->        \n");
      out.write("<script>\n");
      out.write("    function show(val)\n");
      out.write("    {\n");
      out.write("        if (val === 1)\n");
      out.write("        {\n");
      out.write("            if (document.getElementById('ulabout').style.display === 'block')\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulabout').style.display = 'none';\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulabout').style.display = 'block';\n");
      out.write("                document.getElementById('ulbaseline').style.display = 'none';\n");
      out.write("                document.getElementById('ulnimops').style.display = 'none';\n");
      out.write("            }\n");
      out.write("            if (document.getElementById('ulaboutsm').style.display === 'block')\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulaboutsm').style.display = 'none';\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulaboutsm').style.display = 'block';\n");
      out.write("                document.getElementById('ulbaselinesm').style.display = 'none';\n");
      out.write("                document.getElementById('ulnimopssm').style.display = 'none';\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        else if (val === 2)\n");
      out.write("        {\n");
      out.write("            if (document.getElementById('ulbaseline').style.display === 'block')\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulbaseline').style.display = 'none';\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulbaseline').style.display = 'block';\n");
      out.write("                document.getElementById('ulabout').style.display = 'none';\n");
      out.write("                document.getElementById('ulnimops').style.display = 'none';\n");
      out.write("            }\n");
      out.write("            if (document.getElementById('ulbaselinesm').style.display === 'block')\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulbaselinesm').style.display = 'none';\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulbaselinesm').style.display = 'block';\n");
      out.write("                document.getElementById('ulaboutsm').style.display = 'none';\n");
      out.write("                document.getElementById('ulnimopssm').style.display = 'none';\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        else if (val === 3)\n");
      out.write("        {\n");
      out.write("            if (document.getElementById('ulnimops').style.display === 'block')\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulnimops').style.display = 'none';\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulnimops').style.display = 'block';\n");
      out.write("                document.getElementById('ulbaseline').style.display = 'none';\n");
      out.write("                document.getElementById('ulabout').style.display = 'none';\n");
      out.write("            }\n");
      out.write("            if (document.getElementById('ulnimopssm').style.display === 'block')\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulnimopssm').style.display = 'none';\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("            {\n");
      out.write("                document.getElementById('ulnimopssm').style.display = 'block';\n");
      out.write("                document.getElementById('ulbaselinesm').style.display = 'none';\n");
      out.write("                document.getElementById('ulaboutsm').style.display = 'none';\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>");
      out.write("\n");
      out.write("\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;\n");
      out.write("\n");
      out.write("                \n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        ");

        /*
        out.println("VarSaveData = "+VarSaveData);
        out.println("VarLoadData = "+VarLoadData);
        out.println("VarReportData = "+VarReportData);
        out.println("VarNext = "+VarNext);
        */ 
        
      out.write("\n");
      out.write("\n");
      out.write("        ");
 if (VarSaveData != null) { 
      out.write(" \n");
      out.write("            \n");
      out.write("        ");
 } else if (VarLoadData != null) { 
      out.write(" \n");
      out.write("            ");

                String filename = "Data_SFA_LSSVR.txt"; 
                String file = application.getRealPath("/") + filename; 
                /*
                BufferedReader br = new BufferedReader(new FileReader(file)); 
                String line = null;
                int j; 
                */
            
      out.write("\n");
      out.write("\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <h2>SFA-LSSVR:</h2>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font color=\"black\" face=\"tahoma\" size=\"2\">\n");
      out.write("                        ");

                            out.println("Data already loaded from "+file); 
                        
      out.write("\n");
      out.write("                        </font>\n");
      out.write("                    </td>    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        &nbsp;&nbsp;\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        &nbsp;&nbsp;\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        &nbsp;&nbsp;\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font color=\"blue\" face=\"tahoma\" size=\"3\">\n");
      out.write("                        ");

                            out.println("<a href='javascript:history.back()'> BACK </a>");
                        
      out.write("\n");
      out.write("                        </font> \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("        ");
 } else if (VarReportData != null) { 
      out.write(" \n");
      out.write("            ");

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
            
      out.write("\n");
      out.write("\n");
      out.write("            <form>\n");
      out.write("                <h2>\n");
      out.write("                    SFA-LSSVR Data:\n");
      out.write("                </h2>\n");
      out.write("\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>No.</th>\n");
      out.write("                        <th>Description</th>\n");
      out.write("                        <th>Variable</th>\n");
      out.write("                        <th>Value</th>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>1</td>\n");
      out.write("                        <td>No. of fireflies</td>\n");
      out.write("                        <td>nFireFlies</td>\n");
      out.write("                        <td>");
      out.print(nFireFlies);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>2</td>\n");
      out.write("                        <td>Max. generation</td>\n");
      out.write("                        <td>nMaxGeneration</td>\n");
      out.write("                        <td>");
      out.print(nMaxGeneration);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>3</td>\n");
      out.write("                        <td>Beta min.</td>\n");
      out.write("                        <td>dMinBeta</td>\n");
      out.write("                        <td>");
      out.print(dMinBeta);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>4</td>\n");
      out.write("                        <td>Gamma</td>\n");
      out.write("                        <td>dGamma</td>\n");
      out.write("                        <td>");
      out.print(dGamma);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>5</td>\n");
      out.write("                        <td>Alpha</td>\n");
      out.write("                        <td>dAlpha</td>\n");
      out.write("                        <td>");
      out.print(dAlpha);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>6</td>\n");
      out.write("                        <td>Adaptive inertia weight</td>\n");
      out.write("                        <td>dAIWeight</td>\n");
      out.write("                        <td>");
      out.print(dAIWeight);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>7</td>\n");
      out.write("                        <td>Tau</td>\n");
      out.write("                        <td>dTau</td>\n");
      out.write("                        <td>");
      out.print(dTau);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>8</td>\n");
      out.write("                        <td>Biotic potential (a)</td>\n");
      out.write("                        <td>dBPotential</td>\n");
      out.write("                        <td>");
      out.print(dBPotential);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>9</td>\n");
      out.write("                        <td>Range of C1</td>\n");
      out.write("                        <td>dC1</td>\n");
      out.write("                        <td>");
      out.print(dC1);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>10</td>\n");
      out.write("                        <td>C2</td>\n");
      out.write("                        <td>dC2</td>\n");
      out.write("                        <td>");
      out.print(dC2);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>11</td>\n");
      out.write("                        <td>Range of Sigma, S1</td>\n");
      out.write("                        <td>dS1</td>\n");
      out.write("                        <td>");
      out.print(dS1);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>12</td>\n");
      out.write("                        <td>S2</td>\n");
      out.write("                        <td>dS2</td>\n");
      out.write("                        <td>");
      out.print(dS2);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>13</td>\n");
      out.write("                        <td>Training partition size (%)</td>\n");
      out.write("                        <td>dTrainingPS</td>\n");
      out.write("                        <td>");
      out.print(dTrainingPS);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>14</td>\n");
      out.write("                        <td> Validation partition size (%)</td>\n");
      out.write("                        <td>dValidationPS</td>\n");
      out.write("                        <td>");
      out.print(dValidationPS);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>15</td>\n");
      out.write("                        <td> Total Size (%)</td>\n");
      out.write("                        <td>dTotalSize</td>\n");
      out.write("                        <td>");
      out.print(dTotalSize);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>16</td>\n");
      out.write("                        <td>No. of Last Changes</td>\n");
      out.write("                        <td>nLastChange1</td>\n");
      out.write("                        <td>");
      out.print(nLastChange1);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>17</td>\n");
      out.write("                        <td>Constant OF Value</td>\n");
      out.write("                        <td>nLastChange2</td>\n");
      out.write("                        <td>");
      out.print(nLastChange2);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>18</td>\n");
      out.write("                        <td>Hold-Out (%)</td>\n");
      out.write("                        <td>dHoldOut</td>\n");
      out.write("                        <td>");
      out.print(dHoldOut);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>19</td>\n");
      out.write("                        <td>Cross-Validation (%)</td>\n");
      out.write("                        <td>dCrossValidation</td>\n");
      out.write("                        <td>");
      out.print(dCrossValidation);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    ");

                    sNormalRadio = "...";
                    if (NormalRadio.equals("NormalRadio1")) {
                        sNormalRadio = "Original value";
                    }
                    else if (NormalRadio.equals("NormalRadio2")) {
                        sNormalRadio = "Feature scaling";
                    }
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>20</td>\n");
      out.write("                        <td>Normalization Method</td>\n");
      out.write("                        <td>sNormalRadio</td>\n");
      out.write("                        <td>");
      out.print(sNormalRadio);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    ");

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
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>21</td>\n");
      out.write("                        <td>Objective Function</td>\n");
      out.write("                        <td>sOptimRadio</td>\n");
      out.write("                        <td>");
      out.print(sOptimRadio);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    ");

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
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>22</td>\n");
      out.write("                        <td>Stop Criterion</td>\n");
      out.write("                        <td>sSCRadio</td>\n");
      out.write("                        <td>");
      out.print(sSCRadio);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    ");

                    sPRadio = "...";
                    if (PRadio.equals("PRadio1")) {
                        sPRadio = "Evaluation";
                    }
                    else if (PRadio.equals("PRadio2")) {
                        sPRadio = "Prediction";
                    }
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>23</td>\n");
      out.write("                        <td>Purpose</td>\n");
      out.write("                        <td>sPRadio</td>\n");
      out.write("                        <td>");
      out.print(sPRadio);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    ");

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
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>24</td>\n");
      out.write("                        <td>Test Option</td>\n");
      out.write("                        <td>sTORadio</td>\n");
      out.write("                        <td>");
      out.print(sTORadio);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>25</td>\n");
      out.write("                        <td>Data File</td>\n");
      out.write("                        <td>sFileName</td>\n");
      out.write("                        <td>");
      out.print(sFileName);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>26</td>\n");
      out.write("                        <td>No. of Attributes</td>\n");
      out.write("                        <td>nDFAttributes</td>\n");
      out.write("                        <td>");
      out.print(nDFAttributes);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>27</td>\n");
      out.write("                        <td>No. of Instances</td>\n");
      out.write("                        <td>nDFInstances</td>\n");
      out.write("                        <td>");
      out.print(nDFInstances);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>28</td>\n");
      out.write("                        <td>Test Data File</td>\n");
      out.write("                        <td>sTestFileName</td>\n");
      out.write("                        <td>");
      out.print(sTestFileName);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>29</td>\n");
      out.write("                        <td>No. of Attributes</td>\n");
      out.write("                        <td>nTDFAttributes</td>\n");
      out.write("                        <td>");
      out.print(nTDFAttributes);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>30</td>\n");
      out.write("                        <td>No. of Instances</td>\n");
      out.write("                        <td>nTDFInstances</td>\n");
      out.write("                        <td>");
      out.print(nTDFInstances);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>31</td>\n");
      out.write("                        <td>Learning Data File</td>\n");
      out.write("                        <td>sLearningFileName</td>\n");
      out.write("                        <td>");
      out.print(sLearningFileName);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>32</td>\n");
      out.write("                        <td>No. of Attributes</td>\n");
      out.write("                        <td>nLDFAttributes</td>\n");
      out.write("                        <td>");
      out.print(nLDFAttributes);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>33</td>\n");
      out.write("                        <td>No. of Instances</td>\n");
      out.write("                        <td>nLDFInstances</td>\n");
      out.write("                        <td>");
      out.print(nLDFInstances);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>34</td>\n");
      out.write("                        <td>Prediction Data File</td>\n");
      out.write("                        <td>sPredictionFileName</td>\n");
      out.write("                        <td>");
      out.print(sPredictionFileName);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>35</td>\n");
      out.write("                        <td>No. of Attributes</td>\n");
      out.write("                        <td>nPDFAttributes</td>\n");
      out.write("                        <td>");
      out.print(nPDFAttributes);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>36</td>\n");
      out.write("                        <td>No. of Instances</td>\n");
      out.write("                        <td>nPDFInstances</td>\n");
      out.write("                        <td>");
      out.print(nPDFInstances);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("                        \n");
      out.write("        ");
 } else if (VarNext != null) { 
      out.write("\n");
      out.write("            \n");
      out.write("            <form action=\"ModuleSFALSSVR.jsp\" name=\"myform2\" id=\"myform2\">\n");
      out.write("                ");

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
                
                /*
                out.println("VarNext = "+VarNext);
                out.println("snFireFlies = "+snFireFlies);
                */ 

                dHoldOut = Float.parseFloat(sdHoldOut);
                dCrossValidation = Float.parseFloat(sdCrossValidation);
                /**/
                
                /*
                out.println("VarNext = "+VarNext);
                out.println("snFireFlies = "+snFireFlies);
                */ 

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
                
      out.write("\n");
      out.write("                \n");
      out.write("                ");

                /*
                out.println("VarNext = "+VarNext);
                out.println("snFireFlies = "+snFireFlies);
                */ 
                
      out.write("\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"VarOne\" id=\"VarOne\" value=\"");
      out.print(VarOne);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataFile\" id=\"sLoadingDataFile\" value=\"");
      out.print(sLoadingDataFile);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"VarNext\" id=\"VarNext\" value=\"");
      out.print(VarNext);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sRunReportTable\" id=\"sRunReportTable\" value=\"");
      out.print(sRunReportTable);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sRRTShow\" id=\"sRRTShow\" value=\"");
      out.print(sRRTShow);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sViewProceed\" id=\"sViewProceed\" value=\"");
      out.print(sViewProceed);
      out.write("\"/>\n");
      out.write("                \n");
      out.write("                <input type=\"hidden\" name=\"nFireFlies\" id=\"nFireFlies\" value=\"");
      out.print(nFireFlies);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nMaxGeneration\" id=\"nMaxGeneration\" value=\"");
      out.print(nMaxGeneration);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dMinBeta\" id=\"dMinBeta\" value=\"");
      out.print(dMinBeta);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dGamma\" id=\"dGamma\" value=\"");
      out.print(dGamma);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dAlpha\" id=\"dAlpha\" value=\"");
      out.print(dAlpha);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dAIWeight\" id=\"dAIWeight\" value=\"");
      out.print(dAIWeight);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dTau\" id=\"dTau\" value=\"");
      out.print(dTau);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dBPotential\" id=\"dBPotential\" value=\"");
      out.print(dBPotential);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dC1\" id=\"dC1\" value=\"");
      out.print(dC1);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dC2\" id=\"dC2\" value=\"");
      out.print(dC2);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dS1\" id=\"dS1\" value=\"");
      out.print(dS1);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dS2\" id=\"dS2\" value=\"");
      out.print(dS2);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dTrainingPS\" id=\"dTrainingPS\" value=\"");
      out.print(dTrainingPS);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dValidationPS\" id=\"dValidationPS\" value=\"");
      out.print(dValidationPS);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dTotalSize\" id=\"dTotalSize\" value=\"");
      out.print(dTotalSize);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nLastChange1\" id=\"nLastChange1\" value=\"");
      out.print(nLastChange1);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nLastChange2\" id=\"nLastChange2\" value=\"");
      out.print(nLastChange2);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dHoldOut\" id=\"dHoldOut\" value=\"");
      out.print(dHoldOut);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dCrossValidation\" id=\"dCrossValidation\" value=\"");
      out.print(dCrossValidation);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"nDFAttributes\" id=\"nDFAttributes\" value=\"");
      out.print(nDFAttributes);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nDFInstances\" id=\"nDFInstances\" value=\"");
      out.print(nDFInstances);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nTDFAttributes\" id=\"nTDFAttributes\" value=\"");
      out.print(nTDFAttributes);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nTDFInstances\" id=\"nTDFInstances\" value=\"");
      out.print(nTDFInstances);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nLDFAttributes\" id=\"nLDFAttributes\" value=\"");
      out.print(nLDFAttributes);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nLDFInstances\" id=\"nLDFInstances\" value=\"");
      out.print(nLDFInstances);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nPDFAttributes\" id=\"nPDFAttributes\" value=\"");
      out.print(nPDFAttributes);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nPDFInstances\" id=\"nPDFInstances\" value=\"");
      out.print(nPDFInstances);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"NormalRadio\" id=\"NormalRadio\" value=\"");
      out.print(NormalRadio);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"OptimRadio\" id=\"OptimRadio\" value=\"");
      out.print(OptimRadio);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"SCRadio\" id=\"SCRadio\" value=\"");
      out.print(SCRadio);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"PRadio\" id=\"PRadio\" value=\"");
      out.print(PRadio);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"TORadio\" id=\"TORadio\" value=\"");
      out.print(TORadio);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sDataFile\" id=\"sDataFile\" value=\"");
if (sDataFile != null) {
      out.print(sDataFile);
}
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sTestDataFile\" id=\"sTestDataFile\" value=\"");
if (sTestDataFile != null) {
      out.print(sTestDataFile);
}
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLearningDataFile\" id=\"sLearningDataFile\" value=\"");
if (sLearningDataFile != null) {
      out.print(sLearningDataFile);
}
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sPredictionDataFile\" id=\"sPredictionDataFile\" value=\"");
if (sPredictionDataFile != null) {
      out.print(sPredictionDataFile);
}
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sFileName\" id=\"sFileName\" value=\"");
      out.print(sFileName);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sTestFileName\" id=\"sTestFileName\" value=\"");
      out.print(sTestFileName);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLearningFileName\" id=\"sLearningFileName\" value=\"");
      out.print(sLearningFileName);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sPredictionFileName\" id=\"sPredictionFileName\" value=\"");
      out.print(sPredictionFileName);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sFileData\" id=\"sFileData\" value=\"");
      out.print(sFileData);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sdAttributes\" id=\"sdAttributes\" value=\"");
      out.print(sdAttributes);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sdInstances\" id=\"sdInstances\" value=\"");
      out.print(sdInstances);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sPFileData\" id=\"sPFileData\" value=\"");
      out.print(sPFileData);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sdPAttributes\" id=\"sdPAttributes\" value=\"");
      out.print(sdPAttributes);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sdPInstances\" id=\"sdPInstances\" value=\"");
      out.print(sdPInstances);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataSet1\" id=\"sLoadingDataSet1\" value=\"");
      out.print(sLoadingDataSet1);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataSet2\" id=\"sLoadingDataSet2\" value=\"");
      out.print(sLoadingDataSet2);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataSet3\" id=\"sLoadingDataSet3\" value=\"");
      out.print(sLoadingDataSet3);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataSet4\" id=\"sLoadingDataSet4\" value=\"");
      out.print(sLoadingDataSet4);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcel\" id=\"sLoadingDataExcel\" value=\"");
      out.print(sLoadingDataExcel);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClick\" id=\"sLoadingDataExcelClick\" value=\"");
      out.print(sLoadingDataExcelClick);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClick3\" id=\"sLoadingDataExcelClick3\" value=\"");
      out.print(sLoadingDataExcelClick3);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClick4\" id=\"sLoadingDataExcelClick4\" value=\"");
      out.print(sLoadingDataExcelClick4);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClick5\" id=\"sLoadingDataExcelClick5\" value=\"");
      out.print(sLoadingDataExcelClick5);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClick6\" id=\"sLoadingDataExcelClick6\" value=\"");
      out.print(sLoadingDataExcelClick6);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sBaseFileNameCO\" id=\"sBaseFileNameCO\" value=\"");
      out.print(sBaseFileNameCO);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sCreate\" id=\"sCreate\" value=\"");
      out.print(sCreate);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"vpath\" id=\"vpath\" value=\"");
      out.print(vpath);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"vfile\" id=\"vfile\" value=\"");
      out.print(vfile);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sHasil\" id=\"sHasil\" value=\"");
      out.print(sHasil);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sPageControl\" id=\"sPageControl\" value=\"");
      out.print(sPageControl);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                ");
      out.write("\n");
      out.write("                \n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <center id=\"title\">\n");
      out.write("                    <font style=\"font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt\" color=\"#2F4F4F\">\n");
      out.write("                        <b>NiMOPS for Regression</b>\n");
      out.write("                    </font>\n");
      out.write("                </center>\n");
      out.write("                <br>\n");
      out.write("                \n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"container boundary\">\n");
      out.write("                    <ul class=\"nav nav-tabs\">\n");
      out.write("                        ");
      out.write(" \n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
 if (sPageControl.equals("1")) { 
      out.write("\n");
      out.write("                                <li class=\"active\"><a data-toggle=\"tab\" href=\"#initialize\" onclick=\"return changetab(1);\">Initialize</a></li>\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                                <li><a data-toggle=\"tab\" href=\"#initialize\" onclick=\"return changetab(1);\">Initialize</a></li>\n");
      out.write("                            ");
 } 
      out.write("        \n");
      out.write("                            ");
 if (sPageControl.equals("2")) { 
      out.write("\n");
      out.write("                                <li class=\"active\"><a data-toggle=\"tab\" href=\"#process\" onclick=\"return changetab(2);\">Processing</a></li>\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                                <li><a data-toggle=\"tab\" href=\"#process\" onclick=\"return changetab(2);\">Processing</a></li>\n");
      out.write("                            ");
 } 
      out.write("        \n");
      out.write("                            ");
 if (sPageControl.equals("3")) { 
      out.write("\n");
      out.write("                                <li class=\"active\"><a data-toggle=\"tab\" href=\"#result\" onclick=\"return changetab(3);\">View The Results</a></li>\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                                <li><a data-toggle=\"tab\" href=\"#result\" onclick=\"return changetab(3);\">View The Results</a></li>\n");
      out.write("                            ");
 } 
      out.write("        \n");
      out.write("                                \n");
      out.write("                        ");
      out.write(" \n");
      out.write("                            ");
      out.write("\n");
      out.write("                            <!--<li><a data-toggle=\"tab\" href=\"#initialize\" onclick=\"return changepurpose(1);\">Initialize</a></li>\n");
      out.write("                            <li class=\"active\"><a data-toggle=\"tab\" href=\"#process\" onclick=\"return changepurpose(2);\">Processing</a></li>\n");
      out.write("                            <li><a data-toggle=\"tab\" href=\"#result\" onclick=\"return changepurpose(3);\">View The Results</a></li>\n");
      out.write("                        ");
      out.write(" \n");
      out.write("                            ");
      out.write("\n");
      out.write("                            <li><a data-toggle=\"tab\" href=\"#initialize\" onclick=\"return changepurpose(1);\">Initialize</a></li>\n");
      out.write("                            <li><a data-toggle=\"tab\" href=\"#process\" onclick=\"return changepurpose(2);\">Processing</a></li>\n");
      out.write("                            <li class=\"active\"><a data-toggle=\"tab\" href=\"#result\" onclick=\"return changepurpose(3);\">View The Results</a></li>-->\n");
      out.write("                        ");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    <div class=\"tab-content\">\n");
      out.write("                        ");
 if (sPageControl.equals("1")) { 
      out.write("\n");
      out.write("                        <div id=\"initialize\" class=\"tab-pane fade in active\">\n");
      out.write("                        ");
 } else { 
      out.write("\n");
      out.write("                        <div id=\"initialize\" class=\"tab-pane fade in\">\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <a onclick=\"return previousscreen();\">\n");
      out.write("                                <font color=\"blue\" face=\"agency FB\" size=\"3\" style=\"float:left;\">&nbsp;&nbsp;&nbsp;<b><u><< BACK</u></b></font>\n");
      out.write("                            </a>\n");
      out.write("                            <br>\n");
      out.write("                            <br>\n");
      out.write("                            \n");
      out.write("                            <table>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b> Initialization: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <font color=\"teal\" face=\"tahoma\" size=\"2\"> Base output file name (eg. Result) </font>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                        <input type=\"text\" name=\"sBaseFileName\" id=\"sBaseFileName\" size=\"20\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                    </td>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        &nbsp;&nbsp; - - -\n");
      out.write("                                        <a onclick=\"return rundata22(1);\">\n");
      out.write("                                            <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>Accept</u>, </font>\n");
      out.write("                                        </a>\n");
      out.write("                                        <font color=\"teal\" face=\"tahoma\" size=\"2\"> order number and .txt will be automatically added. </font>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr> \n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                </tr> \n");
      out.write("                            </table>\n");
      out.write("                                            \n");
      out.write("                            \n");
      out.write("                            <BR>\n");
      out.write("\n");
      out.write("                            ");
 if (sRunReportTable == "") { 
      out.write(" \n");
      out.write("                                ");
      out.write("\n");
      out.write("                                ");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"scrollToTop\">\n");
      out.write("                                  <img src=\"arrowup.JPG\" alt=\"...\" width=\"18\">  \n");
      out.write("                                </div>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                            ");
 
                            if ((int)Double.parseDouble(sRunReportTable) == 1) {
                                if (sCreate != "") {  
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
                                    
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        document.getElementById(\"sResult01Name\").value = sResult01Name;\n");
      out.write("                                        document.getElementById(\"sResult02Name\").value = sResult02Name;\n");
      out.write("                                        document.getElementById(\"sResult03Name\").value = sResult03Name;\n");
      out.write("                                        document.getElementById(\"sResult04Name\").value = sResult04Name;\n");
      out.write("                                        document.getElementById(\"sResult04aName\").value = sResult04aName;\n");
      out.write("                                        document.getElementById(\"sResult04bName\").value = sResult04bName;\n");
      out.write("                                        document.getElementById(\"sResult04cName\").value = sResult04cName;\n");
      out.write("                                        document.getElementById(\"sResult04dName\").value = sResult04dName;\n");
      out.write("                                        document.getElementById(\"sResult05Name\").value = sResult05Name;\n");
      out.write("                                        document.getElementById(\"sResult06Name\").value = sResult06Name;\n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                    <script> \n");
      out.write("                                        var sCreate = document.getElementById(\"sCreate\"); \n");
      out.write("                                        sCreate = \"\";\n");
      out.write("                                        document.getElementById(\"sCreate\").value = sCreate; \n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                        <table>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    &nbsp;\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <b> Running: </b>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                <td colspan=\"4\">\n");
      out.write("                                                <input type=\"text\" name=\"sResult01Name\" id=\"sResult01Name\" size=\"75\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" readonly/>\n");
      out.write("                                                <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... main output. </font>\n");
      out.write("                                                <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                                <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                                <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                                <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                                <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                                <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                                <input type=\"hidden\" name=\"sResult05Name\" id=\"sResult05Name\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" />\n");
      out.write("                                                <input type=\"hidden\" name=\"sResult06Name\" id=\"sResult06Name\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" />\n");
      out.write("\n");
      out.write("                                                <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr> \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                <td colspan=\"4\">\n");
      out.write("                                                <input type=\"text\" name=\"sResult02Name\" id=\"sResult02Name\" size=\"75\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" readonly/> \n");
      out.write("                                                <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... validation. </font>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
 if (sResult05Name != "") { 
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    <td colspan=\"4\">\n");
      out.write("                                                    <input type=\"text\" name=\"sResult05Name\" id=\"sResult05Name\" size=\"75\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" readonly/> \n");
      out.write("                                                    <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... performance. </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td colspan=\"7\">\n");
      out.write("                                                    &nbsp;\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr> \n");
      out.write("\n");
      out.write("                                            ");

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
                                                cols = line.split("\\t"); 
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <b>Output:</b>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td align=\"right\"> Performance &nbsp; = &nbsp; </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[0]);
      out.write("\" readonly>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                </tr> \n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td align=\"right\"> Penalty Parameter, C &nbsp; = &nbsp; </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[1]);
      out.write("\" readonly>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                </tr> \n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td align=\"right\"> Kernel Function Parameter, S &nbsp; = &nbsp; </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[2]);
      out.write("\" readonly>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                </tr> \n");
      out.write("                                            ");
 }
                                            br.close(); 
      out.write("\n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td colspan=\"7\">&nbsp;</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td colspan=\"7\">&nbsp;</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        </table>\n");
      out.write("\n");
      out.write("                                        <table>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            ");

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
                                                    
      out.write("\n");
      out.write("                                                        <td>\n");
      out.write("                                                            ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                            </tr> \n");
      out.write("                                            ");
 
                                            line = br.readLine();
                                            while (line != null) { 
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                ");

                                                cols = line.split("[,\\t]+");
                                                for (j=0; j<ncol; j++) {
                                                    sDummy = cols[j];
                                                    
      out.write("\n");
      out.write("                                                        <td align=\"right\">\n");
      out.write("                                                            ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                                </tr>\n");
      out.write("                                                ");
 line = br.readLine();
                                            } 
      out.write("\n");
      out.write("                                            ");
 br.close(); 
      out.write(" \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>    \n");
      out.write("\n");
      out.write("                                        ");
 if (sResult05Name != "") { 
      out.write("\n");
      out.write("                                            <table>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td> Fold No.</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td> Generation No.</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td> Mean Performance</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td> Best Performance</td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                    ");
 
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
                                                            
      out.write("\n");
      out.write("                                                            <td align=\"right\">\n");
      out.write("                                                                ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                            </td>\n");
      out.write("                                                            <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                        ");
 } 
      out.write("\n");
      out.write("                                                    ");
 } 
      out.write("\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                </tr> \n");
      out.write("                                                ");
 
                                                line = br.readLine();
                                                while (line != null) { 
      out.write("\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                    ");

                                                    cols = line.split("[,\\t]+");
                                                    for (j=0; j<ncol; j++) {
                                                        sDummy = cols[j];
                                                        
      out.write("\n");
      out.write("                                                        <td align=\"right\">\n");
      out.write("                                                            ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                    ");
 } 
      out.write("\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    ");
 line = br.readLine();
                                                } 
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                </tr>\n");
      out.write("                                            </table>    \n");
      out.write("                                            ");
 br.close();
                                        } 
      out.write("\n");
      out.write("                                ");
 } else {
                                    if (sRRTShow != "") {  
                                        if (sViewProceed == "") { 
      out.write("\n");
      out.write("                                            ");
      out.write("\n");
      out.write("                                            <script>\n");
      out.write("                                                var sfilefileResult01 = document.getElementById(\"sfilefileResult01\"); \n");
      out.write("                                                var sfilefileResult02 = document.getElementById(\"sfilefileResult02\"); \n");
      out.write("                                            </script>\n");
      out.write("\n");
      out.write("                                            ");
 if (sResult01 != "") { 
                                                sfilefileResult01 = application.getRealPath("/") + sResult01;
                                                sResult01Name=sfilefileResult01; 
                                            }
                                            else {
                                                sfilefileResult01 = sResult01Name;
                                            } 
      out.write("\n");
      out.write("\n");
      out.write("                                            <script>\n");
      out.write("                                                var sResult01Name = document.getElementById(\"sResult01Name\");\n");
      out.write("                                                document.getElementById(\"sResult01Name\").value = sResult01Name;\n");
      out.write("                                            </script>\n");
      out.write("\n");
      out.write("                                            ");
 if (sResult02 != "") {
                                                sfilefileResult02 = application.getRealPath("/") + sResult02;
                                                sResult02Name=sfilefileResult02; 
                                            }
                                            else {
                                                sfilefileResult02 = sResult02Name;
                                            } 
      out.write("\n");
      out.write("\n");
      out.write("                                            <script>\n");
      out.write("                                                var sResult02Name = document.getElementById(\"sResult02Name\");\n");
      out.write("                                                document.getElementById(\"sResult02Name\").value = sResult02Name;\n");
      out.write("                                            </script>\n");
      out.write("\n");
      out.write("                                            <script>\n");
      out.write("                                                var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                                                var sResult04Name = document.getElementById(\"sResult04Name\"); \n");
      out.write("                                                var sResult04aName = document.getElementById(\"sResult04aName\"); \n");
      out.write("                                                var sResult04bName = document.getElementById(\"sResult04bName\"); \n");
      out.write("                                                var sResult04cName = document.getElementById(\"sResult04cName\"); \n");
      out.write("                                                var sResult04dName = document.getElementById(\"sResult04dName\"); \n");
      out.write("                                                var sResult05Name = document.getElementById(\"sResult05Name\"); \n");
      out.write("                                                var sResult06Name = document.getElementById(\"sResult06Name\"); \n");
      out.write("                                            </script> \n");
      out.write("\n");
      out.write("                                            <table>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        &nbsp;\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <b> Running: </b>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    <td colspan=\"4\">\n");
      out.write("                                                    <input type=\"text\" name=\"sResult01Name\" id=\"sResult01Name\" size=\"75\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" readonly/>\n");
      out.write("                                                    <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... main output. </font>\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult05Name\" id=\"sResult05Name\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult06Name\" id=\"sResult06Name\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr> \n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    <td colspan=\"4\">\n");
      out.write("                                                    <input type=\"text\" name=\"sResult02Name\" id=\"sResult02Name\" size=\"75\" value=\"");
      out.print(sResult02Name);
      out.write("\" readonly/> \n");
      out.write("                                                    <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... validation. </font>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                ");
 if (sResult05Name != "") { 
      out.write("\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td colspan=\"4\">\n");
      out.write("                                                        <input type=\"text\" name=\"sResult05Name\" id=\"sResult05Name\" size=\"75\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" readonly/> \n");
      out.write("                                                        <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... performance. </font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td colspan=\"7\">\n");
      out.write("                                                        &nbsp;\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr> \n");
      out.write("\n");
      out.write("                                                ");

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
                                                    cols = line.split("\\t"); 
      out.write("\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <b>Output:</b>\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td align=\"right\"> Performance &nbsp; = &nbsp; </td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[0]);
      out.write("\" readonly>\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                    </tr> \n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td align=\"right\"> Penalty Parameter, C &nbsp; = &nbsp; </td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[1]);
      out.write("\" readonly>\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                    </tr> \n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td align=\"right\"> Kernel Function Parameter, S &nbsp; = &nbsp; </td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[2]);
      out.write("\" readonly>\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                    </tr> \n");
      out.write("                                                ");
 }
                                                br.close(); 
      out.write("\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td colspan=\"7\">&nbsp;</td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td colspan=\"7\">&nbsp;</td>\n");
      out.write("                                                </tr>\n");
      out.write("                                            </table>\n");
      out.write("\n");
      out.write("                                            <table>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                ");

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
                                                        
      out.write("\n");
      out.write("                                                            <td>\n");
      out.write("                                                                ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                            </td>\n");
      out.write("                                                            <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                    ");
 } 
      out.write("\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                    <td> &nbsp; </td>\n");
      out.write("                                                </tr> \n");
      out.write("                                                ");
 
                                                line = br.readLine();
                                                while (line != null) { 
      out.write("\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                    ");

                                                    cols = line.split("[,\\t]+");
                                                    for (j=0; j<ncol; j++) {
                                                        sDummy = cols[j];
                                                        
      out.write("\n");
      out.write("                                                            <td align=\"right\">\n");
      out.write("                                                                ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                            </td>\n");
      out.write("                                                            <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                    ");
 } 
      out.write("\n");
      out.write("                                                    ");
 line = br.readLine();
                                                } 
      out.write("\n");
      out.write("                                                ");
 br.close(); 
      out.write(" \n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                                    </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                </tr>\n");
      out.write("                                            </table>    \n");
      out.write("\n");
      out.write("                                            ");
 if (sResult05Name != "") { 
      out.write("\n");
      out.write("                                                <table>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td> Fold No.</td>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td> Generation No.</td>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td> Mean Performance</td>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td> Best Performance</td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                        ");
 
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
                                                                
      out.write("\n");
      out.write("                                                                <td align=\"right\">\n");
      out.write("                                                                    ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                                </td>\n");
      out.write("                                                                <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                            ");
 } 
      out.write("\n");
      out.write("                                                        ");
 } 
      out.write("\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                        <td> &nbsp; </td>\n");
      out.write("                                                    </tr> \n");
      out.write("                                                    ");
 
                                                    line = br.readLine();
                                                    while (line != null) { 
      out.write("\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                        ");

                                                        cols = line.split("[,\\t]+");
                                                        for (j=0; j<ncol; j++) {
                                                            sDummy = cols[j];
                                                            
      out.write("\n");
      out.write("                                                            <td align=\"right\">\n");
      out.write("                                                                ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                            </td>\n");
      out.write("                                                            <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                        ");
 } 
      out.write("\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        ");
 line = br.readLine();
                                                    } 
      out.write("\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                    </tr>\n");
      out.write("                                                </table>    \n");
      out.write("                                                ");
 br.close();
                                            } 
      out.write("\n");
      out.write("\n");
      out.write("                                        ");
 } else if (sViewProceed == "100") { 
      out.write("\n");
      out.write("                                            ");
      out.write("\n");
      out.write("                                            <p>\n");
      out.write("                                            \n");
      out.write("                                            <script>\n");
      out.write("                                                sReportFile = document.getElementById(\"sReportFile\");\n");
      out.write("                                            </script>\n");
      out.write("                                            ");

                                                if (sReportFile != "") {  
                                                
      out.write("\n");
      out.write("                                                    <script>\n");
      out.write("                                                    var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                                                    var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                                                    </script>\n");
      out.write("                                                ");

                                                if (sReportFileName != "") {
                                                    sReportFileName = application.getRealPath("/") + sReportFileName;
                                                }

                                                if (sReportFileNameTXT != "") {
                                                    sReportFileNameTXT = application.getRealPath("/") + sReportFileNameTXT;
                                                }

                                                
      out.write("\n");
      out.write("                                                <script>\n");
      out.write("                                                    document.getElementById(\"sReportFileName\").value = sReportFileName;\n");
      out.write("                                                    document.getElementById(\"sReportFileNameTXT\").value = sReportFileNameTXT;\n");
      out.write("                                                </script>\n");
      out.write("                                                ");

                                                } else { 
      out.write("\n");
      out.write("                                                <script>\n");
      out.write("                                                    var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                                                    var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                                                </script>\n");
      out.write("                                                ");
 }
                                            
      out.write("\n");
      out.write("\n");
      out.write("                                            <table>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        &nbsp;\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <b> Running: </b>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    <td colspan=\"8\">\n");
      out.write("                                                    <input type=\"text\" name=\"sReportFileName\" id=\"sReportFileName\" size=\"75\" value=\"");
      out.print(sReportFileName);
      out.write("\" readonly/>\n");
      out.write("                                                    <input type=\"hidden\" name=\"sReportFileNameTXT\" id=\"sReportFileNameTXT\" value=\"");
      out.print(sReportFileNameTXT);
      out.write("\" />\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <b> Output: </b>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    <th>RMSE Learning</th>\n");
      out.write("                                                    <th>RMSE Test</th>\n");
      out.write("                                                    <th>MAE Learning</th>\n");
      out.write("                                                    <th>MAE Test</th>\n");
      out.write("                                                    <th>MAPE Learning</th>\n");
      out.write("                                                    <th>MAPE Test</th>\n");
      out.write("                                                    <th>R Learning</th>\n");
      out.write("                                                    <th>R Test</th>\n");
      out.write("                                                </tr>\n");
      out.write("\n");
      out.write("                                                ");
  if (sReportFileName != "") {  
                                                Fillo fillo = new Fillo();

                                                Connection connection = fillo.getConnection(sReportFileName);
                                                String strQuery = "Select * from Performance";
                                                Recordset recordset = connection.executeQuery(strQuery);

                                                while (recordset.next()) { 
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(recordset.getField("RMSE_Learning"));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(recordset.getField("RMSE_Test"));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(recordset.getField("MAE_Learning"));
      out.write(" \n");
      out.write("                                                    </td> \n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(recordset.getField("MAE_Test"));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(recordset.getField("MAPE_Learning"));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(recordset.getField("MAPE_Test"));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(recordset.getField("R_Learning"));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(recordset.getField("R_Test"));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                                ");

                                                    recordset.close();
                                                    connection.close();
                                                    }
                                                
      out.write("\n");
      out.write("                                            </table>\n");
      out.write("\n");
      out.write("                                        ");
 } else { 
      out.write("\n");
      out.write("                                            ");
      out.write("\n");
      out.write("                                            <script>\n");
      out.write("                                                var sReportFile = document.getElementById(\"sReportFile\");\n");
      out.write("                                            </script>\n");
      out.write("                                            ");

                                                if (sReportFile != "") {  
                                                
      out.write("\n");
      out.write("                                                    <script>\n");
      out.write("                                                    var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                                                    var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                                                    </script>\n");
      out.write("                                                ");

                                                if (sReportFileName != "") {
                                                    sReportFileName = application.getRealPath("/") + sReportFileName;
                                                }

                                                if (sReportFileNameTXT != "") {
                                                    sReportFileNameTXT = application.getRealPath("/") + sReportFileNameTXT;
                                                }

                                                
      out.write("\n");
      out.write("                                                <script>\n");
      out.write("                                                    document.getElementById(\"sReportFileName\").value = sReportFileName;\n");
      out.write("                                                    document.getElementById(\"sReportFileNameTXT\").value = sReportFileNameTXT;\n");
      out.write("                                                </script>\n");
      out.write("                                                ");
 } 
      out.write(" \n");
      out.write("\n");
      out.write("                                                <script>\n");
      out.write("                                                    var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                                                    var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                                                </script>\n");
      out.write("\n");
      out.write("                                                ");
 sReportFileName="Result.xls";
                                                sReportFileName = application.getRealPath("/") + sReportFileName;

                                                sReportFileNameTXT="Result.txt";
                                                sReportFileNameTXT = application.getRealPath("/") + sReportFileNameTXT;
                                                
      out.write("\n");
      out.write("\n");
      out.write("                                                <script>\n");
      out.write("                                                    document.getElementById(\"sReportFileName\").value = sReportFileName;\n");
      out.write("                                                    document.getElementById(\"sReportFileNameTXT\").value = sReportFileNameTXT;\n");
      out.write("                                                </script>\n");
      out.write("\n");
      out.write("                                                ");
 
                                                /*
                                                out.println("<p>");
                                                out.println("sReportFileName = " + sReportFileName);
                                                out.println("sReportFileNameTXT = " + sReportFileNameTXT);
                                                out.println("<br>");
                                                */
                                            
      out.write("\n");
      out.write("\n");
      out.write("                                            <table>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        &nbsp;\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <b> Running: </b>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    <td colspan=\"8\">\n");
      out.write("                                                    <input type=\"text\" name=\"sResult01Name\" id=\"sResult01Name\" size=\"60\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" readonly/>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        &nbsp;\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        &nbsp;\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        &nbsp;\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td colspan=\"8\">\n");
      out.write("                                                    <input type=\"text\" name=\"sResult02Name\" id=\"sResult02Name\" size=\"60\" value=\"");
      out.print(sResult02Name);
      out.write("\" readonly/>\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult05Name\" id=\"sResult05Name\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sResult06Name\" id=\"sResult06Name\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" />\n");
      out.write("                                                    <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                            </table>\n");
      out.write("                                            ");
      out.write("\n");
      out.write("\n");
      out.write("                                            ");
 if (sLoadingDataExcel != "") { 
      out.write("\n");
      out.write("                                                ");
      out.write("\n");
      out.write("\n");
      out.write("                                                ");

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
                                                
      out.write("\n");
      out.write("                                                <script> \n");
      out.write("                                                    document.getElementById(\"vpath\").value = vpath; \n");
      out.write("                                                    document.getElementById(\"vfile\").value = vfile; \n");
      out.write("                                                </script>\n");
      out.write("                                                ");


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
                                                
      out.write("\n");
      out.write("                                                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "SFALSSVRServlet" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("nFireFlies", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(nFireFlies), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("nMaxGeneration", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(nMaxGeneration), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dMinBeta", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dMinBeta), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dGamma", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dGamma), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dAlpha", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dAlpha), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dAIWeight", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dAIWeight), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dTau", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dTau), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dBPotential", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dBPotential), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC1), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC2), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS1), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS2), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dTrainingPS", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dTrainingPS), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dValidationPS", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dValidationPS), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dTotalSize", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dTotalSize), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("nLastChange1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(nLastChange1), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("nLastChange2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(nLastChange2), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dHoldOut", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dHoldOut), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dCrossValidation", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dCrossValidation), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dNormalRadio", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dNormalRadio), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dOptimRadio", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dOptimRadio), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dSCRadio", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dSCRadio), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dPRadio", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dPRadio), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dTORadio", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dTORadio), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sVariation", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(sVariation), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dAttributes", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dAttributes), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dInstances", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dInstances), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dPAttributes", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dPAttributes), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dPInstances", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dPInstances), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sFileData", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(sFileData), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sPFileData", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(sPFileData), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sReportFileName", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(sReportFileName), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sReportFileNameTXT", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(sReportFileNameTXT), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("vpath", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(vpath), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("vfile", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(vfile), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult01Name", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult01Name != null) {%><%=sResult01Name%><%}%>", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult02Name", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult02Name != null) {%><%=sResult02Name%><%}%>", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult03Name", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult03Name != null) {%><%=sResult03Name%><%}%>", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult04Name", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult04Name != null) {%><%=sResult04Name%><%}%>", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult04aName", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult04aName != null) {%><%=sResult04aName%><%}%>", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult04bName", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult04bName != null) {%><%=sResult04bName%><%}%>", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult04cName", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult04cName != null) {%><%=sResult04cName%><%}%>", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult04dName", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult04dName != null) {%><%=sResult04dName%><%}%>", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult05Name", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult05Name != null) {%><%=sResult05Name%><%}%>", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("sResult06Name", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("<%if (sResult06Name != null) {%><%=sResult06Name%><%}%>", request.getCharacterEncoding()), out, false);
      out.write(" \t\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                    ");
 } else { 
      out.write(" \n");
      out.write("                                        ");
      out.write("\n");
      out.write("                                        ");

                                        /*
                                        out.println("<p>");
                                        out.println("sHasil = "+sHasil);
                                        out.println("<br>");
                                        */
                                        if (sHasil!="") {
                                            /*
                                            out.println("sBaseFileName = "+sBaseFileName);
                                            out.println("<br>");
                                            */
                                            if (sBaseFileName!="") {
                                                /*
                                                out.println("sRunReportTable = "+sRunReportTable);
                                                out.println("<br>");
                                                */
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

                                                
      out.write("\n");
      out.write("                                                <script>\n");
      out.write("                                                    document.getElementById(\"sBaseFileName\").value = sBaseFileName.value;\n");
      out.write("                                                </script>\n");
      out.write("\n");
      out.write("                                                <table>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <b> Output Files: </b>\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult01Name\" id=\"sResult01Name\" size=\"65\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" readonly/>\n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Main results - Optimum hyper-parameters</font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult02Name\" id=\"sResult02Name\" size=\"65\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" readonly/>\n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Hyper-parameters; Performances of training and validation partitions</font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult03Name\" id=\"sResult03Name\" size=\"65\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" readonly/> \n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Analysis report</font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult04Name\" id=\"sResult04Name\" size=\"65\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" readonly/>\n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Learning and test performances; Test dataset and predicted values </font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult04aName\" id=\"sResult04aName\" size=\"65\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" readonly/>\n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Prediction graph of training partition from learning dataset</font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult04bName\" id=\"sResult04bName\" size=\"65\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" readonly/>\n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Prediction graph of validation partition from learning dataset </font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult04cName\" id=\"sResult04cName\" size=\"65\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" readonly/>\n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Prediction graph of learning dataset </font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult04dName\" id=\"sResult04dName\" size=\"65\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" readonly/>\n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Prediction graph of test dataset </font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult05Name\" id=\"sResult05Name\" size=\"65\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" readonly/>\n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Performance trajectory graph of test dataset </font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <input type=\"text\" name=\"sResult06Name\" id=\"sResult06Name\" size=\"65\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" readonly/>\n");
      out.write("                                                            &nbsp;\n");
      out.write("                                                            <font color=\"teal\" face=\"tahoma\" size=\"2\">Tracing path graph of test dataset </font>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                </table>                \n");
      out.write("                                                ");

                                            }
                                            else {
                                                /*
                                                out.println("sRunReportTable = "+sRunReportTable);
                                                out.println("<br>");
                                                out.println("sHasil = "+sHasil);
                                                out.println("<br>");
                                                out.println("sBaseFileName = "+sBaseFileName);
                                                out.println("<br>");
                                                */
                                                
      out.write("\n");
      out.write("                                                <script>\n");
      out.write("                                                    document.getElementById(\"sBaseFileName\").value = \"Result\";\n");
      out.write("                                                </script>\n");
      out.write("                                                ");

                                            } 
                                        }
                                    }
                                }
                            } 
                            else if ((int)Double.parseDouble(sRunReportTable) == 2) {
                                if (sRRTShow != "") { 
                                    
      out.write("\n");
      out.write("                                        <script>\n");
      out.write("                                        var sfilefileResult03 = document.getElementById(\"sfilefileResult03\");\n");
      out.write("                                        </script>\n");
      out.write("                                    ");

                                    if (sResult03 != "") {
                                        sfilefileResult03 = application.getRealPath("/") + sResult03;
                                        sResult03Name=sfilefileResult03; 
                                    }
                                    else {
                                        sfilefileResult03 = sResult03Name;
                                    }
                                    
      out.write("\n");
      out.write("                                        <script>\n");
      out.write("                                            var sResult03Name = document.getElementById(\"sResult03Name\");\n");
      out.write("                                            document.getElementById(\"sResult03Name\").value = sResult03Name;\n");
      out.write("                                        </script>\n");
      out.write("                                    ");

                                    /*
                                    out.println("<p>");
                                    out.println("sReportFileNameTXT = "+sReportFileNameTXT);
                                    out.println("sfilefileTXT = "+sfilefileTXT);
                                    */
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                    <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b>Analysis:</b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                    <input type=\"text\" name=\"sResult03Name\" id=\"sResult03Name\" size=\"75\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" readonly/>\n");
      out.write("                                    <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"sResult05Name\" id=\"sResult05Name\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"sResult06Name\" id=\"sResult06Name\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                    </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");

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
                                        
      out.write(" \n");
      out.write("                                    ");
 } else { 
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                        <td> &nbsp; </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b>Output:</b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td> &nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <h4> ");
      out.print(line);
      out.write(" </h4>\n");
      out.write("                                        </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");
 // next line
                                        line = br.readLine();
                                        while (line != null) { 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                            <td> &nbsp; </td>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
      out.print(line);
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
 line = br.readLine();
                                        }
                                    }
                                    br.close(); 
                                    } 
      out.write("\n");
      out.write("                                </table>\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                    <script> var sCreate = document.getElementById(\"sCreate\"); \n");
      out.write("                                        sCreate = \"\";\n");
      out.write("                                        document.getElementById(\"sCreate\").value = sCreate; \n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                    <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b>Analysis:</b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"file\" name=\"sResult03\" id=\"sResult03\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"text\" name=\"sResult03Name\" id=\"sResult03Name\" size=\"60\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" readonly/>\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult05Name\" id=\"sResult05Name\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult06Name\" id=\"sResult06Name\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" />\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp; - - - \n");
      out.write("                                        <a onclick=\"return showsummaryreport(2);\">\n");
      out.write("                                        <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                        <u><b>OPEN</b></u></font></a>\n");
      out.write("                                        <font color=\"black\" face=\"tahoma\" size=\"2\">the report.\n");
      out.write("                                        </font>\n");
      out.write("                                    </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                            ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 3) { 
                                if (sRRTShow != "") { 
      out.write(" \n");
      out.write("                                    <script>\n");
      out.write("                                        var sfilefileResult04 = document.getElementById(\"sfilefileResult04\");\n");
      out.write("                                    </script>\n");
      out.write("                                    ");

                                        if (sResult04 != "") {
                                            sfilefileResult04 = application.getRealPath("/") + sResult04;
                                            sResult04Name=sfilefileResult04; 
                                        }
                                        else {
                                            sfilefileResult04 = sResult04Name;
                                        }
                                    
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        var sResult04Name = document.getElementById(\"sResult04Name\");\n");
      out.write("                                        document.getElementById(\"sResult04Name\").value = sResult04Name;\n");
      out.write("                                    </script>\n");
      out.write("                                    ");

                                        /*
                                        out.println("<p>");
                                        out.println("sReportFile = " + sReportFile);
                                        out.println("sfilefile = " + sfilefile);
                                        out.println("sReportFileName = " + sReportFileName);
                                        out.println("<br>");
                                        */
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Summary: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"8\">\n");
      out.write("                                            <input type=\"text\" name=\"sResult04Name\" id=\"sResult04Name\" size=\"75\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" readonly/>\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult05Name\" id=\"sResult05Name\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult06Name\" id=\"sResult06Name\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Output: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <th>RMSE Learning</th>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <th>RMSE Test</th>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <th>MAE Learning</th>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <th>MAE Test</th>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <th>MAPE Learning</th>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <th>MAPE Test</th>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <th>R Learning</th>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <th>R Test</th>\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        ");

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
                                        while (line != null) { 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                ");

                                                cols = line.split("[,\\t]+");
                                                for (j=0; j<ncol; j++) {
                                                    sDummy = cols[j];
                                                    
      out.write("\n");
      out.write("                                                        <td align=\"right\">\n");
      out.write("                                                            ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
 line = br.readLine();
                                        }
                                        br.close();
                                        } 
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                    <script> var sCreate = document.getElementById(\"sCreate\"); \n");
      out.write("                                        sCreate = \"\";\n");
      out.write("                                        document.getElementById(\"sCreate\").value = sCreate; \n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                <table><tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b> Summary: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"file\" name=\"sResult04\" id=\"sResult04\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"text\" name=\"sResult04Name\" id=\"sResult04Name\" size=\"60\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" readonly/>\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult05Name\" id=\"sResult05Name\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult06Name\" id=\"sResult06Name\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" />\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp; - - - \n");
      out.write("                                        <a onclick=\"return showsummaryreport(3);\">\n");
      out.write("                                        <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                        <u><b>OPEN</b></u></font></a>\n");
      out.write("                                        <font color=\"black\" face=\"tahoma\" size=\"2\">the report.\n");
      out.write("                                        </font>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr></table>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 4) {
                                if (sRRTShow != "") { 
      out.write(" \n");
      out.write("                                    <script>\n");
      out.write("                                        var sfilefileResult05 = document.getElementById(\"sfilefileResult05\");\n");
      out.write("                                    </script>\n");
      out.write("                                    ");

                                        if (sResult05 != "") {
                                            sfilefileResult05 = application.getRealPath("/") + sResult05;
                                            sResult05Name=sfilefileResult05; 
                                        }
                                        else {
                                            sfilefileResult05 = sResult05Name;
                                        }
                                    
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        var sResult05Name = document.getElementById(\"sResult05Name\");\n");
      out.write("                                        document.getElementById(\"sResult05Name\").value = sResult05Name;\n");
      out.write("                                    </script>\n");
      out.write("                                    ");

                                        /*
                                        out.println("sReportFileName = " + sReportFileName);
                                        out.println("<br>");
                                        */
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    ");

                                    vpath = application.getRealPath("/");

                                    vfile = sBaseFileNameCO;                  //+"01.txt";
                                    if (vfile == "") {
                                        vfile = "Result";
                                    }
                                    
      out.write("\n");
      out.write("                                    <script> \n");
      out.write("                                        document.getElementById(\"vpath\").value = vpath; \n");
      out.write("                                        document.getElementById(\"vfile\").value = vfile; \n");
      out.write("                                    </script>\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Graphic: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"8\">\n");
      out.write("                                            <input type=\"text\" name=\"sResult05Name\" id=\"sResult05Name\" size=\"75\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" readonly/>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                            <a onclick=\"return showsummaryreport(6);\">\n");
      out.write("                                                <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>performance</u> </font> </a> &nbsp; \n");
      out.write("                                            ");
 if (PRadio.equals("PRadio1")) {
                                                if (TORadio.equals("TORadio3")) { 
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 } else {
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 }
                                            } 
                                            else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"8\">\n");
      out.write("                                            <input type=\"text\" name=\"sResult06Name\" id=\"sResult06Name\" size=\"75\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" readonly/>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                            <a onclick=\"return showsummaryreport(5);\">\n");
      out.write("                                                <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>tracing path</u> </font> </a>\n");
      out.write("                                            ");
 if (PRadio.equals("PRadio1")) {
                                                if (TORadio.equals("TORadio3")) { 
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 } else {
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 }
                                            } 
                                            else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Output: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
 // calling matlab graphic - performance
                                                    int opt;
                                                    opt = 0;
                                                
      out.write("\n");
      out.write("                                                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "SFALSSVRGraphServlet" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("opt", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(opt), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC1), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC2), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS1), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS2), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("vpath", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(vpath), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("vfile", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(vfile), request.getCharacterEncoding()), out, false);
      out.write(" \t\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                    <script> var sCreate = document.getElementById(\"sCreate\"); \n");
      out.write("                                        sCreate = \"\";\n");
      out.write("                                        document.getElementById(\"sCreate\").value = sCreate; \n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                <table><tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b> Graphic: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"file\" name=\"sResult05\" id=\"sResult05\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"text\" name=\"sResult05Name\" id=\"sResult05Name\" size=\"60\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" readonly/>\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp; - - - \n");
      out.write("                                        <a onclick=\"return showsummaryreport(4);\">\n");
      out.write("                                        <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                        <u><b>VIEW</b></u></font></a>\n");
      out.write("                                        <font color=\"black\" face=\"tahoma\" size=\"2\">the graphs.\n");
      out.write("                                        </font>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"file\" name=\"sResult06\" id=\"sResult06\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"text\" name=\"sResult06Name\" id=\"sResult06Name\" size=\"60\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" readonly/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                </table>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 5) { 
                                if (sRRTShow != "") { 
      out.write(" \n");
      out.write("                                    <script>\n");
      out.write("                                        var sResult06Name = document.getElementById(\"sResult06Name\");\n");
      out.write("                                    </script>\n");
      out.write("                                    ");

                                        /*
                                        out.println("<p>");
                                        out.println("sReportFile = " + sReportFile);
                                        out.println("sfilefile = " + sfilefile);
                                        out.println("sReportFileName = " + sReportFileName);
                                        out.println("<br>");
                                        */
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    ");

                                    vpath = application.getRealPath("/");

                                    vfile = sBaseFileNameCO;                  //+"01.txt";
                                    if (vfile == "") {
                                        vfile = "Result";
                                    }
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Graphic: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"8\">\n");
      out.write("                                            <input type=\"text\" name=\"sResult05Name\" id=\"sResult05Name\" size=\"75\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" readonly/>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                            <a onclick=\"return showsummaryreport(6);\">\n");
      out.write("                                                <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>performance</u> </font> </a> &nbsp; \n");
      out.write("                                            ");
 if (PRadio.equals("PRadio1")) {
                                                if (TORadio.equals("TORadio3")) { 
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 } else {
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 }
                                            } 
                                            else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"8\">\n");
      out.write("                                            <input type=\"text\" name=\"sResult06Name\" id=\"sResult06Name\" size=\"75\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" readonly/>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                            <a onclick=\"return showsummaryreport(5);\">\n");
      out.write("                                                <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>tracing path</u> </font> </a>\n");
      out.write("                                            ");
 if (PRadio.equals("PRadio1")) {
                                                if (TORadio.equals("TORadio3")) { 
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 } else {
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 }
                                            } 
                                            else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Output: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
 // calling matlab graphic - performance
                                                    int opt;
                                                    opt = 1;
                                                
      out.write("\n");
      out.write("                                                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "SFALSSVRGraphServlet" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("opt", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(opt), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC1), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC2), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS1), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS2), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("vpath", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(vpath), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("vfile", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(vfile), request.getCharacterEncoding()), out, false);
      out.write(" \t\n");
      out.write("                                            </td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                    <script> var sCreate = document.getElementById(\"sCreate\"); \n");
      out.write("                                        sCreate = \"\";\n");
      out.write("                                        document.getElementById(\"sCreate\").value = sCreate; \n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                <table><tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b> Graphic: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"file\" name=\"sResult05\" id=\"sResult05\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"text\" name=\"sResult05Name\" id=\"sResult05Name\" size=\"60\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" readonly/>\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp; - - - \n");
      out.write("                                        <a onclick=\"return showsummaryreport(4);\">\n");
      out.write("                                        <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                        <u><b>VIEW</b></u></font></a>\n");
      out.write("                                        <font color=\"black\" face=\"tahoma\" size=\"2\">the graphs.\n");
      out.write("                                        </font>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"file\" name=\"sResult06\" id=\"sResult06\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"text\" name=\"sResult06Name\" id=\"sResult06Name\" size=\"60\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" readonly/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                </table>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 6) { 
                                if (sRRTShow != "") { 
      out.write(" \n");
      out.write("                                    <script>\n");
      out.write("                                        var include = document.getElementById(\"sResult05Name\");\n");
      out.write("                                    </script>\n");
      out.write("                                    ");

                                        /*
                                        out.println("<p>");
                                        out.println("sReportFile = " + sReportFile);
                                        out.println("sfilefile = " + sfilefile);
                                        out.println("sReportFileName = " + sReportFileName);
                                        out.println("<br>");
                                        */
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    ");

                                    vpath = application.getRealPath("/");

                                    vfile = sBaseFileNameCO;                  //+"01.txt";
                                    if (vfile == "") {
                                        vfile = "Result";
                                    }
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Graphic: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"8\">\n");
      out.write("                                            <input type=\"text\" name=\"sResult05Name\" id=\"sResult05Name\" size=\"75\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" readonly/>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                            <a onclick=\"return showsummaryreport(6);\">\n");
      out.write("                                                <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>performance</u> </font> </a> &nbsp; \n");
      out.write("                                            ");
 if (PRadio.equals("PRadio1")) {
                                                if (TORadio.equals("TORadio3")) { 
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 } else {
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 }
                                            } 
                                            else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"8\">\n");
      out.write("                                            <input type=\"text\" name=\"sResult06Name\" id=\"sResult06Name\" size=\"75\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" readonly/>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                            <a onclick=\"return showsummaryreport(5);\">\n");
      out.write("                                                <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>tracing path</u> </font> </a>\n");
      out.write("                                            ");
 if (PRadio.equals("PRadio1")) {
                                                if (TORadio.equals("TORadio3")) { 
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 } else {
                                                    
      out.write(' ');
      out.write("\n");
      out.write("                                                ");
 }
                                            } 
                                            else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Output: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
 // calling matlab graphic - performance
                                                    int opt;
                                                    opt = 0;
                                                
      out.write("\n");
      out.write("                                                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "SFALSSVRGraphServlet" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("opt", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(opt), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC1), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC2), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS1), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS2), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("vpath", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(vpath), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("vfile", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(vfile), request.getCharacterEncoding()), out, false);
      out.write(" \t\n");
      out.write("                                            </td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                    <script> var sCreate = document.getElementById(\"sCreate\"); \n");
      out.write("                                        sCreate = \"\";\n");
      out.write("                                        document.getElementById(\"sCreate\").value = sCreate; \n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                <table><tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b> Graphic: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"file\" name=\"sResult05\" id=\"sResult05\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"text\" name=\"sResult05Name\" id=\"sResult05Name\" size=\"60\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" readonly/>\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04Name\" id=\"sResult04Name\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp; - - - \n");
      out.write("                                        <a onclick=\"return showsummaryreport(4);\">\n");
      out.write("                                        <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                        <u><b>VIEW</b></u></font></a>\n");
      out.write("                                        <font color=\"black\" face=\"tahoma\" size=\"2\">the graphs.\n");
      out.write("                                        </font>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"file\" name=\"sResult06\" id=\"sResult06\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"text\" name=\"sResult06Name\" id=\"sResult06Name\" size=\"60\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" readonly/>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                </table>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 35) { 
                                if (sRRTShow != "") { 
      out.write(" \n");
      out.write("                                    <p>\n");
      out.write("                                    \n");
      out.write("                                    ");

                                        if (sRRTShow != "") {  
                                        
      out.write("\n");
      out.write("                                            <script>\n");
      out.write("                                            var sfilefile = document.getElementById(\"sfilefile\");\n");
      out.write("                                            </script>\n");
      out.write("                                        ");

                                        if (sReportFile != "") {
                                            sfilefile = application.getRealPath("/") + sReportFile;
                                            sReportFileName=sfilefile; 
                                        }
                                        else {
                                            sfilefile = sReportFileName;
                                        }
                                        Fillo fillo = new Fillo();

                                        
      out.write("\n");
      out.write("                                        <script>\n");
      out.write("                                            var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                                            document.getElementById(\"sReportFileName\").value = sReportFileName;\n");
      out.write("                                        </script>\n");
      out.write("                                        ");

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
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Summary: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"8\">\n");
      out.write("                                            <input type=\"text\" name=\"sReportFileName\" id=\"sReportFileName\" size=\"75\" value=\"");
      out.print(sReportFileName);
      out.write("\" readonly/>\n");
      out.write("                                            <input type=\"hidden\" name=\"sReportFileNameTXT\" id=\"sReportFileNameTXT\" value=\"");
      out.print(sReportFileNameTXT);
      out.write("\" />\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Output: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <th>RMSE Learning</th>\n");
      out.write("                                            <th>RMSE Test</th>\n");
      out.write("                                            <th>MAE Learning</th>\n");
      out.write("                                            <th>MAE Test</th>\n");
      out.write("                                            <th>MAPE Learning</th>\n");
      out.write("                                            <th>MAPE Test</th>\n");
      out.write("                                            <th>R Learning</th>\n");
      out.write("                                            <th>R Test</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    ");
 while (recordset.next()) { 
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td align=\"right\">\n");
      out.write("                                                ");
      out.print(recordset.getField("RMSE_Learning"));
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            <td align=\"right\">\n");
      out.write("                                                ");
      out.print(recordset.getField("RMSE_Test"));
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            <td align=\"right\">\n");
      out.write("                                                ");
      out.print(recordset.getField("MAE_Learning"));
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            <td align=\"right\">\n");
      out.write("                                                ");
      out.print(recordset.getField("MAE_Test"));
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            <td align=\"right\">\n");
      out.write("                                                ");
      out.print(recordset.getField("MAPE_Learning"));
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            <td align=\"right\">\n");
      out.write("                                                ");
      out.print(recordset.getField("MAPE_Test"));
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            <td align=\"right\">\n");
      out.write("                                                ");
      out.print(recordset.getField("R_Learning"));
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            <td align=\"right\">\n");
      out.write("                                                ");
      out.print(recordset.getField("R_Test"));
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    ");
 } 
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("                                    ");

                                        recordset.close();
                                        connection.close();
                                        }
                                    
      out.write("\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                <table><tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b> Summary: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"file\" name=\"sResult04\" id=\"sResult04\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"text\" name=\"sResult04Name\" id=\"sResult04Name\" size=\"60\" value=\"");
if (sResult04Name != null) {
      out.print(sResult04Name);
}
      out.write("\" readonly/>\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult01Name\" id=\"sResult01Name\" value=\"");
if (sResult01Name != null) {
      out.print(sResult01Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult02Name\" id=\"sResult02Name\" value=\"");
if (sResult02Name != null) {
      out.print(sResult02Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult03Name\" id=\"sResult03Name\" value=\"");
if (sResult03Name != null) {
      out.print(sResult03Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04aName\" id=\"sResult04aName\" value=\"");
if (sResult04aName != null) {
      out.print(sResult04aName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04bName\" id=\"sResult04bName\" value=\"");
if (sResult04bName != null) {
      out.print(sResult04bName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04cName\" id=\"sResult04cName\" value=\"");
if (sResult04cName != null) {
      out.print(sResult04cName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult04dName\" id=\"sResult04dName\" value=\"");
if (sResult04dName != null) {
      out.print(sResult04dName);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult05Name\" id=\"sResult05Name\" value=\"");
if (sResult05Name != null) {
      out.print(sResult05Name);
}
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sResult06Name\" id=\"sResult06Name\" value=\"");
if (sResult06Name != null) {
      out.print(sResult06Name);
}
      out.write("\" />\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp; - - - \n");
      out.write("                                        <a onclick=\"return showsummaryreport(3);\">\n");
      out.write("                                        <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                        <u><b>OPEN</b></u></font></a>\n");
      out.write("                                        <font color=\"black\" face=\"tahoma\" size=\"2\">the report.\n");
      out.write("                                        </font>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr></table>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        ");
 if (sPageControl.equals("2")) { 
      out.write("\n");
      out.write("                        <div id=\"processing\" class=\"tab-pane fade in active\">\n");
      out.write("                        ");
 } else { 
      out.write("\n");
      out.write("                        <div id=\"processing\" class=\"tab-pane fade in\">\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <table>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b>General Data: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        1. Swarm and evolutionary parameters:&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        No. of fireflies = ");
      out.print(nf.format(nFireFlies));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Max. generation = ");
      out.print(nf.format(nMaxGeneration));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        2. Attractiveness:\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Beta min. = ");
      out.print(nf2.format(dMinBeta));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Gamma = ");
      out.print(nf2.format(dGamma));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        3. Random movement:\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Alpha = ");
      out.print(nf2.format(dAlpha));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Adaptive inertia weight = ");
      out.print(nf2.format(dAIWeight));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Tau = ");
      out.print(nf2.format(dTau));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        4. Logistic map:\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Biotic potential, a = ");
      out.print(nf2.format(dBPotential));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        5. Hyperparameters:\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Range of C = ");
      out.print(ndf.format(dC1));
      out.write(" to\n");
      out.write("                                        ");
      out.print(ndf.format(dC2));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Range of sigma = ");
      out.print(ndf.format(dS1));
      out.write(" to\n");
      out.write("                                        ");
      out.print(ndf.format(dS2));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        6. Learning Option:\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Training partition size = ");
      out.print(nf.format(dTrainingPS));
      out.write(" (%)&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        Validation partition size = ");
      out.print(nf.format(dValidationPS));
      out.write(" (%)\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        7. Normalization Method:\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");

                                        if (NormalRadio.equals("NormalRadio1")) {
                                            sNormalRadio = "Original value";
                                        }
                                        else if (NormalRadio.equals("NormalRadio2")) {
                                            sNormalRadio = "Feature scaling";
                                        }
                                        
      out.write("\n");
      out.write("                                         ");
      out.print(sNormalRadio);
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        8. Objective Function (OF): \n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");

                                        if (OptimRadio.equals("OptimRadio1")) {
                                            sOptimRadio = "RMSE validation";
                                        }
                                        else if (OptimRadio.equals("OptimRadio2")) {
                                            sOptimRadio = "MAE validation";
                                        }
                                        else if (OptimRadio.equals("OptimRadio3")) {
                                            sOptimRadio = "MAPE validation";
                                        }
                                        
      out.write("\n");
      out.write("                                         ");
      out.print(sOptimRadio);
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        9. Stop Criterion:\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");

                                        if (SCRadio.equals("SCRadio1")) {
                                            sSCRadio = "Max. generation is reached";
                                            
      out.write(" \n");
      out.write("                                            ");
      out.print(sSCRadio);
      out.write("\n");
      out.write("                                            ");

                                        }
                                        else if (SCRadio.equals("SCRadio2")) {
                                            sSCRadio = "last changes in OF value <";
                                            
      out.write(" \n");
      out.write("                                            ");
      out.print(nf.format(nLastChange1));
      out.write(' ');
      out.print(sSCRadio);
      out.write(' ');
      out.print(nf5.format(nLastChange2));
      out.write("\n");
      out.write("                                            ");

                                        }
                                        else if (SCRadio.equals("SCRadio3")) {
                                            sSCRadio = "Either criterion is reached";
                                            
      out.write(" \n");
      out.write("                                            ");
      out.print(sSCRadio);
      out.write("\n");
      out.write("                                            ");

                                        }
                                        
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        10. Purpose:\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");

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
                                        
      out.write("\n");
      out.write("                                        ");
      out.print(sPRadio);
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        11. Test Option: \n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");

                                        sTORadio = "...";
                                        if (TORadio.equals("TORadio2")) { 
                                            if (PRadio.equals("PRadio1")) { 
      out.write("\n");
      out.write("                                                Hold-out = ");
      out.print(nf.format(dHoldOut));
      out.write(" (%) \n");
      out.write("                                                ");
 
                                                sDummy = "Data File : ";
                                                sFileData = sFileName;
                                                dAttributes = snDFAttributes;
                                                dInstances = snDFInstances;
                                                sVariation = "2";
                                                sPFileData = "";
                                                dPAttributes = "0";
                                                dPInstances = "0";
                                            }
                                            else if (PRadio.equals("PRadio2")) { 
      out.write(" \n");
      out.write("                                                -\n");
      out.write("                                            ");
 }
                                        }
                                        else if (TORadio.equals("TORadio3")) {
                                            if (PRadio.equals("PRadio1")) { 
      out.write("\n");
      out.write("                                                Cross-validation = ");
      out.print(nf.format(dCrossValidation));
      out.write(" (folds)\n");
      out.write("                                                ");

                                                sDummy = "Data File : ";
                                                sFileData = sFileName;
                                                dAttributes = snDFAttributes;
                                                dInstances = snDFInstances;
                                                sVariation = "3";
                                                sPFileData = "";
                                                dPAttributes = "0";
                                                dPInstances = "0";
                                            }
                                            else if (PRadio.equals("PRadio2")) { 
      out.write("\n");
      out.write("                                                -\n");
      out.write("                                            ");
 }
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
                                            }
      out.write("\n");
      out.write("\n");
      out.write("                                            ");
      out.print(sTORadio);
      out.write("\n");
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        <b> Run variation # ");
      out.print(sVariation);
      out.write(" </b>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td colspan=\"8\">&nbsp;</td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
      out.write("\n");
      out.write("                            <table>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");
      out.print(sDummy);
      out.write(' ');
      out.print(sFileData);
      out.write(" \n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        No. of Attributes = ");
      out.print(nf.format(Double.parseDouble(dAttributes)));
      out.write("  \n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                         No. of Instances = ");
      out.print(nf.format(Double.parseDouble(dInstances)));
      out.write("  \n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    ");
if (sVariation == "4" || sVariation == "5") {
      out.write("\n");
      out.write("                                        <td>&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            ");
      out.print(sPDummy);
      out.write(' ');
      out.print(sPFileData);
      out.write(" \n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            No. of Attributes = ");
      out.print(nf.format(Double.parseDouble(dPAttributes)));
      out.write("  \n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                             No. of Instances = ");
      out.print(nf.format(Double.parseDouble(dPInstances)));
      out.write("  \n");
      out.write("                                        </td>\n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            \n");
      out.write("                            <table>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b>Dataset: </b>\n");
      out.write("                                        &nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");
 if (PRadio.equals("PRadio1")) { 
      out.write(" \n");
      out.write("                                            <a onclick=\"return viewdataset(1);\">\n");
      out.write("                                                <font color=\"blue\">\n");
      out.write("                                                <u>Learning Dataset</u>\n");
      out.write("                                                </font>\n");
      out.write("                                            </a>\n");
      out.write("                                            ");
 if (TORadio.equals("TORadio4")) { 
      out.write(" \n");
      out.write("                                                &nbsp; - &nbsp;\n");
      out.write("                                                <a onclick=\"return viewdataset(2);\">\n");
      out.write("                                                    <font color=\"blue\">\n");
      out.write("                                                    <u>Test Dataset</u>\n");
      out.write("                                                    </font>\n");
      out.write("                                                </a> \n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        ");
 } else if (PRadio.equals("PRadio2")) { 
      out.write(" \n");
      out.write("                                            <a onclick=\"return viewdataset(3);\">\n");
      out.write("                                                <font color=\"blue\">\n");
      out.write("                                                <u>Learning Dataset</u>\n");
      out.write("                                                </font>\n");
      out.write("                                            </a> \n");
      out.write("                                            &nbsp; - &nbsp;\n");
      out.write("                                            <a onclick=\"return viewdataset(4);\">\n");
      out.write("                                                <font color=\"blue\">\n");
      out.write("                                                <u>Prediction Dataset</u>\n");
      out.write("                                                </font>\n");
      out.write("                                            </a> \n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
      out.write("                            <br>  \n");
      out.write("                            \n");
      out.write("                            ");
 //#1 displaying input data: 
                            if (sLoadingDataExcelClick != "") { 
                            
      out.write("\n");
      out.write("\n");
      out.write("                            ");
 //#2 displaying data file 
                            } else if (sLoadingDataSet1 != "" || sLoadingDataSet3 != "") { 
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
                                        out .println("<h3><font color='red'>Data file is empty ...!</font></h3>");
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
                                                Dataraw[j][i]=cols[i];
                                            }
                                            j=j+1;
                                            line = br.readLine();
                                    }
                                    br.close();
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            ");
 if (sLoadingDataSet1 != "") { 
      out.write("\n");
      out.write("                                                <td>\n");
      out.write("                                                    <b>Learning Dataset (for Evaluation): </b>\n");
      out.write("                                                </td>\n");
      out.write("                                            ");
 } else { 
      out.write("\n");
      out.write("                                                <td>\n");
      out.write("                                                    <b>Learning Dataset (for Prediction): </b>\n");
      out.write("                                                </td>\n");
      out.write("                                            ");
 } 
      out.write(" \n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                                    <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                                </a>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;</td>\n");
      out.write("                                            <td align=\"center\">\n");
      out.write("                                                No.\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            ");
 for (j = 0; j < ncols1; j += 1) { 
      out.write(" \n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    ");
      out.print(headers[j]);
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        ");
 for (i = 0; i < nrows1; i += 1) { 
      out.write(" \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    ");
      out.print(i);
      out.write("\n");
      out.write("                                                </td> \n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 for (j = 0; j < ncols1; j += 1) { 
      out.write(" \n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(nf3.format(Double.parseDouble(Dataraw[i][j])));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td align=\"left\">\n");
      out.write("                                                <font color='red'>\n");
      out.write("                                                &nbsp;&nbsp;Data file not available ... !\n");
      out.write("                                                </font>\n");
      out.write("                                            </td> \n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                ");
 }
                                
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
                                                Dataraw[j][i]=cols[i];
                                            }
                                            j=j+1;
                                            line = br.readLine();
                                        }
                                    }
                                    br.close();
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            ");
 if (sLoadingDataSet2 != "") { 
      out.write("\n");
      out.write("                                                <td>\n");
      out.write("                                                    <b>Test Dataset: </b>\n");
      out.write("                                                </td>\n");
      out.write("                                            ");
 } else { 
      out.write("\n");
      out.write("                                                <td>\n");
      out.write("                                                    <b>Prediction Dataset: </b>\n");
      out.write("                                                </td>\n");
      out.write("                                            ");
 } 
      out.write(" \n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                                    <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                                </a>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;</td>\n");
      out.write("                                            <td align=\"center\">\n");
      out.write("                                                No.\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            ");
 for (j = 0; j < ncols2; j += 1) { 
      out.write(" \n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    ");
      out.print(headers[j]);
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        ");
 for (i = 0; i < nrows2; i += 1) { 
      out.write(" \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    ");
      out.print(i);
      out.write("\n");
      out.write("                                                </td> \n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 for (j = 0; j < ncols2; j += 1) { 
      out.write(" \n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(nf3.format(Double.parseDouble(Dataraw[i][j])));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td align=\"left\">\n");
      out.write("                                                <font color='red'>\n");
      out.write("                                                &nbsp;&nbsp;Data file not available ... !\n");
      out.write("                                                </font>\n");
      out.write("                                            </td> \n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                                \n");
      out.write("                            ");
 //#3 displaying test data file 
                            } else if (sLoadingDataExcelClick3 != "") {  
                            
      out.write("\n");
      out.write("\n");
      out.write("                            ");
 
                            } else if (sLoadingDataExcelClick4 != "") {
                            
      out.write("\n");
      out.write("                                ");
      out.write("\n");
      out.write("                                <table>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b> Test Dataset: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                            <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                        </a>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;</td>\n");
      out.write("                                ");

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
                                        
      out.write("\n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    No.\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 for (j = 0; j < ncols2; j += 1) { 
      out.write("\n");
      out.write("                                                    <td align=\"center\">\n");
      out.write("                                                        ");
      out.print(headers[j]);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                            ");
 for (i = 0; i < nrows2; i += 1) { 
      out.write(" \n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td align=\"center\">\n");
      out.write("                                                        ");
      out.print(i);
      out.write("\n");
      out.write("                                                    </td> \n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    ");
 for (j = 0; j < ncols2; j += 1) { 
      out.write("\n");
      out.write("                                                        <td align=\"right\">\n");
      out.write("                                                            ");
      out.print(nf3.format(Double.parseDouble(Datatest[i][j])));
      out.write("\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    ");
 } 
      out.write("\n");
      out.write("                                                </tr>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                    ");
 } else { 
      out.write("\n");
      out.write("                                                <td align=\"left\">\n");
      out.write("                                                    <font color='red'>\n");
      out.write("                                                    &nbsp;&nbsp;Test data file not available ... !\n");
      out.write("                                                    </font>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                    ");
 } 
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("\n");
      out.write("                            ");
 //#4 displaying learning data file 
                            } else if (sLoadingDataExcelClick5 != "") { 
                            
      out.write("\n");
      out.write("                                <table>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b> Learning Dataset: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                            <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                        </a>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;</td>\n");
      out.write("                                ");
 
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
                                        
      out.write("\n");
      out.write("\n");
      out.write("                                        ");
      out.write("\n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    No.\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 for (j = 0; j < ncols3; j += 1) { 
      out.write("\n");
      out.write("                                                    <td align=\"center\">\n");
      out.write("                                                        ");
      out.print(headers[j]);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                            <td colspan=\"15\">\n");
      out.write("                                            ");
 
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
                                            
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                            ");
 for (i = 0; i < nrows3; i += 1) { 
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td>&nbsp;</td>\n");
      out.write("                                                    <td align=\"center\">\n");
      out.write("                                                        ");
      out.print(i);
      out.write("\n");
      out.write("                                                    </td> \n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    ");
 for (j = 0; j < ncols3; j += 1) { 
      out.write("\n");
      out.write("                                                        <td align=\"right\">\n");
      out.write("                                                            ");
      out.write("\n");
      out.write("\n");
      out.write("                                                            ");
      out.print(nf3.format(Double.parseDouble(Datatrains[i][j])));
      out.write("\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    ");
 } 
      out.write("\n");
      out.write("                                                </tr>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                    ");
 } else { 
      out.write("\n");
      out.write("                                                <td align=\"left\">\n");
      out.write("                                                    <font color='red'>\n");
      out.write("                                                    &nbsp;&nbsp;Learning data file not available ... !\n");
      out.write("                                                    </font>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                    ");
 } 
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("\n");
      out.write("                            ");
 //#5 displaying prediction data file 
                            } else if (sLoadingDataExcelClick6 != "") { 
                            
      out.write("\n");
      out.write("                                <table>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b> Prediction Dataset: </b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                            <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                        </a>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;</td>\n");
      out.write("                                ");

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
                                        
      out.write("\n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    No.\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 for (j = 0; j < ncols4; j += 1) { 
      out.write("\n");
      out.write("                                                    <td align=\"center\">\n");
      out.write("                                                        ");
      out.print(headers[j]);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                            ");
 for (i = 0; i < nrows4; i += 1) { 
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                    <td align=\"center\">\n");
      out.write("                                                        ");
      out.print(i);
      out.write("\n");
      out.write("                                                    </td> \n");
      out.write("                                                    <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    ");
 for (j = 0; j < ncols4; j += 1) { 
      out.write("\n");
      out.write("                                                        <td align=\"right\">\n");
      out.write("                                                            ");
      out.print(nf3.format(Double.parseDouble(Datapres[i][j])));
      out.write("\n");
      out.write("                                                        </td>\n");
      out.write("                                                        <td>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                    ");
 } 
      out.write("\n");
      out.write("                                                </tr>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                    ");
 } else { 
      out.write("\n");
      out.write("                                                <td align=\"left\">\n");
      out.write("                                                    <font color='red'>\n");
      out.write("                                                    &nbsp;&nbsp;Prediction data file not available ... !\n");
      out.write("                                                    </font>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                    ");
 } 
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("\n");
      out.write("                            ");
 //#6 displaying header
                            } else { 
                            
      out.write("\n");
      out.write("\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                                    \n");
      out.write("                            <center>\n");
      out.write("                                <button type=\"button\" onclick=\"return rundata2(1);\" class=\"btn btn-primary\">Start Running</button>\n");
      out.write("                            </center>\n");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                                \n");
      out.write("                        ");
 if (sPageControl.equals("3")) { 
      out.write("\n");
      out.write("                        <div id=\"results\" class=\"tab-pane fade in active\">\n");
      out.write("                        ");
 } else { 
      out.write("\n");
      out.write("                        <div id=\"results\" class=\"tab-pane fade in\">\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <br>\n");
      out.write("                            <ul class=\"nav nav-pills nav-justified\" style=\"background-color: lavender;\">\n");
      out.write("                                <li class=\"active\"><a data-toggle=\"tab\" href=\"#Main\" id=\"Menu\">Output Table</a></li>\n");
      out.write("                                <li><a data-toggle=\"tab\" href=\"#PGraph\">Prediction Graph</a></li>\n");
      out.write("                                <li><a data-toggle=\"tab\" href=\"#PTGraph\">Performance Trajectory Graph</a></li>\n");
      out.write("                                <li><a data-toggle=\"tab\" href=\"#TPGraph\">Tracing Path Graph</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <br>\n");
      out.write("                            <div class=\"tab-content\">\n");
      out.write("                                <div id=\"Main\" class=\"tab-pane fade in active\">\n");
      out.write("                                    <a href=\"#Optimum\">Optimum hyper-parameters</a>\n");
      out.write("                                    <span class=\"glyphicon glyphicon-minus\"></span>\n");
      out.write("                                    <a href=\"#Partition\">Hyper-parameters of partitions dataset</a>\n");
      out.write("                                    <span class=\"glyphicon glyphicon-minus\"></span>\n");
      out.write("                                    <a href=\"#Report\">Analysis report</a>\n");
      out.write("                                    <span class=\"glyphicon glyphicon-minus\"></span>\n");
      out.write("                                    <a href=\"#Performance\">Performance values</a>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"Optimum\">Main results - Optimum hyper-parameters</font>\n");
      out.write("                                        <a href=\"#Partition\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div><img src=\"homepage1.jpg\" alt=\"...\"></div>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"Partition\">Hyper-parameters; Performances of training and validation partitions</font>\n");
      out.write("                                        <a href=\"#Optimum\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#Report\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div><img src=\"homepage1.jpg\" alt=\"...\"></div>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"Report\">Analysis report</font>\n");
      out.write("                                        <a href=\"#Partition\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#Performance\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div><img src=\"homepage1.jpg\" alt=\"...\"></div>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"Performance\">Learning and test performances; Test dataset and predicted values</font>\n");
      out.write("                                        <a href=\"#Report\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div><img src=\"homepage1.jpg\" alt=\"...\"></div>\n");
      out.write("                                    </center>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"PGraph\" class=\"tab-pane fade in\">\n");
      out.write("                                    <div class=\"edittab\">\n");
      out.write("                                        <a href=\"#TPDataset\">Training partition dataset</a>\n");
      out.write("                                        <span class=\"glyphicon glyphicon-minus\"></span>\n");
      out.write("                                        <a href=\"#VPDataset\">Validation partition dataset</a>\n");
      out.write("                                        <span class=\"glyphicon glyphicon-minus\"></span>\n");
      out.write("                                        <a href=\"#LDataset\">Learning dataset</a>\n");
      out.write("                                        <span class=\"glyphicon glyphicon-minus\"></span>\n");
      out.write("                                        <a href=\"#TDataset\">Test dataset</a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"TPDataset\">Prediction graph of training partition from learning dataset</font>\n");
      out.write("                                        <a href=\"#VPDataset\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div><img src=\"homepage1.jpg\" alt=\"...\"></div>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"VPDataset\">Prediction graph of validation partition from learning dataset</font>\n");
      out.write("                                        <a href=\"#TPDataset\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#LDataset\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div><img src=\"homepage1.jpg\" alt=\"...\"></div>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"LDataset\">Prediction graph of learning dataset</font>\n");
      out.write("                                        <a href=\"#VPDataset\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#TDataset\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div><img src=\"homepage1.jpg\" alt=\"...\"></div>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"TDataset\">Prediction graph of test dataset</font>\n");
      out.write("                                        <a href=\"#LDataset\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div><img src=\"homepage1.jpg\" alt=\"...\"></div>\n");
      out.write("                                    </center>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"PTGraph\" class=\"tab-pane fade in\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\">Performance Trajectory Graph of Test Dataset</font>\n");
      out.write("                                    </center>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"TPGraph\" class=\"tab-pane fade in\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\">Tracing Path Graph of Test Dataset</font>\n");
      out.write("                                    </center>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                          \n");
      out.write("\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <br>\n");
      out.write("                </div>\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    \n");
      out.write("                    ");
      out.write("\n");
      out.write("                \n");
      out.write("                ");
      out.write("\n");
      out.write("                    \n");
      out.write("                ");
      out.write("\n");
      out.write("                    \n");
      out.write("                ");
      out.write("\n");
      out.write("                    \n");
      out.write("                ");
      out.write("\n");
      out.write("                <BR>\n");
      out.write("                \n");
      out.write("                ");
      out.write("\n");
      out.write("                ");
      out.write("\n");
      out.write("                \n");
      out.write("                <div class=\"scrollToTop\">\n");
      out.write("                    <img src=\"arrowup.JPG\" alt=\"...\" width=\"18\">  \n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("            <BR>\n");
      out.write("                \n");
      out.write("            ");
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("            \n");
      out.write("            <div class=\"scrollToTop\">\n");
      out.write("                  <img src=\"arrowup.JPG\" alt=\"...\" width=\"18\">  \n");
      out.write("            </div>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("\n");
      out.write("                //Check to see if the window is top if not then display button\n");
      out.write("                $(window).scroll(function(){\n");
      out.write("                        if ($(this).scrollTop() > 100) {\n");
      out.write("                                $('.scrollToTop').fadeIn();\n");
      out.write("                        } else {\n");
      out.write("                                $('.scrollToTop').fadeOut();\n");
      out.write("                        }\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                //Click event to scroll to top\n");
      out.write("                $('.scrollToTop').click(function(){\n");
      out.write("                        $('html, body').animate({scrollTop : 0},800);\n");
      out.write("                        return false;\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
