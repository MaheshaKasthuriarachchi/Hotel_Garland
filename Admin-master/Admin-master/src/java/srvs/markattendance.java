/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srvs;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;


public class markattendance extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            PrintWriter out = response.getWriter();
            String empidz = request.getParameter("orfd");
            
            Date dd = new Date();

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
            SimpleDateFormat sdf2 = new SimpleDateFormat("MM");

            String datez = sdf.format(dd);
            String monthz = sdf2.format(dd);

            Session session = util.NewHibernateUtil.getSessionFactory().openSession();
             Transaction transaction = session.beginTransaction();
             
            Criteria cc = session.createCriteria(pojo.Attendancemarking.class);
            cc.add(Restrictions.eq("date", datez));
            cc.add(Restrictions.eq("employeeid", empidz));
            
            pojo.Attendancemarking atm = (pojo.Attendancemarking) cc.uniqueResult();
            if(atm == null){
            
                pojo.Attendancemarking atmz = new pojo.Attendancemarking();
                atmz.setEmployeeid(empidz);
                atmz.setDate(datez);
                atmz.setMonthz(monthz);
                session.save(atmz);
                transaction.commit();
                out.write("ok");
                
            
            }else{
            
            out.write("alredy");
            }
            
            
            
            

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
