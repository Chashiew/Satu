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

public class LSSVMGraphServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private NiMOPSGraphClass cWF = null;

    public LSSVMGraphServlet() {
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
            
            int nTarget=1;

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
            String sBestFold = request.getParameter("sBestFold");

            if (GraphNo == 31 || GraphNo == 41) {
                nTarget=1;
            }
            else if (GraphNo == 32 || GraphNo == 42) {
                nTarget=2;
            }
            else if (GraphNo == 33 || GraphNo == 43) {
                nTarget=3;
            }
            else if (GraphNo == 34 || GraphNo == 44) {
                nTarget=4;
            }
            else if (GraphNo == 35 || GraphNo == 45) {
                nTarget=5;
            }
            else if (GraphNo == 36 || GraphNo == 46) {
                nTarget=6;
            }
            else if (GraphNo == 37 || GraphNo == 47) {
                nTarget=7;
            }
            else if (GraphNo == 38 || GraphNo == 48) {
                nTarget=8;
            }
            else if (GraphNo == 39 || GraphNo == 49) {
                nTarget=9;
            }
            else if (GraphNo == 310 || GraphNo == 410) {
                nTarget=10;
            }
            
            /*
            pw.write("opt GraphType vpath vfile sBestFold nTarget = ");
            pw.write("<input type='text' size='100' value='"+opt+"' readonly>");
            pw.write("<input type='text' size='100' value='"+GraphType+"' readonly>");
            pw.write("<input type='text' size='100' value='"+vpath+"' readonly>");
            pw.write("<input type='text' size='100' value='"+vfile+"' readonly>");
            pw.write("<input type='text' size='100' value='"+sBestFold+"' readonly>");
            pw.write("<input type='text' size='100' value='"+nTarget+"' readonly>");
            pw.write("<br>");
            */

            if (vfile != "") {
                if (GraphNo == 310) {
                    file = vpath + vfile + "04c.txt";
                } else if (GraphNo >= 31 && GraphNo <= 39) {
                    file = vpath + vfile + "04c.txt";
                } else if (GraphNo == 410) {
                    file = vpath + vfile + "04d.txt";
                } else if (GraphNo >= 41 && GraphNo <= 49) {
                    file = vpath + vfile + "04d.txt";
                }
            } else {
                file = "SVM03Result04a.txt";
            }
            
            String line = null;

            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                String sDummy;
                String[] cols;
                int iNilai1;
                int iNilai2;
                int iNilai=1;
                int ncol=1;
                int ncolP=1;
                int nLoop=0;
                int iCount=0;

                line = br.readLine();   //header
                
                line = br.readLine();
                cols = line.split("\\t");
                ncolP = cols.length;
                
                /*
                pw.write("ncolP = ");
                pw.write("<input type='text' size='100' value='"+ncolP+"' readonly>");
                pw.write("<br>");
                */
                                
                while (line != null && iNilai==1) {
                    iCount=iCount+1;
                    
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

                    /*
                    pw.write("line iCount ncol ncolP = ");
                    pw.write("<input type='text' size='100' value='"+line+"' readonly>");
                    */
                        
                    if (line != null) {
                        cols = line.split("\\t");
                        ncol = cols.length;

                        /*
                        pw.write("<input type='text' size='100' value='"+iCount+"' readonly>");
                        pw.write("<input type='text' size='100' value='"+ncol+"' readonly>");
                        pw.write("<input type='text' size='100' value='"+ncolP+"' readonly>");
                        pw.write("<br>");
                        */

                        if (ncol<ncolP) {
                            nLoop = nLoop+1;
                            if (nLoop < nTarget) {
                                line = br.readLine();
                                line = br.readLine();
                                dataX[0][1] = 0;
                                dataX[1][1] = 0;
                                dataX[2][1] = 0;
                                dataX[3][1] = 0;
                                
                                iCount=0;

                                /*
                                pw.write("ncol ncolP nLoop nTarget = ");
                                pw.write("<input type='text' size='100' value='"+ncol+"' readonly>");
                                pw.write("<input type='text' size='100' value='"+ncolP+"' readonly>");
                                pw.write("<input type='text' size='100' value='"+nLoop+"' readonly>");
                                pw.write("<input type='text' size='100' value='"+nTarget+"' readonly>");
                                pw.write("<br>");
                                */
                            }
                            else if (nLoop==nTarget) {
                                iNilai=0;
                            }
                        }
                    }
                }
                br.close();

                Ymax=Ymax*1.2;
                Ymax = (int) (Ymax);
            
                if (dataX[0][1]==0) dataX[0][1]=0.1;
                if (dataX[1][1]==0) dataX[1][1]=0.1;
                if (dataX[2][1]==0) dataX[2][1]=0.1;
                if (dataX[3][1]==0) dataX[3][1]=0.1;

                /*
                pw.write("dataX[0] dataX[1] dataX[2] dataX[3] Ymin Ymax nTarget = ");
                pw.write("<input type='text' size='100' value='"+dataX[0][1]+"' readonly>");
                pw.write("<input type='text' size='100' value='"+dataX[1][1]+"' readonly>");
                pw.write("<input type='text' size='100' value='"+dataX[2][1]+"' readonly>");
                pw.write("<input type='text' size='100' value='"+dataX[3][1]+"' readonly>");
                pw.write("<input type='text' size='100' value='"+Ymin+"' readonly>");
                pw.write("<input type='text' size='100' value='"+Ymax+"' readonly>");
                pw.write("<input type='text' size='100' value='"+nTarget+"' readonly>");
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
    }
}
