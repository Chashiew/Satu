/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedWriter;
import java.io.FileWriter;
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
public class LoadSVRModelServlet extends HttpServlet {

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
        
        request.setAttribute("sImportData", "1");
        params += "sImportData" + "=1&";
        
        String temp = request.getParameter("sBaseFileName");
        request.setAttribute("sBaseFileName", temp);
        params += "sBaseFileName" + "=" + temp + "&";
        
        temp = request.getParameter("hiddendatafile");
        request.setAttribute("hiddendatafile", temp);
        params += "hiddendatafile" + "=" + temp + "&";
        
        

        Part datafile = request.getPart("loadmodel");
        InputStream filestream = datafile.getInputStream();
        Scanner S = new Scanner(filestream).useDelimiter("\\A");
        
        String content = "";
        
        while (S.hasNextLine())
        {
            content += S.nextLine() + "\n";
        }
        
        String[] cols = content.split("\n");
        String line;
        
        for (int i = 0; i < cols.length; i++)
        {
            if (cols[i].startsWith("gam"))
            {
                request.setAttribute("nValueC",cols[i].split(" ")[1]);
                params += "&nValueC=" + cols[i].split(" ")[1].replace(".", "%2E");
            }
            if (cols[i].startsWith("kernel_pars"))
            {
                request.setAttribute("nValueS",cols[i].split(" ")[1]);
                params += "&nValueS=" + cols[i].split(" ")[1].replace(".", "%2E");
            }
            if (cols[i].startsWith("normalization"))
            {
                String tempstr = cols[i].split(" ")[1];
                if (tempstr.equals("radiobuttonFS") || tempstr.equals("normal1"))
                {
                    tempstr = "NormalRadio2";
                }
                else
                {
                    tempstr = "NormalRadio1";
                }
                request.setAttribute("NormalRadio",tempstr);
                params += "&NormalRadio=" + tempstr;
            }
        }
        
        BufferedWriter bw = new BufferedWriter(new FileWriter("E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\" + request.getParameter("sBaseFileName") + "_model.txt"));
        bw.write(content);
        bw.close();
        
        params += "&modelloaded=1";
        params = params.replaceAll("\\+", " %2B");
        
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
