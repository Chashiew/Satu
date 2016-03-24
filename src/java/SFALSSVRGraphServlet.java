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
        int GraphNo = Integer.parseInt(request.getParameter("GraphNo"));

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
            
        /*
        pw.write("opt GraphNo = ");
        pw.write("<input type='text' size='100' value='"+nOption+"' readonly>");
        pw.write("<input type='text' size='100' value='"+GraphNo+"' readonly>");
        pw.write("<br>");
        */

        if (nOption == 2) {
            //prediction:
            
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
            
            if (vfile != "") {
                opt = Double.parseDouble(request.getParameter("opt"));
                if (GraphNo == 31) {
                    file = vpath + vfile + "04a.txt";
                } else if (GraphNo == 32) {
                    file = vpath + vfile + "04b.txt";
                } else if (GraphNo == 33) {
                    file = vpath + vfile + "04c.txt";
                } else if (GraphNo == 34) {
                    file = vpath + vfile + "04d.txt";
                } else if (GraphNo == 35) {
                    file = vpath + vfile + "04a.txt";
                }
            } else {
                file = "SFAR03Result04a.txt";
            }
            
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
                    pw.write("<center>");
                    pw.write("<br>");
                    pw.write(htmlGen.getFigureEmbedString(
                        webFig,
                        "NimopsFigure",
                        "application",
                        "640",
                        "480",
                        null));
                    pw.write("</center>");
                    pw.write("<br>");
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
            /**/
        }
        else if (nOption == 0) {
            //performance:
            
            int iOpt = 0;   //no need optimum point
            int bin = 0;    //not needed here
            double[][] dataXopt = new double[1][1];
            double[][] dataYopt = new double[1][1];
            double[][] dataX1 = new double[1][1];
            double[][] dataY1 = new double[1][1];
            double[][] dataX2 = new double[1][1];
            double[][] dataY2 = new double[1][1];
            double[][] dataX3 = new double[1][1];
            double[][] dataY3 = new double[1][1];
            
            double opt = 0;
            
            /*
            pw.write("nOption iOpt bin opt = ");
            pw.write("<input type='text' size='100' value='"+nOption+"' readonly>");
            pw.write("<input type='text' size='100' value='"+iOpt+"' readonly>");
            pw.write("<input type='text' size='100' value='"+bin+"' readonly>");
            pw.write("<input type='text' size='100' value='"+opt+"' readonly>");
            pw.write("<br>");
            */
            
            int nCol = 0;

            double Xmin = 0.0;
            double Xmax = 0.0;
            double Ymin = 1000000.0;
            double Ymax = -1000000.0;

            String vpath = request.getParameter("vpath");
            String vfile = request.getParameter("vfile");
            String file="";

            if (vfile != "") {
                file = vpath + vfile + "05.txt";
            } else {
                file = "SFAR03Result05.txt";
            }
            
            /*
            pw.write("Xmin vpath vfile file GraphNo = ");
            pw.write("<input type='text' size='100' value='"+Xmin+"' readonly>");
            pw.write("<input type='text' size='100' value='"+vpath+"' readonly>");
            pw.write("<input type='text' size='100' value='"+vfile+"' readonly>");
            pw.write("<input type='text' size='100' value='"+file+"' readonly>");
            pw.write("<input type='text' size='100' value='"+GraphNo+"' readonly>");
            pw.write("<br>");
            */
            
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
                    cols = line.split("\\t");

                    /*
                    pw.write("cols[0] cols[1] cols[2] cols[3] = ");
                    pw.write("<input type='text' size='100' value='"+cols[0]+"' readonly>");
                    pw.write("<input type='text' size='100' value='"+cols[1]+"' readonly>");
                    pw.write("<input type='text' size='100' value='"+cols[2]+"' readonly>");
                    pw.write("<input type='text' size='100' value='"+cols[3]+"' readonly>");
                    pw.write("<br>");
                    */
            
                    if (GraphNo == 41) {
                        if ((int)Double.parseDouble(cols[0]) == 1) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    } else if (GraphNo == 42) {
                        if ((int)Double.parseDouble(cols[0]) == 2) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    } else if (GraphNo == 43) {
                        if ((int)Double.parseDouble(cols[0]) == 3) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    } else if (GraphNo == 44) {
                        if ((int)Double.parseDouble(cols[0]) == 4) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    } else if (GraphNo == 45) {
                        if ((int)Double.parseDouble(cols[0]) == 5) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    } else if (GraphNo == 46) {
                        if ((int)Double.parseDouble(cols[0]) == 6) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    } else if (GraphNo == 47) {
                        if ((int)Double.parseDouble(cols[0]) == 7) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    } else if (GraphNo == 48) {
                        if ((int)Double.parseDouble(cols[0]) == 8) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    } else if (GraphNo == 49) {
                        if ((int)Double.parseDouble(cols[0]) == 9) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    } else if (GraphNo == 410) {
                        if ((int)Double.parseDouble(cols[0]) == 10) {
                            nCol = nCol + 1;
                            if (Ymin > Double.parseDouble(cols[2])) {
                                Ymin = Double.parseDouble(cols[2]);
                            }
                            if (Ymin > Double.parseDouble(cols[3])) {
                                Ymin = Double.parseDouble(cols[3]);
                            }
                            if (Ymax < Double.parseDouble(cols[2])) {
                                Ymax = Double.parseDouble(cols[2]);
                            }
                            if (Ymax < Double.parseDouble(cols[3])) {
                                Ymax = Double.parseDouble(cols[3]);
                            }
                        }
                    }
                    line = br.readLine();
                }
                Xmax = nCol+1.0;
                br.close();
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            /*
            pw.write("nCol Xmax Ymin Ymax = ");
            pw.write("<input type='text' size='100' value='"+nCol+"' readonly>");
            pw.write("<input type='text' size='100' value='"+Xmax+"' readonly>");
            pw.write("<input type='text' size='100' value='"+Ymin+"' readonly>");
            pw.write("<input type='text' size='100' value='"+Ymax+"' readonly>");
            pw.write("<br>");
            */
            
            Ymin=0.0;
            if (Ymax < 2.5) Ymax = 2.5;
            else if (Ymax < 5.0) Ymax = 5.0;
            else if (Ymax < 6.0) Ymax = 6.0;
            else if (Ymax < 8.0) Ymax = 8.0;
            else if (Ymax < 10.0) Ymax = 10.0;
            else if (Ymax < 15.0) Ymax = 15.0;
            else if (Ymax < 20.0) Ymax = 20.0;
            else if (Ymax < 30.0) Ymax = 30.0;
            else if (Ymax < 40.0) Ymax = 40.0;
            else if (Ymax < 50.0) Ymax = 50.0;
            else if (Ymax < 60.0) Ymax = 60.0;
            else if (Ymax < 80.0) Ymax = 80.0;
            else if (Ymax < 100.0) Ymax = 100.0;
            else if (Ymax < 150.0) Ymax = 150.0;
            else if (Ymax < 200.0) Ymax = 200.0;
            else if (Ymax < 250.0) Ymax = 250.0;
            else if (Ymax < 300.0) Ymax = 300.0;
            else if (Ymax < 400.0) Ymax = 400.0;
            
            double[][] dataX = new double[nCol][1];
            double[][] dataY = new double[nCol][1];
            double[][] dataYY = new double[nCol][1];

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

                    if (GraphNo == 41) {
                        if ((int)Double.parseDouble(cols[0]) == 1) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    else if (GraphNo == 42) {
                        if ((int)Double.parseDouble(cols[0]) == 2) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    else if (GraphNo == 43) {
                        if ((int)Double.parseDouble(cols[0]) == 3) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    else if (GraphNo == 44) {
                        if ((int)Double.parseDouble(cols[0]) == 4) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    else if (GraphNo == 45) {
                        if ((int)Double.parseDouble(cols[0]) == 5) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    else if (GraphNo == 46) {
                        if ((int)Double.parseDouble(cols[0]) == 6) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    else if (GraphNo == 47) {
                        if ((int)Double.parseDouble(cols[0]) == 7) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    else if (GraphNo == 48) {
                        if ((int)Double.parseDouble(cols[0]) == 8) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    else if (GraphNo == 49) {
                        if ((int)Double.parseDouble(cols[0]) == 9) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    else if (GraphNo == 410) {
                        if ((int)Double.parseDouble(cols[0]) == 10) {
                            dataX[j][0]=j+1;
                            dataY[j][0]=Double.parseDouble(cols[2]);
                            dataYY[j][0]=Double.parseDouble(cols[3]);
                            j=j+1;
                        }
                    }
                    line = br.readLine();
                }
                br.close();
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            /*
            pw.write("dataX[0][0] dataY[0][0] dataYY[0][0] = ");
            pw.write("<input type='text' size='100' value='"+dataX[0][0]+"' readonly>");
            pw.write("<input type='text' size='100' value='"+dataY[0][0]+"' readonly>");
            pw.write("<input type='text' size='100' value='"+dataYY[0][0]+"' readonly>");
            pw.write("<br>");
            pw.write("dataX[nCol-1][0] dataY[nCol-1][0] dataYY[nCol-1][0] = ");
            pw.write("<input type='text' size='100' value='"+dataX[nCol-1][0]+"' readonly>");
            pw.write("<input type='text' size='100' value='"+dataY[nCol-1][0]+"' readonly>");
            pw.write("<input type='text' size='100' value='"+dataYY[nCol-1][0]+"' readonly>");
            pw.write("<br>");
            */
            
            try {
                Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,dataYY,dataXopt,dataYopt,dataX1,dataY1,dataX2,dataY2,dataX3,dataY3,Xmin,Xmax,Ymin,Ymax,bin,iOpt);

                try {
                    WebFigure webFig = (WebFigure) ((MWJavaObjectRef) results[0]).get();
                    request.getSession().getServletContext().setAttribute(
                        "NimopsFigure", webFig);

                    WebFigureHtmlGenerator htmlGen = new WebFigureHtmlGenerator(request);

                    response.setContentType("text/html");
                    pw.write("<center>");
                    pw.write("<br>");
                    pw.write(htmlGen.getFigureEmbedString(
                        webFig,
                        "NimopsFigure",
                        "application",
                        "640",
                        "480",
                        null));
                    pw.write("</center>");
                    pw.write("<br>");
                    pw.close();
                } finally {
                    MWArray.disposeArray(results);
                }

            } catch (MWException e) {
                throw new ServletException(e);
            }
        }
        else if (nOption == 1) {
            //tracing path:
            
            int iOpt = 0;   //no need optimum point
            int bin = 0;    //not needed here
            double[][] dataX1 = new double[1][1];
            double[][] dataY1 = new double[1][1];
            double[][] dataX2 = new double[1][1];
            double[][] dataY2 = new double[1][1];
            double[][] dataX3 = new double[1][1];
            double[][] dataY3 = new double[1][1];
            
            double[][] dataXopt = new double[1][1];
            double[][] dataYopt = new double[1][1];
            
            double opt = 1;
            
            int iGeneration = (int)Double.parseDouble(request.getParameter("nGeneration"));
            int iBestFold = (int)Double.parseDouble(request.getParameter("sBestFold"));
            
            String dC1 = request.getParameter("dC1");
            String dC2 = request.getParameter("dC2");
            double Xmin = Double.parseDouble(dC1);
            double Xmax = Double.parseDouble(dC2);
            
            String dS1 = request.getParameter("dS1");
            String dS2 = request.getParameter("dS2");
            double Ymin = Double.parseDouble(dS1);
            double Ymax = Double.parseDouble(dS2);

            String vpath = request.getParameter("vpath");
            String vfile = request.getParameter("vfile");
            String file="";

            if (vfile != "") {
                file = vpath + vfile + "06.txt";
            } else {
                file = "SFAR03Result06.txt";
            }

            String line = null;
            int nCol = 0;

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
                    cols = line.split("\\t");
                    if ((int)Double.parseDouble(cols[0]) == iBestFold) {
                        nCol = nCol + 1;
                    }
                    line = br.readLine();
                }
                br.close();
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            /*
            pw.write("nCol iGeneration iBestFold = ");
            pw.write("<input type='text' size='100' value='"+nCol+"' readonly>");
            pw.write("<input type='text' size='100' value='"+iGeneration+"' readonly>");
            pw.write("<input type='text' size='100' value='"+iBestFold+"' readonly>");
            */
            
            double[][] dataX = new double[nCol][1];
            double[][] dataY = new double[nCol][1];
            double[][] dataXX = new double[nCol][1];
            double[][] dataYY = new double[nCol][5];

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

                    if ((int)Double.parseDouble(cols[0]) == iBestFold) {
                        dataYY[j][0]=Double.parseDouble(cols[1]);
                        dataYY[j][1]=Double.parseDouble(cols[2]);
                        dataYY[j][2]=Double.parseDouble(cols[3]);
                        dataYY[j][3]=Double.parseDouble(cols[4]);
                        dataYY[j][4]=Double.parseDouble(cols[5]);
                        j=j+1;
                    }
                    line = br.readLine();
                }
                nCol=j;
                br.close();
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            /*
            pw.write("nCol iGeneration = ");
            pw.write("<input type='text' size='100' value='"+nCol+"' readonly>");
            pw.write("<input type='text' size='100' value='"+iGeneration+"' readonly>");
            */
            
            //assign matrix for the target generation
            int j=0;
            for (int i = 0; i < nCol; i += 1) {
                if (GraphNo == 51) {
                    if (dataYY[i][0] == iGeneration) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
                else if (GraphNo == 52) {
                    if (dataYY[i][0] == iGeneration-1) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
                else if (GraphNo == 53) {
                    if (dataYY[i][0] == iGeneration-2) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
                else if (GraphNo == 54) {
                    if (dataYY[i][0] == iGeneration-3) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
                else if (GraphNo == 55) {
                    if (dataYY[i][0] == iGeneration-4) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
                else if (GraphNo == 56) {
                    if (dataYY[i][0] == iGeneration-5) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
                else if (GraphNo == 57) {
                    if (dataYY[i][0] == iGeneration-6) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
                else if (GraphNo == 58) {
                    if (dataYY[i][0] == iGeneration-7) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
                else if (GraphNo == 59) {
                    if (dataYY[i][0] == iGeneration-8) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
                else if (GraphNo == 510) {
                    if (dataYY[i][0] == iGeneration-9) {
                        dataX[j][0]=dataYY[i][2];
                        dataY[j][0]=dataYY[i][3];
                        dataXX[j][0]=dataYY[i][4];
                        j=j+1;
                    }
                }
            }
            
            /*
            pw.write("j = ");
            pw.write("<input type='text' size='100' value='"+j+"' readonly>");
            */
            
            //optimum hyperparameters
            double dRMSE=1000000.0;
            for (int i = 0; i < j; i += 1) {
                if (dRMSE > dataXX[i][0]) {
                    dRMSE = dataXX[i][0];
                    dataXopt[0][0] = dataX[i][0];
                    dataYopt[0][0] = dataY[i][0];
                }
            }

            /*
            pw.write("dataXopt[0][0] dataYopt[0][0] = ");
            pw.write("<input type='text' size='100' value='"+dataXopt[0][0]+"' readonly>");
            pw.write("<input type='text' size='100' value='"+dataYopt[0][0]+"' readonly>");
            */
            
            try {
                Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,dataYY,dataXopt,dataYopt,dataX1,dataY1,dataX2,dataY2,dataX3,dataY3,Xmin,Xmax,Ymin,Ymax,bin,iOpt);

                try {
                    WebFigure webFig = (WebFigure) ((MWJavaObjectRef) results[0]).get();
                    request.getSession().getServletContext().setAttribute(
                        "NimopsFigure", webFig);

                    WebFigureHtmlGenerator htmlGen = new WebFigureHtmlGenerator(request);

                    response.setContentType("text/html");
                    pw.write("<center>");
                    pw.write("<br>");
                    pw.write(htmlGen.getFigureEmbedString(
                        webFig,
                        "NimopsFigure",
                        "application",
                        "640",
                        "480",
                        null));
                    pw.write("</center>");
                    pw.write("<br>");
                    pw.close();
                } finally {
                    MWArray.disposeArray(results);
                }

            } catch (MWException e) {
                throw new ServletException(e);
            }
        }
    }
}
