/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
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
public class ImportSFAMParamServlet extends HttpServlet {

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
        //response.setContentType("text/html;charset=UTF-8");
        //try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        //    out.println("<!DOCTYPE html>");
        //    out.println("<html>");
        //    out.println("<head>");
        //    out.println("<title>Servlet ImportParamServlet</title>");            
        //    out.println("</head>");
        //    out.println("<body>");
        //    out.println("<h1>Servlet ImportParamServlet at " + request.getContextPath() + "</h1>");
        //    out.println("</body>");
        //    out.println("</html>");
        //}
        String params = "?";
        
        request.setAttribute("sImportDataLSSVM", "1");
        params += "sImportDataLSSVM" + "=1&";
        
        String temp = request.getParameter("sBaseFileName");
        request.setAttribute("sBaseFileName", temp);
        params += "sBaseFileName" + "=" + temp + "&";
        
        temp = request.getParameter("hiddendatafile");
        request.setAttribute("hiddendatafile", temp);
        params += "hiddendatafile" + "=" + temp + "&";
        
        /*temp = request.getParameter("PRadioLSSVM");
        request.setAttribute("PRadioLSSVM", temp);
        params += "PRadioLSSVM" + "=" + temp + "&";
        
        temp = request.getParameter("NormalRadioLSSVM");
        request.setAttribute("NormalRadioLSSVM", temp);
        params += "NormalRadioLSSVM" + "=" + temp + "&";
        
        temp = request.getParameter("SCRadioLSSVM");
        request.setAttribute("SCRadioLSSVM", temp);
        params += "SCRadioLSSVM" + "=" + temp + "&";*/
        
        temp = request.getParameter("sopt");
        request.setAttribute("sopt", temp);
        params += "sopt" + "=" + temp + "&";
        
        temp = request.getParameter("sGraphNo");
        request.setAttribute("sGraphNo", temp);
        params += "sGraphNo" + "=" + temp + "&";
        
        temp = request.getParameter("sBestFold");
        request.setAttribute("sBestFold", temp);
        params += "sBestFold" + "=" + temp;
        

        Part datafile = request.getPart("importfileLSSVM");
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
        
        temp = (String) request.getAttribute("sPRadioLSSVM");
        if (temp != null && temp.equals("2")) {
            params += "&PRadioLSSVM=PRadio2LSSVM";
        } else {
            params += "&PRadioLSSVM=PRadio1LSSVM";
        }
        
        temp = (String) request.getAttribute("sNormalRadioLSSVM");
        if (temp != null && temp.equals("2")) {
            params += "&NormalRadioLSSVM=NormalRadio2LSSVM";
        } else {
            params += "&NormalRadioLSSVM=NormalRadio1LSSVM";
        }
        
        temp = (String) request.getAttribute("sSCRadioLSSVM");
        if (temp != null && temp.equals("3")) {
            params += "&SCRadioLSSVM=SCRadio3LSSVM";
        } else if (temp != null && temp.equals("2"))  {
            params += "&SCRadioLSSVM=SCRadio2LSSVM";
        } else {
            params += "&SCRadioLSSVM=SCRadio1LSSVM";
        }
        
        temp = (String) request.getAttribute("sTORadioLSSVM");
        if (temp != null && temp.equals("4")) {
            params += "&TORadioLSSVM=TORadio4LSSVM";
        } else if (temp != null && temp.equals("3")) {
            params += "&TORadioLSSVM=TORadio3LSSVM";
        } else if (temp != null && temp.equals("2"))  {
            params += "&TORadioLSSVM=TORadio2LSSVM";
        } else {
            params += "&TORadioLSSVM=TORadio1LSSVM";
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("SFALSSVM.jsp" + params); // to return to SFALSSVR.jsp page with imported params
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