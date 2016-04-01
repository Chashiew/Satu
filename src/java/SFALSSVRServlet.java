/* @author JDK
 * 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

import ProgramSFALSSVR.SFALSSVRClass;

public class SFALSSVRServlet extends HttpServlet {

    /* original
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    //#1
    private static final long serialVersionUID = 1L;
    
    //#2
    private SFALSSVRClass cSFALSSVR = null;

    private HttpServletRequest servletRequest;

    /* @see HttpServlet#HttpServlet()
     */
    
    /* #3 */
    public SFALSSVRServlet() {
        super();
        try {
            cSFALSSVR = new SFALSSVRClass();
        } catch (MWException e) {
            e.printStackTrace();
        }
    }
    /**/

    /* @see Servlet#destroy()
     */
    
    /* #4 */

    @Override
    public void destroy() {
        super.destroy();
        cSFALSSVR.dispose();
    }
    /**/
    
    /* #5
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

    //protected void doPost(HttpServletRequest request,
    //        HttpServletResponse response) throws ServletException, IOException {
    
    //protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    //        throws ServletException, IOException {

        /* Get the parameters and convert them to MWArray
         */
        /* #6 */
        
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        
        //ProgramSFALSSVR(vpath, vfile, ...
        String vpath = request.getParameter("vpath");
        String vfile = request.getParameter("vfile");
                
        //nFireFlies,nMaxGeneration,dMinBeta,dGamma,dAlpha,dAIWeight, ...
        double nFireFlies = Double.parseDouble(request.getParameter("nFireFlies"));
        double nMaxGeneration = Double.parseDouble(request.getParameter("nMaxGeneration"));
        double dMinBeta = Double.parseDouble(request.getParameter("dMinBeta"));
        double dGamma = Double.parseDouble(request.getParameter("dGamma"));
        double dAlpha = Double.parseDouble(request.getParameter("dAlpha"));
        double dAIWeight = Double.parseDouble(request.getParameter("dAIWeight"));

        //dTau,dBPotential,dC1,dC2,dS1,dS2,dTrainingPS,dValidationPS, ...
        double dTau = Double.parseDouble(request.getParameter("dTau"));
        double dBPotential = Double.parseDouble(request.getParameter("dBPotential"));
        double dC1 = Double.parseDouble(request.getParameter("dC1"));
        double dC2 = Double.parseDouble(request.getParameter("dC2"));
        double dS1 = Double.parseDouble(request.getParameter("dS1"));
        double dS2 = Double.parseDouble(request.getParameter("dS2"));
        double dTrainingPS = Double.parseDouble(request.getParameter("dTrainingPS"));
        double dValidationPS = Double.parseDouble(request.getParameter("dValidationPS"));

        //dTotalSize,nLastChange1,nLastChange2,dHoldOut,dCrossValidation, ...
        double dTotalSize = Double.parseDouble(request.getParameter("dTotalSize"));
        double nLastChange1 = Double.parseDouble(request.getParameter("nLastChange1"));
        double nLastChange2= Double.parseDouble(request.getParameter("nLastChange2"));
        double dHoldOut = Double.parseDouble(request.getParameter("dHoldOut"));
        double dCrossValidation = Double.parseDouble(request.getParameter("dCrossValidation"));

        //dNormalRadio,dOptimRadio,dSCRadio,dPRadio,dTORadio,sVariation, ...
        double dNormalRadio = Double.parseDouble(request.getParameter("dNormalRadio"));
        double dOptimRadio = Double.parseDouble(request.getParameter("dOptimRadio"));
        double dSCRadio = Double.parseDouble(request.getParameter("dSCRadio"));
        double dPRadio = Double.parseDouble(request.getParameter("dPRadio"));
        double dTORadio = Double.parseDouble(request.getParameter("dTORadio"));
        double sVariation = Double.parseDouble(request.getParameter("sVariation"));
        
        //dAttributes,dInstances,dPAttributes,dPInstances,Datatrain,Datapre)
        
        int ncol = (int)Double.parseDouble(request.getParameter("dAttributes"));
        int nrow = (int)Double.parseDouble(request.getParameter("dInstances"));
            int dAttributes = (int)Double.parseDouble(request.getParameter("dAttributes"));
            int dInstances = (int)Double.parseDouble(request.getParameter("dInstances"));
        
        int ncolp = (int)Double.parseDouble(request.getParameter("dPAttributes"));
        int nrowp = (int)Double.parseDouble(request.getParameter("dPInstances"));
            int dPAttributes = (int)Double.parseDouble(request.getParameter("dPAttributes"));
            int dPInstances = (int)Double.parseDouble(request.getParameter("dPInstances"));
        
        double[][] Datatrain = new double[nrow][ncol];
        double[][] Datapre = new double[nrowp][ncolp];

        String sFileData = request.getParameter("sFileData");
        
        //public static void main (String[] Args) throws Exception {

        if (sFileData != "") {  
            //Error in this command line
            //String file = servletRequest.getSession().getServletContext().getRealPath("/") + sFileData;

            String file = request.getSession().getServletContext().getRealPath("/") + sFileData;
            String line = null;

            try {
                //wrong command line
                //BufferedReader br = new BufferedReader(file);

                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;

                // first line: title
                line = br.readLine();

                //System.out.println(line);
                
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

            String sPFileData = request.getParameter("sPFileData");

            dPAttributes = (int)Double.parseDouble(request.getParameter("dPAttributes"));
            dPInstances = (int)Double.parseDouble(request.getParameter("dPInstances"));

            if (dPAttributes == 0 || dPInstances == 0) {
                //pw.write("aha #1 ... !"+nrow);
                //pw.write("<br>");
                //pw.write("ncol = "+ncol);

                dPAttributes = ncol;
                dPInstances = nrow ;

                ncolp = dPAttributes;
                nrowp = dPInstances;

                for (int i = 0; i < nrow; i += 1) {
                    for (int j = 0; j < ncol; j += 1) {
                        Datapre[i][j]=Datatrain[i][j];
                    }
                }
            }
            else {
                //pw.write("aha #2 ... !");

                ncolp = dPAttributes;
                nrowp = dPInstances;

                if (nrowp == 0) {
                    nrowp = nrow;
                }
                if (ncolp == 0) {
                    ncolp = ncol;
                    if (dPRadio == 2) {
                        ncolp = ncol-1;
                    }
                }

                file = request.getSession().getServletContext().getRealPath("/") + sPFileData;

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
            
            /*
            String sResult01Name = request.getParameter("sResult01Name");
            String sResult02Name = request.getParameter("sResult02Name");
            String sResult03Name = request.getParameter("sResult03Name");
            String sResult04Name = request.getParameter("sResult04Name");
            String sResult05Name = request.getParameter("sResult05Name");
            String sResult06Name = request.getParameter("sResult06Name");
            */

            Object[] params = new MWArray[31];  //[37];

            params[0] = new MWNumericArray(Double.parseDouble(request.getParameter("nFireFlies")), MWClassID.DOUBLE);
            params[1] = new MWNumericArray(Double.parseDouble(request.getParameter("nMaxGeneration")), MWClassID.DOUBLE);
            params[2] = new MWNumericArray(Double.parseDouble(request.getParameter("dMinBeta")), MWClassID.DOUBLE);
            params[3] = new MWNumericArray(Double.parseDouble(request.getParameter("dGamma")), MWClassID.DOUBLE);
            params[4] = new MWNumericArray(Double.parseDouble(request.getParameter("dAlpha")), MWClassID.DOUBLE);
            params[5] = new MWNumericArray(Double.parseDouble(request.getParameter("dAIWeight")), MWClassID.DOUBLE);

            params[6] = new MWNumericArray(Double.parseDouble(request.getParameter("dTau")), MWClassID.DOUBLE);
            params[7] = new MWNumericArray(Double.parseDouble(request.getParameter("dBPotential")), MWClassID.DOUBLE);
            params[8] = new MWNumericArray(Double.parseDouble(request.getParameter("dC1")), MWClassID.DOUBLE);
            params[9] = new MWNumericArray(Double.parseDouble(request.getParameter("dC2")), MWClassID.DOUBLE);
            params[10] = new MWNumericArray(Double.parseDouble(request.getParameter("dS1")), MWClassID.DOUBLE);
            params[11] = new MWNumericArray(Double.parseDouble(request.getParameter("dS2")), MWClassID.DOUBLE);

            params[12] = new MWNumericArray(Double.parseDouble(request.getParameter("dTrainingPS")), MWClassID.DOUBLE);
            params[13] = new MWNumericArray(Double.parseDouble(request.getParameter("dValidationPS")), MWClassID.DOUBLE);
            params[14] = new MWNumericArray(Double.parseDouble(request.getParameter("dTotalSize")), MWClassID.DOUBLE);
            params[15] = new MWNumericArray(Double.parseDouble(request.getParameter("nLastChange1")), MWClassID.DOUBLE);
            params[16] = new MWNumericArray(Double.parseDouble(request.getParameter("nLastChange2")), MWClassID.DOUBLE);
            params[17] = new MWNumericArray(Double.parseDouble(request.getParameter("dHoldOut")), MWClassID.DOUBLE);
            params[18] = new MWNumericArray(Double.parseDouble(request.getParameter("dCrossValidation")), MWClassID.DOUBLE);

            params[19] = new MWNumericArray(Double.parseDouble(request.getParameter("dNormalRadio")), MWClassID.DOUBLE);
            params[20] = new MWNumericArray(Double.parseDouble(request.getParameter("dOptimRadio")), MWClassID.DOUBLE);
            params[21] = new MWNumericArray(Double.parseDouble(request.getParameter("dSCRadio")), MWClassID.DOUBLE);
            params[22] = new MWNumericArray(Double.parseDouble(request.getParameter("dPRadio")), MWClassID.DOUBLE);
            params[23] = new MWNumericArray(Double.parseDouble(request.getParameter("dTORadio")), MWClassID.DOUBLE);

            params[24] = new MWNumericArray(Double.parseDouble(request.getParameter("sVariation")), MWClassID.DOUBLE);

            params[25] = new MWNumericArray(dAttributes, MWClassID.DOUBLE);
            params[26] = new MWNumericArray(dInstances, MWClassID.DOUBLE);

            params[27] = new MWNumericArray(Double.parseDouble(request.getParameter("dPAttributes")), MWClassID.DOUBLE);
            params[28] = new MWNumericArray(Double.parseDouble(request.getParameter("dPInstances")), MWClassID.DOUBLE);

            params[29] = new MWNumericArray(Datatrain, MWClassID.DOUBLE);
            params[30] = new MWNumericArray(Datapre, MWClassID.DOUBLE);

            //params[31] = new MWNumericArray (sResult01Name, MWClassID.STRING);
            //params[32] = new MWNumericArray (sResult02Name, MWClassID.STRING);
            //params[33] = new m (sResult03Name, MWClassID.STRING);
            //params[34] = new m (sResult04Name, MWClassID.STRING);
            //params[35] = new m (sResult05Name, MWClassID.STRING);
            //params[36] = new m (sResult06Name, MWClassID.STRING);

            /* 
            params[25] = new MWNumericArray(dAttributes, MWClassID.DOUBLE);
            params[26] = new MWNumericArray(dInstances, MWClassID.DOUBLE);

            params[25] = new MWNumericArray(Double.parseDouble(request.getParameter("dAttributes")), MWClassID.DOUBLE);
            params[26] = new MWNumericArray(Double.parseDouble(request.getParameter("dInstances")), MWClassID.DOUBLE);

            params[29] = new MWNumericArray(Double.parseDouble(request.getParameter("Datatrain")), MWClassID.DOUBLE);
            params[30] = new MWNumericArray(Double.parseDouble(request.getParameter("Datapre")), MWClassID.DOUBLE);

            protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                    throws ServletException, IOException {
            String nFireFlies = request.getParameter("nFireFlies");
            String nMaxGeneration = request.getParameter("nMaxGeneration");
            String dMinBeta = request.getParameter("dMinBeta");
            String dGamma = request.getParameter("dGamma");
            String dAlpha = request.getParameter("dAlpha");
            String dAIWeight = request.getParameter("dAIWeight");
            String dTau = request.getParameter("dTau");
            String dBPotential = request.getParameter("dBPotential");
            String dC1 = request.getParameter("dC1");
            String dC2 = request.getParameter("dC2");
            String dS1 = request.getParameter("dS1");
            String dS2 = request.getParameter("dS2");
            String dTrainingPS = request.getParameter("dTrainingPS");
            String dValidationPS = request.getParameter("dValidationPS");
            String dTotalSize = request.getParameter("dTotalSize");
            String nLastChange1 = request.getParameter("nLastChange1");
            String nLastChange2 = request.getParameter("nLastChange2");
            String dHoldOut = request.getParameter("dHoldOut");
            String dCrossValidation = request.getParameter("dCrossValidation");
            */

            /**/
            //response.setContentType("text/html");
            //PrintWriter pw = response.getWriter();

            //double dPAttributes = Double.parseDouble(request.getParameter("dPAttributes"));
            //double dPInstances = Double.parseDouble(request.getParameter("dPInstances"));

            //Object[] results = new Object[6];

            /**/
            pw.write("<table><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>vpath</td><td>&nbsp;</td><td>"+vpath+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>vfile</td><td>&nbsp;</td><td>"+vfile+"</td></tr>");
            pw.write("<br>");
            pw.write("<tr><td>&nbsp;</td><td>sFileData</td><td>&nbsp;</td><td>"+sFileData+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>sPFileData</td><td>&nbsp;</td><td>"+sPFileData+"</td></tr>");
            pw.write("<br>");
            pw.write("<tr><td>&nbsp;</td><td>nFireFlies</td><td>&nbsp;</td><td>"+nFireFlies+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>nMaxGeneration</td><td>&nbsp;</td><td>"+nMaxGeneration+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dMinBeta</td><td>&nbsp;</td><td>"+dMinBeta+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dGamma</td><td>&nbsp;</td><td>"+dGamma+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dAlpha</td><td>&nbsp;</td><td>"+dAlpha+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dAIWeight</td><td>&nbsp;</td><td>"+dAIWeight+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dTau</td><td>&nbsp;</td><td>"+dTau+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dBPotential</td><td>&nbsp;</td><td>"+dBPotential+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dC1</td><td>&nbsp;</td><td>"+dC1+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dC2</td><td>&nbsp;</td><td>"+dC2+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dS1</td><td>&nbsp;</td><td>"+dS1+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dS2</td><td>&nbsp;</td><td>"+dS2+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dTrainingPS</td><td>&nbsp;</td><td>"+dTrainingPS+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dValidationPS</td><td>&nbsp;</td><td>"+dValidationPS+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dTotalSize</td><td>&nbsp;</td><td>"+dTotalSize+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>nLastChange1</td><td>&nbsp;</td><td>"+nLastChange1+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>nLastChange2</td><td>&nbsp;</td><td>"+nLastChange2+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dHoldOut</td><td>&nbsp;</td><td>"+dHoldOut+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dCrossValidation</td><td>&nbsp;</td><td>"+dCrossValidation+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dNormalRadio</td><td>&nbsp;</td><td>"+dNormalRadio+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dOptimRadio</td><td>&nbsp;</td><td>"+dOptimRadio+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dSCRadio</td><td>&nbsp;</td><td>"+dSCRadio+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dPRadio</td><td>&nbsp;</td><td>"+dPRadio+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dTORadio</td><td>&nbsp;</td><td>"+dTORadio+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>sVariation</td><td>&nbsp;</td><td>"+sVariation+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dAttributes</td><td>&nbsp;</td><td>"+dAttributes+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dInstances</td><td>&nbsp;</td><td>"+dInstances+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dPAttributes</td><td>&nbsp;</td><td>"+dPAttributes+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dPInstances</td><td>&nbsp;</td><td>"+dPInstances+"</td></tr>");
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
            /**/
                    
            try {
                final SFALSSVRClass m = new SFALSSVRClass();
                try {
                    Object results[] = m.ProgramSFALSSVR(1, vpath, vfile, nFireFlies,nMaxGeneration,dMinBeta,dGamma,dAlpha,dAIWeight,dTau,dBPotential,dC1,dC2,dS1,dS2,dTrainingPS,dValidationPS,dTotalSize,nLastChange1,nLastChange2,dHoldOut,dCrossValidation,dNormalRadio,dOptimRadio,dSCRadio,dPRadio,dTORadio,sVariation,dAttributes,dInstances,dPAttributes,dPInstances,Datatrain,Datapre);
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
                        //cSFALSSVR.ProgramSFALSSVR(result, params, sResult01Name);
                        /*
                        cSFALSSVR.ProgramSFALSSVR(result, params);
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
    /* //#C
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    */
    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /* //#D
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    */
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    /* //#E
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    */
}
