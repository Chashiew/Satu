/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class RunLSSVRWithModel extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String basefilename = request.getParameter("sBaseFileName");
            String filepath = "E:\\00 Swarm Optimization\\NiMOPSJava\\build\\web\\" + basefilename + "_model.txt";
            
            BufferedReader br = new BufferedReader(new FileReader(filepath));
            
            ArrayList<String[]> singlevars = new ArrayList();
            ArrayList<String> multivarsname = new ArrayList();
            ArrayList<String[][]> multivars = new ArrayList();
                        
            String line;
            while (!(line = br.readLine()).equals(""))
            {
                String[] words;
                words = line.split(" ");
                singlevars.add(words);
            }
            
            // Phase 1 Completed
            
            while ((line = br.readLine()).split(" ").length == 1)
            {
                multivarsname.add(line);
                String content = "";
                line = br.readLine();
                String[] words = line.split(" ");
                int width = words.length;
                int height = 0;
                
                while(line != null && !line.equals(""))
                {
                    content += line + "\n";
                    height++;
                    line = br.readLine();
                }
                
                String[] sentences = content.split("\n");
                String[][] data = new String[height][width];
                for (int i = 0; i < sentences.length; i++)
                {
                    words = sentences[i].split(" ");
                    for (int j = 0; j < words.length; j++)
                    {
                        data[i][j] = words[j];
                    }
                }
                multivars.add(data);
            }
            
            // Phase 2 Completed
            
            while (!line.equals(""))
            {
                String[] words;
                words = line.split(" ");
                singlevars.add(words);
                line = br.readLine();
            }
            
            // Phase 3 Completed
            
            while ((line = br.readLine()).split(" ").length == 1)
            {
                multivarsname.add(line);
                String content = "";
                line = br.readLine();
                String[] words = line.split(" ");
                int width = words.length;
                int height = 0;
                
                while(line != null && !line.equals(""))
                {
                    content += line + "\n";
                    height++;
                    line = br.readLine();
                }
                
                String[] sentences = content.split("\n");
                String[][] data = new String[height][width];
                for (int i = 0; i < sentences.length; i++)
                {
                    words = sentences[i].split(" ");
                    for (int j = 0; j < words.length; j++)
                    {
                        data[i][j] = words[j];
                    }
                }
                multivars.add(data);
                if (line == null)
                {
                    break;
                }
            }
            
            br.close();
            
            // get each needed variables
            String type = "";
            int x_dim = 0, y_dim = 0, nb_data = 0; 
            String kernel_type = "", preprocess = "", prestatus = "";
            float[][] xtrain;
            float[] ytrain;
            int[] selector;
            float gam = 0, kernel_pars = 0, x_delays = 0, y_delays = 0;
            int steps = 0;
            String latent = "", code = "", codetype = "", pre_xscheme = "", pre_yscheme = "";
            float[] pre_xmean, pre_xstd;
            float pre_ymean = 0, pre_ystd = 0;
            String status = "";
            float[] weights = new float[0];
            float b = 0;
            float[] alpha;
            float duration = 0;
            float[][] Xtr;
            
            for (int i = 0; i < singlevars.size(); i++)
            {
                if (singlevars.get(i)[0].equals("type")) {
                    type = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("x_dim")) {
                    x_dim = Integer.parseInt(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("y_dim")) {
                    y_dim = Integer.parseInt(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("nb_data")) {
                    nb_data = Integer.parseInt(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("kernel_type")) {
                    kernel_type = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("preprocess")) {
                    preprocess = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("prestatus")) {
                    type = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("gam")) {
                    gam = Float.parseFloat(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("kernel_pars")) {
                    kernel_pars = Float.parseFloat(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("x_delays")) {
                    x_delays = Float.parseFloat(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("y_delays")) {
                    y_delays = Float.parseFloat(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("steps")) {
                    steps = Integer.parseInt(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("latent")) {
                    latent = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("code")) {
                    code = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("codetype")) {
                    codetype = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("pre_xscheme")) {
                    pre_xscheme = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("pre_yscheme")) {
                    pre_yscheme = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("pre_ymean")) {
                    pre_ymean = Float.parseFloat(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("pre_ystd")) {
                    pre_ystd = Float.parseFloat(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("status")) {
                    status = singlevars.get(i)[1];
                } else if (singlevars.get(i)[0].equals("b")) {
                    b = Float.parseFloat(singlevars.get(i)[1]);
                } else if (singlevars.get(i)[0].equals("duration")) {
                    duration = Float.parseFloat(singlevars.get(i)[1]);
                }
            }
            
            for (int i = 0; i < multivars.size(); i++)
            {
                if (multivarsname.get(i).equals("xtrain"))
                {
                    xtrain = new float[multivars.get(i).length][multivars.get(i)[0].length];
                    for (int j = 0; j < multivars.get(i).length; j++)
                    {
                        for (int k = 0; k < multivars.get(i)[0].length; k++)
                        {
                            xtrain[j][k] = Float.parseFloat(multivars.get(i)[j][k]);
                        }
                    }
                }
                else if (multivarsname.get(i).equals("ytrain"))
                {
                    ytrain = new float[multivars.get(i).length];
                    for (int j = 0; j < multivars.get(i).length; j++)
                    {
                        ytrain[j] = Float.parseFloat(multivars.get(i)[j][0]);
                    }
                }
                else if (multivarsname.get(i).equals("selector"))
                {
                    selector = new int[multivars.get(i).length];
                    for (int j = 0; j < multivars.get(i).length; j++)
                    {
                        selector[j] = Integer.parseInt(multivars.get(i)[j][0]);
                    }
                }
                else if (multivarsname.get(i).equals("pre_xmean"))
                {
                    pre_xmean = new float[multivars.get(i).length];
                    for (int j = 0; j < multivars.get(i).length; j++)
                    {
                        pre_xmean[j] = Float.parseFloat(multivars.get(i)[j][0]);
                    }
                }
                else if (multivarsname.get(i).equals("pre_xstd"))
                {
                    pre_xstd = new float[multivars.get(i).length];
                    for (int j = 0; j < multivars.get(i).length; j++)
                    {
                        pre_xstd[j] = Float.parseFloat(multivars.get(i)[j][0]);
                    }
                }
                else if (multivarsname.get(i).equals("alpha"))
                {
                    alpha = new float[multivars.get(i).length];
                    for (int j = 0; j < multivars.get(i).length; j++)
                    {
                        alpha[j] = Float.parseFloat(multivars.get(i)[j][0]);
                    }
                }
                else if (multivarsname.get(i).equals("Xtr"))
                {
                    Xtr = new float[multivars.get(i).length][multivars.get(i)[0].length];
                    for (int j = 0; j < multivars.get(i).length; j++)
                    {
                        for (int k = 0; k < multivars.get(i)[0].length; k++)
                        {
                            Xtr[j][k] = Float.parseFloat(multivars.get(i)[j][k]);
                        }
                    }
                }
            }
            
//            try {
//                final LSSVRWithModel m = new LSSVRWithModel();
//                try {
//                    Object results[] = m.RunLSSVRModel(Xtr, type, x_dim, y_dim, nb_data, kernel_type, preprocess, prestatus, xtrain, ytrain, selector, gam, kernel_pars, x_delays, y_delays, steps, latent, code, codetype, pre_xscheme, pre_yscheme, pre_xmean, pre_xstd, pre_ymean, pre_ystd, status, weights, b, alpha, duration);
//
//                    try {
//                        final MWArray firstResult = (MWArray) results[0];
//                        final String output = firstResult.toString();
//                    } finally {
//                        MWArray.disposeArray(results);
//                    }
//                } finally {
//                    m.dispose();
//                }
//            } catch (MWException e) {
//                throw new ServletException(e);
//            }
            
            String params = "";
            RequestDispatcher dispatcher = request.getRequestDispatcher("ModuleLSSVR.jsp" + params); // to return to LSSVR.jsp page with imported params
            dispatcher.forward(request, response);
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
