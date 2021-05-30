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


public class saveslotz extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String slotname = request.getParameter("slotname");
            Session ss = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction tt = ss.beginTransaction();
            pojo.Parkslot pp = new pojo.Parkslot();
          //  pp.setSlotname(slotname);
           // pp.setAvailable(true);
            
            ss.save(pp);
            tt.commit();

        } catch (Exception e) {
            System.out.println("---"+e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
