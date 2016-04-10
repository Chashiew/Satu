/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//import java.io.*;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

import java.io.FileReader;

//import java.text.*;
//import java.util.*;

//import javax.servlet.*;
import javax.servlet.Servlet;
import javax.servlet.ServletException;

//import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.logging.Level;
import java.util.logging.Logger;

import com.mathworks.toolbox.javabuilder.MWArray;
import com.mathworks.toolbox.javabuilder.MWClassID;
import com.mathworks.toolbox.javabuilder.MWException;
import com.mathworks.toolbox.javabuilder.MWJavaObjectRef;
import com.mathworks.toolbox.javabuilder.MWNumericArray;
import com.mathworks.toolbox.javabuilder.webfigures.WebFigure;
import com.mathworks.toolbox.javabuilder.webfigures.WebFigureHtmlGenerator;

import ProgramSFALSSVM.SFALSSVMClass;

public class SFALSSVMServlet extends HttpServlet {

    //#1
    private static final long serialVersionUID = 1L;
    
    //#2
    private SFALSSVMClass cSFALSSVM = null;

    private HttpServletRequest servletRequest;

    public SFALSSVMServlet() {
        super();
        try {
            cSFALSSVM = new SFALSSVMClass();
        } catch (MWException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void destroy() {
        super.destroy();
        cSFALSSVM.dispose();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        
        String vpath = request.getParameter("vpath");
        String vfile = request.getParameter("vfile");
                
        double nFireFliesLSSVM = Double.parseDouble(request.getParameter("nFireFliesLSSVM"));
        double nMaxGenerationLSSVM = Double.parseDouble(request.getParameter("nMaxGenerationLSSVM"));
        double dMinBetaLSSVM = Double.parseDouble(request.getParameter("dMinBetaLSSVM"));
        double dGammaLSSVM = Double.parseDouble(request.getParameter("dGammaLSSVM"));
        double dAlphaLSSVM = Double.parseDouble(request.getParameter("dAlphaLSSVM"));
        double dAIWeightLSSVM = Double.parseDouble(request.getParameter("dAIWeightLSSVM"));

        double dTauLSSVM = Double.parseDouble(request.getParameter("dTauLSSVM"));
        double dBPotentialLSSVM = Double.parseDouble(request.getParameter("dBPotentialLSSVM"));
        double dC1LSSVM = Double.parseDouble(request.getParameter("dC1LSSVM"));
        double dC2LSSVM = Double.parseDouble(request.getParameter("dC2LSSVM"));
        double dS1LSSVM = Double.parseDouble(request.getParameter("dS1LSSVM"));
        double dS2LSSVM = Double.parseDouble(request.getParameter("dS2LSSVM"));
        double dTrainingPSLSSVM = Double.parseDouble(request.getParameter("dTrainingPSLSSVM"));
        double dValidationPSLSSVM = Double.parseDouble(request.getParameter("dValidationPSLSSVM"));

        double dTotalSizeLSSVM = Double.parseDouble(request.getParameter("dTotalSizeLSSVM"));
        double nLastChange1LSSVM = Double.parseDouble(request.getParameter("nLastChange1LSSVM"));
        double nLastChange2LSSVM= Double.parseDouble(request.getParameter("nLastChange2LSSVM"));
        double dHoldOutLSSVM = Double.parseDouble(request.getParameter("dHoldOutLSSVM"));
        double dCrossValidationLSSVM = Double.parseDouble(request.getParameter("dCrossValidationLSSVM"));

        double dNormalRadioLSSVM = Double.parseDouble(request.getParameter("dNormalRadioLSSVM"));
        double dSCRadioLSSVM = Double.parseDouble(request.getParameter("dSCRadioLSSVM"));
        double dPRadioLSSVM = Double.parseDouble(request.getParameter("dPRadioLSSVM"));
        double dTORadioLSSVM = Double.parseDouble(request.getParameter("dTORadioLSSVM"));
        double sVariation = Double.parseDouble(request.getParameter("sVariation"));
        
        int ncol = (int)Double.parseDouble(request.getParameter("dAttributesLSSVM"));
        int nrow = (int)Double.parseDouble(request.getParameter("dInstancesLSSVM"));
            int dAttributesLSSVM = (int)Double.parseDouble(request.getParameter("dAttributesLSSVM"));
            int dInstancesLSSVM = (int)Double.parseDouble(request.getParameter("dInstancesLSSVM"));
        
        int ncolp = 0;
        int nrowp = 0;
        ncolp = (int)Double.parseDouble(request.getParameter("dPAttributesLSSVM"));
        nrowp = (int)Double.parseDouble(request.getParameter("dPInstancesLSSVM"));
            int dPAttributesLSSVM = (int)Double.parseDouble(request.getParameter("dPAttributesLSSVM"));
            int dPInstancesLSSVM = (int)Double.parseDouble(request.getParameter("dPInstancesLSSVM"));
        
        double[][] Datatrain = new double[nrow][ncol];
        double[][] Datapre = new double[nrowp][ncolp];

        String sFileDataLSSVM = request.getParameter("sFileDataLSSVM");
        
        if (sFileDataLSSVM != "") {  
            String file = request.getSession().getServletContext().getRealPath("/") + sFileDataLSSVM;
            String line = null;

            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;

                // first line: title
                line = br.readLine();

                if (line != null) {
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
                            sDummy = cols[i];
                            Datatrain[j][i]=Double.parseDouble(sDummy);
                        }
                        j=j+1;
                        line = br.readLine();
                    }
                }
                br.close();
            } 
            catch (Exception e) {
                e.printStackTrace();
            }

            String sPFileDataLSSVM = request.getParameter("sPFileDataLSSVM");

            dPAttributesLSSVM = (int)Double.parseDouble(request.getParameter("dPAttributesLSSVM"));
            dPInstancesLSSVM = (int)Double.parseDouble(request.getParameter("dPInstancesLSSVM"));

            if (dPAttributesLSSVM == 0 || dPInstancesLSSVM == 0) {
                //pw.write("aha #1 ... !"+nrow);
                //pw.write("<br>");
                //pw.write("ncol = "+ncol);

                dPAttributesLSSVM = ncol;
                dPInstancesLSSVM = nrow ;

                ncolp = dPAttributesLSSVM;
                nrowp = dPInstancesLSSVM;

                for (int i = 0; i < nrow; i += 1) {
                    for (int j = 0; j < ncol; j += 1) {
                        Datapre[i][j]=Datatrain[i][j];
                    }
                }
            }
            else {
                //pw.write("aha #2 ... !");

                ncolp = dPAttributesLSSVM;
                nrowp = dPInstancesLSSVM;

                if (nrowp == 0) {
                    nrowp = nrow;
                }
                if (ncolp == 0) {
                    ncolp = ncol;
                    if (dPRadioLSSVM == 2) {
                        ncolp = ncol-1;
                    }
                }

                file = request.getSession().getServletContext().getRealPath("/") + sPFileDataLSSVM;

                try { 
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    String sDummy;
                    String[] headers;
                    String[] cols;
                    int i;
                    int j=0;

                    // first line: title
                    line = br.readLine();

                    if (line != null) {
                        //pw.write("aha #21 ... !");
                        //pw.write(line);
                        
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        if (line != null) {
                            //pw.write("aha #22 ... !");
                            //pw.write(line);

                            headers = line.split("\\t");

                            // third line and so on: data ... last column = dependent variable  
                            line = br.readLine(); 
                            j=0;
                            while (line != null) {
                                cols = line.split("\\t");
                                for (i = 0; i < ncolp; i += 1) {
                                    sDummy = cols[i];
                                    Datapre[j][i]=Double.parseDouble(sDummy);
                                }
                                j=j+1;
                                line = br.readLine();
                            }
                        }
                    }
                    br.close();
                }
                catch (Exception e) {
                    e.printStackTrace();
                }
            }
            
            /*Object[] params = new MWArray[31];  //[37];

            params[0] = new MWNumericArray(Double.parseDouble(request.getParameter("nFireFliesLSSVM")), MWClassID.DOUBLE);
            params[1] = new MWNumericArray(Double.parseDouble(request.getParameter("nMaxGenerationLSSVM")), MWClassID.DOUBLE);
            params[2] = new MWNumericArray(Double.parseDouble(request.getParameter("dMinBetaLSSVM")), MWClassID.DOUBLE);
            params[3] = new MWNumericArray(Double.parseDouble(request.getParameter("dGammaLSSVM")), MWClassID.DOUBLE);
            params[4] = new MWNumericArray(Double.parseDouble(request.getParameter("dAlphaLSSVM")), MWClassID.DOUBLE);
            params[5] = new MWNumericArray(Double.parseDouble(request.getParameter("dAIWeightLSSVM")), MWClassID.DOUBLE);

            params[6] = new MWNumericArray(Double.parseDouble(request.getParameter("dTauLSSVM")), MWClassID.DOUBLE);
            params[7] = new MWNumericArray(Double.parseDouble(request.getParameter("dBPotentialLSSVM")), MWClassID.DOUBLE);
            params[8] = new MWNumericArray(Double.parseDouble(request.getParameter("dC1LSSVM")), MWClassID.DOUBLE);
            params[9] = new MWNumericArray(Double.parseDouble(request.getParameter("dC2LSSVM")), MWClassID.DOUBLE);
            params[10] = new MWNumericArray(Double.parseDouble(request.getParameter("dS1LSSVM")), MWClassID.DOUBLE);
            params[11] = new MWNumericArray(Double.parseDouble(request.getParameter("dS2LSSVM")), MWClassID.DOUBLE);

            params[12] = new MWNumericArray(Double.parseDouble(request.getParameter("dTrainingPSLSSVM")), MWClassID.DOUBLE);
            params[13] = new MWNumericArray(Double.parseDouble(request.getParameter("dValidationPSLSSVM")), MWClassID.DOUBLE);
            params[14] = new MWNumericArray(Double.parseDouble(request.getParameter("dTotalSizeLSSVM")), MWClassID.DOUBLE);
            params[15] = new MWNumericArray(Double.parseDouble(request.getParameter("nLastChange1LSSVM")), MWClassID.DOUBLE);
            params[16] = new MWNumericArray(Double.parseDouble(request.getParameter("nLastChange2LSSVM")), MWClassID.DOUBLE);
            params[17] = new MWNumericArray(Double.parseDouble(request.getParameter("dHoldOutLSSVM")), MWClassID.DOUBLE);
            params[18] = new MWNumericArray(Double.parseDouble(request.getParameter("dCrossValidationLSSVM")), MWClassID.DOUBLE);

            params[19] = new MWNumericArray(Double.parseDouble(request.getParameter("dNormalRadioLSSVM")), MWClassID.DOUBLE);
            params[21] = new MWNumericArray(Double.parseDouble(request.getParameter("dSCRadioLSSVM")), MWClassID.DOUBLE);
            params[22] = new MWNumericArray(Double.parseDouble(request.getParameter("dPRadioLSSVM")), MWClassID.DOUBLE);
            params[23] = new MWNumericArray(Double.parseDouble(request.getParameter("dTORadioLSSVM")), MWClassID.DOUBLE);

            params[24] = new MWNumericArray(Double.parseDouble(request.getParameter("sVariation")), MWClassID.DOUBLE);

            params[25] = new MWNumericArray(dAttributesLSSVM, MWClassID.DOUBLE);
            params[26] = new MWNumericArray(dInstancesLSSVM, MWClassID.DOUBLE);

            params[27] = new MWNumericArray(Double.parseDouble(request.getParameter("dPAttributesLSSVM")), MWClassID.DOUBLE);
            params[28] = new MWNumericArray(Double.parseDouble(request.getParameter("dPInstancesLSSVM")), MWClassID.DOUBLE);

            params[29] = new MWNumericArray(Datatrain, MWClassID.DOUBLE);
            params[30] = new MWNumericArray(Datapre, MWClassID.DOUBLE);*/

            //params[31] = new MWNumericArray (sResult01Name, MWClassID.STRING);
            //params[32] = new MWNumericArray (sResult02Name, MWClassID.STRING);
            //params[33] = new m (sResult03Name, MWClassID.STRING);
            //params[34] = new m (sResult04Name, MWClassID.STRING);
            //params[35] = new m (sResult05Name, MWClassID.STRING);
            //params[36] = new m (sResult06Name, MWClassID.STRING);

            /* 
            params[25] = new MWNumericArray(dAttributesLSSVM, MWClassID.DOUBLE);
            params[26] = new MWNumericArray(dInstancesLSSVM, MWClassID.DOUBLE);

            params[25] = new MWNumericArray(Double.parseDouble(request.getParameter("dAttributesLSSVM")), MWClassID.DOUBLE);
            params[26] = new MWNumericArray(Double.parseDouble(request.getParameter("dInstancesLSSVM")), MWClassID.DOUBLE);

            params[29] = new MWNumericArray(Double.parseDouble(request.getParameter("Datatrain")), MWClassID.DOUBLE);
            params[30] = new MWNumericArray(Double.parseDouble(request.getParameter("Datapre")), MWClassID.DOUBLE);

            protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                    throws ServletException, IOException {
            String nFireFliesLSSVM = request.getParameter("nFireFliesLSSVM");
            String nMaxGenerationLSSVM = request.getParameter("nMaxGenerationLSSVM");
            String dMinBetaLSSVM = request.getParameter("dMinBetaLSSVM");
            String dGammaLSSVM = request.getParameter("dGammaLSSVM");
            String dAlphaLSSVM = request.getParameter("dAlphaLSSVM");
            String dAIWeightLSSVM = request.getParameter("dAIWeightLSSVM");
            String dTauLSSVM = request.getParameter("dTauLSSVM");
            String dBPotentialLSSVM = request.getParameter("dBPotentialLSSVM");
            String dC1LSSVM = request.getParameter("dC1LSSVM");
            String dC2LSSVM = request.getParameter("dC2LSSVM");
            String dS1LSSVM = request.getParameter("dS1LSSVM");
            String dS2LSSVM = request.getParameter("dS2LSSVM");
            String dTrainingPSLSSVM = request.getParameter("dTrainingPSLSSVM");
            String dValidationPSLSSVM = request.getParameter("dValidationPSLSSVM");
            String dTotalSizeLSSVM = request.getParameter("dTotalSizeLSSVM");
            String nLastChange1LSSVM = request.getParameter("nLastChange1LSSVM");
            String nLastChange2LSSVM = request.getParameter("nLastChange2LSSVM");
            String dHoldOutLSSVM = request.getParameter("dHoldOutLSSVM");
            String dCrossValidationLSSVM = request.getParameter("dCrossValidationLSSVM");
            */

            /**/
            //response.setContentType("text/html");
            //PrintWriter pw = response.getWriter();

            //double dPAttributesLSSVM = Double.parseDouble(request.getParameter("dPAttributesLSSVM"));
            //double dPInstancesLSSVM = Double.parseDouble(request.getParameter("dPInstancesLSSVM"));

            //Object[] results = new Object[6];

            pw.write("<table><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>vpath</td><td>&nbsp;</td><td>"+vpath+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>vfile</td><td>&nbsp;</td><td>"+vfile+"</td></tr>");
            pw.write("<br>");
            pw.write("<tr><td>&nbsp;</td><td>sFileDataLSSVM</td><td>&nbsp;</td><td>"+sFileDataLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>sPFileDataLSSVM</td><td>&nbsp;</td><td>"+sPFileDataLSSVM+"</td></tr>");
            pw.write("<br>");
            pw.write("<tr><td>&nbsp;</td><td>nFireFliesLSSVM</td><td>&nbsp;</td><td>"+nFireFliesLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>nMaxGenerationLSSVM</td><td>&nbsp;</td><td>"+nMaxGenerationLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dMinBetaLSSVM</td><td>&nbsp;</td><td>"+dMinBetaLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dGammaLSSVM</td><td>&nbsp;</td><td>"+dGammaLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dAlphaLSSVM</td><td>&nbsp;</td><td>"+dAlphaLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dAIWeightLSSVM</td><td>&nbsp;</td><td>"+dAIWeightLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dTauLSSVM</td><td>&nbsp;</td><td>"+dTauLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dBPotentialLSSVM</td><td>&nbsp;</td><td>"+dBPotentialLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dC1LSSVM</td><td>&nbsp;</td><td>"+dC1LSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dC2LSSVM</td><td>&nbsp;</td><td>"+dC2LSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dS1LSSVM</td><td>&nbsp;</td><td>"+dS1LSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dS2LSSVM</td><td>&nbsp;</td><td>"+dS2LSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dTrainingPSLSSVM</td><td>&nbsp;</td><td>"+dTrainingPSLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dValidationPSLSSVM</td><td>&nbsp;</td><td>"+dValidationPSLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dTotalSizeLSSVM</td><td>&nbsp;</td><td>"+dTotalSizeLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>nLastChange1LSSVM</td><td>&nbsp;</td><td>"+nLastChange1LSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>nLastChange2LSSVM</td><td>&nbsp;</td><td>"+nLastChange2LSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dHoldOutLSSVM</td><td>&nbsp;</td><td>"+dHoldOutLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dCrossValidationLSSVM</td><td>&nbsp;</td><td>"+dCrossValidationLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dNormalRadioLSSVM</td><td>&nbsp;</td><td>"+dNormalRadioLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dSCRadioLSSVM</td><td>&nbsp;</td><td>"+dSCRadioLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dPRadioLSSVM</td><td>&nbsp;</td><td>"+dPRadioLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dTORadioLSSVM</td><td>&nbsp;</td><td>"+dTORadioLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>sVariation</td><td>&nbsp;</td><td>"+sVariation+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dAttributesLSSVM</td><td>&nbsp;</td><td>"+dAttributesLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dInstancesLSSVM</td><td>&nbsp;</td><td>"+dInstancesLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dPAttributesLSSVM</td><td>&nbsp;</td><td>"+dPAttributesLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dPInstancesLSSVM</td><td>&nbsp;</td><td>"+dPInstancesLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
            pw.write("</table>");
            
            pw.write("<table>");
            for (int i = 0; i < nrow; i += 1) {
                pw.write("<tr>");
                pw.write("<td>&nbsp;</td><td>"+(i+1)+"</td>");
                for (int j = 0; j < ncol; j += 1) {
                    pw.write("<td>&nbsp;</td><td>"+Datatrain[i][j]+"</td>");
                }
                pw.write("</tr>");
            }
            pw.write("</table>");
            
            pw.write("<br>");
            pw.write("<br>");
            
            pw.write("<table>");
            for (int i = 0; i < nrowp; i += 1) {
                pw.write("<tr>");
                pw.write("<td>&nbsp;</td><td>"+(i+1)+"</td>");
                for (int j = 0; j < ncolp; j += 1) {
                    pw.write("<td>&nbsp;</td><td>"+Datapre[i][j]+"</td>");
                }
                pw.write("</tr>");
            }
            pw.write("</table>");
                        
            try {
                final SFALSSVMClass m = new SFALSSVMClass();
                try {
                    Object results[] = m.ProgramSFALSSVM(1,vpath,vfile,nFireFliesLSSVM,nMaxGenerationLSSVM,dMinBetaLSSVM,dGammaLSSVM,dAlphaLSSVM,dAIWeightLSSVM,dTauLSSVM,dBPotentialLSSVM,dC1LSSVM,dC2LSSVM,dS1LSSVM,dS2LSSVM,dTrainingPSLSSVM,dValidationPSLSSVM,dTotalSizeLSSVM,nLastChange1LSSVM,nLastChange2LSSVM,dHoldOutLSSVM,dCrossValidationLSSVM,dNormalRadioLSSVM,dSCRadioLSSVM,dPRadioLSSVM,dTORadioLSSVM,sVariation,dAttributesLSSVM,dInstancesLSSVM,dPAttributesLSSVM,dPInstancesLSSVM,Datatrain,Datapre);
                    try {
                        /*
                        pw.write("<table><tr><td>&nbsp;</td>");
                        pw.write("<td><h3><b>Output:</b></h3></td>");
                        pw.write("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
                        pw.write("<td align='right'>Performance &nbsp; = &nbsp;</td>");
                        */

                        final MWArray firstResult = (MWArray) results[0];
                        final String output = firstResult.toString();

                        /*
                        pw.write("<td><input type='text' size='10' value='"+output+"' readonly></td>");
                        pw.write("</tr>");
                        */

                        //final Object[] results = 
                        //cSFALSSVM.ProgramSFALSSVM(result, params, sResult01Name);
                        /*
                        cSFALSSVM.ProgramSFALSSVM(result, params);
                        final MWArray firstResult = (MWArray) result[0];
                        final MWArray firstResult = (MWArray) results[0];
                        final String vfullpath = firstResult.toString();
                        */

                        /*
                        final MWArray secondResult = (MWArray) results[1];
                        final String output2 = secondResult.toString();
                        pw.write("<tr><td colspan='5'>&nbsp;</td></tr>");
                        pw.write("<tr><td>&nbsp;</td>");
                        pw.write("<td>&nbsp;</td>");
                        pw.write("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
                        pw.write("<td align='right'>Penalty Parameter, C &nbsp; = &nbsp;</td>");
                        pw.write("<td><input type='text' size='10' value='"+output2+"' readonly></td>");
                        pw.write("</tr>");

                        final MWArray thirdResult = (MWArray) results[2];
                        final String output3 = thirdResult.toString();
                        pw.write("<tr><td colspan='5'>&nbsp;</td></tr>");
                        pw.write("<tr><td>&nbsp;</td>");
                        pw.write("<td>&nbsp;</td>");
                        pw.write("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
                        pw.write("<td align='right'>Kernel Function Parameter, S &nbsp; = &nbsp;</td>");
                        pw.write("<td><input type='text' size='10' value='"+output3+"' readonly></td>");
                        pw.write("</tr>");
                        */

                        /*
                        pw.write("</table>");

                        pw.write("<br>");
                        pw.write("<h6 id='bottompage'>");
                        pw.write("<br>");
                        pw.write("&nbsp;&nbsp;. . . [END OF OUTPUT FORM] &nbsp;&nbsp;&nbsp;");
                        pw.write("<a href='#top'><img src='Icon-Top.png' alt='...' width='13' height='17'></a>");
                        pw.write("</h6>");
                        */

                        pw.write("<script>");
                        pw.write("alert(\"Execution completed successfully! \\n\\nClick Numerical Results to see the output\");");
                        pw.write("</script>");
                        pw.close();
                    } finally {
                        MWArray.disposeArray(results);
                    }
                } finally {
                    m.dispose();
                }
            } catch (MWException e) {
                throw new ServletException(e);
            }
        }
        else {
            pw.write("<script>");
            pw.write("alert(\"Dataset not found...!\");");
            pw.write("</script>");
            pw.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
