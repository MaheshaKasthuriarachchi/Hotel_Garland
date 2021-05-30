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


public class updateemployeedetails extends HttpServlet  {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String emname = request.getParameter("empoyeename");
            String emadd = request.getParameter("empoyeeaddress");
            String ememail = request.getParameter("empoyeeemail");
            String epassword = request.getParameter("empoyeeapassword");
            String contact = request.getParameter("empoyecontact");

            Session zz = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction transaction = zz.beginTransaction();

            pojo.Employee employee = (pojo.Employee) request.getSession().getAttribute("updatedeployee");

            employee.setName(emname);
            employee.setAddress(emadd);
            employee.setEmail(ememail);
            employee.setPassword(epassword);
            employee.setPhonenumber(contact);

            zz.update(employee);
            transaction.commit();
            zz.close();
            response.sendRedirect("employeesearch.jsp");
        } catch (Exception e) {
            System.out.println("erorrrrrrrrrr" + e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
