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


public class saveemployee extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String emname = request.getParameter("empoyeename");
            String emadd = request.getParameter("empoyeeaddress");
            String ememail = request.getParameter("empoyeeemail");
            String epassword = request.getParameter("empoyeeapassword");
            String epostion = request.getParameter("empoyeeposition");
            String contact = request.getParameter("empoyecontact");
            
            

            Session session = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();

            pojo.Employee employee = new pojo.Employee();
            employee.setName(emname);
            employee.setAddress(emadd);
            employee.setEmail(ememail);
            employee.setPassword(epassword);
            employee.setPosition(epostion);
            employee.setPhonenumber(contact);

            session.save(employee);
            transaction.commit();
            
            
            PrintWriter out = response.getWriter();
            out.write("ok");
            

        } catch (Exception e) {
            e.printStackTrace();
        }
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
