package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.NumberFormat;
import java.io.*;
import java.text.*;

public final class ModuleSFALSSVM_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    //nrow=(int)Double.parseDouble(sdInstancesLSSVM);
    int ncol=1;
    //ncol=(int)Double.parseDouble(sdAttributesLSSVM);
    String[][] Datatrain = new String[nrow][ncol];

    int nrowP=1;
    //nrowP=(int)Double.parseDouble(sdPInstancesLSSVM);
    int ncolP=1;
    //ncolP=(int)Double.parseDouble(sdPAttributesLSSVM);
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>NiMOPS: SFA-LSSVM</title>\n");
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
      out.write("        </style>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function viewsummarydata2() {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var VarNextLSSVM = document.getElementById(\"VarNextLSSVM\");\n");
      out.write("                \n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                sLoadingDataExcelLSSVM = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = sLoadingDataExcelLSSVM;\n");
      out.write("\n");
      out.write("                //to un-hide summary data\n");
      out.write("                var sLoadingDataExcelClickLSSVM = document.getElementById(\"sLoadingDataExcelClickLSSVM\");\n");
      out.write("                sLoadingDataExcelClickLSSVM = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClickLSSVM\").value = sLoadingDataExcelClickLSSVM;\n");
      out.write("                    var sLoadingDataExcelClick3LSSVM = document.getElementById(\"sLoadingDataExcelClick3LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick3LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3LSSVM\").value = sLoadingDataExcelClick3LSSVM;\n");
      out.write("                var sLoadingDataExcelClick4LSSVM = document.getElementById(\"sLoadingDataExcelClick4LSSVM\");\n");
      out.write("                sLoadingDataExcelClick4LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4LSSVM\").value = sLoadingDataExcelClick4LSSVM;\n");
      out.write("                    var sLoadingDataExcelClick5LSSVM = document.getElementById(\"sLoadingDataExcelClick5LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick5LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5LSSVM\").value = sLoadingDataExcelClick5LSSVM;\n");
      out.write("                var sLoadingDataExcelClick6LSSVM = document.getElementById(\"sLoadingDataExcelClick6LSSVM\");\n");
      out.write("                sLoadingDataExcelClick6LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6LSSVM\").value = sLoadingDataExcelClick6LSSVM;\n");
      out.write("                \n");
      out.write("                document.getElementById(\"myform2\").action = \"ModuleSFALSSVM.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                valid = false;\n");
      out.write("\n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function viewsummarydata3() {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var VarNextLSSVM = document.getElementById(\"VarNextLSSVM\");\n");
      out.write("                //var VarProceed = document.getElementById(\"VarProceed\");\n");
      out.write("                //var VarReport = document.getElementById(\"VarReport\");\n");
      out.write("                //var VarTable = document.getElementById(\"VarTable\");\n");
      out.write("\n");
      out.write("                //to run nimops (extra gate to start running) - not at opening\n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                sLoadingDataExcelLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = sLoadingDataExcelLSSVM;\n");
      out.write("\n");
      out.write("                //to un-hide summary data\n");
      out.write("                var sLoadingDataExcelClickLSSVM = document.getElementById(\"sLoadingDataExcelClickLSSVM\");\n");
      out.write("                sLoadingDataExcelClickLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClickLSSVM\").value = sLoadingDataExcelClickLSSVM;\n");
      out.write("                    var sLoadingDataExcelClick3LSSVM = document.getElementById(\"sLoadingDataExcelClick3LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick3LSSVM = \"3\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3LSSVM\").value = sLoadingDataExcelClick3LSSVM;\n");
      out.write("                var sLoadingDataExcelClick4LSSVM = document.getElementById(\"sLoadingDataExcelClick4LSSVM\");\n");
      out.write("                sLoadingDataExcelClick4LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4LSSVM\").value = sLoadingDataExcelClick4LSSVM;\n");
      out.write("                    var sLoadingDataExcelClick5LSSVM = document.getElementById(\"sLoadingDataExcelClick5LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick5LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5LSSVM\").value = sLoadingDataExcelClick5LSSVM;\n");
      out.write("                var sLoadingDataExcelClick6LSSVM = document.getElementById(\"sLoadingDataExcelClick6LSSVM\");\n");
      out.write("                sLoadingDataExcelClick6LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6LSSVM\").value = sLoadingDataExcelClick6LSSVM;\n");
      out.write("                \n");
      out.write("                document.getElementById(\"myform2\").action = \"ModuleSFALSSVM.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                valid = false;\n");
      out.write("\n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function viewsummarydata4() {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var VarNextLSSVM = document.getElementById(\"VarNextLSSVM\");\n");
      out.write("                //var VarProceed = document.getElementById(\"VarProceed\");\n");
      out.write("                //var VarReport = document.getElementById(\"VarReport\");\n");
      out.write("                //var VarTable = document.getElementById(\"VarTable\");\n");
      out.write("\n");
      out.write("                //to run nimops (extra gate to start running) - not at opening\n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                sLoadingDataExcelLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = sLoadingDataExcelLSSVM;\n");
      out.write("\n");
      out.write("                //to un-hide summary data\n");
      out.write("                var sLoadingDataExcelClickLSSVM = document.getElementById(\"sLoadingDataExcelClickLSSVM\");\n");
      out.write("                sLoadingDataExcelClickLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClickLSSVM\").value = sLoadingDataExcelClickLSSVM;\n");
      out.write("                    var sLoadingDataExcelClick3LSSVM = document.getElementById(\"sLoadingDataExcelClick3LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick3LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3LSSVM\").value = sLoadingDataExcelClick3LSSVM;\n");
      out.write("                var sLoadingDataExcelClick4LSSVM = document.getElementById(\"sLoadingDataExcelClick4LSSVM\");\n");
      out.write("                sLoadingDataExcelClick4LSSVM = \"4\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4LSSVM\").value = sLoadingDataExcelClick4LSSVM;\n");
      out.write("                    var sLoadingDataExcelClick5LSSVM = document.getElementById(\"sLoadingDataExcelClick5LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick5LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5LSSVM\").value = sLoadingDataExcelClick5LSSVM;\n");
      out.write("                var sLoadingDataExcelClick6LSSVM = document.getElementById(\"sLoadingDataExcelClick6LSSVM\");\n");
      out.write("                sLoadingDataExcelClick6LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6LSSVM\").value = sLoadingDataExcelClick6LSSVM;\n");
      out.write("                \n");
      out.write("                document.getElementById(\"myform2\").action = \"ModuleSFALSSVM.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                valid = false;\n");
      out.write("\n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function viewsummarydata5() {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var VarNextLSSVM = document.getElementById(\"VarNextLSSVM\");\n");
      out.write("                //var VarProceed = document.getElementById(\"VarProceed\");\n");
      out.write("                //var VarReport = document.getElementById(\"VarReport\");\n");
      out.write("                //var VarTable = document.getElementById(\"VarTable\");\n");
      out.write("\n");
      out.write("                //to run nimops (extra gate to start running) - not at opening\n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                sLoadingDataExcelLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = sLoadingDataExcelLSSVM;\n");
      out.write("\n");
      out.write("                //to un-hide summary data\n");
      out.write("                var sLoadingDataExcelClickLSSVM = document.getElementById(\"sLoadingDataExcelClickLSSVM\");\n");
      out.write("                sLoadingDataExcelClickLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClickLSSVM\").value = sLoadingDataExcelClickLSSVM;\n");
      out.write("                    var sLoadingDataExcelClick3LSSVM = document.getElementById(\"sLoadingDataExcelClick3LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick3LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3LSSVM\").value = sLoadingDataExcelClick3LSSVM;\n");
      out.write("                var sLoadingDataExcelClick4LSSVM = document.getElementById(\"sLoadingDataExcelClick4LSSVM\");\n");
      out.write("                sLoadingDataExcelClick4LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4LSSVM\").value = sLoadingDataExcelClick4LSSVM;\n");
      out.write("                    var sLoadingDataExcelClick5LSSVM = document.getElementById(\"sLoadingDataExcelClick5LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick5LSSVM = \"5\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5LSSVM\").value = sLoadingDataExcelClick5LSSVM;\n");
      out.write("                var sLoadingDataExcelClick6LSSVM = document.getElementById(\"sLoadingDataExcelClick6LSSVM\");\n");
      out.write("                sLoadingDataExcelClick6LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6LSSVM\").value = sLoadingDataExcelClick6LSSVM;\n");
      out.write("                \n");
      out.write("                document.getElementById(\"myform2\").action = \"ModuleSFALSSVM.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                valid = false;\n");
      out.write("\n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function viewsummarydata6() {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var VarNextLSSVM = document.getElementById(\"VarNextLSSVM\");\n");
      out.write("                //var VarProceed = document.getElementById(\"VarProceed\");\n");
      out.write("                //var VarReport = document.getElementById(\"VarReport\");\n");
      out.write("                //var VarTable = document.getElementById(\"VarTable\");\n");
      out.write("\n");
      out.write("                //to run nimops (extra gate to start running) - not at opening\n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                sLoadingDataExcelLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = sLoadingDataExcelLSSVM;\n");
      out.write("\n");
      out.write("                //to un-hide summary data\n");
      out.write("                var sLoadingDataExcelClickLSSVM = document.getElementById(\"sLoadingDataExcelClickLSSVM\");\n");
      out.write("                sLoadingDataExcelClickLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClickLSSVM\").value = sLoadingDataExcelClickLSSVM;\n");
      out.write("                    var sLoadingDataExcelClick3LSSVM = document.getElementById(\"sLoadingDataExcelClick3LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick3LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3LSSVM\").value = sLoadingDataExcelClick3LSSVM;\n");
      out.write("                var sLoadingDataExcelClick4LSSVM = document.getElementById(\"sLoadingDataExcelClick4LSSVM\");\n");
      out.write("                sLoadingDataExcelClick4LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4LSSVM\").value = sLoadingDataExcelClick4LSSVM;\n");
      out.write("                    var sLoadingDataExcelClick5LSSVM = document.getElementById(\"sLoadingDataExcelClick5LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick5LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5LSSVM\").value = sLoadingDataExcelClick5LSSVM;\n");
      out.write("                var sLoadingDataExcelClick6LSSVM = document.getElementById(\"sLoadingDataExcelClick6LSSVM\");\n");
      out.write("                sLoadingDataExcelClick6LSSVM = \"6\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6LSSVM\").value = sLoadingDataExcelClick6LSSVM;\n");
      out.write("                \n");
      out.write("                document.getElementById(\"myform2\").action = \"ModuleSFALSSVM.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                valid = false;\n");
      out.write("\n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function closesummarydata2() {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var VarNextLSSVM = document.getElementById(\"VarNextLSSVM\");\n");
      out.write("                //var VarProceed = document.getElementById(\"VarProceed\");\n");
      out.write("                //var VarReport = document.getElementById(\"VarReport\");\n");
      out.write("                //var VarTable = document.getElementById(\"VarTable\");\n");
      out.write("                    \n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                sLoadingDataExcelLSSVM = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = sLoadingDataExcelLSSVM;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcelClickLSSVM = document.getElementById(\"sLoadingDataExcelClickLSSVM\");\n");
      out.write("                sLoadingDataExcelClickLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClickLSSVM\").value = sLoadingDataExcelClickLSSVM;\n");
      out.write("                    var sLoadingDataExcelClick3LSSVM = document.getElementById(\"sLoadingDataExcelClick3LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick3LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3LSSVM\").value = sLoadingDataExcelClick3LSSVM;\n");
      out.write("                var sLoadingDataExcelClick4LSSVM = document.getElementById(\"sLoadingDataExcelClick4LSSVM\");\n");
      out.write("                sLoadingDataExcelClick4LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4LSSVM\").value = sLoadingDataExcelClick4LSSVM;\n");
      out.write("                    var sLoadingDataExcelClick5LSSVM = document.getElementById(\"sLoadingDataExcelClick5LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick5LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5LSSVM\").value = sLoadingDataExcelClick5LSSVM;\n");
      out.write("                var sLoadingDataExcelClick6LSSVM = document.getElementById(\"sLoadingDataExcelClick6LSSVM\");\n");
      out.write("                sLoadingDataExcelClick6LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6LSSVM\").value = sLoadingDataExcelClick6LSSVM;\n");
      out.write("\n");
      out.write("                document.getElementById(\"myform2\").action = \"ModuleSFALSSVM.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                valid = false;\n");
      out.write("                \n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function rundata2(val) {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sBaseFileNameCO = document.getElementById(\"sBaseFileNameCO\");\n");
      out.write("\n");
      out.write("                var VarNextLSSVM = document.getElementById(\"VarNextLSSVM\");\n");
      out.write("                //var VarProceed = document.getElementById(\"VarProceed\");\n");
      out.write("                //var VarReport = document.getElementById(\"VarReport\");\n");
      out.write("                //var VarTable = document.getElementById(\"VarTable\");\n");
      out.write("                    \n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                sLoadingDataExcelLSSVM = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = sLoadingDataExcelLSSVM;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcelClickLSSVM = document.getElementById(\"sLoadingDataExcelClickLSSVM\");\n");
      out.write("                sLoadingDataExcelClickLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClickLSSVM\").value = sLoadingDataExcelClickLSSVM;\n");
      out.write("                    var sLoadingDataExcelClick3LSSVM = document.getElementById(\"sLoadingDataExcelClick3LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick3LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3LSSVM\").value = sLoadingDataExcelClick3LSSVM;\n");
      out.write("                var sLoadingDataExcelClick4LSSVM = document.getElementById(\"sLoadingDataExcelClick4LSSVM\");\n");
      out.write("                sLoadingDataExcelClick4LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4LSSVM\").value = sLoadingDataExcelClick4LSSVM;\n");
      out.write("                    var sLoadingDataExcelClick5LSSVM = document.getElementById(\"sLoadingDataExcelClick5LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick5LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5LSSVM\").value = sLoadingDataExcelClick5LSSVM;\n");
      out.write("                var sLoadingDataExcelClick6LSSVM = document.getElementById(\"sLoadingDataExcelClick6LSSVM\");\n");
      out.write("                sLoadingDataExcelClick6LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6LSSVM\").value = sLoadingDataExcelClick6LSSVM;\n");
      out.write("\n");
      out.write("                var sRunReportTable = document.getElementById(\"sRunReportTable\");\n");
      out.write("                sRunReportTable = val;\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = sRunReportTable;\n");
      out.write("                var sRRTShow = document.getElementById(\"sRRTShow\");\n");
      out.write("                sRRTShow = \"\";\n");
      out.write("                document.getElementById(\"sRRTShow\").value = sRRTShow;\n");
      out.write("                var ssResult01 = document.getElementById(\"ssResult01\");\n");
      out.write("                var ssResult02 = document.getElementById(\"ssResult02\");\n");
      out.write("                var ssResult03 = document.getElementById(\"ssResult03\");\n");
      out.write("                var ssResult04 = document.getElementById(\"ssResult04\");\n");
      out.write("                var ssResult05 = document.getElementById(\"ssResult05\");\n");
      out.write("                var ssResult06 = document.getElementById(\"ssResult06\");\n");
      out.write("                //var sReportFile = document.getElementById(\"sReportFile\");\n");
      out.write("                //var sReportFileTXT = document.getElementById(\"sReportFileTXT\");\n");
      out.write("                \n");
      out.write("                var ssResult01Name = document.getElementById(\"ssResult01Name\");\n");
      out.write("                var ssResult02Name = document.getElementById(\"ssResult02Name\");\n");
      out.write("                var ssResult03Name = document.getElementById(\"ssResult03Name\");\n");
      out.write("                var ssResult04Name = document.getElementById(\"ssResult04Name\");\n");
      out.write("                var ssResult05Name = document.getElementById(\"ssResult05Name\");\n");
      out.write("                var ssResult06Name = document.getElementById(\"ssResult06Name\");\n");
      out.write("                //var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                //var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                \n");
      out.write("                var sViewProceed = document.getElementById(\"sViewProceed\");\n");
      out.write("                sViewProceed = \"\";\n");
      out.write("                document.getElementById(\"sViewProceed\").value = sViewProceed;\n");
      out.write("\n");
      out.write("                document.getElementById(\"sPageControl\").value = \"2\";\n");
      out.write("                document.getElementById(\"sRunReportTable\").value = \"1\";\n");
      out.write("\n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function showsummaryreport(valData) {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sBaseFileNameCO = document.getElementById(\"sBaseFileNameCO\");\n");
      out.write("\n");
      out.write("                var VarNextLSSVM = document.getElementById(\"VarNextLSSVM\");\n");
      out.write("                //var VarProceed = document.getElementById(\"VarProceed\");\n");
      out.write("                //var VarReport = document.getElementById(\"VarReport\");\n");
      out.write("                //var VarTable = document.getElementById(\"VarTable\");\n");
      out.write("                    \n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                sLoadingDataExcelLSSVM = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = sLoadingDataExcelLSSVM;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcelClickLSSVM = document.getElementById(\"sLoadingDataExcelClickLSSVM\");\n");
      out.write("                sLoadingDataExcelClickLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClickLSSVM\").value = sLoadingDataExcelClickLSSVM;\n");
      out.write("                    var sLoadingDataExcelClick3LSSVM = document.getElementById(\"sLoadingDataExcelClick3LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick3LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3LSSVM\").value = sLoadingDataExcelClick3LSSVM;\n");
      out.write("                var sLoadingDataExcelClick4LSSVM = document.getElementById(\"sLoadingDataExcelClick4LSSVM\");\n");
      out.write("                sLoadingDataExcelClick4LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4LSSVM\").value = sLoadingDataExcelClick4LSSVM;\n");
      out.write("                    var sLoadingDataExcelClick5LSSVM = document.getElementById(\"sLoadingDataExcelClick5LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick5LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5LSSVM\").value = sLoadingDataExcelClick5LSSVM;\n");
      out.write("                var sLoadingDataExcelClick6LSSVM = document.getElementById(\"sLoadingDataExcelClick6LSSVM\");\n");
      out.write("                sLoadingDataExcelClick6LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6LSSVM\").value = sLoadingDataExcelClick6LSSVM;\n");
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
      out.write("                    var ssResult01 = document.getElementById(\"ssResult01\").value;\n");
      out.write("                    if (ssResult01!==\"\") {\n");
      out.write("                        var ssResult01Name = document.getElementById(\"ssResult01\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var ssResult01Name = document.getElementById(\"ssResult01Name\").value;\n");
      out.write("                        if (ssResult01Name===\"\") {\n");
      out.write("                            document.getElementById(\"ssResult01Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\SResult01.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var ssResult02 = document.getElementById(\"ssResult02\").value;\n");
      out.write("                    if (ssResult02!==\"\") {\n");
      out.write("                        var ssResult02Name = document.getElementById(\"ssResult02\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        //ssResult02 = \"Result02.txt\";\n");
      out.write("                        //document.getElementById(\"ssResult02\").value = ssResult02;\n");
      out.write("                        //var ssResult02Name = document.getElementById(\"ssResult02\");\n");
      out.write("                        \n");
      out.write("                        var ssResult02Name = document.getElementById(\"ssResult02Name\").value;\n");
      out.write("                        if (ssResult02Name===\"\") {\n");
      out.write("                            document.getElementById(\"ssResult02Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\SResult02.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var ssResult03Name = document.getElementById(\"ssResult03Name\");\n");
      out.write("                    var ssResult04Name = document.getElementById(\"ssResult04Name\");\n");
      out.write("                    var ssResult05Name = document.getElementById(\"ssResult05Name\");\n");
      out.write("                    var ssResult06Name = document.getElementById(\"ssResult06Name\");\n");
      out.write("\n");
      out.write("                    /*\n");
      out.write("                    if (ssResult01.value===\"\") {\n");
      out.write("                        if (ssResult01Name.value===\"\") {\n");
      out.write("                            var ssResult01Name=\"Result01.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    */\n");
      out.write("                    \n");
      out.write("                    /*\n");
      out.write("                    alert(\"Aha1 ...!\");\n");
      out.write("                    if (ssResult02!==\"\") {\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        alert(\"Aha2 ...!\");\n");
      out.write("                        if (ssResult02Name!==\"\") {\n");
      out.write("                            alert(\"Aha3 ...!\");\n");
      out.write("                        }\n");
      out.write("                        else {\n");
      out.write("                            alert(\"Aha4 ...!\");\n");
      out.write("                            var ssResult02 = document.getElementById(\"ssResult02\");\n");
      out.write("                            var ssResult02Name = document.getElementById(\"ssResult02Name\");\n");
      out.write("                            ssResult02=\"Result02.txt\";\n");
      out.write("                            ssResult02Name=\"Result02.txt\"; \n");
      out.write("                            document.getElementById(\"ssResult02\").value = ssResult02;\n");
      out.write("                            document.getElementById(\"ssResult02Name\").value = ssResult02Name;\n");
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
      out.write("                    var ssResult01Name = document.getElementById(\"ssResult01Name\");\n");
      out.write("                    var ssResult02Name = document.getElementById(\"ssResult02Name\");\n");
      out.write("\n");
      out.write("                    var ssResult03 = document.getElementById(\"ssResult03\").value;\n");
      out.write("                    if (ssResult03!==\"\") {\n");
      out.write("                        var ssResult03Name = document.getElementById(\"ssResult03\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var ssResult03Name = document.getElementById(\"ssResult03Name\").value;\n");
      out.write("                        if (ssResult03Name===\"\") {\n");
      out.write("                            document.getElementById(\"ssResult03Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\SResult03.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var ssResult04Name = document.getElementById(\"ssResult04Name\");\n");
      out.write("                    var ssResult05Name = document.getElementById(\"ssResult05Name\");\n");
      out.write("                    var ssResult06Name = document.getElementById(\"ssResult06Name\");\n");
      out.write("                }\n");
      out.write("                else if (valData===3) {\n");
      out.write("                    var ssResult01Name = document.getElementById(\"ssResult01Name\");\n");
      out.write("                    var ssResult02Name = document.getElementById(\"ssResult02Name\");\n");
      out.write("                    var ssResult03Name = document.getElementById(\"ssResult03Name\");\n");
      out.write("                    \n");
      out.write("                    var ssResult04 = document.getElementById(\"ssResult04\").value;\n");
      out.write("                    if (ssResult04!==\"\") {\n");
      out.write("                        var ssResult04Name = document.getElementById(\"ssResult04\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var ssResult04Name = document.getElementById(\"ssResult04Name\").value;\n");
      out.write("                        if (ssResult04Name===\"\") {\n");
      out.write("                            document.getElementById(\"ssResult04Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\SResult04.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    var ssResult05Name = document.getElementById(\"ssResult05Name\");\n");
      out.write("                    var ssResult06Name = document.getElementById(\"ssResult06Name\");\n");
      out.write("                }\n");
      out.write("                else if (valData===4) { \n");
      out.write("                    var ssResult01Name = document.getElementById(\"ssResult01Name\");\n");
      out.write("                    var ssResult02Name = document.getElementById(\"ssResult02Name\");\n");
      out.write("                    var ssResult03Name = document.getElementById(\"ssResult03Name\");\n");
      out.write("                    var ssResult04Name = document.getElementById(\"ssResult04Name\");\n");
      out.write("\n");
      out.write("                    var ssResult05 = document.getElementById(\"ssResult05\").value;\n");
      out.write("                    if (ssResult05!==\"\") {\n");
      out.write("                        var ssResult05Name = document.getElementById(\"ssResult05\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var ssResult05Name = document.getElementById(\"ssResult05Name\").value;\n");
      out.write("                        if (ssResult05Name===\"\") {\n");
      out.write("                            document.getElementById(\"ssResult05Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\SResult05.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    var ssResult06 = document.getElementById(\"ssResult06\").value;\n");
      out.write("                    if (ssResult06!==\"\") {\n");
      out.write("                        var ssResult06Name = document.getElementById(\"ssResult06\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var ssResult06Name = document.getElementById(\"ssResult06Name\").value;\n");
      out.write("                        if (ssResult06Name===\"\") {\n");
      out.write("                            document.getElementById(\"ssResult06Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\SResult06.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                } \n");
      out.write("                \n");
      out.write("                /*\n");
      out.write("                if (valData===3 || valData===4) {\n");
      out.write("                    var sReportFile = document.getElementById(\"sReportFile\");\n");
      out.write("                    if (sReportFile!==\"\") {\n");
      out.write("                        var sReportFileName = document.getElementById(\"sReportFile\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                else if (valData===2) {\n");
      out.write("                    var sReportFileName = document.getElementById(\"sReportFileName\");\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                if (valData===2) {\n");
      out.write("                    var sReportFileTXT = document.getElementById(\"sReportFileTXT\");\n");
      out.write("                    if (sReportFileTXT!==\"\") {\n");
      out.write("                        var sReportFileNameTXT = document.getElementById(\"sReportFileTXT\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                else if (valData===3 || valData===4) { \n");
      out.write("                    var sReportFileNameTXT = document.getElementById(\"sReportFileNameTXT\");\n");
      out.write("                } \n");
      out.write("                */\n");
      out.write("               \n");
      out.write("                //alert(\"Aha5 ...!\");\n");
      out.write("                document.getElementById(\"myform2\").action = \"ModuleSFALSSVM.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                valid = false;\n");
      out.write("                \n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function previousscreenLSSVM() {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var VarTwo = document.getElementById(\"VarTwo\");\n");
      out.write("                document.getElementById(\"VarTwo\").value = \"Two\";\n");
      out.write("                \n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = \"\";\n");
      out.write("\n");
      out.write("                var sLoadingDataFileLSSVM = document.getElementById(\"sLoadingDataFileLSSVM\");\n");
      out.write("                document.getElementById(\"sLoadingDataFileLSSVM\").value = \"\";\n");
      out.write("                \n");
      out.write("                document.getElementById(\"myform2\").action = \"SFALSSVM.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                valid = false;\n");
      out.write("                \n");
      out.write("                return valid;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function createoutputfiles(val) {\n");
      out.write("                var nFireFliesLSSVM = document.getElementById(\"nFireFliesLSSVM\");\n");
      out.write("                var nMaxGenerationLSSVM = document.getElementById(\"nMaxGenerationLSSVM\");\n");
      out.write("                var dMinBetaLSSVM = document.getElementById(\"dMinBetaLSSVM\");\n");
      out.write("                var dGammaLSSVM = document.getElementById(\"dGammaLSSVM\");\n");
      out.write("                var dAlphaLSSVM = document.getElementById(\"dAlphaLSSVM\");\n");
      out.write("                var dAIWeightLSSVM = document.getElementById(\"dAIWeightLSSVM\");\n");
      out.write("                var dTauLSSVM = document.getElementById(\"dTauLSSVM\");\n");
      out.write("                var dBPotentialLSSVM = document.getElementById(\"dBPotentialLSSVM\");\n");
      out.write("                var dC1LSSVM = document.getElementById(\"dC1LSSVM\");\n");
      out.write("                var dC2LSSVM = document.getElementById(\"dC2LSSVM\");\n");
      out.write("                var dS1LSSVM = document.getElementById(\"dS1LSSVM\");\n");
      out.write("                var dS2LSSVM = document.getElementById(\"dS2LSSVM\");\n");
      out.write("                var dTrainingPSLSSVM = document.getElementById(\"dTrainingPSLSSVM\");\n");
      out.write("                var dValidationPSLSSVM = document.getElementById(\"dValidationPSLSSVM\");\n");
      out.write("                var dTotalSizeLSSVM = document.getElementById(\"dTotalSizeLSSVM\");\n");
      out.write("                var nLastChange1LSSVM = document.getElementById(\"nLastChange1LSSVM\");\n");
      out.write("                var nLastChange2LSSVM = document.getElementById(\"nLastChange2LSSVM\");\n");
      out.write("                var dHoldOutLSSVM = document.getElementById(\"dHoldOutLSSVM\");\n");
      out.write("                var dCrossValidationLSSVM = document.getElementById(\"dCrossValidationLSSVM\");\n");
      out.write("\n");
      out.write("                var NormalRadioLSSVM = document.getElementById(\"NormalRadioLSSVM\");\n");
      out.write("                var SCRadioLSSVM = document.getElementById(\"SCRadioLSSVM\");\n");
      out.write("                var PRadioLSSVM = document.getElementById(\"PRadioLSSVM\");\n");
      out.write("                var TORadioLSSVM = document.getElementById(\"TORadioLSSVM\");\n");
      out.write("\n");
      out.write("                var sDataFileLSSVM = document.getElementById(\"sDataFileLSSVM\");\n");
      out.write("                var nDFInstancesLSSVM = document.getElementById(\"nDFInstancesLSSVM\");\n");
      out.write("                var nDFAttributesLSSVM = document.getElementById(\"nDFAttributesLSSVM\");\n");
      out.write("                var sTestDataFileLSSVM = document.getElementById(\"sTestDataFileLSSVM\");\n");
      out.write("                var nTDFInstancesLSSVM = document.getElementById(\"nTDFInstancesLSSVM\");\n");
      out.write("                var nTDFAttributesLSSVM = document.getElementById(\"nTDFAttributesLSSVM\");\n");
      out.write("                var sLearningDataFileLSSVM = document.getElementById(\"sLearningDataFileLSSVM\");\n");
      out.write("                var nLDFInstancesLSSVM = document.getElementById(\"nLDFInstancesLSSVM\");\n");
      out.write("                var nLDFAttributesLSSVM = document.getElementById(\"nLDFAttributesLSSVM\");\n");
      out.write("                var sPredictionDataFileLSSVM = document.getElementById(\"sPredictionDataFileLSSVM\");\n");
      out.write("                var nPDFInstancesLSSVM = document.getElementById(\"nPDFInstancesLSSVM\");\n");
      out.write("                var nPDFAttributesLSSVM = document.getElementById(\"nPDFAttributesLSSVM\");\n");
      out.write("                var fullPathLSSVM = document.getElementById(\"fullPathLSSVM\");\n");
      out.write("                var fullPathTLSSVM = document.getElementById(\"fullPathTLSSVM\");\n");
      out.write("                var fullPathLLSSVM = document.getElementById(\"fullPathLLSSVM\");\n");
      out.write("                var fullPathPLSSVM = document.getElementById(\"fullPathPLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileNameLSSVM = document.getElementById(\"sFileNameLSSVM\");\n");
      out.write("                var sTestFileNameLSSVM = document.getElementById(\"sTestFileNameLSSVM\");\n");
      out.write("                var sLearningFileNameLSSVM = document.getElementById(\"sLearningFileNameLSSVM\");\n");
      out.write("                var sPredictionFileNameLSSVM = document.getElementById(\"sPredictionFileNameLSSVM\");\n");
      out.write("\n");
      out.write("                var sFileDataLSSVM = document.getElementById(\"sFileDataLSSVM\");\n");
      out.write("                var sdInstancesLSSVM = document.getElementById(\"sdInstancesLSSVM\");\n");
      out.write("                var sdAttributesLSSVM = document.getElementById(\"sdAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sPFileDataLSSVM = document.getElementById(\"sPFileDataLSSVM\");\n");
      out.write("                var sPdInstancesLSSVM = document.getElementById(\"sdPInstancesLSSVM\");\n");
      out.write("                var sPdAttributesLSSVM = document.getElementById(\"sdPAttributesLSSVM\");\n");
      out.write("\n");
      out.write("                var sBaseFileNameCO = document.getElementById(\"sBaseFileNameCO\");\n");
      out.write("\n");
      out.write("                var VarNextLSSVM = document.getElementById(\"VarNextLSSVM\");\n");
      out.write("                //var VarProceed = document.getElementById(\"VarProceed\");\n");
      out.write("                //var VarReport = document.getElementById(\"VarReport\");\n");
      out.write("                //var VarTable = document.getElementById(\"VarTable\");\n");
      out.write("                    \n");
      out.write("                var sLoadingDataExcelLSSVM = document.getElementById(\"sLoadingDataExcelLSSVM\");\n");
      out.write("                sLoadingDataExcelLSSVM = \"1\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelLSSVM\").value = sLoadingDataExcelLSSVM;\n");
      out.write("\n");
      out.write("                var sLoadingDataExcelClickLSSVM = document.getElementById(\"sLoadingDataExcelClickLSSVM\");\n");
      out.write("                sLoadingDataExcelClickLSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClickLSSVM\").value = sLoadingDataExcelClickLSSVM;\n");
      out.write("                    var sLoadingDataExcelClick3LSSVM = document.getElementById(\"sLoadingDataExcelClick3LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick3LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick3LSSVM\").value = sLoadingDataExcelClick3LSSVM;\n");
      out.write("                var sLoadingDataExcelClick4LSSVM = document.getElementById(\"sLoadingDataExcelClick4LSSVM\");\n");
      out.write("                sLoadingDataExcelClick4LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick4LSSVM\").value = sLoadingDataExcelClick4LSSVM;\n");
      out.write("                    var sLoadingDataExcelClick5LSSVM = document.getElementById(\"sLoadingDataExcelClick5LSSVM\");\n");
      out.write("                    sLoadingDataExcelClick5LSSVM = \"\";\n");
      out.write("                    document.getElementById(\"sLoadingDataExcelClick5LSSVM\").value = sLoadingDataExcelClick5LSSVM;\n");
      out.write("                var sLoadingDataExcelClick6LSSVM = document.getElementById(\"sLoadingDataExcelClick6LSSVM\");\n");
      out.write("                sLoadingDataExcelClick6LSSVM = \"\";\n");
      out.write("                document.getElementById(\"sLoadingDataExcelClick6LSSVM\").value = sLoadingDataExcelClick6LSSVM;\n");
      out.write("\n");
      out.write("                var sRunReportTable = document.getElementById(\"sRunReportTable\");\n");
      out.write("                \n");
      out.write("                var sRRTShow = document.getElementById(\"sRRTShow\"); \n");
      out.write("                sRRTShow = \"1\"; \n");
      out.write("                document.getElementById(\"sRRTShow\").value = \"1\";\n");
      out.write("                \n");
      out.write("                var sViewProceed = document.getElementById(\"sViewProceed\");\n");
      out.write("                //if (valData===11) { \n");
      out.write("                    sViewProceed = \"\";\n");
      out.write("                //}\n");
      out.write("                //else if (valData===12) { \n");
      out.write("                    //alert(\"Aha2 ...!\");\n");
      out.write("                //    sViewProceed = \"1\";\n");
      out.write("                //}\n");
      out.write("                document.getElementById(\"sViewProceed\").value = sViewProceed;\n");
      out.write("                \n");
      out.write("                    var ssResult01 = document.getElementById(\"ssResult01\").value;\n");
      out.write("                    if (ssResult01!==\"\") {\n");
      out.write("                        var ssResult01Name = document.getElementById(\"ssResult01\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var ssResult01Name = document.getElementById(\"ssResult01Name\").value;\n");
      out.write("                        if (ssResult01Name===\"\") {\n");
      out.write("                            document.getElementById(\"ssResult01Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\Result01.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var ssResult02 = document.getElementById(\"ssResult02\").value;\n");
      out.write("                    if (ssResult02!==\"\") {\n");
      out.write("                        var ssResult02Name = document.getElementById(\"ssResult02\");\n");
      out.write("                    }\n");
      out.write("                    else {\n");
      out.write("                        var ssResult02Name = document.getElementById(\"ssResult02Name\").value;\n");
      out.write("                        if (ssResult02Name===\"\") {\n");
      out.write("                            document.getElementById(\"ssResult02Name\").value=\"E:\\\\00 Swarm Optimization\\\\NiMOPSJava\\\\build\\\\web\\\\Result02.txt\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var ssResult03Name = document.getElementById(\"ssResult03Name\");\n");
      out.write("                    var ssResult04Name = document.getElementById(\"ssResult04Name\");\n");
      out.write("                    var ssResult05Name = document.getElementById(\"ssResult05Name\");\n");
      out.write("                    var ssResult06Name = document.getElementById(\"ssResult06Name\");\n");
      out.write("                \n");
      out.write("                //alert(\"Aha1 ...!\");\n");
      out.write("                var sCreate = document.getElementById(\"sCreate\"); \n");
      out.write("                var sBaseFileName = document.getElementById(\"sBaseFileName\").value;\n");
      out.write("                if (sBaseFileName!==\"\") {\n");
      out.write("                    sCreate = \"val\";\n");
      out.write("                    //document.getElementById(\"sBaseFileName\").value=sBaseFileName;\n");
      out.write("                }\n");
      out.write("                else {\n");
      out.write("                    sCreate = \"\";\n");
      out.write("                }\n");
      out.write("                document.getElementById(\"sCreate\").value = sCreate;\n");
      out.write("\n");
      out.write("                document.getElementById(\"sBaseFileNameCO\").value = sBaseFileName;\n");
      out.write("\n");
      out.write("                //alert(\"Aha2 ...!\");\n");
      out.write("                document.getElementById(\"myform2\").action = \"ModuleSFALSSVM.jsp\";\n");
      out.write("                document.getElementById(\"myform2\").submit();\n");
      out.write("                valid = false;\n");
      out.write("                \n");
      out.write("                return valid; \n");
      out.write("            } \n");
      out.write("            \n");
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
      out.write("                else {\n");
      out.write("                    document.getElementById(\"sPageControl\").value = \"2\";\n");
      out.write("                }\n");
      out.write("                return refreshform(val);\n");
      out.write("            } \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"sfawrap\">\n");
      out.write("            <center>\n");
      out.write("                <img src=\"headhomepagesub.jpg\" alt=\"Image Not Found ...\" width=\"1000\">\n");
      out.write("            </center>\n");
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
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        ");
 if (VarSaveData != null) { 
      out.write("\n");
      out.write("            <!--<table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <h2>SFA-LSSVM:</h2>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font color=\"black\" face=\"tahoma\" size=\"2\">\n");
      out.write("                        ");
      out.write("\n");
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
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>-->\n");
      out.write("            \n");
      out.write("        ");
 } else if (VarLoadData != null) { 
      out.write("\n");
      out.write("            \n");
      out.write("            ");

                String filename = "Data_SFA_LSSVM.txt";
                String file = application.getRealPath("/") + filename;
                //BufferedReader br = new BufferedReader(new FileReader(file));
                //String line = null;
                //int j;
            
      out.write("\n");
      out.write("\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <h2>SFA-LSSVM:</h2>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <font color=\"black\" face=\"tahoma\" size=\"2\">\n");
      out.write("                        ");

                            out.println("Data already loaded from "+file);
                        
      out.write("\n");
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
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("                    \n");
      out.write("        ");
 } else if (VarReportData != null) { 
      out.write("\n");
      out.write("            ");

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
            
      out.write("\n");
      out.write("\n");
      out.write("            <form>\n");
      out.write("                <h2>\n");
      out.write("                    SFA-LSSVM Data:\n");
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
      out.write("                        <td>nFireFliesLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nFireFliesLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>2</td>\n");
      out.write("                        <td>Max. generation</td>\n");
      out.write("                        <td>nMaxGenerationLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nMaxGenerationLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>3</td>\n");
      out.write("                        <td>Beta min.</td>\n");
      out.write("                        <td>dMinBetaLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dMinBetaLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>4</td>\n");
      out.write("                        <td>Gamma</td>\n");
      out.write("                        <td>dGammaLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dGammaLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>5</td>\n");
      out.write("                        <td>Alpha</td>\n");
      out.write("                        <td>dAlphaLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dAlphaLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>6</td>\n");
      out.write("                        <td>Adaptive inertia weight</td>\n");
      out.write("                        <td>dAIWeightLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dAIWeightLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>7</td>\n");
      out.write("                        <td>Tau</td>\n");
      out.write("                        <td>dTauLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dTauLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>8</td>\n");
      out.write("                        <td>Biotic potential (a)</td>\n");
      out.write("                        <td>dBPotentialLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dBPotentialLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>9</td>\n");
      out.write("                        <td>Range of C1</td>\n");
      out.write("                        <td>dC1LSSVM</td>\n");
      out.write("                        <td>");
      out.print(dC1LSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>10</td>\n");
      out.write("                        <td>C2</td>\n");
      out.write("                        <td>dC2LSSVM</td>\n");
      out.write("                        <td>");
      out.print(dC2LSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>11</td>\n");
      out.write("                        <td>Range of Sigma, S1</td>\n");
      out.write("                        <td>dS1LSSVM</td>\n");
      out.write("                        <td>");
      out.print(dS1LSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>12</td>\n");
      out.write("                        <td>S2</td>\n");
      out.write("                        <td>dS2LSSVM</td>\n");
      out.write("                        <td>");
      out.print(dS2LSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>13</td>\n");
      out.write("                        <td>Training partition size (%)</td>\n");
      out.write("                        <td>dTrainingPSLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dTrainingPSLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>14</td>\n");
      out.write("                        <td> Validation partition size (%)</td>\n");
      out.write("                        <td>dValidationPSLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dValidationPSLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>15</td>\n");
      out.write("                        <td> Total Size (%)</td>\n");
      out.write("                        <td>dTotalSizeLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dTotalSizeLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>16</td>\n");
      out.write("                        <td>No. of Last Changes</td>\n");
      out.write("                        <td>nLastChange1LSSVM</td>\n");
      out.write("                        <td>");
      out.print(nLastChange1LSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>17</td>\n");
      out.write("                        <td>Constant OF Value</td>\n");
      out.write("                        <td>nLastChange2LSSVM</td>\n");
      out.write("                        <td>");
      out.print(nLastChange2LSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>18</td>\n");
      out.write("                        <td>Hold-Out (%)</td>\n");
      out.write("                        <td>dHoldOutLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dHoldOutLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>19</td>\n");
      out.write("                        <td>Cross-Validation (%)</td>\n");
      out.write("                        <td>dCrossValidationLSSVM</td>\n");
      out.write("                        <td>");
      out.print(dCrossValidationLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                    sNormalRadioLSSVM = "...";
                    if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                        sNormalRadioLSSVM = "Original value";
                    }
                    else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                        sNormalRadioLSSVM = "Feature scaling";
                    }
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>20</td>\n");
      out.write("                        <td>Normalization Method</td>\n");
      out.write("                        <td>sNormalRadioLSSVM</td>\n");
      out.write("                        <td>");
      out.print(sNormalRadioLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>21</td>\n");
      out.write("                        <td>Objective Function</td>\n");
      out.write("                        <td>-</td>\n");
      out.write("                        <td>Classification accuracy (validation)</td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    ");

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
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>22</td>\n");
      out.write("                        <td>Stop Criterion</td>\n");
      out.write("                        <td>sSCRadioLSSVM</td>\n");
      out.write("                        <td>");
      out.print(sSCRadioLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    ");

                    sPRadioLSSVM = "...";
                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                        sPRadioLSSVM = "Evaluation";
                    }
                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                        sPRadioLSSVM = "Prediction";
                    }
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>23</td>\n");
      out.write("                        <td>Purpose</td>\n");
      out.write("                        <td>sPRadioLSSVM</td>\n");
      out.write("                        <td>");
      out.print(sPRadioLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    ");

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
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>24</td>\n");
      out.write("                        <td>Test Option</td>\n");
      out.write("                        <td>sTORadioLSSVM</td>\n");
      out.write("                        <td>");
      out.print(sTORadioLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>25</td>\n");
      out.write("                        <td>Data File</td>\n");
      out.write("                        <td>sFileNameLSSVM</td>\n");
      out.write("                        <td>");
      out.print(sFileNameLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>26</td>\n");
      out.write("                        <td>No. of Attributes</td>\n");
      out.write("                        <td>nDFAttributesLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nDFAttributesLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>27</td>\n");
      out.write("                        <td>No. of Instances</td>\n");
      out.write("                        <td>nDFInstancesLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nDFInstancesLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>28</td>\n");
      out.write("                        <td>Test Data File</td>\n");
      out.write("                        <td>sTestFileNameLSSVM</td>\n");
      out.write("                        <td>");
      out.print(sTestFileNameLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>29</td>\n");
      out.write("                        <td>No. of Attributes</td>\n");
      out.write("                        <td>nTDFAttributesLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nTDFAttributesLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>30</td>\n");
      out.write("                        <td>No. of Instances</td>\n");
      out.write("                        <td>nTDFInstancesLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nTDFInstancesLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>31</td>\n");
      out.write("                        <td>Learning Data File</td>\n");
      out.write("                        <td>sLearningFileNameLSSVM</td>\n");
      out.write("                        <td>");
      out.print(sLearningFileNameLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>32</td>\n");
      out.write("                        <td>No. of Attributes</td>\n");
      out.write("                        <td>nLDFAttributesLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nLDFAttributesLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>33</td>\n");
      out.write("                        <td>No. of Instances</td>\n");
      out.write("                        <td>nLDFInstancesLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nLDFInstancesLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>34</td>\n");
      out.write("                        <td>Prediction Data File</td>\n");
      out.write("                        <td>sPredictionFileNameLSSVM</td>\n");
      out.write("                        <td>");
      out.print(sPredictionFileNameLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>35</td>\n");
      out.write("                        <td>No. of Attributes</td>\n");
      out.write("                        <td>nPDFAttributesLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nPDFAttributesLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>36</td>\n");
      out.write("                        <td>No. of Instances</td>\n");
      out.write("                        <td>nPDFInstancesLSSVM</td>\n");
      out.write("                        <td>");
      out.print(nPDFInstancesLSSVM);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("                        \n");
      out.write("        ");
 } else if (VarNextLSSVM != null) { 
      out.write("\n");
      out.write("        \n");
      out.write("            <form action=\"ModuleSFALSSVM.jsp\" name=\"myform2\" id=\"myform2\">\n");
      out.write("                ");

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
                
      out.write("\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"VarTwo\" id=\"VarTwo\" value=\"");
      out.print(VarTwo);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataFileLSSVM\" id=\"sLoadingDataFileLSSVM\" value=\"");
      out.print(sLoadingDataFileLSSVM);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"VarNextLSSVM\" id=\"VarNextLSSVM\" value=\"");
      out.print(VarNextLSSVM);
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
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"nFireFliesLSSVM\" id=\"nFireFliesLSSVM\" value=\"");
      out.print(nFireFliesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nMaxGenerationLSSVM\" id=\"nMaxGenerationLSSVM\" value=\"");
      out.print(nMaxGenerationLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dMinBetaLSSVM\" id=\"dMinBetaLSSVM\" value=\"");
      out.print(dMinBetaLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dGammaLSSVM\" id=\"dGammaLSSVM\" value=\"");
      out.print(dGammaLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dAlphaLSSVM\" id=\"dAlphaLSSVM\" value=\"");
      out.print(dAlphaLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dAIWeightLSSVM\" id=\"dAIWeightLSSVM\" value=\"");
      out.print(dAIWeightLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dTauLSSVM\" id=\"dTauLSSVM\" value=\"");
      out.print(dTauLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dBPotentialLSSVM\" id=\"dBPotentialLSSVM\" value=\"");
      out.print(dBPotentialLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dC1LSSVM\" id=\"dC1LSSVM\" value=\"");
      out.print(dC1LSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dC2LSSVM\" id=\"dC2LSSVM\" value=\"");
      out.print(dC2LSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dS1LSSVM\" id=\"dS1LSSVM\" value=\"");
      out.print(dS1LSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dS2LSSVM\" id=\"dS2LSSVM\" value=\"");
      out.print(dS2LSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dTrainingPSLSSVM\" id=\"dTrainingPSLSSVM\" value=\"");
      out.print(dTrainingPSLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dValidationPSLSSVM\" id=\"dValidationPSLSSVM\" value=\"");
      out.print(dValidationPSLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dTotalSizeLSSVM\" id=\"dTotalSizeLSSVM\" value=\"");
      out.print(dTotalSizeLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nLastChange1LSSVM\" id=\"nLastChange1LSSVM\" value=\"");
      out.print(nLastChange1LSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nLastChange2LSSVM\" id=\"nLastChange2LSSVM\" value=\"");
      out.print(nLastChange2LSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dHoldOutLSSVM\" id=\"dHoldOutLSSVM\" value=\"");
      out.print(dHoldOutLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"dCrossValidationLSSVM\" id=\"dCrossValidationLSSVM\" value=\"");
      out.print(dCrossValidationLSSVM);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"nDFAttributesLSSVM\" id=\"nDFAttributesLSSVM\" value=\"");
      out.print(nDFAttributesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nDFInstancesLSSVM\" id=\"nDFInstancesLSSVM\" value=\"");
      out.print(nDFInstancesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nTDFAttributesLSSVM\" id=\"nTDFAttributesLSSVM\" value=\"");
      out.print(nTDFAttributesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nTDFInstancesLSSVM\" id=\"nTDFInstancesLSSVM\" value=\"");
      out.print(nTDFInstancesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nLDFAttributesLSSVM\" id=\"nLDFAttributesLSSVM\" value=\"");
      out.print(nLDFAttributesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nLDFInstancesLSSVM\" id=\"nLDFInstancesLSSVM\" value=\"");
      out.print(nLDFInstancesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nPDFAttributesLSSVM\" id=\"nPDFAttributesLSSVM\" value=\"");
      out.print(nPDFAttributesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"nPDFInstancesLSSVM\" id=\"nPDFInstancesLSSVM\" value=\"");
      out.print(nPDFInstancesLSSVM);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"NormalRadioLSSVM\" id=\"NormalRadioLSSVM\" value=\"");
      out.print(NormalRadioLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"SCRadioLSSVM\" id=\"SCRadioLSSVM\" value=\"");
      out.print(SCRadioLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"PRadioLSSVM\" id=\"PRadioLSSVM\" value=\"");
      out.print(PRadioLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"TORadioLSSVM\" id=\"TORadioLSSVM\" value=\"");
      out.print(TORadioLSSVM);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sDataFileLSSVM\" id=\"sDataFileLSSVM\" value=\"");
if(sDataFileLSSVM!=null){
      out.print(sDataFileLSSVM);
}
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sTestDataFileLSSVM\" id=\"sTestDataFileLSSVM\" value=\"");
if(sTestDataFileLSSVM!=null){
      out.print(sTestDataFileLSSVM);
}
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLearningDataFileLSSVM\" id=\"sLearningDataFileLSSVM\" value=\"");
if(sLearningDataFileLSSVM!=null){
      out.print(sLearningDataFileLSSVM);
}
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sPredictionDataFileLSSVM\" id=\"sPredictionDataFileLSSVM\" value=\"");
if(sPredictionDataFileLSSVM!=null){
      out.print(sPredictionDataFileLSSVM);
}
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sFileNameLSSVM\" id=\"sFileNameLSSVM\" value=\"");
      out.print(sFileNameLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sTestFileNameLSSVM\" id=\"sTestFileNameLSSVM\" value=\"");
      out.print(sTestFileNameLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLearningFileNameLSSVM\" id=\"sLearningFileNameLSSVM\" value=\"");
      out.print(sLearningFileNameLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sPredictionFileNameLSSVM\" id=\"sPredictionFileNameLSSVM\" value=\"");
      out.print(sPredictionFileNameLSSVM);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sFileNameLSSVM\" id=\"sFileData\" value=\"");
      out.print(sFileDataLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sdAttributesLSSVM\" id=\"sdAttributes\" value=\"");
      out.print(sdAttributesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sdInstancesLSSVM\" id=\"sdInstances\" value=\"");
      out.print(sdInstancesLSSVM);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sPFileNameLSSVM\" id=\"sPFileData\" value=\"");
      out.print(sPFileDataLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sdPAttributesLSSVM\" id=\"sdPAttributes\" value=\"");
      out.print(sdPAttributesLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sdPInstancesLSSVM\" id=\"sdPInstances\" value=\"");
      out.print(sdPInstancesLSSVM);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelLSSVM\" id=\"sLoadingDataExcelLSSVM\" value=\"");
      out.print(sLoadingDataExcelLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClickLSSVM\" id=\"sLoadingDataExcelClickLSSVM\" value=\"");
      out.print(sLoadingDataExcelClickLSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClick3LSSVM\" id=\"sLoadingDataExcelClick3LSSVM\" value=\"");
      out.print(sLoadingDataExcelClick3LSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClick4LSSVM\" id=\"sLoadingDataExcelClick4LSSVM\" value=\"");
      out.print(sLoadingDataExcelClick4LSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClick5LSSVM\" id=\"sLoadingDataExcelClick5LSSVM\" value=\"");
      out.print(sLoadingDataExcelClick5LSSVM);
      out.write("\"/>\n");
      out.write("                <input type=\"hidden\" name=\"sLoadingDataExcelClick6LSSVM\" id=\"sLoadingDataExcelClick6LSSVM\" value=\"");
      out.print(sLoadingDataExcelClick6LSSVM);
      out.write("\"/>\n");
      out.write("                \n");
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
      out.write("                <input type=\"hidden\" name=\"sPageControl\" id=\"sPageControl\" value=\"");
      out.print(sPageControl);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <center id=\"title\">\n");
      out.write("                    <font style=\"font-family: Palatino Linotype, Book Antiqua, Palatino, serif; font-size: 24pt\" color=\"#2F4F4F\">\n");
      out.write("                                <b>NiMOPS for Binary Classification</b>\n");
      out.write("                    </font>\n");
      out.write("                </center>\n");
      out.write("                <br>\n");
      out.write("                \n");
      out.write("                <div class=\"container boundary\">\n");
      out.write("                    <ul class=\"nav nav-tabs\">\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("\n");
      out.write("                <div class=\"tab-content\">\n");
      out.write("                    ");
 if (sPageControl.equals("1")) { 
      out.write("\n");
      out.write("                    <div id=\"processing\" class=\"tab-pane fade in active\">\n");
      out.write("                    ");
 } else { 
      out.write("\n");
      out.write("                    <div id=\"processing\" class=\"tab-pane fade in\">\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td style=\"width: 10%\">\n");
      out.write("                                    <a onclick=\"return previousscreenLSSVM();\" style=\"float:left;\">\n");
      out.write("                                        <font color=\"blue\" face=\"agency FB\" size=\"3\">\n");
      out.write("                                        &nbsp;&nbsp;&nbsp;<b><u><< BACK</u></b>\n");
      out.write("                                        </font>\n");
      out.write("                                    </a>                            \n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <div class=\"container boundary\" id=\"bottomform\">\n");
      out.write("                                        <h3><font face=\"Palatino Linotype, Book Antiqua, Palatino, serif\">I. Input Data Review and Run</font></h3>\n");
      out.write("                                    </div>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("\n");
      out.write("                        <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                        \n");
      out.write("                        ");
 if (sRunReportTable == "") { 
      out.write(" \n");
      out.write("                        <h6 id=\"bottompage\">\n");
      out.write("                            <img src=\"Logo-Space.png\" alt=\"     \" width=\"4\" height=\"5\">\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            ");
      out.write("\n");
      out.write("                        </h6>\n");
      out.write("\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                        ");
 
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
                                
      out.write("\n");
      out.write("                                <script>\n");
      out.write("                                    document.getElementById(\"ssResult01Name\").value = ssResult01Name;\n");
      out.write("                                    document.getElementById(\"ssResult02Name\").value = ssResult02Name;\n");
      out.write("                                    document.getElementById(\"ssResult03Name\").value = ssResult03Name;\n");
      out.write("                                    document.getElementById(\"ssResult04Name\").value = ssResult04Name;\n");
      out.write("                                    document.getElementById(\"ssResult05Name\").value = ssResult05Name;\n");
      out.write("                                    document.getElementById(\"ssResult06Name\").value = ssResult06Name;\n");
      out.write("                                </script>\n");
      out.write("\n");
      out.write("                                <script> \n");
      out.write("                                    var sCreate = document.getElementById(\"sCreate\"); \n");
      out.write("                                    sCreate = \"\";\n");
      out.write("                                    document.getElementById(\"sCreate\").value = sCreate; \n");
      out.write("                                </script>\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Running: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"4\">\n");
      out.write("                                            <input type=\"text\" name=\"ssResult01Name\" id=\"ssResult01Name\" size=\"75\" value=\"");
      out.print(ssResult01Name);
      out.write("\" readonly/>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... main output. </font>\n");
      out.write("                                            <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"ssResult05Name\" id=\"ssResult05Name\" value=\"");
      out.print(ssResult05Name);
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"ssResult06Name\" id=\"ssResult06Name\" value=\"");
      out.print(ssResult06Name);
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr> \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"4\">\n");
      out.write("                                            <input type=\"text\" name=\"ssResult02Name\" id=\"ssResult02Name\" size=\"75\" value=\"");
      out.print(ssResult02Name);
      out.write("\" readonly/> \n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... validation. </font>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");
 if (ssResult05Name != "") { 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                <td colspan=\"4\">\n");
      out.write("                                                <input type=\"text\" name=\"ssResult05Name\" id=\"ssResult05Name\" size=\"75\" value=\"");
      out.print(ssResult05Name);
      out.write("\" readonly/> \n");
      out.write("                                                <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... performance. </font>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"7\">\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr> \n");
      out.write("\n");
      out.write("                                        ");

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
                                            cols = line.split("\\t"); 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <b>Output:</b>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td align=\"right\"> Performance &nbsp; = &nbsp; </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[0]);
      out.write("\" readonly>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            </tr> \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td align=\"right\"> Penalty Parameter, C &nbsp; = &nbsp; </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[1]);
      out.write("\" readonly>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                            </tr> \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td align=\"right\"> Kernel Function Parameter, S &nbsp; = &nbsp; </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[2]);
      out.write("\" readonly>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                            </tr> \n");
      out.write("                                        ");
 }
                                        br.close(); 
      out.write("\n");
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"7\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"7\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                        ");

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
                                                
      out.write("\n");
      out.write("                                                    <td>\n");
      out.write("                                                        ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp; </td>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                            <td> &nbsp; </td>\n");
      out.write("                                            <td> &nbsp; </td>\n");
      out.write("                                        </tr> \n");
      out.write("                                        ");
 
                                        line = br.readLine();
                                        while (line != null) { 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                            ");

                                            cols = line.split("[,\\t]+");
                                            for (j=0; j<ncol; j++) {
                                                sDummy = cols[j];
                                                
      out.write("\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp; </td>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
 line = br.readLine();
                                        } 
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>    \n");
      out.write("                                    ");
 br.close(); 
      out.write(" \n");
      out.write("\n");
      out.write("                                    ");
 if (ssResult05Name != "") { 
      out.write("\n");
      out.write("                                        <table>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td> Fold No.</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td> Generation No.</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td> Mean Performance</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td> Best Performance</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                ");
 
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
      out.write("                                                ");
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
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                                </tr>\n");
      out.write("                                                ");
 line = br.readLine();
                                            } 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>    \n");
      out.write("                                        ");
 br.close();
                                    } 
      out.write("\n");
      out.write("                            ");
 } else {
                            if (sRRTShow != "") {  
                                if (sViewProceed == "") { 
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        var ssfilefileResult01 = document.getElementById(\"ssfilefileResult01\"); \n");
      out.write("                                        var ssfilefileResult02 = document.getElementById(\"ssfilefileResult02\"); \n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                    ");
 if (ssResult01 != "") { 
                                        ssfilefileResult01 = application.getRealPath("/") + ssResult01;
                                        ssResult01Name=ssfilefileResult01; 
                                    }
                                    else {
                                        ssfilefileResult01 = ssResult01Name;
                                    } 
      out.write("\n");
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        var ssResult01Name = document.getElementById(\"ssResult01Name\");\n");
      out.write("                                        document.getElementById(\"ssResult01Name\").value = ssResult01Name;\n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                    ");
 if (ssResult02 != "") {
                                        ssfilefileResult02 = application.getRealPath("/") + ssResult02;
                                        ssResult02Name=ssfilefileResult02; 
                                    }
                                    else {
                                        ssfilefileResult02 = ssResult02Name;
                                    } 
      out.write("\n");
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        var ssResult02Name = document.getElementById(\"ssResult02Name\");\n");
      out.write("                                        document.getElementById(\"ssResult02Name\").value = ssResult02Name;\n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        var ssResult03Name = document.getElementById(\"ssResult03Name\");\n");
      out.write("                                        var ssResult04Name = document.getElementById(\"ssResult04Name\"); \n");
      out.write("                                        var ssResult05Name = document.getElementById(\"ssResult05Name\"); \n");
      out.write("                                        var ssResult06Name = document.getElementById(\"ssResult06Name\"); \n");
      out.write("                                    </script> \n");
      out.write("\n");
      out.write("                                    ");
 //Main Result: 
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <b> Running: </b>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"4\">\n");
      out.write("                                            <input type=\"text\" name=\"ssResult01Name\" id=\"ssResult01Name\" size=\"75\" value=\"");
      out.print(ssResult01Name);
      out.write("\" readonly/>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... main output. </font>\n");
      out.write("                                            <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"ssResult05Name\" id=\"ssResult05Name\" value=\"");
      out.print(ssResult05Name);
      out.write("\" />\n");
      out.write("                                            <input type=\"hidden\" name=\"ssResult06Name\" id=\"ssResult06Name\" value=\"");
      out.print(ssResult06Name);
      out.write("\" />\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr> \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                            <td colspan=\"4\">\n");
      out.write("                                            <input type=\"text\" name=\"ssResult02Name\" id=\"ssResult02Name\" size=\"75\" value=\"");
      out.print(ssResult02Name);
      out.write("\" readonly/> \n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... validation. </font>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");
 if (ssResult05Name != "") { 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                                <td colspan=\"4\">\n");
      out.write("                                                <input type=\"text\" name=\"ssResult05Name\" id=\"ssResult05Name\" size=\"75\" value=\"");
      out.print(ssResult05Name);
      out.write("\" readonly/> \n");
      out.write("                                                <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ... performance. </font>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"7\">\n");
      out.write("                                                &nbsp;\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr> \n");
      out.write("\n");
      out.write("                                        ");

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
                                            cols = line.split("\\t"); 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <b>Output:</b>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td align=\"right\"> Performance &nbsp; = &nbsp; </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[0]);
      out.write("\" readonly>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            </tr> \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td align=\"right\"> Penalty Parameter, C &nbsp; = &nbsp; </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[1]);
      out.write("\" readonly>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                            </tr> \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td align=\"right\"> Kernel Function Parameter, S &nbsp; = &nbsp; </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <input type=\"text\" size=\"10\" value=\"");
      out.print(cols[2]);
      out.write("\" readonly>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                                <td> &nbsp; </td>\n");
      out.write("                                            </tr> \n");
      out.write("                                        ");
 }
                                        br.close(); 
      out.write("\n");
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"7\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"7\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("\n");
      out.write("                                    ");
 //Validation Result: 
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                        ");

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
                                                
      out.write("\n");
      out.write("                                                    <td>\n");
      out.write("                                                        ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp; </td>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                            <td> &nbsp; </td>\n");
      out.write("                                            <td> &nbsp; </td>\n");
      out.write("                                        </tr> \n");
      out.write("                                        ");
 
                                        line = br.readLine();
                                        while (line != null) { 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                            ");

                                            cols = line.split("[,\\t]+");
                                            for (j=0; j<ncol; j++) {
                                                sDummy = cols[j];
                                                
      out.write("\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp; </td>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
 line = br.readLine();
                                        } 
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                        </tr>\n");
      out.write("                                        ");
 br.close(); 
      out.write(" \n");
      out.write("                                    </table>    \n");
      out.write("\n");
      out.write("                                    ");
 //Performance Result: 
      out.write("\n");
      out.write("                                    ");
 if (ssResult05Name != "") { 
      out.write("\n");
      out.write("                                        <table>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td> Fold No.</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td> Generation No.</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td> Mean Performance</td>\n");
      out.write("                                                <td>&nbsp;</td>\n");
      out.write("                                                <td> Best Performance</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                                ");
 
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
      out.write("                                                ");
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
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp; </td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                                </tr>\n");
      out.write("                                                ");
 line = br.readLine();
                                            } 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td colspan=\"6\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> \n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
 br.close(); 
      out.write("\n");
      out.write("                                        </table>    \n");
      out.write("                                    ");
 } 
      out.write("\n");
      out.write("                                ");
 } else { 
                                    //Running: 
      out.write("\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            ");
 } else {
                                //header: 
      out.write("\n");
      out.write("                                    <table>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b> Running: </b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> Base output file name (eg. Result) </font>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <input type=\"text\" name=\"sBaseFileName\" id=\"sBaseFileName\" size=\"20\" value=\"");
      out.print(sBaseFileName);
      out.write("\"> \n");
      out.write("                                        </td>\n");
      out.write("                                        <td colspan=\"2\">\n");
      out.write("                                            &nbsp;&nbsp; - - -\n");
      out.write("                                            <a onclick=\"return createoutputfiles(1);\">\n");
      out.write("                                                <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>Accept</u>, </font>\n");
      out.write("                                            </a>\n");
      out.write("                                            <font color=\"teal\" face=\"tahoma\" size=\"2\"> order number and .txt will be automatically added. </font>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr> \n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                            &nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                    </tr> \n");
      out.write("                                    <tr>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"file\" name=\"ssResult01\" id=\"ssResult01\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        <input type=\"text\" name=\"ssResult01Name\" id=\"ssResult01Name\" size=\"60\" value=\"");
      out.print(ssResult01Name);
      out.write("\" readonly/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;&nbsp; - - - \n");
      out.write("                                        <a onclick=\"return showsummaryreport(11);\">\n");
      out.write("                                        <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                        <u>View Output</u></font></a>\n");
      out.write("                                        &nbsp;&nbsp; \n");
      out.write("                                        <a onclick=\"return showsummaryreport(12);\">\n");
      out.write("                                        <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                        <u>Start Running</u></font></a>\n");
      out.write("                                    </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>    \n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        &nbsp;<input type=\"file\" name=\"ssResult02\" id=\"ssResult02\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td colspan=\"2\">\n");
      out.write("                                        <input type=\"text\" name=\"ssResult02Name\" id=\"ssResult02Name\" size=\"60\" value=\"");
      out.print(ssResult02Name);
      out.write("\" readonly/>\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult05Name\" id=\"ssResult05Name\" value=\"");
      out.print(ssResult05Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult06Name\" id=\"ssResult06Name\" value=\"");
      out.print(ssResult06Name);
      out.write("\" />\n");
      out.write("                                    </td>\n");
      out.write("                                </tr></table>\n");
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        //alert(\"Aha1 ...!\");\n");
      out.write("                                        var sBaseFileNameCO = document.getElementById(\"sBaseFileNameCO\");\n");
      out.write("                                        if (sBaseFileNameCO !== \"\") {\n");
      out.write("                                            var sBaseFileName = document.getElementById(\"sBaseFileName\");\n");
      out.write("                                            sBaseFileName = sBaseFileNameCO;\n");
      out.write("                                            document.getElementById(\"sBaseFileName\").value = sBaseFileNameCO.value;\n");
      out.write("                                        }\n");
      out.write("                                    </script>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 2) {
                            if (sRRTShow != "") { 
                                
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                    var ssfilefileResult03 = document.getElementById(\"ssfilefileResult03\");\n");
      out.write("                                    </script>\n");
      out.write("                                ");

                                if (ssResult03 != "") {
                                    ssfilefileResult03 = application.getRealPath("/") + ssResult03;
                                    ssResult03Name=ssfilefileResult03; 
                                }
                                else {
                                    ssfilefileResult03 = ssResult03Name;
                                }
                                
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        var ssResult03Name = document.getElementById(\"ssResult03Name\");\n");
      out.write("                                        document.getElementById(\"ssResult03Name\").value = ssResult03Name;\n");
      out.write("                                    </script>\n");
      out.write("                                ");

                                /*
                                out.println("<p>");
                                out.println("sReportFileNameTXT = "+sReportFileNameTXT);
                                out.println("sfilefileTXT = "+sfilefileTXT);
                                */
                                
      out.write("\n");
      out.write("\n");
      out.write("                                <table>\n");
      out.write("                                <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b>Analysis:</b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                <input type=\"text\" name=\"ssResult03Name\" id=\"ssResult03Name\" size=\"75\" value=\"");
      out.print(ssResult03Name);
      out.write("\" readonly/>\n");
      out.write("                                <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                <input type=\"hidden\" name=\"ssResult05Name\" id=\"ssResult05Name\" value=\"");
      out.print(ssResult05Name);
      out.write("\" />\n");
      out.write("                                <input type=\"hidden\" name=\"ssResult06Name\" id=\"ssResult06Name\" value=\"");
      out.print(ssResult06Name);
      out.write("\" />\n");
      out.write("                                <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                </td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");

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
                                    
      out.write(" \n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                    <td> &nbsp; </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <b>Output:</b>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td> &nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <h4> ");
      out.print(line);
      out.write(" </h4>\n");
      out.write("                                    </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");
 // next line
                                    line = br.readLine();
                                    while (line != null) { 
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                        <td> &nbsp; </td>\n");
      out.write("                                        <td> &nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                        <td> &nbsp;&nbsp;&nbsp;&nbsp; </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            ");
      out.print(line);
      out.write("\n");
      out.write("                                        </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");
 line = br.readLine();
                                    }
                                }
                                br.close(); 
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                                <table>\n");
      out.write("                                <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b>Analysis:</b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;<input type=\"file\" name=\"ssResult03\" id=\"ssResult03\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;<input type=\"text\" name=\"ssResult03Name\" id=\"ssResult03Name\" size=\"60\" value=\"");
      out.print(ssResult03Name);
      out.write("\" readonly/>\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult05Name\" id=\"ssResult05Name\" value=\"");
      out.print(ssResult05Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult06Name\" id=\"ssResult06Name\" value=\"");
      out.print(ssResult06Name);
      out.write("\" />\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;&nbsp; - - - \n");
      out.write("                                    <a onclick=\"return showsummaryreport(2);\">\n");
      out.write("                                    <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                    <u><b>OPEN</b></u></font></a>\n");
      out.write("                                    <font color=\"black\" face=\"tahoma\" size=\"2\">the report.\n");
      out.write("                                    </font>\n");
      out.write("                                </td>\n");
      out.write("                                </tr>\n");
      out.write("                                </table>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                        ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 3) { 
                            if (sRRTShow != "") { 
      out.write(" \n");
      out.write("                                <script>\n");
      out.write("                                    var ssfilefileResult04 = document.getElementById(\"ssfilefileResult04\");\n");
      out.write("                                </script>\n");
      out.write("                                ");

                                    if (ssResult04 != "") {
                                        ssfilefileResult04 = application.getRealPath("/") + ssResult04;
                                        ssResult04Name=ssfilefileResult04; 
                                    }
                                    else {
                                        ssfilefileResult04 = ssResult04Name;
                                    }
                                
      out.write("\n");
      out.write("                                <script>\n");
      out.write("                                    var ssResult04Name = document.getElementById(\"ssResult04Name\");\n");
      out.write("                                    document.getElementById(\"ssResult04Name\").value = ssResult04Name;\n");
      out.write("                                </script>\n");
      out.write("                                ");

                                    /*
                                    out.println("<p>");
                                    out.println("sReportFile = " + sReportFile);
                                    out.println("sfilefile = " + sfilefile);
                                    out.println("sReportFileName = " + sReportFileName);
                                    out.println("<br>");
                                    */
                                
      out.write("\n");
      out.write("\n");
      out.write("                                <table>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b> Summary: </b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td colspan=\"8\">\n");
      out.write("                                        <input type=\"text\" name=\"ssResult04Name\" id=\"ssResult04Name\" size=\"75\" value=\"");
      out.print(ssResult04Name);
      out.write("\" readonly/>\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult05Name\" id=\"ssResult05Name\" value=\"");
      out.print(ssResult05Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult06Name\" id=\"ssResult06Name\" value=\"");
      out.print(ssResult06Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b> Output: </b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <th>RMSE Learning</th>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <th>RMSE Test</th>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <th>MAE Learning</th>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <th>MAE Test</th>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <th>MAPE Learning</th>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <th>MAPE Test</th>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <th>R Learning</th>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <th>R Test</th>\n");
      out.write("                                    </tr>\n");
      out.write("\n");
      out.write("                                    ");

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
                                    while (line != null) { 
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            ");

                                            cols = line.split("[,\\t]+");
                                            for (j=0; j<ncol; j++) {
                                                sDummy = cols[j];
                                                
      out.write("\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(sDummy);
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td> &nbsp;&nbsp; </td>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");
 line = br.readLine();
                                    }
                                    br.close();
                                    
      out.write("\n");
      out.write("                                </table>\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                            <table><tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Summary: </b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"file\" name=\"ssResult04\" id=\"ssResult04\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;<input type=\"text\" name=\"ssResult04Name\" id=\"ssResult04Name\" size=\"60\" value=\"");
      out.print(ssResult04Name);
      out.write("\" readonly/>\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult05Name\" id=\"ssResult05Name\" value=\"");
      out.print(ssResult05Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult06Name\" id=\"ssResult06Name\" value=\"");
      out.print(ssResult06Name);
      out.write("\" />\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;&nbsp; - - - \n");
      out.write("                                    <a onclick=\"return showsummaryreport(3);\">\n");
      out.write("                                    <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                    <u><b>OPEN</b></u></font></a>\n");
      out.write("                                    <font color=\"black\" face=\"tahoma\" size=\"2\">the report.\n");
      out.write("                                    </font>\n");
      out.write("                                </td>\n");
      out.write("                            </tr></table>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                        ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 4) {
                            if (sRRTShow != "") { 
      out.write(" \n");
      out.write("                                <script>\n");
      out.write("                                    var ssfilefileResult05 = document.getElementById(\"ssfilefileResult05\");\n");
      out.write("                                </script>\n");
      out.write("                                ");

                                    if (ssResult05 != "") {
                                        ssfilefileResult05 = application.getRealPath("/") + ssResult05;
                                        ssResult05Name=ssfilefileResult05; 
                                    }
                                    else {
                                        ssfilefileResult05 = ssResult05Name;
                                    }
                                
      out.write("\n");
      out.write("                                <script>\n");
      out.write("                                    var ssResult05Name = document.getElementById(\"ssResult05Name\");\n");
      out.write("                                    document.getElementById(\"ssResult05Name\").value = ssResult05Name;\n");
      out.write("                                </script>\n");
      out.write("                                ");

                                    /*
                                    out.println("<p>");
                                    out.println("sReportFile = " + sReportFile);
                                    out.println("sfilefile = " + sfilefile);
                                    out.println("sReportFileName = " + sReportFileName);
                                    out.println("<br>");
                                    */
                                
      out.write("\n");
      out.write("\n");
      out.write("                                <table>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b> Graphic: </b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td colspan=\"8\">\n");
      out.write("                                        <input type=\"text\" name=\"ssResult05Name\" id=\"ssResult05Name\" size=\"75\" value=\"");
      out.print(ssResult05Name);
      out.write("\" readonly/>\n");
      out.write("                                        <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                        <a onclick=\"return showsummaryreport(6);\">\n");
      out.write("                                            <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>performance</u> </font> </a> &nbsp; \n");
      out.write("                                        ");
 if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                            if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 }
                                        } 
                                        else {
                                            
      out.write(' ');
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td colspan=\"8\">\n");
      out.write("                                        <input type=\"text\" name=\"ssResult06Name\" id=\"ssResult06Name\" size=\"75\" value=\"");
      out.print(ssResult06Name);
      out.write("\" readonly/>\n");
      out.write("                                        <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                        <a onclick=\"return showsummaryreport(5);\">\n");
      out.write("                                            <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>tracing path</u> </font> </a>\n");
      out.write("                                        ");
 if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                            if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 }
                                        } 
                                        else {
                                            
      out.write(' ');
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b> Output: </b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            ");
 // calling matlab graphic - performance
                                                int opt;
                                                opt = 0;
                                            
      out.write("\n");
      out.write("                                            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "SFALSSVRGraphServlet" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("opt", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(opt), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC1LSSVM), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC2LSSVM), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS1LSSVM), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS2LSSVM), request.getCharacterEncoding()), out, false);
      out.write(" \t\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                </table>\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                            <table><tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Graphic: </b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"file\" name=\"ssResult05\" id=\"ssResult05\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;<input type=\"text\" name=\"ssResult05Name\" id=\"ssResult05Name\" size=\"60\" value=\"");
      out.print(ssResult05Name);
      out.write("\" readonly/>\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;&nbsp; - - - \n");
      out.write("                                    <a onclick=\"return showsummaryreport(4);\">\n");
      out.write("                                    <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                    <u><b>VIEW</b></u></font></a>\n");
      out.write("                                    <font color=\"black\" face=\"tahoma\" size=\"2\">the graphs.\n");
      out.write("                                    </font>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"file\" name=\"ssResult06\" id=\"ssResult06\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;<input type=\"text\" name=\"ssResult06Name\" id=\"ssResult06Name\" size=\"60\" value=\"");
      out.print(ssResult06Name);
      out.write("\" readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            </table>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 5) {
                            if (sRRTShow != "") { 
      out.write(" \n");
      out.write("                                <script>\n");
      out.write("                                    var ssResult06Name = document.getElementById(\"ssResult06Name\");\n");
      out.write("                                </script>\n");
      out.write("                                ");

                                    /*
                                    out.println("<p>");
                                    out.println("sReportFile = " + sReportFile);
                                    out.println("sfilefile = " + sfilefile);
                                    out.println("sReportFileName = " + sReportFileName);
                                    out.println("<br>");
                                    */
                                
      out.write("\n");
      out.write("\n");
      out.write("                                <table>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b> Graphic: </b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td colspan=\"8\">\n");
      out.write("                                        <input type=\"text\" name=\"ssResult05Name\" id=\"ssResult05Name\" size=\"75\" value=\"");
      out.print(ssResult05Name);
      out.write("\" readonly/>\n");
      out.write("                                        <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                        <a onclick=\"return showsummaryreport(6);\">\n");
      out.write("                                            <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>performance</u> </font> </a> &nbsp; \n");
      out.write("                                        ");
 if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                            if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 }
                                        } 
                                        else {
                                            
      out.write(' ');
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td colspan=\"8\">\n");
      out.write("                                        <input type=\"text\" name=\"ssResult06Name\" id=\"ssResult06Name\" size=\"75\" value=\"");
      out.print(ssResult06Name);
      out.write("\" readonly/>\n");
      out.write("                                        <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                        <a onclick=\"return showsummaryreport(5);\">\n");
      out.write("                                            <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>tracing path</u> </font> </a>\n");
      out.write("                                        ");
 if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                            if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 }
                                        } 
                                        else {
                                            
      out.write(' ');
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b> Output: </b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            ");
 // calling matlab graphic - performance
                                                int opt;
                                                opt = 1;
                                            
      out.write("\n");
      out.write("                                            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "SFALSSVRGraphServlet" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("opt", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(opt), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC1LSSVM), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC2LSSVM), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS1LSSVM), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS2LSSVM), request.getCharacterEncoding()), out, false);
      out.write(" \t\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                </table>\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                            <table><tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Graphic: </b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"file\" name=\"ssResult05\" id=\"ssResult05\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;<input type=\"text\" name=\"ssResult05Name\" id=\"ssResult05Name\" size=\"60\" value=\"");
      out.print(ssResult05Name);
      out.write("\" readonly/>\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;&nbsp; - - - \n");
      out.write("                                    <a onclick=\"return showsummaryreport(4);\">\n");
      out.write("                                    <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                    <u><b>VIEW</b></u></font></a>\n");
      out.write("                                    <font color=\"black\" face=\"tahoma\" size=\"2\">the graphs.\n");
      out.write("                                    </font>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"file\" name=\"ssResult06\" id=\"ssResult06\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;<input type=\"text\" name=\"ssResult06Name\" id=\"ssResult06Name\" size=\"60\" value=\"");
      out.print(ssResult06Name);
      out.write("\" readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            </table>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        ");
 } else if ((int)Double.parseDouble(sRunReportTable) == 6) {
                            if (sRRTShow != "") { 
      out.write(" \n");
      out.write("                                <script>\n");
      out.write("                                    var ssResult05Name = document.getElementById(\"ssResult05Name\");\n");
      out.write("                                </script>\n");
      out.write("                                ");

                                    /*
                                    out.println("<p>");
                                    out.println("sReportFile = " + sReportFile);
                                    out.println("sfilefile = " + sfilefile);
                                    out.println("sReportFileName = " + sReportFileName);
                                    out.println("<br>");
                                    */
                                
      out.write("\n");
      out.write("\n");
      out.write("                                <table>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b> Graphic: </b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td colspan=\"8\">\n");
      out.write("                                        <input type=\"text\" name=\"ssResult05Name\" id=\"ssResult05Name\" size=\"75\" value=\"");
      out.print(ssResult05Name);
      out.write("\" readonly/>\n");
      out.write("                                        <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                        <a onclick=\"return showsummaryreport(6);\">\n");
      out.write("                                            <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>performance</u> </font> </a> &nbsp; \n");
      out.write("                                        ");
 if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                            if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 }
                                        } 
                                        else {
                                            
      out.write(' ');
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                        <input type=\"hidden\" name=\"sBaseFileName\" id=\"sBaseFileName\" value=\"");
      out.print(sBaseFileName);
      out.write("\">\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td colspan=\"8\">\n");
      out.write("                                        <input type=\"text\" name=\"ssResult06Name\" id=\"ssResult06Name\" size=\"75\" value=\"");
      out.print(ssResult06Name);
      out.write("\" readonly/>\n");
      out.write("                                        <font color=\"teal\" face=\"tahoma\" size=\"2\"> &nbsp; ...</font> \n");
      out.write("                                        <a onclick=\"return showsummaryreport(5);\">\n");
      out.write("                                            <font color=\"blue\" face=\"tahoma\" size=\"2\"> <u>tracing path</u> </font> </a>\n");
      out.write("                                        ");
 if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                            if (TORadioLSSVM.equals("TORadio3LSSVM")) { 
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 } else {
                                                
      out.write(' ');
      out.write("\n");
      out.write("                                            ");
 }
                                        } 
                                        else {
                                            
      out.write(' ');
      out.write("\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td colspan=\"11\">&nbsp;</td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <b> Output: </b>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            ");
 // calling matlab graphic - performance
                                                int opt;
                                                opt = 0;
                                            
      out.write("\n");
      out.write("                                            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "SFALSSVRGraphServlet" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("opt", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(opt), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC1LSSVM), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dC2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dC2LSSVM), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS1LSSVM), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("dS2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(dS2LSSVM), request.getCharacterEncoding()), out, false);
      out.write(" \t\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                </table>\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                            <table><tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Graphic: </b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"file\" name=\"ssResult05\" id=\"ssResult05\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;<input type=\"text\" name=\"ssResult05Name\" id=\"ssResult05Name\" size=\"60\" value=\"");
      out.print(ssResult05Name);
      out.write("\" readonly/>\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult01Name\" id=\"ssResult01Name\" value=\"");
      out.print(ssResult01Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult02Name\" id=\"ssResult02Name\" value=\"");
      out.print(ssResult02Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult03Name\" id=\"ssResult03Name\" value=\"");
      out.print(ssResult03Name);
      out.write("\" />\n");
      out.write("                                    <input type=\"hidden\" name=\"ssResult04Name\" id=\"ssResult04Name\" value=\"");
      out.print(ssResult04Name);
      out.write("\" />\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;&nbsp; - - - \n");
      out.write("                                    <a onclick=\"return showsummaryreport(4);\">\n");
      out.write("                                    <font color=\"blue\" face=\"tahoma\" size=\"2\">\n");
      out.write("                                    <u><b>VIEW</b></u></font></a>\n");
      out.write("                                    <font color=\"black\" face=\"tahoma\" size=\"2\">the graphs.\n");
      out.write("                                    </font>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"file\" name=\"ssResult06\" id=\"ssResult06\"/>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;<input type=\"text\" name=\"ssResult06Name\" id=\"ssResult06Name\" size=\"60\" value=\"");
      out.print(ssResult06Name);
      out.write("\" readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            </table>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        ");
 } 
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        ");
 //#1 displaying input data: 
                        if (sLoadingDataExcelClickLSSVM != "") { 
                        
      out.write("\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Run Data: </b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                        <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                    </a>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    1. Swarm and evolutionary parameters:&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    No. of fireflies = ");
      out.print(nf.format(nFireFliesLSSVM));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Max. generation = ");
      out.print(nf.format(nMaxGenerationLSSVM));
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    2. Attractiveness:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Beta min. = ");
      out.print(nf2.format(dMinBetaLSSVM));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Gamma = ");
      out.print(nf2.format(dGammaLSSVM));
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    3. Random movement:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Alpha = ");
      out.print(nf2.format(dAlphaLSSVM));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Adaptive inertia weight = ");
      out.print(nf2.format(dAIWeightLSSVM));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Tau = ");
      out.print(nf2.format(dTauLSSVM));
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    4. Logistic map:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Biotic potential, a = ");
      out.print(nf2.format(dBPotentialLSSVM));
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td colspan=\"2\">\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    5. Hyper-parameters:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Range of C = ");
      out.print(ndf.format(dC1LSSVM));
      out.write(" to\n");
      out.write("                                    ");
      out.print(ndf.format(dC2LSSVM));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Range of sigma = ");
      out.print(ndf.format(dS1LSSVM));
      out.write(" to\n");
      out.write("                                    ");
      out.print(ndf.format(dS2LSSVM));
      out.write("&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    6. Learning Option:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Training partition size = ");
      out.print(nf.format(dTrainingPSLSSVM));
      out.write(" (%)&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Validation partition size = ");
      out.print(nf.format(dValidationPSLSSVM));
      out.write(" (%)\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    7. Normalization Method:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");

                                    if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                                        sNormalRadioLSSVM = "Original value";
                                    }
                                    else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                                        sNormalRadioLSSVM = "Feature scaling";
                                    }
                                    
      out.write("\n");
      out.write("                                     ");
      out.print(sNormalRadioLSSVM);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td colspan=\"2\">\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    8. Objective Function (OF): \n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Classification accuracy\n");
      out.write("                                </td>\n");
      out.write("                                <td colspan=\"2\">\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    9. Stop Criterion:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");

                                    if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
                                        sSCRadioLSSVM = "Max. generation is reached";
                                        
      out.write(" \n");
      out.write("                                        ");
      out.print(sSCRadioLSSVM);
      out.write("\n");
      out.write("                                        ");

                                    }
                                    else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
                                        sSCRadioLSSVM = "last changes in OF value <";
                                        
      out.write(" \n");
      out.write("                                        ");
      out.print(nf.format(nLastChange1LSSVM));
      out.write(' ');
      out.print(sSCRadioLSSVM);
      out.write(' ');
      out.print(nf5.format(nLastChange2LSSVM));
      out.write("\n");
      out.write("                                        ");

                                    }
                                    else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {
                                        sSCRadioLSSVM = "Either criterion is reached";
                                        
      out.write(" \n");
      out.write("                                        ");
      out.print(sSCRadioLSSVM);
      out.write("\n");
      out.write("                                        ");

                                    }
                                    
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td colspan=\"2\">\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    10. Purpose:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");

                                    sPRadioLSSVM = "...";
                                    if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                        sPRadioLSSVM = "Evaluation";
                                        sDummy = "Learning Dataset : ";
                                    }
                                    else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                        sPRadioLSSVM = "Prediction";
                                        sDummy = "Learning DataSet : "; 
                                        sFileDataLSSVM = sLearningFileNameLSSVM;
                                        dAttributesLSSVM = snLDFAttributesLSSVM;
                                        dInstancesLSSVM = snLDFInstancesLSSVM;
                                        sPDummy = "Prediction Dataset : ";
                                        sPFileDataLSSVM = sPredictionFileNameLSSVM;
                                        dPAttributesLSSVM = snPDFAttributesLSSVM;
                                        dPInstancesLSSVM = snPDFInstancesLSSVM;
                                        sVariation = "5";
                                    }
                                    
      out.write("\n");
      out.write("                                    ");
      out.print(sPRadioLSSVM);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td colspan=\"2\">\n");
      out.write("                                    &nbsp;&nbsp;&nbsp;\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    11. Test Option: \n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");

                                    sTORadioLSSVM = "...";
                                    if (TORadioLSSVM.equals("TORadio2LSSVM")) { 
                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) { 
      out.write("\n");
      out.write("                                            Hold-out = ");
      out.print(nf.format(dHoldOutLSSVM));
      out.write(" (%) \n");
      out.write("                                            ");
 
                                            sDummy = "Learning Dataset : ";
                                            sFileDataLSSVM = sFileNameLSSVM;
                                            dAttributesLSSVM = snDFAttributesLSSVM;
                                            dInstancesLSSVM = snDFInstancesLSSVM;
                                            sVariation = "2";
                                            sPFileDataLSSVM = "";
                                            dPAttributesLSSVM = "0";
                                            dPInstancesLSSVM = "0";
                                        }
                                        else if (PRadioLSSVM.equals("PRadio2LSSVM")) { 
      out.write(" \n");
      out.write("                                            -\n");
      out.write("                                        ");
 }
                                    }
                                    else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) { 
      out.write("\n");
      out.write("                                            Cross-validation = ");
      out.print(nf.format(dCrossValidationLSSVM));
      out.write(" (folds)\n");
      out.write("                                            ");

                                            sDummy = "Learning Dataset : ";
                                            sFileDataLSSVM = sFileNameLSSVM;
                                            dAttributesLSSVM = snDFAttributesLSSVM;
                                            dInstancesLSSVM = snDFInstancesLSSVM;
                                            sVariation = "3";
                                            sPFileDataLSSVM = "";
                                            dPAttributesLSSVM = "0";
                                            dPInstancesLSSVM = "0";
                                        }
                                        else if (PRadioLSSVM.equals("PRadio2LSSVM")) { 
      out.write("\n");
      out.write("                                            -\n");
      out.write("                                        ");
 }
                                    }
                                    else {
                                        if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                                            if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                sTORadioLSSVM = "Use data file";
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
                                                sTORadioLSSVM = "Use test data file";
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
                                        } 
      out.write("\n");
      out.write("\n");
      out.write("                                        ");
      out.print(sTORadioLSSVM);
      out.write("\n");
      out.write("\n");
      out.write("                                    ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td colspan=\"2\">\n");
      out.write("                                    <b> Run variation # ");
      out.print(sVariation);
      out.write(" </b>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"8\">&nbsp;</td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(sDummy);
      out.write(' ');
      out.print(sFileDataLSSVM);
      out.write(" \n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    No. of Attributes = ");
      out.print(nf.format(Double.parseDouble(dAttributesLSSVM)));
      out.write("  \n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                     No. of Instances = ");
      out.print(nf.format(Double.parseDouble(dInstancesLSSVM)));
      out.write("  \n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                ");
if (sVariation == "4" || sVariation == "5") {
      out.write("\n");
      out.write("                                    <td>&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");
      out.print(sPDummy);
      out.write(' ');
      out.print(sPFileDataLSSVM);
      out.write(" \n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        No. of Attributes = ");
      out.print(nf.format(Double.parseDouble(dPAttributesLSSVM)));
      out.write("  \n");
      out.write("                                    </td>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                                    <td>\n");
      out.write("                                         No. of Instances = ");
      out.print(nf.format(Double.parseDouble(dPInstancesLSSVM)));
      out.write("  \n");
      out.write("                                    </td>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("\n");
      out.write("                        ");
 //#2 displaying data file 
                        } else if (sLoadingDataExcelClick3LSSVM != "") { 
                        
      out.write("\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Data File: </b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                        <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                    </a>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                            ");

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
                                    
      out.write("\n");
      out.write("                                            <td align=\"center\">\n");
      out.write("                                                No.\n");
      out.write("                                            </td>\n");
      out.write("                                            ");
 for (j = 0; j < ncols1; j += 1) { 
      out.write(" \n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    ");
      out.print(headers[j]);
      out.write("\n");
      out.write("                                                </td>\n");
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
      out.write("                                                ");
 for (j = 0; j < ncols1; j += 1) { 
      out.write(" \n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(nf3.format(Double.parseDouble(Dataraw[i][j])));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                            <td align=\"left\">\n");
      out.write("                                                <font color='red'>\n");
      out.write("                                                &nbsp;&nbsp;Data file not available ... !\n");
      out.write("                                                </font>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                                </table>\n");
      out.write("\n");
      out.write("                        ");
 //#3 displaying test data file 
                        } else if (sLoadingDataExcelClick4LSSVM != "") { 
                        
      out.write("\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Test Data File: </b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                        <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                    </a>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                            ");

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
                                    
      out.write("\n");
      out.write("                                            <td align=\"center\">\n");
      out.write("                                                No.\n");
      out.write("                                            </td>\n");
      out.write("                                            ");
 for (j = 0; j < ncols2; j += 1) { 
      out.write("\n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    ");
      out.print(headers[j]);
      out.write("\n");
      out.write("                                                </td>\n");
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
      out.write("                                                ");
 for (j = 0; j < ncols2; j += 1) { 
      out.write("\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(nf3.format(Double.parseDouble(Datatest[i][j])));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                            <td align=\"left\">\n");
      out.write("                                                <font color='red'>\n");
      out.write("                                                &nbsp;&nbsp;Test data file not available ... !\n");
      out.write("                                                </font>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                                </table>\n");
      out.write("\n");
      out.write("                        ");
 //#4 displaying learning data file 
                        } else if (sLoadingDataExcelClick5LSSVM != "") { 
                        
      out.write("\n");
      out.write("                            <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Learning Data File: </b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                        <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                    </a>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                            ");
 
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
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    ");
      out.write("\n");
      out.write("                                            <td align=\"center\">\n");
      out.write("                                                No.\n");
      out.write("                                            </td>\n");
      out.write("                                            ");
 for (j = 0; j < ncols3; j += 1) { 
      out.write("\n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    ");
      out.print(headers[j]);
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                        <td colspan=\"15\">\n");
      out.write("                                            &nbsp;\n");
      out.write("                                        </td>\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        ");
 for (i = 0; i < nrows3; i += 1) { 
      out.write("\n");
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
      out.write("                                                ");
 for (j = 0; j < ncols3; j += 1) { 
      out.write("\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.write("\n");
      out.write("\n");
      out.write("                                                        ");
      out.print(nf3.format(Double.parseDouble(Datatrains[i][j])));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                            <td align=\"left\">\n");
      out.write("                                                <font color='red'>\n");
      out.write("                                                &nbsp;&nbsp;Learning data file not available ... !\n");
      out.write("                                                </font>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                                </table>\n");
      out.write("\n");
      out.write("                        ");
 //#5 displaying prediction data file 
                        } else if (sLoadingDataExcelClick6LSSVM != "") { 
                        
      out.write("\n");
      out.write("                            <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    &nbsp;\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <b> Predicted Data File: </b>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <a onclick=\"return closesummarydata2();\">\n");
      out.write("                                        <img src=\"Icon-2ArrowLeft.png\" alt=\"...\" width=\"11\" height=\"17\">\n");
      out.write("                                    </a>\n");
      out.write("                                </td>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                            ");

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
                                    
      out.write("\n");
      out.write("                                            <td align=\"center\">\n");
      out.write("                                                No.\n");
      out.write("                                            </td>\n");
      out.write("                                            ");
 for (j = 0; j < ncols4; j += 1) { 
      out.write("\n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    ");
      out.print(headers[j]);
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        ");
 for (i = 0; i < nrows4; i += 1) { 
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                            <td>&nbsp;</td>\n");
      out.write("                                                <td align=\"center\">\n");
      out.write("                                                    ");
      out.print(i);
      out.write("\n");
      out.write("                                                </td> \n");
      out.write("                                                ");
 for (j = 0; j < ncols4; j += 1) { 
      out.write("\n");
      out.write("                                                    <td align=\"right\">\n");
      out.write("                                                        ");
      out.print(nf3.format(Double.parseDouble(Datapres[i][j])));
      out.write("\n");
      out.write("                                                    </td>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        ");
 } 
      out.write("\n");
      out.write("                                ");
 } else { 
      out.write("\n");
      out.write("                                            <td align=\"left\">\n");
      out.write("                                                <font color='red'>\n");
      out.write("                                                &nbsp;&nbsp;Prediction data file not available ... !\n");
      out.write("                                                </font>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                                </table>\n");
      out.write("\n");
      out.write("                        ");
 } else { 
      out.write("\n");
      out.write("                            ");
      out.write("\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"bs-example\">\n");
      out.write("                            <div class=\"panel panel-default\">\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <div class=\"container boundary\">\n");
      out.write("                                        <h3>Model Settings</h3>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Swarm and evolutionary parameters:</div>\n");
      out.write("                                            <div class=\"col-md-3\">No. of fireflies = ");
      out.print(nf.format(nFireFliesLSSVM));
      out.write("</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\"></div>\n");
      out.write("                                            <div class=\"col-md-3\">Max. generation = ");
      out.print(nf.format(nMaxGenerationLSSVM));
      out.write("</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Attractiveness:</div>\n");
      out.write("                                            <div class=\"col-md-3\">Beta min. = ");
      out.print(nf2.format(dMinBetaLSSVM));
      out.write("</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\"></div>\n");
      out.write("                                            <div class=\"col-md-3\">Gamma = ");
      out.print(nf2.format(dGammaLSSVM));
      out.write("</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Random movement:</div>\n");
      out.write("                                            <div class=\"col-md-3\">Alpha = ");
      out.print(nf2.format(dAlphaLSSVM));
      out.write("</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\"></div>\n");
      out.write("                                            <div class=\"col-md-3\">Adaptive inertia weight = ");
      out.print(nf2.format(dAIWeightLSSVM));
      out.write("</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\"></div>\n");
      out.write("                                            <div class=\"col-md-3\">Tau = ");
      out.print(nf2.format(dTauLSSVM));
      out.write("</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Logistic map:</div>\n");
      out.write("                                            <div class=\"col-md-3\">Biotic potential, a = ");
      out.print(nf2.format(dBPotentialLSSVM));
      out.write("</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Hyper-parameters:</div>\n");
      out.write("                                            <div class=\"col-md-3\">Range of C = ");
      out.print(ndf.format(dC1LSSVM));
      out.write(" to ");
      out.print(ndf.format(dC2LSSVM));
      out.write("</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\"></div>\n");
      out.write("                                            <div class=\"col-md-4\">Range of sigma = ");
      out.print(ndf.format(dS1LSSVM));
      out.write(" to ");
      out.print(ndf.format(dS2LSSVM));
      out.write("</div>\n");
      out.write("                                        </div><br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Learning Option:</div>\n");
      out.write("                                            <div class=\"col-md-4\">Training partition size = ");
      out.print(nf.format(dTrainingPSLSSVM));
      out.write(" (%)</div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\"></div>\n");
      out.write("                                            <div class=\"col-md-4\">Validation partition size = ");
      out.print(nf.format(dValidationPSLSSVM));
      out.write(" (%)</div>\n");
      out.write("                                        </div><br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Normalization Method:</div>\n");
      out.write("                                            <div class=\"col-md-4\">\n");
      out.write("                                                ");

                                                if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
                                                    sNormalRadioLSSVM = "Original value";
                                                }
                                                else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
                                                    sNormalRadioLSSVM = "Feature scaling";
                                                }
                                                
      out.write("\n");
      out.write("                                                ");
      out.print(sNormalRadioLSSVM);
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </div><br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Stop Criterion:</div>\n");
      out.write("                                            <div class=\"col-md-3\">\n");
      out.write("                                                ");

                                                if (SCRadioLSSVM.equals("SCRadio1LSSVM")) {
                                                    sSCRadioLSSVM = "Max. generation is reached";
                                                    
      out.write(" \n");
      out.write("                                                    ");
      out.print(sSCRadioLSSVM);
      out.write("\n");
      out.write("                                                    ");

                                                }
                                                else if (SCRadioLSSVM.equals("SCRadio2LSSVM")) {
                                                    sSCRadioLSSVM = "last changes in OF value <";
                                                    
      out.write(" \n");
      out.write("                                                    ");
      out.print(nf.format(nLastChange1LSSVM));
      out.write(' ');
      out.print(sSCRadioLSSVM);
      out.write(' ');
      out.print(nf5.format(nLastChange2LSSVM));
      out.write("\n");
      out.write("                                                    ");

                                                }
                                                else if (SCRadioLSSVM.equals("SCRadio3LSSVM")) {
                                                    sSCRadioLSSVM = "Either criterion is reached";
                                                    
      out.write(" \n");
      out.write("                                                    ");
      out.print(sSCRadioLSSVM);
      out.write("\n");
      out.write("                                                    ");

                                                }
                                                
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </div><br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Purpose:</div>\n");
      out.write("                                            <div class=\"col-md-3\">\n");
      out.write("                                                ");

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
                                                
      out.write("\n");
      out.write("                                                ");
      out.print(sPRadioLSSVM);
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </div><br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">Test Option:</div>\n");
      out.write("                                            <div class=\"col-md-4\">\n");
      out.write("                                                ");

                                                    sTORadioLSSVM = "...";
                                                    if (TORadioLSSVM.equals("TORadio2LSSVM")) { 
                                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) { 
      out.write("\n");
      out.write("                                                            Hold-out = ");
      out.print(nf.format(dHoldOutLSSVM));
      out.write(" (%) \n");
      out.write("                                                            ");
 
                                                            sDummy = "Learning Dataset : ";
                                                            sFileDataLSSVM = sFileNameLSSVM;
                                                            dAttributesLSSVM = snDFAttributesLSSVM;
                                                            dInstancesLSSVM = snDFInstancesLSSVM;
                                                            sVariation = "2";
                                                            sPFileDataLSSVM = "";
                                                            dPAttributesLSSVM = "0";
                                                            dPInstancesLSSVM = "0";
                                                        }
                                                        else if (PRadioLSSVM.equals("PRadio2LSSVM")) { 
      out.write(" \n");
      out.write("                                                            -\n");
      out.write("                                                        ");
 }
                                                    }
                                                    else if (TORadioLSSVM.equals("TORadio3LSSVM")) {
                                                        if (PRadioLSSVM.equals("PRadio1LSSVM")) { 
      out.write("\n");
      out.write("                                                            Cross-validation = ");
      out.print(nf.format(dCrossValidationLSSVM));
      out.write(" (folds)\n");
      out.write("                                                            ");

                                                            sDummy = "Learning Dataset : ";
                                                            sFileDataLSSVM = sFileNameLSSVM;
                                                            dAttributesLSSVM = snDFAttributesLSSVM;
                                                            dInstancesLSSVM = snDFInstancesLSSVM;
                                                            sVariation = "3";
                                                            sPFileDataLSSVM = "";
                                                            dPAttributesLSSVM = "0";
                                                            dPInstancesLSSVM = "0";
                                                        }
                                                        else if (PRadioLSSVM.equals("PRadio2LSSVM")) { 
      out.write("\n");
      out.write("                                                            -\n");
      out.write("                                                        ");
 }
                                                    }
                                                    else {
                                                        if (TORadioLSSVM.equals("TORadio1LSSVM")) {
                                                            if (PRadioLSSVM.equals("PRadio1LSSVM")) {
                                                                sTORadioLSSVM = "Use data file";
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
                                                                sTORadioLSSVM = "Use test data file";
                                                                sDummy = "Learning Dataset : ";
                                                                sFileDataLSSVM = sFileNameLSSVM;
                                                                dAttributesLSSVM = snDFAttributesLSSVM;
                                                                dInstancesLSSVM = snDFInstancesLSSVM; 
                                                                sPDummy = "Test DataSet : ";
                                                                sPFileDataLSSVM = sTestFileNameLSSVM;
                                                                dPAttributesLSSVM = snTDFAttributesLSSVM; 
                                                                dPInstancesLSSVM = snTDFInstancesLSSVM; 
                                                                sVariation = "4";
                                                            }
                                                            else if (PRadioLSSVM.equals("PRadio2LSSVM")) {
                                                                sTORadioLSSVM = "-";
                                                            }
                                                        } 
      out.write("\n");
      out.write("\n");
      out.write("                                                    ");
      out.print(sTORadioLSSVM);
      out.write("\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-2\"><b> Run variation # ");
      out.print(sVariation);
      out.write(" </b></div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"bs-example\">\n");
      out.write("                            <div class=\"panel panel-default\">\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <div class=\"container boundary\">\n");
      out.write("                                        <h3>Dataset</h3>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\"><h4>");
      out.print(sDummy);
      out.write("</h4></div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">");
      out.print(sFileDataLSSVM);
      out.write("</div> \n");
      out.write("                                            <div class=\"col-md-2\">No. of Attributes = ");
      out.print(nf.format(Double.parseDouble(dAttributesLSSVM)));
      out.write("</div>\n");
      out.write("                                            <div class=\"col-md-3\">No. of Instances = ");
      out.print(nf.format(Double.parseDouble(dInstancesLSSVM)));
      out.write("</div>\n");
      out.write("                                        </div><br>\n");
      out.write("                                        ");
if (sVariation == "4" || sVariation == "5") {
      out.write("\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-4\"><h4>");
      out.print(sPDummy);
      out.write("</h4></div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-4\">");
      out.print(sFileDataLSSVM);
      out.write("</div>\n");
      out.write("                                                <div class=\"col-md-2\">No. of Attributes = ");
      out.print(nf.format(Double.parseDouble(dPAttributesLSSVM)));
      out.write("</div>\n");
      out.write("                                                <div class=\"col-md-3\">No. of Instances = ");
      out.print(nf.format(Double.parseDouble(dPInstancesLSSVM)));
      out.write("</div>\n");
      out.write("                                            </div>\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("                                    </div><br>\n");
      out.write("                                    <div class=\"container boundary\" id=\"view\">\n");
      out.write("                                        <h4>View Dataset</h4>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            ");
 if (PRadioLSSVM.equals("PRadio1LSSVM")) { 
      out.write("\n");
      out.write("                                                <div class=\"col-md-2\">\n");
      out.write("                                                    <a onclick=\"return viewdataset(1);\">\n");
      out.write("                                                        <font color=\"blue\">\n");
      out.write("                                                        <u>Learning Dataset</u>\n");
      out.write("                                                        </font>\n");
      out.write("                                                    </a>\n");
      out.write("                                                </div>\n");
      out.write("                                                ");
 if (TORadioLSSVM.equals("TORadio4LSSVM")) { 
      out.write(" \n");
      out.write("                                                    <div class=\"col-md-3\">\n");
      out.write("                                                        <a onclick=\"return viewdataset(2);\">\n");
      out.write("                                                            <font color=\"blue\">\n");
      out.write("                                                            <u>Test Dataset</u>\n");
      out.write("                                                            </font>\n");
      out.write("                                                        </a>\n");
      out.write("                                                    </div>\n");
      out.write("                                                ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                                            ");
 } else if (PRadioLSSVM.equals("PRadio2LSSVM")) { 
      out.write(" \n");
      out.write("                                                <div class=\"col-md-2\">\n");
      out.write("                                                    <a onclick=\"return viewdataset(3);\">\n");
      out.write("                                                        <font color=\"blue\">\n");
      out.write("                                                        <u>Learning Dataset</u>\n");
      out.write("                                                        </font>\n");
      out.write("                                                    </a> \n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-3\">\n");
      out.write("                                                    <a onclick=\"return viewdataset(4);\">\n");
      out.write("                                                        <font color=\"blue\">\n");
      out.write("                                                        <u>Prediction Dataset</u>\n");
      out.write("                                                        </font>\n");
      out.write("                                                    </a> \n");
      out.write("                                                </div>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("\n");
      out.write("                            <center>\n");
      out.write("                                <button type=\"button\" onclick=\"return rundata2(1);\" class=\"btn btn-primary\">Run</button>\n");
      out.write("                            </center>\n");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <script>\n");
      out.write("                            window.scrollTo(0,document.getElementById(\"view\").offsetTop);\n");
      out.write("                        </script>    \n");
      out.write("\n");
      out.write("                        \n");
      out.write("                    <br>\n");
      out.write("                                    \n");
      out.write("                    <center>\n");
      out.write("                        <button type=\"button\" onclick=\"return rundata2(1);\" class=\"btn btn-primary\">Run</button>\n");
      out.write("                    </center>\n");
      out.write("\n");
      out.write("                    <br>\n");
      out.write("                \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    ");
 if (sPageControl.equals("2")) { 
      out.write("\n");
      out.write("                    <div id=\"processing\" class=\"tab-pane fade in active\">\n");
      out.write("                    ");
 } else { 
      out.write("\n");
      out.write("                    <div id=\"results\" class=\"tab-pane fade in\">\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <br>\n");
      out.write("                            <br>\n");
      out.write("                            <table>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        <div title=\"Go Back\" class=\"container boundary\" onclick=\"changetab(1)\">\n");
      out.write("                                            <h3><font face=\"Palatino Linotype, Book Antiqua, Palatino, serif\">I. Input Data Review and Run</font></h3>\n");
      out.write("                                        </div>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        <div class=\"container boundary\">\n");
      out.write("                                            <h3><font face=\"Palatino Linotype, Book Antiqua, Palatino, serif\">II. The Results</font></h3>\n");
      out.write("                                        </div>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
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
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"Optimum\">Main results - Optimum hyper-parameters</font>\n");
      out.write("                                        <a href=\"#Partition\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"Partition\">Hyper-parameters; Performances of training and validation partitions</font>\n");
      out.write("                                        <a href=\"#Optimum\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#Report\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"Report\">Analysis report</font>\n");
      out.write("                                        <a href=\"#Partition\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#Performance\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"Performance\">Learning and test performances; Test dataset and predicted values</font>\n");
      out.write("                                        <a href=\"#Report\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                    </center>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
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
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"VPDataset\">Prediction graph of validation partition from learning dataset</font>\n");
      out.write("                                        <a href=\"#TPDataset\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#LDataset\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"LDataset\">Prediction graph of learning dataset</font>\n");
      out.write("                                        <a href=\"#VPDataset\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#TDataset\"><span class=\"glyphicon glyphicon-menu-right\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                    </center>\n");
      out.write("                                    \n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\" id=\"TDataset\">Prediction graph of test dataset</font>\n");
      out.write("                                        <a href=\"#LDataset\"><span class=\"glyphicon glyphicon-menu-left\"></span></a>\n");
      out.write("                                        <a href=\"#Menu\"><span class=\"glyphicon glyphicon-menu-hamburger\"></span></a>\n");
      out.write("                                        <br>\n");
      out.write("                                    </center>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div id=\"PTGraph\" class=\"tab-pane fade in\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\">Performance Trajectory Graph of Test Dataset</font>\n");
      out.write("                                    </center>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div id=\"TPGraph\" class=\"tab-pane fade in\">\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <center>\n");
      out.write("                                        <font size=\"4\">Tracing Path Graph of Test Dataset</font>\n");
      out.write("                                    </center>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <br>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <br>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                            \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <div class=\"scrollToTop\">\n");
      out.write("                    <img src=\"arrowup.JPG\" alt=\"...\" width=\"18\">  \n");
      out.write("                </div>\n");
      out.write("            </form>\n");
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
