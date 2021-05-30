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
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class saveReview extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String revID = request.getParameter("reviewId");
            int ID = Integer.parseInt(revID);
            String revMon = request.getParameter("reviewMonth");
            String rev = request.getParameter("review");
            
            Session session = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();

            pojo.AnalyticReview AR = new pojo.AnalyticReview();
            AR.setReviewId(ID);
            AR.setMonth(revMon);
            AR.setReview(rev);
            

            session.save(AR);
            transaction.commit();
            
            
            PrintWriter out = response.getWriter();
            out.write("ok");
            

        } catch (IOException | HibernateException e) {
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
