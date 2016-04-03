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

public class SFALSSVMGraphServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private NiMOPSGraphClass cWF = null;

    public SFALSSVMGraphServlet() {
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
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        
        int nOption = Integer.parseInt(request.getParameter("opt"));
        int GraphNo = Integer.parseInt(request.getParameter("GraphNo"));

        /*
        pw.write("nOption GraphNo = ");
        pw.write("<input type='text' size='100' value='"+nOption+"' readonly>");
        pw.write("<input type='text' size='100' value='"+GraphNo+"' readonly>");
        pw.write("<br>");
        */
            
        if (nOption == 3) {
            //prediction:
            
            double XTemp=0;
            
            int iOpt = 0;   //no need optimum point

            double Xmin = 0.0;
            double Xmax = 5.0;
            double[] dataYY = new double[1];
            double[] dataXopt = new double[1];
            double[] dataYopt = new double[1];
            double[] dataX1 = new double[1];
            double[] dataY1 = new double[1];
            double[] dataX2 = new double[1];
            double[] dataY2 = new double[1];
            double[] dataX3 = new double[1];
            double[] dataY3 = new double[1];
            
            double[][] dataX = new double[4][3];
            dataX[0][0] = 0;
            dataX[1][0] = 0;
            dataX[2][0] = 0;
            dataX[3][0] = 0;
            dataX[0][1] = 0;
            dataX[1][1] = 0;
            dataX[2][1] = 0;
            dataX[3][1] = 0;
            dataX[0][2] = 0;
            dataX[1][2] = 0;
            dataX[2][2] = 0;
            dataX[3][2] = 0;
            
            double[] dataY = new double[4];
            dataY[0] = 1;
            dataY[1] = 2;
            dataY[2] = 3;
            dataY[3] = 4;
            
            double Ymin = 0.0;
            double Ymax = 0.0;
            
            double opt = 3;
            int bin = 4;

            opt = Double.parseDouble(request.getParameter("opt"));
            
            String GraphType = request.getParameter("GraphType");

            /*
            pw.write("opt bin GraphType = ");
            pw.write("<input type='text' size='100' value='"+opt+"' readonly>");
            pw.write("<input type='text' size='100' value='"+bin+"' readonly>");
            pw.write("<input type='text' size='100' value='"+GraphType+"' readonly>");
            pw.write("<br>");
            */

            if ((int)Double.parseDouble(request.getParameter("GraphType")) == 1) {
                opt = 3;
            }
            else if ((int)Double.parseDouble(request.getParameter("GraphType")) == 2) {
                opt = 4;
            }
            else if ((int)Double.parseDouble(request.getParameter("GraphType")) == 3) {
                opt = 5;
            }
            else {
                opt = 3;
            }

            String vpath = request.getParameter("vpath");
            String vfile = request.getParameter("vfile");
            String file="";

            /*
            pw.write("opt GraphType = ");
            pw.write("<input type='text' size='100' value='"+opt+"' readonly>");
            pw.write("<input type='text' size='100' value='"+GraphType+"' readonly>");
            pw.write("<br>");
            */

            if (vfile != "") {
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
                file = "SFAM03Result04a.txt";
            }
            
            String line = null;

            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] cols;
                int iNilai1;
                int iNilai2;

                line = br.readLine();
                while (line != null) {
                    cols = line.split("\\t");

                    sDummy = cols[0];
                    iNilai1=(int)Double.parseDouble(sDummy);

                    sDummy = cols[1];
                    iNilai2=(int)Double.parseDouble(sDummy);

                    if (iNilai1 == 0 && iNilai2 == 0) dataX[0][1]=dataX[0][1]+1;
                    if (iNilai1 == 0 && iNilai2 == 1) dataX[1][1]=dataX[1][1]+1;
                    if (iNilai1 == 1 && iNilai2 == 0) dataX[2][1]=dataX[2][1]+1;
                    if (iNilai1 == 1 && iNilai2 == 1) dataX[3][1]=dataX[3][1]+1;

                    if (Ymax<dataX[0][1]) Ymax=dataX[0][1];
                    if (Ymax<dataX[1][1]) Ymax=dataX[1][1];
                    if (Ymax<dataX[2][1]) Ymax=dataX[2][1];
                    if (Ymax<dataX[3][1]) Ymax=dataX[3][1];
                    
                    line = br.readLine();
                }
                br.close();

                Ymax=Ymax*1.2;
                Ymax = (int) (Ymax);
            
                if (dataX[0][1]==0) dataX[0][1]=0.1;
                if (dataX[1][1]==0) dataX[1][1]=0.1;
                if (dataX[2][1]==0) dataX[2][1]=0.1;
                if (dataX[3][1]==0) dataX[3][1]=0.1;

                /*
                pw.write("dataX[0] dataX[1] dataX[2] dataX[3] Ymin Ymax = ");
                pw.write("<input type='text' size='100' value='"+dataX[0]+"' readonly>");
                pw.write("<input type='text' size='100' value='"+dataX[1]+"' readonly>");
                pw.write("<input type='text' size='100' value='"+dataX[2]+"' readonly>");
                pw.write("<input type='text' size='100' value='"+dataX[3]+"' readonly>");
                pw.write("<input type='text' size='100' value='"+Ymin+"' readonly>");
                pw.write("<input type='text' size='100' value='"+Ymax+"' readonly>");
                pw.write("<br>");
                */
            }
            catch (Exception e) {
                e.printStackTrace();
            }

            if (opt == 5) {
                Xmin=Ymin;
                Xmax=Ymax;
                
                Ymax=5;
            }
            
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
                file = "SFAM03Result05.txt";
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
            
            String dC1LSSVM = request.getParameter("dC1LSSVM");
            String dC2LSSVM = request.getParameter("dC2LSSVM");
            double Xmin = Double.parseDouble(dC1LSSVM);
            double Xmax = Double.parseDouble(dC2LSSVM);
            
            String dS1LSSVM = request.getParameter("dS1LSSVM");
            String dS2LSSVM = request.getParameter("dS2LSSVM");
            double Ymin = Double.parseDouble(dS1LSSVM);
            double Ymax = Double.parseDouble(dS2LSSVM);

            String vpath = request.getParameter("vpath");
            String vfile = request.getParameter("vfile");
            String file="";

            if (vfile != "") {
                file = vpath + vfile + "06.txt";
            } else {
                file = "SFAM03Result06.txt";
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
