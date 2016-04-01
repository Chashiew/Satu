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

import ProgramLSSVR.LSSVRClass;

public class LSSVRServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    private LSSVRClass cLSSVR = null;

    private HttpServletRequest servletRequest;

    public LSSVRServlet() {
        super();
        try {
            cLSSVR = new LSSVRClass();
        } catch (MWException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void destroy() {
        super.destroy();
        cLSSVR.dispose();
    }
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        
        String vpath = request.getParameter("vpath");
        String vfile = request.getParameter("vfile");
                
        double nValueC = Double.parseDouble(request.getParameter("nValueC"));
        double nValueS = Double.parseDouble(request.getParameter("nValueS"));
        double dHoldOut = Double.parseDouble(request.getParameter("dHoldOut"));
        double dCrossValidation = Double.parseDouble(request.getParameter("dCrossValidation"));

        double dNormalRadio = Double.parseDouble(request.getParameter("dNormalRadio"));
        double dPRadio = Double.parseDouble(request.getParameter("dPRadio"));
        double dTORadio = Double.parseDouble(request.getParameter("dTORadio"));
        double sVariation = Double.parseDouble(request.getParameter("sVariation"));
        
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
        
        if (sFileData != "") {  
            String file = request.getSession().getServletContext().getRealPath("/") + sFileData;
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
            
            Object[] params = new MWArray[31];  //[37];

            params[0] = new MWNumericArray(Double.parseDouble(request.getParameter("nValueC")), MWClassID.DOUBLE);
            params[1] = new MWNumericArray(Double.parseDouble(request.getParameter("nValueC")), MWClassID.DOUBLE);
            params[2] = new MWNumericArray(Double.parseDouble(request.getParameter("dHoldOut")), MWClassID.DOUBLE);
            params[3] = new MWNumericArray(Double.parseDouble(request.getParameter("dCrossValidation")), MWClassID.DOUBLE);

            params[4] = new MWNumericArray(Double.parseDouble(request.getParameter("dNormalRadio")), MWClassID.DOUBLE);
            params[5] = new MWNumericArray(Double.parseDouble(request.getParameter("dPRadio")), MWClassID.DOUBLE);
            params[6] = new MWNumericArray(Double.parseDouble(request.getParameter("dTORadio")), MWClassID.DOUBLE);

            params[7] = new MWNumericArray(Double.parseDouble(request.getParameter("sVariation")), MWClassID.DOUBLE);

            params[8] = new MWNumericArray(dAttributes, MWClassID.DOUBLE);
            params[9] = new MWNumericArray(dInstances, MWClassID.DOUBLE);

            params[10] = new MWNumericArray(Double.parseDouble(request.getParameter("dPAttributes")), MWClassID.DOUBLE);
            params[11] = new MWNumericArray(Double.parseDouble(request.getParameter("dPInstances")), MWClassID.DOUBLE);

            params[12] = new MWNumericArray(Datatrain, MWClassID.DOUBLE);
            params[13] = new MWNumericArray(Datapre, MWClassID.DOUBLE);

            /**/
            pw.write("<table><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>vpath</td><td>&nbsp;</td><td>"+vpath+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>vfile</td><td>&nbsp;</td><td>"+vfile+"</td></tr>");
            pw.write("<br>");
            pw.write("<tr><td>&nbsp;</td><td>sFileData</td><td>&nbsp;</td><td>"+sFileData+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>sPFileData</td><td>&nbsp;</td><td>"+sPFileData+"</td></tr>");
            pw.write("<br>");
            pw.write("<tr><td>&nbsp;</td><td>nValueC</td><td>&nbsp;</td><td>"+nValueC+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>nValueS</td><td>&nbsp;</td><td>"+nValueS+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dHoldOut</td><td>&nbsp;</td><td>"+dHoldOut+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dCrossValidation</td><td>&nbsp;</td><td>"+dCrossValidation+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dNormalRadio</td><td>&nbsp;</td><td>"+dNormalRadio+"</td></tr>");
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
                final LSSVRClass m = new LSSVRClass();
                try {
                    Object results[] = m.ProgramLSSVR(1,vpath,vfile,nValueC,nValueS,dHoldOut,dCrossValidation,dNormalRadio,dPRadio,dTORadio,sVariation,dAttributes,dInstances,dPAttributes,dPInstances,Datatrain,Datapre);

                    try {
                        /*
                        pw.write("<table><tr><td>&nbsp;</td>");
                        pw.write("<td><h3><b>Output:</b></h3></td>");
                        pw.write("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
                        pw.write("<td align='right'>Performance &nbsp; = &nbsp;</td>");
                        */

                        final MWArray firstResult = (MWArray) results[0];
                        final String output = firstResult.toString();

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
}
    

