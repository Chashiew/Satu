/*
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

/**
 *
 * @author User
 */
public class LSSVRGraphServlet extends HttpServlet {

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

    public LSSVRGraphServlet() {
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
    
    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        int nOption = Integer.parseInt(request.getParameter("opt"));
        int GraphNo = Integer.parseInt(request.getParameter("GraphNo"));

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        
        //////////////////////////////////////////////////////
        int iOpt = 0;   //no need optimum point
        int nCol = 0;
        int XYRange = 1;
        int bin = 0;    //not needed here
        
        double Xmin = 1000000.0;
        double Xmax = -1000000.0;
        double Ymin = 1000000.0;
        double Ymax = -1000000.0;
        
        String PRadio = request.getParameter("PRadio");
        String TORadio = request.getParameter("TORadio");
        String vpath = request.getParameter("vpath");
        String vfile = request.getParameter("vfile");
        String file="";
            
        
        double opt = nOption;
        if (!vfile.equals("")) {
            if ((GraphNo > 30 && GraphNo < 40) || GraphNo == 310) {
                file = vpath + vfile + "04d.txt";
            } else if ((GraphNo > 40 && GraphNo < 50) || GraphNo == 410) {
                file = vpath + vfile + "04c.txt";
            }
        } else {
            file = "SVR03Result04c.txt";
        }
        
        String line;
        
        if (PRadio.equals ("PRadio1")) {
            if (TORadio.equals("TORadio3"))                                    // 10 fold
            {
                try {
                    String temp = Integer.toString(GraphNo);
                    temp = temp.substring(1);
                    int foldno = Integer.parseInt(temp);

                    String text = "";
                    int i = 0;
                    BufferedReader br = new BufferedReader(new FileReader(file));

                    while (i < foldno)
                    {
                        text = "";
                        // first line: title
                        line = br.readLine();
                        nCol = 0;
                        while ((line = br.readLine()) != null && !line.equals("")) {
                            nCol = nCol + 1;
                            text += line + "\n";
                        }
                        i++;
                    }
                    br.close();

                    String[] data = text.split("\n");

                    double[][] dataX = new double[nCol][1];
                    double[][] dataY = new double[nCol][1];
                    double[][] dataXopt = new double[2][1];
                    double[][] dataYopt = new double[2][1];

                    String[] cols;

                    for (i = 0; i < data.length; i++)
                    {
                        cols = data[i].split("\\t");

                        dataX[i][0]=Double.parseDouble(cols[0]);
                        dataY[i][0]=Double.parseDouble(cols[1]);

                        if (Xmin > dataX[i][0]) Xmin = dataX[i][0];
                        if (Xmax < dataX[i][0]) Xmax = dataX[i][0];

                        if (Ymin > dataY[i][0]) Ymin = dataY[i][0];
                        if (Ymax < dataY[i][0]) Ymax = dataY[i][0];
                    }

                    dataXopt[0][0]= (int) Ymin; 
                    dataXopt[1][0]= (int) (Ymax + (Ymax - Ymin)); 
                    dataYopt[0][0]= (int) Ymin;
                    dataYopt[1][0]= (int) (Ymax + (Ymax - Ymin));

                    Xmin = dataYopt[0][0];
                    Xmax = dataYopt[1][0];

                    Ymin = dataYopt[0][0];
                    Ymax = dataYopt[1][0];

                    Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,0,dataXopt,dataYopt,0,0,0,0,0,0,Xmin,Xmax,Ymin,Ymax,bin,iOpt);

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
                }
                catch (Exception e) {
                    e.printStackTrace();
                } 
            }
            else
            {
                try {
                    BufferedReader br = new BufferedReader(new FileReader(file));
                    // first line: title
                    line = br.readLine();
                    nCol = 0;
                    while ((line = br.readLine()) != null) {
                        nCol = nCol + 1;
                    }
                    br.close();

                    double[][] dataX = new double[nCol][1];
                    double[][] dataY = new double[nCol][1];
                    double[][] dataXopt = new double[2][1];
                    double[][] dataYopt = new double[2][1];

                    br = new BufferedReader(new FileReader(file));
                    String[] cols;
                    int j = 0;

                    line =br.readLine();

                    while ((line = br.readLine()) != null)
                    {
                        cols = line.split("\\t");

                        dataX[j][0]=Double.parseDouble(cols[0]);
                        dataY[j][0]=Double.parseDouble(cols[1]);

                        if (Xmin > dataX[j][0]) Xmin = dataX[j][0];
                        if (Xmax < dataX[j][0]) Xmax = dataX[j][0];

                        if (Ymin > dataY[j][0]) Ymin = dataY[j][0];
                        if (Ymax < dataY[j][0]) Ymax = dataY[j][0];

                        j++;
                    }

                    br.close();

                    dataXopt[0][0]= (int) Ymin; 
                    dataXopt[1][0]= (int) (Ymax + (Ymax - Ymin)); 
                    dataYopt[0][0]= (int) Ymin;
                    dataYopt[1][0]= (int) (Ymax + (Ymax - Ymin));

                    Xmin = dataYopt[0][0];
                    Xmax = dataYopt[1][0];

                    Ymin = dataYopt[0][0];
                    Ymax = dataYopt[1][0];

                    Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,0,dataXopt,dataYopt,0,0,0,0,0,0,Xmin,Xmax,Ymin,Ymax,bin,iOpt);

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
                }
                catch (Exception e) {
                    e.printStackTrace();
                } 
            }
        } else {
            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                // first line: title
                line = br.readLine();
                nCol = 0;
                while ((line = br.readLine()) != null) {
                    nCol = nCol + 1;
                }
                br.close();

                double[][] dataX = new double[nCol][1];
                double[][] dataY = new double[nCol][1];
                double[][] dataXopt = new double[2][1];
                double[][] dataYopt = new double[2][1];

                br = new BufferedReader(new FileReader(file));
                String[] cols;
                int j = 0;

                line =br.readLine();

                while ((line = br.readLine()) != null)
                {
                    cols = line.split("\\t");

                    dataX[j][0]=Double.parseDouble(cols[0]);
                    dataY[j][0]=Double.parseDouble(cols[1]);

                    if (Xmin > dataX[j][0]) Xmin = dataX[j][0];
                    if (Xmax < dataX[j][0]) Xmax = dataX[j][0];

                    if (Ymin > dataY[j][0]) Ymin = dataY[j][0];
                    if (Ymax < dataY[j][0]) Ymax = dataY[j][0];

                    j++;
                }

                br.close();

                dataXopt[0][0]= (int) Ymin; 
                dataXopt[1][0]= (int) (Ymax + (Ymax - Ymin)); 
                dataYopt[0][0]= (int) Ymin;
                dataYopt[1][0]= (int) (Ymax + (Ymax - Ymin));

                Xmin = dataYopt[0][0];
                Xmax = dataYopt[1][0];

                Ymin = dataYopt[0][0];
                Ymax = dataYopt[1][0];

                Object results[] = cWF.ProgramNiMOPSGraph(1, vpath, vfile, opt,dataX,dataY,0,dataXopt,dataYopt,0,0,0,0,0,0,Xmin,Xmax,Ymin,Ymax,bin,iOpt);

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
            }
            catch (Exception e) {
                e.printStackTrace();
            }
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
