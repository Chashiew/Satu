/* @author JDK
 *
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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

import ProgramNiMOPSGraph.NiMOPSGraphClass;

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

    private NiMOPSGraphClass cWF = null;

    public SFALSSVRGraphServlet() {
        super();
        try {
            cWF = new NiMOPSGraphClass();
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
        //int GraphNo = Integer.parseInt(request.getParameter("GraphNo"));

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
            
        /*
        pw.write("opt GraphNo = ");
        pw.write("<input type='text' size='100' value='"+nOption+"' readonly>");
        pw.write("<input type='text' size='100' value='"+GraphNo+"' readonly>");
        pw.write("<br>");
        */

        if (nOption == 1) {
        }
        else if (nOption == 2) {
            //performance:
            
            int iOpt = 0;   //no need optimum point
            int nCol = 0;

            double Xmin = 1000000.0;
            double Xmax = -1000000.0;
            double Ymin = 1000000.0;
            double Ymax = -1000000.0;
            
            int XYRange = 1;
            int bin = 0;    //not needed here

            //String sFileData = request.getParameter("sFileData");
            //String file = request.getSession().getServletContext().getRealPath("/") + sFileData;
            //sFileData="Result05.txt";

            String vpath = request.getParameter("vpath");
            String vfile = request.getParameter("vfile");
            String file="";

            /*
            pw.write("vpath vfile = ");
            pw.write("<input type='text' size='100' value='"+vpath+"' readonly>");
            pw.write("<input type='text' size='100' value='"+vfile+"' readonly>");
            pw.write("<br>");
            */

            double opt = 2;
            file = vpath + vfile + "04a.txt";
            opt = Double.parseDouble(request.getParameter("opt"));
            /*if (vfile != "") {
                if (GraphNo == 31) {
                    file = vpath + vfile + "04a.txt";
                    opt = Double.parseDouble(request.getParameter("opt"));
                } else if (GraphNo == 32) {
                    file = vpath + vfile + "04b.txt";
                    opt = Double.parseDouble(request.getParameter("opt"));
                } else if (GraphNo == 33) {
                    file = vpath + vfile + "04c.txt";
                    opt = Double.parseDouble(request.getParameter("opt"));
                } else if (GraphNo == 34) {
                    file = vpath + vfile + "04d.txt";
                    opt = Double.parseDouble(request.getParameter("opt"));
                } else if (GraphNo == 35) {
                    file = vpath + vfile + "04a.txt";
                    opt = Double.parseDouble(request.getParameter("opt"));
                }
            } else {
                file = "SFAR03Result04a.txt"; //kalo vapath kosong
            }*/
            
            String line = null;

            /*
            pw.write("GraphNo file = ");
            pw.write("<input type='text' size='100' value='"+GraphNo+"' readonly>");
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
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            /*
            pw.write("nCol = ");
            pw.write("<input type='text' size='100' value='"+nCol+"' readonly>");
            pw.write("<br>");
            */

            double[][] dataX = new double[nCol][1];
            double[][] dataY = new double[nCol][1];
            double[][] dataYY = new double[1][1];

            double[][] dataXopt = new double[2][1];
            double[][] dataYopt = new double[2][1];
            
            double[][] dataX1 = new double[1][1];
            double[][] dataY1 = new double[1][1];
            double[][] dataX2 = new double[1][1];
            double[][] dataY2 = new double[1][1];
            double[][] dataX3 = new double[1][1];
            double[][] dataY3 = new double[1][1];
            
            dataYY[0][0]=1.0;

            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;
                int iXYMin;
                int iXYMax;

                line = br.readLine();
                j=0;
                while (line != null) {
                    cols = line.split("\\t");

                    sDummy = cols[0];
                    dataX[j][0]=Double.parseDouble(sDummy);

                    sDummy = cols[1];
                    dataY[j][0]=Double.parseDouble(sDummy);

                    if (Xmin > dataX[j][0]) Xmin = dataX[j][0];
                    if (Xmax < dataX[j][0]) Xmax = dataX[j][0];

                    if (Xmin > dataY[j][0]) Xmin = dataY[j][0];
                    if (Xmax < dataY[j][0]) Xmax = dataY[j][0];

                    /*
                    pw.write("cols[0] cols[1] Xmin Xmax = ");
                    pw.write("<input type='text' size='100' value='"+cols[0]+"' readonly>");
                    pw.write("<input type='text' size='100' value='"+cols[1]+"' readonly>");
                    pw.write("<input type='text' size='100' value='"+Xmin+"' readonly>");
                    pw.write("<input type='text' size='100' value='"+Xmax+"' readonly>");
                    pw.write("<br>");
                    */

                    j=j+1;

                    line = br.readLine();
                }
                br.close();

                Xmin = Xmin;
                Xmax = Xmax;
                
                Ymin = Xmin;
                Ymax = Xmax;
                
                iXYMin = (int) (Ymin);

                /*
                pw.write("Xmin Xmax iXYMin = ");
                pw.write("<input type='text' size='100' value='"+Xmin+"' readonly>");
                pw.write("<input type='text' size='100' value='"+Xmax+"' readonly>");
                pw.write("<input type='text' size='100' value='"+iXYMin+"' readonly>");
                pw.write("<br>");
                */

                if (iXYMin > Ymin) iXYMin = iXYMin - 1;
                
                iXYMax = (int) (Ymax);
                XYRange = (iXYMax - iXYMin)/7;
                iXYMax  = iXYMin + XYRange*7;
                if (iXYMax < Ymax) {
                    XYRange = XYRange + 1;
                    iXYMax  = iXYMin + XYRange*7;
                }
                
                dataXopt[0][0]=iXYMin; 
                dataXopt[1][0]=iXYMax; 
                dataYopt[0][0]=iXYMin;
                dataYopt[1][0]=iXYMax;
                
                Xmin = iXYMin;
                Xmax = iXYMax;

                Ymin = iXYMin;
                Ymax = iXYMax;

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

            /*
             * Get the parameters and convert them to MWArray
             */
            //Object[] params = new MWArray[11];
            
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
            
            //dataX
            //dataY
            //dataYY
            //dataXopt
            //dataYopt
            //Xmin
            //Xmax
            //Ymin
            //Ymax
            //bin
            //iOpt
            
            //try {
            //    final NiMOPSGraphClass m = new NiMOPSGraphClass();
            
            /**/
            try {
                Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,dataYY,dataXopt,dataYopt,dataX1,dataY1,dataX2,dataY2,dataX3,dataY3,Xmin,Xmax,Ymin,Ymax,bin,iOpt);

                //try {
                    //cWF.ProgramNiMOPSGraph(result, params);

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
            /**/
            
            // GraphNo. 32
            file = vpath + vfile + "04b.txt";
            opt = Double.parseDouble(request.getParameter("opt"));
            
            line = null;

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

            dataX = new double[nCol][1];
            dataY = new double[nCol][1];
            dataYY = new double[1][1];

            dataXopt = new double[2][1];
            dataYopt = new double[2][1];
            
            dataX1 = new double[1][1];
            dataY1 = new double[1][1];
            dataX2 = new double[1][1];
            dataY2 = new double[1][1];
            dataX3 = new double[1][1];
            dataY3 = new double[1][1];
            
            dataYY[0][0]=1.0;

            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;
                int iXYMin;
                int iXYMax;

                line = br.readLine();
                j=0;
                while (line != null) {
                    cols = line.split("\\t");

                    sDummy = cols[0];
                    dataX[j][0]=Double.parseDouble(sDummy);

                    sDummy = cols[1];
                    dataY[j][0]=Double.parseDouble(sDummy);

                    if (Xmin > dataX[j][0]) Xmin = dataX[j][0];
                    if (Xmax < dataX[j][0]) Xmax = dataX[j][0];

                    if (Xmin > dataY[j][0]) Xmin = dataY[j][0];
                    if (Xmax < dataY[j][0]) Xmax = dataY[j][0];

                    j=j+1;

                    line = br.readLine();
                }
                br.close();

                Xmin = Xmin;
                Xmax = Xmax;
                
                Ymin = Xmin;
                Ymax = Xmax;
                
                iXYMin = (int) (Ymin);

                if (iXYMin > Ymin) iXYMin = iXYMin - 1;
                
                iXYMax = (int) (Ymax);
                XYRange = (iXYMax - iXYMin)/7;
                iXYMax  = iXYMin + XYRange*7;
                if (iXYMax < Ymax) {
                    XYRange = XYRange + 1;
                    iXYMax  = iXYMin + XYRange*7;
                }
                
                dataXopt[0][0]=iXYMin; 
                dataXopt[1][0]=iXYMax; 
                dataYopt[0][0]=iXYMin;
                dataYopt[1][0]=iXYMax;
                
                Xmin = iXYMin;
                Xmax = iXYMax;

                Ymin = iXYMin;
                Ymax = iXYMax;

            }
            catch (Exception e) {
                e.printStackTrace();
            }
            
            /**/
            try {
                Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,dataYY,dataXopt,dataYopt,dataX1,dataY1,dataX2,dataY2,dataX3,dataY3,Xmin,Xmax,Ymin,Ymax,bin,iOpt);

                //try {
                    //cWF.ProgramNiMOPSGraph(result, params);

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
                } finally {
                    MWArray.disposeArray(results);
                }

            } catch (MWException e) {
                throw new ServletException(e);
            }
            /**/
            
            // GraphNo. 33
            file = vpath + vfile + "04c.txt";
            opt = Double.parseDouble(request.getParameter("opt"));
            
            line = null;

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

            dataX = new double[nCol][1];
            dataY = new double[nCol][1];
            dataYY = new double[1][1];

            dataXopt = new double[2][1];
            dataYopt = new double[2][1];
            
            dataX1 = new double[1][1];
            dataY1 = new double[1][1];
            dataX2 = new double[1][1];
            dataY2 = new double[1][1];
            dataX3 = new double[1][1];
            dataY3 = new double[1][1];
            
            dataYY[0][0]=1.0;

            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;
                int iXYMin;
                int iXYMax;

                line = br.readLine();
                j=0;
                while (line != null) {
                    cols = line.split("\\t");

                    sDummy = cols[0];
                    dataX[j][0]=Double.parseDouble(sDummy);

                    sDummy = cols[1];
                    dataY[j][0]=Double.parseDouble(sDummy);

                    if (Xmin > dataX[j][0]) Xmin = dataX[j][0];
                    if (Xmax < dataX[j][0]) Xmax = dataX[j][0];

                    if (Xmin > dataY[j][0]) Xmin = dataY[j][0];
                    if (Xmax < dataY[j][0]) Xmax = dataY[j][0];

                    j=j+1;

                    line = br.readLine();
                }
                br.close();

                Xmin = Xmin;
                Xmax = Xmax;
                
                Ymin = Xmin;
                Ymax = Xmax;
                
                iXYMin = (int) (Ymin);

                if (iXYMin > Ymin) iXYMin = iXYMin - 1;
                
                iXYMax = (int) (Ymax);
                XYRange = (iXYMax - iXYMin)/7;
                iXYMax  = iXYMin + XYRange*7;
                if (iXYMax < Ymax) {
                    XYRange = XYRange + 1;
                    iXYMax  = iXYMin + XYRange*7;
                }
                
                dataXopt[0][0]=iXYMin; 
                dataXopt[1][0]=iXYMax; 
                dataYopt[0][0]=iXYMin;
                dataYopt[1][0]=iXYMax;
                
                Xmin = iXYMin;
                Xmax = iXYMax;

                Ymin = iXYMin;
                Ymax = iXYMax;

            }
            catch (Exception e) {
                e.printStackTrace();
            }

            try {
                Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,dataYY,dataXopt,dataYopt,dataX1,dataY1,dataX2,dataY2,dataX3,dataY3,Xmin,Xmax,Ymin,Ymax,bin,iOpt);

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
                } finally {
                    MWArray.disposeArray(results);
                }

            } catch (MWException e) {
                throw new ServletException(e);
            }
            /**/
            
            // GraphNo. 34
            file = vpath + vfile + "04d.txt";
            opt = Double.parseDouble(request.getParameter("opt"));
            
            line = null;

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

            dataX = new double[nCol][1];
            dataY = new double[nCol][1];
            dataYY = new double[1][1];

            dataXopt = new double[2][1];
            dataYopt = new double[2][1];
            
            dataX1 = new double[1][1];
            dataY1 = new double[1][1];
            dataX2 = new double[1][1];
            dataY2 = new double[1][1];
            dataX3 = new double[1][1];
            dataY3 = new double[1][1];
            
            dataYY[0][0]=1.0;

            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] headers;
                String[] cols;
                int i;
                int j;
                int iXYMin;
                int iXYMax;

                line = br.readLine();
                j=0;
                while (line != null) {
                    cols = line.split("\\t");

                    sDummy = cols[0];
                    dataX[j][0]=Double.parseDouble(sDummy);

                    sDummy = cols[1];
                    dataY[j][0]=Double.parseDouble(sDummy);

                    if (Xmin > dataX[j][0]) Xmin = dataX[j][0];
                    if (Xmax < dataX[j][0]) Xmax = dataX[j][0];

                    if (Xmin > dataY[j][0]) Xmin = dataY[j][0];
                    if (Xmax < dataY[j][0]) Xmax = dataY[j][0];

                    j=j+1;

                    line = br.readLine();
                }
                br.close();

                Xmin = Xmin;
                Xmax = Xmax;
                
                Ymin = Xmin;
                Ymax = Xmax;
                
                iXYMin = (int) (Ymin);

                if (iXYMin > Ymin) iXYMin = iXYMin - 1;
                
                iXYMax = (int) (Ymax);
                XYRange = (iXYMax - iXYMin)/7;
                iXYMax  = iXYMin + XYRange*7;
                if (iXYMax < Ymax) {
                    XYRange = XYRange + 1;
                    iXYMax  = iXYMin + XYRange*7;
                }
                
                dataXopt[0][0]=iXYMin; 
                dataXopt[1][0]=iXYMax; 
                dataYopt[0][0]=iXYMin;
                dataYopt[1][0]=iXYMax;
                
                Xmin = iXYMin;
                Xmax = iXYMax;

                Ymin = iXYMin;
                Ymax = iXYMax;

            }
            catch (Exception e) {
                e.printStackTrace();
            }

            try {
                Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,dataYY,dataXopt,dataYopt,dataX1,dataY1,dataX2,dataY2,dataX3,dataY3,Xmin,Xmax,Ymin,Ymax,bin,iOpt);

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
                } finally {
                    MWArray.disposeArray(results);
                }

            } catch (MWException e) {
                throw new ServletException(e);
            }
            /**/
            
            pw.close();
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
            
            double[][] dataX1 = new double[1][1];
            double[][] dataY1 = new double[1][1];
            double[][] dataX2 = new double[1][1];
            double[][] dataY2 = new double[1][1];
            double[][] dataX3 = new double[1][1];
            double[][] dataY3 = new double[1][1];
            
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
            //Object[] params = new MWArray[11];

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
                Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,dataYY,dataXopt,dataYopt,dataX1,dataY1,dataX2,dataY2,dataX3,dataY3,Xmin,Xmax,Ymin,Ymax,iOpt);
                        
                try {
                    
                    //cWF.ProgramNiMOPSGraph(result, params);
                    
                    WebFigure webFig = (WebFigure) ((MWJavaObjectRef) results[0]).get();
                    // Attach to application cache
                    request.getSession().getServletContext().setAttribute(
                            "NimopsFigure", webFig);

                    WebFigureHtmlGenerator htmlGen = new WebFigureHtmlGenerator(request);

                    //response.setContentType("text/html");
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
