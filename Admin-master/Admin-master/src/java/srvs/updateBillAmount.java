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
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;


public class updateBillAmount extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String billid = request.getParameter("billiz");
            String amount = request.getParameter("pricez");
            System.out.println("----billid" + billid);
            System.out.println("----amounteka" + amount);

            Session ss = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction tt = ss.beginTransaction();

            Criteria cc = ss.createCriteria(pojo.Bill.class);
            cc.add(Restrictions.eq("billid", Integer.parseInt(billid)));

            pojo.Bill stockz = (pojo.Bill) cc.uniqueResult();
            stockz.setAmount(Integer.parseInt(amount));
                        ss.update(stockz);
            tt.commit();

        } catch (Exception e) {
            System.out.println("----" + e);
        }
    
    }
}
