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


public class updatestockqty extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String itid = request.getParameter("itemidz");
            String itqty = request.getParameter("qtyeka");
            System.out.println("----itemid" + itid);
            System.out.println("----itemqty" + itqty);

            Session ss = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction tt = ss.beginTransaction();

            Criteria cc = ss.createCriteria(pojo.Stock.class);
            cc.add(Restrictions.eq("itemId", Integer.parseInt(itid)));

            pojo.Stock stockz = (pojo.Stock) cc.uniqueResult();
            stockz.setUnitQty(stockz.getUnitQty() + Integer.parseInt(itqty));

            ss.update(stockz);
            tt.commit();

        } catch (Exception e) {
            System.out.println("----" + e);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
