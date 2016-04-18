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
public class LoadSVMModelServlet extends HttpServlet {

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
        
        request.setAttribute("sImportDataLSSVM", "1");
        params += "sImportDataLSSVM" + "=1&";
        
        String temp = request.getParameter("sBaseFileName");
        request.setAttribute("sBaseFileName", temp);
        params += "sBaseFileName" + "=" + temp + "&";
        
        temp = request.getParameter("hiddendatafile");
        request.setAttribute("hiddendatafile", temp);
        params += "hiddendatafile" + "=" + temp + "&";
        
        

        Part datafile = request.getPart("loadmodelLSSVM");
        InputStream filestream = datafile.getInputStream();
        Scanner S = new Scanner(filestream).useDelimiter("\\A");
        
        String content = "";
        
        while (S.hasNextLine())
        {
            content += S.nextLine() + "\n";
        }
        
        String[] cols = content.split("\n");
        String line;
        String name;
        String value;
        
        for (int i = 2; i < cols.length; i++)
        {
            name = cols[i].split("\t")[2];
            value = cols[i].split("\t")[3];
            request.setAttribute(name,value);
            params += "&" + name + "=" + value;
        }
        
        temp = (String) request.getAttribute("sNormalRadioLSSVM");
        if (temp != null && temp.equals("2")) {
            params += "&NormalRadioLSSVM=NormalRadio2LSSVM";
        } else {
            params += "&NormalRadioLSSVM=NormalRadio1LSSVM";
        }
        params = params.replaceAll("+", " %2B");
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("AllModulesBaseline.jsp" + params); // to return to LSSVM.jsp page with imported params
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
