/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srvs;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class savefood extends HttpServlet {

  

    
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
         
        String fnames=request.getParameter("fodname");
        
        
        Session ss=util.NewHibernateUtil.getSessionFactory().openSession();
        Transaction tt=ss.beginTransaction();
        pojo.Foodrecipie nn =new pojo.Foodrecipie();
        
        nn.setFoodId(Integer.SIZE);
        nn.setFoodName(fnames);
       
        
        
        ss.save(nn);
        tt.commit();
        
        PrintWriter out = response.getWriter();
        out.write("ok");
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
