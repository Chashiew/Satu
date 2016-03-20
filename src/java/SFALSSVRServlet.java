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

import ProgramSFALSSVR.SFALSSVRClass;
import com.mathworks.toolbox.javabuilder.MWCellArray;
import com.mathworks.toolbox.javabuilder.MWCharArray;
import com.mathworks.toolbox.javabuilder.MWCtfFileSource;
import com.mathworks.toolbox.javabuilder.MWStructArray;

/**
 *
 * @author DK
 */
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

    /*
     * @see HttpServlet#HttpServlet()
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

    /*
     * @see Servlet#destroy()
     */
    /* #4 */

    /**
     *
     */
    
    @Override
    public void destroy() {
        super.destroy();
        cSFALSSVR.dispose();
    }
    /**/
    
    //#5

    /**
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
        /*
         * Get the parameters and convert them to MWArray
         */
        /* #6 */
        int ncol = (int)Double.parseDouble(request.getParameter("dAttributes"));
        int nrow = (int)Double.parseDouble(request.getParameter("dInstances"));
        
        int dAttributes = (int)Double.parseDouble(request.getParameter("dAttributes"));
        int dInstances = (int)Double.parseDouble(request.getParameter("dInstances"));
        
        double[][] Datatrain = new double[nrow][ncol];

        /*
        //first test using simple matrix
        int dAttributes = 2;
        int dInstances = 3;
        double[][] Datatrain = new double[dInstances][dAttributes];
        Datatrain[0][0] = 1;
        Datatrain[0][1] = 2;
        Datatrain[1][0] = 3;
        Datatrain[1][1] = 4;
        Datatrain[2][0] = 5;
        Datatrain[2][1] = 6;
        */
        
        String sFileData = request.getParameter("sFileData");
        
        /*
            //upto this steps ... all printed ok
            response.setContentType("text/html");
            PrintWriter pw = response.getWriter();
            pw.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
            pw.write("ncol = ");
            pw.write("<input type='text' size='10' value='"+ncol+"' readonly>");
            pw.write("<br>");
            pw.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
            pw.write("nrow = ");
            pw.write("<input type='text' size='10' value='"+nrow+"' readonly>");
            pw.write("<br>");
            pw.write("<br>");
            pw.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
            pw.write("sFileData = ");
            pw.write("<input type='text' size='10' value='"+sFileData+"' readonly>");
            pw.close();
        */
        
        //public static void main (String[] Args) throws Exception {
            /**/
            if (sFileData != "") {  
                //Error in this command line
                //String file = servletRequest.getSession().getServletContext().getRealPath("/") + sFileData;

                String file = request.getSession().getServletContext().getRealPath("/") + sFileData;
                String line = null;

                /*
                    //no result - so, error starts from servletRequest
                    //response.setContentType("text/html");
                    pw.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                    pw.write("file = ");
                    pw.write("<input type='text' size='10' value='"+file+"' readonly>");
                    pw.write("<br>");
                    pw.write("<br>");
                    pw.write("line = ");
                    pw.write("<input type='text' size='10' value='"+line+"' readonly>");
                */
                    
                try {
                    //back to up again
                    //String file = new FileInputStream(request.getRealPath("/")) + sFileData;
                    //String line = null;
                
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
            
                    /*
                    //nothing appears on screen from this line
                    //response.setContentType("text/html");
                    pw.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                    pw.write("line = ");
                    pw.write("<input type='text' size='10' value='"+line+"' readonly>");
                    pw.write("<br>");
                    pw.write("<br>");
                    */
            
                    if (line != null) {
                        cols = line.split("\\t");

                        // second line: column header
                        line = br.readLine();
                        headers = line.split("\\t");
                    
                        /*
                        pw.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                        pw.write("headers = ");
                        pw.write("<input type='text' size='10' value='"+headers+"' readonly>");
                        */
                    
                        // third line and so on: data ... last column = dependent variable  
                        line = br.readLine(); 
                        j=0;
                        while (line != null) {
                            //System.out.println(line);
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
            }
            /**/
        //}
        
        int ncolp = (int)Double.parseDouble(request.getParameter("dPAttributes"));
        int nrowp = (int)Double.parseDouble(request.getParameter("dPInstances"));
        double[][] Datapre = new double[nrowp][ncolp];
        
        int dPAttributes = (int)Double.parseDouble(request.getParameter("dPAttributes"));
        int dPInstances = (int)Double.parseDouble(request.getParameter("dPInstances"));
        
        /*
        pw.write("<br>");
        pw.write("<br>");
        pw.write("<input type='text' size='10' value='"+Datatrain[0][0]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[0][1]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[0][2]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[0][3]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[0][4]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[0][5]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[0][6]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[0][7]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[0][8]+"' readonly>");
        pw.write("<br>");
        pw.write("<br>");
        pw.write("<input type='text' size='10' value='"+Datatrain[nrow-1][0]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[nrow-1][1]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[nrow-1][2]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[nrow-1][3]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[nrow-1][4]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[nrow-1][5]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[nrow-1][6]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[nrow-1][7]+"' readonly>");
        pw.write("<input type='text' size='10' value='"+Datatrain[nrow-1][8]+"' readonly>");
        */
        
        /*
        double[][] Datapre = new double[1][2];
        Datapre[0][0] = 1;
        Datapre[0][1] = 2;
        */
        
        String sPFileData = request.getParameter("sPFileData");
        
        /*
        pw.write("ncolp = ");
        pw.write("<input type='text' size='10' value='"+ncolp+"' readonly>");
        pw.write("<br>");
        pw.write("<br>");
        pw.write("nrowp = ");
        pw.write("<input type='text' size='10' value='"+nrow+"' readonly>");
        pw.write("<br>");
        pw.write("<br>");
        pw.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
        pw.write("sPFileData = ");
        pw.write("<input type='text' size='10' value='"+sPFileData+"' readonly>");
        pw.close();
        */
        
        /**/
        if (sPFileData == null) {
        } 
        else if (sPFileData != "") {
            String file = request.getSession().getServletContext().getRealPath("/") + sPFileData;
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
                        for (i = 0; i < ncolp; i += 1) {
                            sDummy = cols[i];
                            Datapre[j][i]=Double.parseDouble(sDummy);
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
}
        /**/
        
        String sResult01Name = request.getParameter("sResult01Name");
        String sResult02Name = request.getParameter("sResult02Name");
        String sResult03Name = request.getParameter("sResult03Name");
        String sResult04Name = request.getParameter("sResult04Name");
        String sResult04aName = request.getParameter("sResult04aName");
        String sResult04bName = request.getParameter("sResult04bName");
        String sResult04cName = request.getParameter("sResult04cName");
        String sResult04dName = request.getParameter("sResult04dName");
        String sResult05Name = request.getParameter("sResult05Name");
        String sResult06Name = request.getParameter("sResult06Name");
        
        Object[] params = new MWArray[31];  //[37]; //sepertinya tidak digunakan, params hanya untuk double gabs pake string, gabs dikirim k matlabfunction sbg double
        
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
        
    /* //#A
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
    
        /* original
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SFALSSVRServletOld</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SFALSSVRServletOld at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        */
        
        /* #7 */
        /**/
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        
        /*
        pw.write("dAttributes = " + dAttributes);
        pw.write("<br>");
        pw.write("dInstances = " + dInstances);
        pw.write("<br>");
        pw.write("dPAttributes = " + dPAttributes);
        pw.write("<br>");
        pw.write("dPInstances = " + dPInstances);
        pw.write("<br>");
        pw.write("<br>");
        */
        String vpath = request.getParameter("vpath"); //yg digunakan
        String vfile = request.getParameter("vfile");
                
        double nFireFlies = Double.parseDouble(request.getParameter("nFireFlies"));
        double nMaxGeneration = Double.parseDouble(request.getParameter("nMaxGeneration"));
        double dMinBeta = Double.parseDouble(request.getParameter("dMinBeta"));
        double dGamma = Double.parseDouble(request.getParameter("dGamma"));
        double dAlpha = Double.parseDouble(request.getParameter("dAlpha"));
        double dAIWeight = Double.parseDouble(request.getParameter("dAIWeight"));

        double dTau = Double.parseDouble(request.getParameter("dTau"));
        double dBPotential = Double.parseDouble(request.getParameter("dBPotential"));
        double dC1 = Double.parseDouble(request.getParameter("dC1"));
        double dC2 = Double.parseDouble(request.getParameter("dC2"));
        double dS1 = Double.parseDouble(request.getParameter("dS1"));
        double dS2 = Double.parseDouble(request.getParameter("dS2"));

        double dTrainingPS = Double.parseDouble(request.getParameter("dTrainingPS"));
        double dValidationPS = Double.parseDouble(request.getParameter("dValidationPS"));
        double dTotalSize = Double.parseDouble(request.getParameter("dTotalSize"));
        double nLastChange1 = Double.parseDouble(request.getParameter("nLastChange1"));
        double nLastChange2= Double.parseDouble(request.getParameter("nLastChange2"));
        double dHoldOut = Double.parseDouble(request.getParameter("dHoldOut"));
        double dCrossValidation = Double.parseDouble(request.getParameter("dCrossValidation"));

        double dNormalRadio = Double.parseDouble(request.getParameter("dNormalRadio"));
        double dOptimRadio = Double.parseDouble(request.getParameter("dOptimRadio"));
        double dSCRadio = Double.parseDouble(request.getParameter("dSCRadio"));
        double dPRadio = Double.parseDouble(request.getParameter("dPRadio"));
        double dTORadio = Double.parseDouble(request.getParameter("dTORadio"));
        
        double sVariation = Double.parseDouble(request.getParameter("sVariation"));
        
        //dAttributes = dAttributes;
        //dInstances = dInstances;
        
        //double dPAttributes = Double.parseDouble(request.getParameter("dPAttributes"));
        //double dPInstances = Double.parseDouble(request.getParameter("dPInstances"));

        //Datatrain = Datatrain;
        //Datapre = Datapre;
        
        //Object[] results = new Object[3]; harusnya ini digunakan
        
        try {
            final SFALSSVRClass m = new SFALSSVRClass();
            try {
                Object[] results = m.ProgramSFALSSVR(1, vpath, vfile, nFireFlies,nMaxGeneration,dMinBeta,dGamma,dAlpha,dAIWeight,dTau,dBPotential,dC1,dC2,dS1,dS2,dTrainingPS,dValidationPS,dTotalSize,nLastChange1,nLastChange2,dHoldOut,dCrossValidation,dNormalRadio,dOptimRadio,dSCRadio,dPRadio,dTORadio,sVariation,dAttributes,dInstances,dPAttributes,dPInstances,Datatrain,Datapre); //manggil matlab function
                try {
                    pw.write("<table><tr><td>&nbsp;</td>");
                    pw.write("<td><h3><b>Output:</b></h3></td>");
                    pw.write("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
                    pw.write("<td align='right'>Performance &nbsp; = &nbsp;</td>");
                    /*PValue*/
                    final MWArray firstResult = (MWArray) results[0];
                    final String output = firstResult.toString();
                    pw.write("<td><input type='text' size='10' value='"+output+"' readonly></td>");
                    pw.write("</tr>");

                    //final Object[] results = 
                    //cSFALSSVR.ProgramSFALSSVR(result, params, sResult01Name);
                    /*
                    cSFALSSVR.ProgramSFALSSVR(result, params);
                    final MWArray firstResult = (MWArray) result[0];
                    final MWArray firstResult = (MWArray) results[0];
                    final String vfullpath = firstResult.toString();
                    */

                    /* PValue 2
                    final MWArray secondResult = (MWArray) results[1];
                    final String output2 = secondResult.toString();
                    pw.write("<tr><td colspan='5'>&nbsp;</td></tr>");
                    pw.write("<tr><td>&nbsp;</td>");
                    pw.write("<td>&nbsp;</td>");
                    pw.write("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
                    pw.write("<td align='right'>Penalty Parameter, C &nbsp; = &nbsp;</td>");
                    pw.write("<td><input type='text' size='10' value='"+output2+"' readonly></td>");
                    pw.write("</tr>");
                    
                    PValue3
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
                    pw.write("</table>");

                    pw.write("<br>");
                    pw.write("<h6 id='bottompage'>");
                    pw.write("<br>");
                    pw.write("&nbsp;&nbsp;. . . [END OF OUTPUT FORM] &nbsp;&nbsp;&nbsp;");
                    pw.write("<a href='#top'><img src='Icon-Top.png' alt='...' width='13' height='17'></a>");
                    pw.write("</h6>");

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
