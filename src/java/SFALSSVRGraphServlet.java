/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author JDK
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.io.PrintStream;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

import java.io.FileReader;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mathworks.toolbox.javabuilder.MWArray;
import com.mathworks.toolbox.javabuilder.MWClassID;
import com.mathworks.toolbox.javabuilder.MWException;
import com.mathworks.toolbox.javabuilder.MWJavaObjectRef;
import com.mathworks.toolbox.javabuilder.MWNumericArray;
import com.mathworks.toolbox.javabuilder.webfigures.WebFigure;
import com.mathworks.toolbox.javabuilder.webfigures.WebFigureHtmlGenerator;

import ProgramSFALSSVRGraph.SFALSSVRGraphClass;

public class SFALSSVRGraphServlet extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private static final long serialVersionUID = 1L;

    private SFALSSVRGraphClass cWF = null;

    public SFALSSVRGraphServlet() {
        super();
        try {
            cWF = new SFALSSVRGraphClass();
        } catch (MWException e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
        super.destroy();
        cWF.dispose();
    }

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        /*
        double Xmin = Double.parseDouble(request.getParameter("Xmin"));
        double Xmax = Double.parseDouble(request.getParameter("Xmax"));
        double Ymin = Double.parseDouble(request.getParameter("Ymin"));
        double Ymax = Double.parseDouble(request.getParameter("Ymax"));
        
        int iOpt = Integer.parseInt(request.getParameter("iOpt"));
        */
        
        int nOption = Integer.parseInt(request.getParameter("opt"));

        if (nOption == 0) {
            //performance:
            
            int iOpt = 0;   //no need optimum point
            int nCol = 0;

            double Xmin = 1000000.0;
            double Xmax = -1000000.0;
            double Ymin = 1000000.0;
            double Ymax = -1000000.0;

            //String sFileData = request.getParameter("sFileData");
            //String file = request.getSession().getServletContext().getRealPath("/") + sFileData;
            //sFileData="Result05.txt";

            String vpath = request.getParameter("vpath");
            String vfile = request.getParameter("vfile");
            String file;
            if (vfile != "") {
                file = vpath + vfile + "05.txt";
            } else {
                file = "Result05.txt";
            }
            
            String line = null;

            response.setContentType("text/html");
            PrintWriter pw = response.getWriter();
            /*
            pw.write("file = ");
            pw.write("<input type='text' size='100' value='"+file+"' readonly>");
            pw.write("<br>");
            */

            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;

                // first line: title
                line = br.readLine();
                nCol = 0;
                while (line != null) {
                    nCol = nCol + 1;
                    line = br.readLine();
                }
                br.close();

                /*
                pw.write("nCol = ");
                pw.write("<input type='text' size='100' value='"+nCol+"' readonly>");
                pw.write("<br>");
                */
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            double[][] dataX = new double[nCol][1];
            double[][] dataY = new double[nCol][1];
            double[][] dataYY = new double[nCol][1];

            double[][] dataXopt = new double[1][1];
            double[][] dataYopt = new double[1][1];
            
            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;

                line = br.readLine();
                j=0;
                while (line != null) {
                    cols = line.split("\\t");

                    sDummy = cols[1];
                    dataX[j][0]=Double.parseDouble(sDummy);

                    sDummy = cols[2];
                    dataY[j][0]=Double.parseDouble(sDummy);

                    sDummy = cols[3];
                    dataYY[j][0]=Double.parseDouble(sDummy);

                    if (Xmin > dataX[j][0]) Xmin = dataX[j][0];
                    if (Xmax < dataX[j][0]) Xmax = dataX[j][0];

                    if (Ymin > dataY[j][0]) Ymin = dataY[j][0];
                    if (Ymax < dataY[j][0]) Ymax = dataY[j][0];

                    if (Ymin > dataYY[j][0]) Ymin = dataYY[j][0];
                    if (Ymax < dataYY[j][0]) Ymax = dataYY[j][0];

                    j=j+1;

                    line = br.readLine();
                }
                br.close();

                Xmin = Xmin - 1;
                Xmax = Xmax + 1;
                
                Ymin = 0;
                if (Ymax<25) Ymax = 25;
                else if (Ymax<50) Ymax = 50;
                else if (Ymax<75) Ymax = 75;
                else if (Ymax<100) Ymax = 100;
                else if (Ymax<125) Ymax = 125;
                else if (Ymax<150) Ymax = 150;
                else if (Ymax<200) Ymax = 200;
                else if (Ymax<250) Ymax = 250;
                else if (Ymax<300) Ymax = 300;
                else if (Ymax<400) Ymax = 400;
                else if (Ymax<500) Ymax = 500;
                else if (Ymax<750) Ymax = 750;
                else Ymax = 1000;

                /*
                pw.write("dataX[0][0] = ");
                pw.write("<input type='text' size='100' value='"+dataX[0][0]+"' readonly>");
                pw.write("<br>");
                pw.write("dataX[4][0] = ");
                pw.write("<input type='text' size='100' value='"+dataX[4][0]+"' readonly>");
                pw.write("<br>");
                pw.write("dataY[0][0] = ");
                pw.write("<input type='text' size='100' value='"+dataY[0][0]+"' readonly>");
                pw.write("<br>");
                pw.write("dataY[4][0] = ");
                pw.write("<input type='text' size='100' value='"+dataY[4][0]+"' readonly>");
                pw.write("<br>");
                pw.write("Xmin = ");
                pw.write("<input type='text' size='100' value='"+Xmin+"' readonly>");
                pw.write("<br>");
                pw.write("Xmax = ");
                pw.write("<input type='text' size='100' value='"+Xmax+"' readonly>");
                pw.write("<br>");
                pw.write("Ymin = ");
                pw.write("<input type='text' size='100' value='"+Ymin+"' readonly>");
                pw.write("<br>");
                pw.write("Ymax = ");
                pw.write("<input type='text' size='100' value='"+Ymax+"' readonly>");
                pw.write("<br>");
                */
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            dataXopt[0][0]=0; 
            dataYopt[0][0]=0;

            /*
             * Get the parameters and convert them to MWArray
             */
            Object[] params = new MWArray[11];
            
            //Object[] result = new Object[1];

            /*
            params[0] = new MWNumericArray(Double.parseDouble(request.getParameter("opt")), MWClassID.DOUBLE);
            params[1] = new MWNumericArray(dataX, MWClassID.DOUBLE);
            params[2] = new MWNumericArray(dataY, MWClassID.DOUBLE);
            params[3] = new MWNumericArray(dataYY, MWClassID.DOUBLE);
            params[4] = new MWNumericArray(dataXopt, MWClassID.DOUBLE);
            params[5] = new MWNumericArray(dataYopt, MWClassID.DOUBLE);
            params[6] = new MWNumericArray(Xmin, MWClassID.DOUBLE);
            params[7] = new MWNumericArray(Xmax, MWClassID.DOUBLE);
            params[8] = new MWNumericArray(Ymin, MWClassID.DOUBLE);
            params[9] = new MWNumericArray(Ymax, MWClassID.DOUBLE);
            params[10] = new MWNumericArray(iOpt, MWClassID.DOUBLE);
            */
            
            double opt = Double.parseDouble(request.getParameter("opt"));
            //dataX
            //dataY
            //dataYY
            //dataXopt
            //dataYopt
            //Xmin
            //Xmax
            //Ymin
            //Ymax
            //iOpt
            
            //try {
            //    final SFALSSVRGraphClass m = new SFALSSVRGraphClass();
            
                try {
                    Object results[] = cWF.ProgramSFALSSVRGraph(1, vpath, vfile, opt,dataX,dataY,dataYY,dataXopt,dataYopt,Xmin,Xmax,Ymin,Ymax,iOpt);
                        
                    //try {
                        //cWF.ProgramSFALSSVRGraph(result, params);
                        
                    try {
                        WebFigure webFig = (WebFigure) ((MWJavaObjectRef) results[0]).get();
                        // Attach to application cache
                        request.getSession().getServletContext().setAttribute(
                            "NimopsFigure", webFig);

                        WebFigureHtmlGenerator htmlGen = new WebFigureHtmlGenerator(request);

                        response.setContentType("text/html");
                        pw.write(htmlGen.getFigureEmbedString(
                            webFig,
                            "NimopsFigure",
                            "application",
                            "640",
                            "480",
                            null));
                        pw.close();
                    } finally {
                        MWArray.disposeArray(results);
                    }

                    //} catch (MWException e) {
                    //    e.printStackTrace();
                    //}
                        
                //} finally {
                //    cWF.dispose();
                //}
                
            } catch (MWException e) {
                throw new ServletException(e);
            }
        }
        else {
            //tracing path:
            
            int iOpt = 1;   //needing optimum point
            int nCol = 0;

            double Xmin = 1000000.0;
            double Xmax = -1000000.0;
            double Ymin = 1000000.0;
            double Ymax = -1000000.0;

            //String sFileData = request.getParameter("sFileData");
            //sFileData="Result06.txt";
            //String file = request.getSession().getServletContext().getRealPath("/") + sFileData;
            
            String vpath = request.getParameter("vpath");
            String vfile = request.getParameter("vfile");
            String file;
            if (vfile != "") {
                file = vpath + vfile + "06.txt";
            } else {
                file = "Result06.txt";
            }
            String line = null;

            response.setContentType("text/html");
            PrintWriter pw = response.getWriter();

            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;

                // first line: title
                line = br.readLine();
                nCol = 0;
                while (line != null) {
                    nCol = nCol + 1;
                    line = br.readLine();
                }
                br.close();
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            double[][] dataX = new double[nCol][1];
            double[][] dataY = new double[nCol][1];
            double[][] dataYY = new double[nCol][1];

            double[][] dataXopt = new double[1][1];
            double[][] dataYopt = new double[1][1];
            
            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String sDummyP;
                String[] headers;
                String[] cols;
                int i;
                int j;
                double iDummyP;
                double iDummy;

                line = br.readLine();
                j=0;
                iDummyP=0;
                while (line != null) {
                    cols = line.split("\\t");

                    sDummy = cols[1];

                    /*
                    pw.write("sDummy = ");
                    pw.write("<input type='text' size='10' value='"+sDummy+"' readonly>");
                    pw.write("<br>");
                    */
                    
                    iDummy = Double.parseDouble(sDummy);
                    
                    /*
                    pw.write("iDummy = ");
                    pw.write("<input type='text' size='10' value='"+iDummy+"' readonly>");
                    pw.write("<br>");
                    */
                    
                    if (iDummyP != iDummy) {
                        iDummyP = iDummy;
                        j=0;
                        iOpt=j;
                        Xmin = 1000000.0;
                        Xmax = -1000000.0;
                        Ymin = 1000000.0;
                        Ymax = -1000000.0;
                    }

                    /*
                    pw.write("iDummyP = ");
                    pw.write("<input type='text' size='10' value='"+iDummyP+"' readonly>");
                    pw.write("<br>");
                    */
                    
                    sDummy = cols[3];
                    dataX[j][0]=Double.parseDouble(sDummy);

                    sDummy = cols[4];
                    dataY[j][0]=Double.parseDouble(sDummy);

                    sDummy = cols[5];
                    dataYY[j][0]=Double.parseDouble(sDummy);

                    if (Ymin > dataYY[j][0]) {
                        Ymin = dataYY[j][0];
                        iOpt=j;
                        Xmin = dataX[j][0];
                        Xmax = dataY[j][0];
                    }
                    
                    //if (Ymax < dataYY[j][0]) Ymax = dataYY[j][0];

                    j=j+1;

                    line = br.readLine();
                }
                br.close();
                
                dataXopt[0][0]=Xmin;
                dataYopt[0][0]=Xmax;

                Xmin = Double.parseDouble(request.getParameter("dC1"));
                Xmax = Double.parseDouble(request.getParameter("dC2"));
                
                Ymin = Double.parseDouble(request.getParameter("dS1"));
                Ymax = Double.parseDouble(request.getParameter("dS2"));
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            /*
            pw.write("opt = ");
            pw.write("<input type='text' size='10' value='"+Double.parseDouble(request.getParameter("opt"))+"' readonly>");
            pw.write("<br>");
            
            pw.write("dataX[0][0] = ");
            pw.write("<input type='text' size='10' value='"+dataX[0][0]+"' readonly>");
            pw.write("<br>");
            pw.write("dataX[4][0] = ");
            pw.write("<input type='text' size='10' value='"+dataX[4][0]+"' readonly>");
            pw.write("<br>");
            
            pw.write("dataY[0][0] = ");
            pw.write("<input type='text' size='10' value='"+dataY[0][0]+"' readonly>");
            pw.write("<br>");
            pw.write("dataY[4][0] = ");
            pw.write("<input type='text' size='10' value='"+dataY[4][0]+"' readonly>");
            pw.write("<br>");
            
            pw.write("dataXopt[0][0] = ");
            pw.write("<input type='text' size='10' value='"+dataXopt[0][0]+"' readonly>");
            pw.write("<br>");
            pw.write("dataYopt[0][0] = ");
            pw.write("<input type='text' size='10' value='"+dataYopt[0][0]+"' readonly>");
            pw.write("<br>");

            pw.write("Xmin = ");
            pw.write("<input type='text' size='10' value='"+Xmin+"' readonly>");
            pw.write("<br>");
            pw.write("Xmax = ");
            pw.write("<input type='text' size='10' value='"+Xmax+"' readonly>");
            pw.write("<br>");
            pw.write("Ymin = ");
            pw.write("<input type='text' size='10' value='"+Ymin+"' readonly>");
            pw.write("<br>");
            pw.write("Ymax = ");
            pw.write("<input type='text' size='10' value='"+Ymax+"' readonly>");
            pw.write("<br>");
            pw.write("iOpt = ");
            pw.write("<input type='text' size='10' value='"+iOpt+"' readonly>");
            pw.write("<br>");
            */
            
            /*
             * Get the parameters and convert them to MWArray
             */
            Object[] params = new MWArray[11];

            //Object[] result = new Object[1];

            /*
            params[0] = new MWNumericArray(Double.parseDouble(request.getParameter("opt")), MWClassID.DOUBLE);
            params[1] = new MWNumericArray(dataX, MWClassID.DOUBLE);
            params[2] = new MWNumericArray(dataY, MWClassID.DOUBLE);
            params[3] = new MWNumericArray(dataYY, MWClassID.DOUBLE);
            params[4] = new MWNumericArray(dataXopt, MWClassID.DOUBLE);
            params[5] = new MWNumericArray(dataYopt, MWClassID.DOUBLE);
            params[6] = new MWNumericArray(Xmin, MWClassID.DOUBLE);
            params[7] = new MWNumericArray(Xmax, MWClassID.DOUBLE);
            params[8] = new MWNumericArray(Ymin, MWClassID.DOUBLE);
            params[9] = new MWNumericArray(Ymax, MWClassID.DOUBLE);
            params[10] = new MWNumericArray(iOpt, MWClassID.DOUBLE);
            */
            
            /*
            params[0] = new MWNumericArray(Double.parseDouble(request.getParameter("opt")), MWClassID.DOUBLE);
            params[1] = new MWNumericArray(dataX, MWClassID.DOUBLE);
            params[2] = new MWNumericArray(dataY, MWClassID.DOUBLE);
            params[3] = new MWNumericArray(dataYY, MWClassID.DOUBLE);
            params[4] = new MWNumericArray(dataXopt, MWClassID.DOUBLE);
            params[5] = new MWNumericArray(dataYopt, MWClassID.DOUBLE);
            params[6] = new MWNumericArray(Xmin, MWClassID.DOUBLE);
            params[7] = new MWNumericArray(Xmax, MWClassID.DOUBLE);
            params[8] = new MWNumericArray(Ymin, MWClassID.DOUBLE);
            params[9] = new MWNumericArray(Ymax, MWClassID.DOUBLE);
            params[10] = new MWNumericArray(iOpt, MWClassID.DOUBLE);
            */
            
            double opt = Double.parseDouble(request.getParameter("opt"));
            //dataX
            //dataY
            //dataYY
            //dataXopt
            //dataYopt
            //Xmin
            //Xmax
            //Ymin
            //Ymax
            //iOpt
            
            try {
                Object results[] = cWF.ProgramSFALSSVRGraph(1, vpath, vfile, opt,dataX,dataY,dataYY,dataXopt,dataYopt,Xmin,Xmax,Ymin,Ymax,iOpt);
                        
                try {
                    
                    //cWF.ProgramSFALSSVRGraph(result, params);
                    
                    WebFigure webFig = (WebFigure) ((MWJavaObjectRef) results[0]).get();
                    // Attach to application cache
                    request.getSession().getServletContext().setAttribute(
                            "NimopsFigure", webFig);

                    WebFigureHtmlGenerator htmlGen = new WebFigureHtmlGenerator(request);

                    response.setContentType("text/html");
                    pw.write(htmlGen.getFigureEmbedString(
                            webFig,
                            "NimopsFigure",
                            "application",
                            "640",
                            "480",
                            null));
                    pw.close();
                } finally {
                    MWArray.disposeArray(results);
                }
            } catch (MWException e) {
                e.printStackTrace();
            }
        }
    }
}
