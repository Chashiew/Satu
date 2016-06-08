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

import ProgramLSSVM.LSSVMClass;
import java.util.ArrayList;
import java.util.Collections;

public class LSSVMServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    private LSSVMClass cLSSVR = null;

    private HttpServletRequest servletRequest;

    public LSSVMServlet() {
        super();
        try {
            cLSSVR = new LSSVMClass();
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
                
        double nValueCLSSVM = Double.parseDouble(request.getParameter("nValueCLSSVM"));
        double nValueSLSSVM = Double.parseDouble(request.getParameter("nValueSLSSVM"));
        double dHoldOutLSSVM = Double.parseDouble(request.getParameter("dHoldOutLSSVM"));
        double dCrossValidationLSSVM = Double.parseDouble(request.getParameter("dCrossValidationLSSVM"));

        double dNormalRadioLSSVM = Double.parseDouble(request.getParameter("dNormalRadioLSSVM"));
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
                ArrayList<String> arr = new ArrayList();
                while ((line = br.readLine()) != null)
                {
                    arr.add(line);
                }
                br.close();
                
                String header = arr.remove(0);
                Collections.shuffle(arr);
                
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;

                // first line: title
                //line = br.readLine();

                if (arr.size() > 0) {
                    //cols = line.split("\\t");

                    // second line: column header
                    //line = br.readLine();
                    headers = header.split("\\t");

                    // third line and so on: data ... last column = dependent variable  
                    //line = br.readLine(); 
                    for (j = 0; j < arr.size(); j++)
                    {
                        line = arr.get(j);
                        cols = line.split("\\t");
                        for (i = 0; i < ncol; i += 1) {
                            sDummy = cols[i];
                            Datatrain[j][i]=Double.parseDouble(sDummy);
                        }
                    }
                    /*j=0;
                    while (line != null) {
                        cols = line.split("\\t");
                        for (i = 0; i < ncol; i += 1) {
                            sDummy = cols[i];
                            Datatrain[j][i]=Double.parseDouble(sDummy);
                        }
                        j=j+1;
                        line = br.readLine();
                    }*/
                }
                //br.close();
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
            
            Object[] params = new MWArray[31];  //[37];

            params[0] = new MWNumericArray(Double.parseDouble(request.getParameter("nValueCLSSVM")), MWClassID.DOUBLE);
            params[1] = new MWNumericArray(Double.parseDouble(request.getParameter("nValueCLSSVM")), MWClassID.DOUBLE);
            params[2] = new MWNumericArray(Double.parseDouble(request.getParameter("dHoldOutLSSVM")), MWClassID.DOUBLE);
            params[3] = new MWNumericArray(Double.parseDouble(request.getParameter("dCrossValidationLSSVM")), MWClassID.DOUBLE);

            params[4] = new MWNumericArray(Double.parseDouble(request.getParameter("dNormalRadioLSSVM")), MWClassID.DOUBLE);
            params[5] = new MWNumericArray(Double.parseDouble(request.getParameter("dPRadioLSSVM")), MWClassID.DOUBLE);
            params[6] = new MWNumericArray(Double.parseDouble(request.getParameter("dTORadioLSSVM")), MWClassID.DOUBLE);

            params[7] = new MWNumericArray(Double.parseDouble(request.getParameter("sVariation")), MWClassID.DOUBLE);

            params[8] = new MWNumericArray(dAttributesLSSVM, MWClassID.DOUBLE);
            params[9] = new MWNumericArray(dInstancesLSSVM, MWClassID.DOUBLE);

            params[10] = new MWNumericArray(Double.parseDouble(request.getParameter("dPAttributesLSSVM")), MWClassID.DOUBLE);
            params[11] = new MWNumericArray(Double.parseDouble(request.getParameter("dPInstancesLSSVM")), MWClassID.DOUBLE);

            params[12] = new MWNumericArray(Datatrain, MWClassID.DOUBLE);
            params[13] = new MWNumericArray(Datapre, MWClassID.DOUBLE);

            pw.write("<table><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>vpath</td><td>&nbsp;</td><td>"+vpath+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>vfile</td><td>&nbsp;</td><td>"+vfile+"</td></tr>");
            pw.write("<br>");
            pw.write("<tr><td>&nbsp;</td><td>sFileDataLSSVM</td><td>&nbsp;</td><td>"+sFileDataLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>sPFileDataLSSVM</td><td>&nbsp;</td><td>"+sPFileDataLSSVM+"</td></tr>");
            pw.write("<br>");
            pw.write("<tr><td>&nbsp;</td><td>nValueCLSSVM</td><td>&nbsp;</td><td>"+nValueCLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>nValueSLSSVM</td><td>&nbsp;</td><td>"+nValueSLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dHoldOutLSSVM</td><td>&nbsp;</td><td>"+dHoldOutLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dCrossValidationLSSVM</td><td>&nbsp;</td><td>"+dCrossValidationLSSVM+"</td></tr>");
            pw.write("<tr><td>&nbsp;</td><td>dNormalRadioLSSVM</td><td>&nbsp;</td><td>"+dNormalRadioLSSVM+"</td></tr>");
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
                final LSSVMClass m = new LSSVMClass();
                try {
                    Object results[] = m.ProgramLSSVM(1,vpath,vfile,nValueCLSSVM,nValueSLSSVM,dHoldOutLSSVM,dCrossValidationLSSVM,dNormalRadioLSSVM,dPRadioLSSVM,dTORadioLSSVM,sVariation,dAttributesLSSVM,dInstancesLSSVM,dPAttributesLSSVM,dPInstancesLSSVM,Datatrain,Datapre);

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
                        pw.write("alert(\"Execution completed successfully! \\n\\nClick 'Numerical Results' to see the output\");");
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
