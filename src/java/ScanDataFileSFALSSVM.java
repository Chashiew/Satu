/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Scanner;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author User
 */
@MultipartConfig
public class ScanDataFileSFALSSVM extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String params = "?";
        
        Part datafile = request.getPart("sDataFileLSSVM");
        if (datafile.getSize() > 0)
        {
            InputStream filestream = datafile.getInputStream();
            Scanner S = new Scanner(filestream).useDelimiter("\\A");

            String content = "";

            while (S.hasNextLine())
            {
                content += S.nextLine() + "\n";
            }
            
            Writer writer;
            try {
                File dir = new File("E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\");
                if (!dir.exists() || !dir.isDirectory()) {
                    dir.mkdir();
                }
                writer = new BufferedWriter(new OutputStreamWriter(
                      new FileOutputStream("E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\" + datafile.getSubmittedFileName()), "utf-8"));
                writer.write(content);
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

            String[] lines = content.split("\n");
            String[] headers;

            // second line: column header
            headers = lines[1].split("\\t");
            params += "sFileNameLSSVM=" + datafile.getSubmittedFileName() + "&";
            params += "nDFAttributesLSSVM=" + headers.length + "&";
            params += "nDFInstancesLSSVM=" + (lines.length-1) + "&";
        }
        
        datafile = request.getPart("sTestDataFileLSSVM");
        if (datafile.getSize() > 0)
        {
            InputStream filestream = datafile.getInputStream();
            Scanner S = new Scanner(filestream).useDelimiter("\\A");

            String content = "";

            while (S.hasNextLine())
            {
                content += S.nextLine() + "\n";
            }
            
            Writer writer;
            try {
                File dir = new File("E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\");
                if (!dir.exists() || !dir.isDirectory()) {
                    dir.mkdir();
                }
                writer = new BufferedWriter(new OutputStreamWriter(
                      new FileOutputStream("E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\" + datafile.getSubmittedFileName()), "utf-8"));
                writer.write(content);
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

            String[] lines = content.split("\n");
            String[] headers;

            // second line: column header
            headers = lines[1].split("\\t");
            params += "sTestFileNameLSSVM=" + datafile.getSubmittedFileName() + "&";
            params += "nTDFAttributesLSSVM=" + headers.length + "&";
            params += "nTDFInstancesLSSVM=" + (lines.length-1) + "&";
        }
        
        datafile = request.getPart("sLearningDataFileLSSVM");
        if (datafile.getSize() > 0)
        {
            InputStream filestream = datafile.getInputStream();
            Scanner S = new Scanner(filestream).useDelimiter("\\A");

            String content = "";

            while (S.hasNextLine())
            {
                content += S.nextLine() + "\n";
            }
            
            Writer writer;
            try {
                File dir = new File("E://00 Swarm Optimization/dataset/");
                if (!dir.exists() || !dir.isDirectory()) {
                    dir.mkdir();
                }
                writer = new BufferedWriter(new OutputStreamWriter(
                      new FileOutputStream("E://00 Swarm Optimization/dataset/" + datafile.getSubmittedFileName()), "utf-8"));
                writer.write(content);
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

            String[] lines = content.split("\n");
            String[] headers;

            // second line: column header
            headers = lines[1].split("\\t");
            params += "sLearningFileNameLSSVM=" + datafile.getSubmittedFileName() + "&";
            params += "nLDFAttributesLSSVM=" + headers.length + "&";
            params += "nLDFInstancesLSSVM=" + (lines.length-1) + "&";
        }
        
        datafile = request.getPart("sPredictionDataFileLSSVM");
        if (datafile.getSize() > 0)
        {
            InputStream filestream = datafile.getInputStream();
            Scanner S = new Scanner(filestream).useDelimiter("\\A");

            String content = "";

            while (S.hasNextLine())
            {
                content += S.nextLine() + "\n";
            }
            
            Writer writer;
            try {
                File dir = new File("E://00 Swarm Optimization/dataset/");
                if (!dir.exists() || !dir.isDirectory()) {
                    dir.mkdir();
                }
                writer = new BufferedWriter(new OutputStreamWriter(
                      new FileOutputStream("E://00 Swarm Optimization/dataset/" + datafile.getSubmittedFileName()), "utf-8"));
                writer.write(content);
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

            String[] lines = content.split("\n");
            String[] headers;

            // second line: column header
            headers = lines[1].split("\\t");
            params += "sPredictionFileNameLSSVM=" + datafile.getSubmittedFileName()+ "&";
            params += "nPDFAttributesLSSVM=" + headers.length + "&";
            params += "nPDFInstancesLSSVM=" + (lines.length-1) + "&";
        }
        
        java.util.Enumeration enu = request.getParameterNames();
        while(enu.hasMoreElements()){
            String paramName = (String)enu.nextElement();
            params += paramName + "=" + request.getParameter(paramName) + "&" ;
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("SFALSSVM.jsp" + params); // to return to LSSVR.jsp page with imported params
        dispatcher.forward(request, response);
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
