/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
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
public class ScanDataFileLSSVR extends HttpServlet {

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
        
        Part datafile = request.getPart("sDataFile");
        if (datafile.getSize() > 0)
        {
            InputStream filestream = datafile.getInputStream();
            Scanner S = new Scanner(filestream).useDelimiter("\\A");

            String content = "";

            while (S.hasNextLine())
            {
                content += S.nextLine() + "\n";
            }
            String[] lines = content.split("\n");
            String[] headers;

            // second line: column header
            headers = lines[1].split("\\t");
            params += "sFileName=" + datafile.getSubmittedFileName() + "&";
            params += "nDFAttributes=" + headers.length + "&";
            params += "nDFInstances=" + (lines.length-2) + "&";
        }
        
        datafile = request.getPart("sTestDataFile");
        if (datafile.getSize() > 0)
        {
            InputStream filestream = datafile.getInputStream();
            Scanner S = new Scanner(filestream).useDelimiter("\\A");

            String content = "";

            while (S.hasNextLine())
            {
                content += S.nextLine() + "\n";
            }
            String[] lines = content.split("\n");
            String[] headers;

            // second line: column header
            headers = lines[1].split("\\t");
            params += "sTestFileName=" + datafile.getSubmittedFileName() + "&";
            params += "nTDFAttributes=" + headers.length + "&";
            params += "nTDFInstances=" + (lines.length-2) + "&";
        }
        
        datafile = request.getPart("sLearningDataFile");
        if (datafile.getSize() > 0)
        {
            InputStream filestream = datafile.getInputStream();
            Scanner S = new Scanner(filestream).useDelimiter("\\A");

            String content = "";

            while (S.hasNextLine())
            {
                content += S.nextLine() + "\n";
            }
            String[] lines = content.split("\n");
            String[] headers;

            // second line: column header
            headers = lines[1].split("\\t");
            params += "sLearningFileName=" + datafile.getSubmittedFileName() + "&";
            params += "nLDFAttributes=" + headers.length + "&";
            params += "nLDFInstances=" + (lines.length-2) + "&";
        }
        
        datafile = request.getPart("sPredictionDataFile");
        if (datafile.getSize() > 0)
        {
            InputStream filestream = datafile.getInputStream();
            Scanner S = new Scanner(filestream).useDelimiter("\\A");

            String content = "";

            while (S.hasNextLine())
            {
                content += S.nextLine() + "\n";
            }
            String[] lines = content.split("\n");
            String[] headers;

            // second line: column header
            headers = lines[1].split("\\t");
            params += "sPredictionFileName=" + datafile.getSubmittedFileName()+ "&";
            params += "nPDFAttributes=" + headers.length + "&";
            params += "nPDFInstances=" + (lines.length-2) + "&";
        }
        
        java.util.Enumeration enu = request.getParameterNames();
        while(enu.hasMoreElements()){
            String paramName = (String)enu.nextElement();
            params += paramName + "=" + request.getParameter(paramName) + "&" ;
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("AllModulesBaseline.jsp" + params); // to return to LSSVR.jsp page with imported params
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
