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
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class saveitem extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
//        String iname=request.getParameter("itemname");
//        String cat=request.getParameter("catagory");
//        
//        String unitprice=request.getParameter("unitprice");
//        
//        Session ss=util.NewHibernateUtil.getSessionFactory().openSession();
//        Transaction tt=ss.beginTransaction();
//        pojo.Item nn =new pojo.Item();
//        
//        nn.setCategory(cat);
//        nn.setItemId(Integer.SIZE);
//        nn.setName(iname);
//        nn.setUnitprice(Double.parseDouble(unitprice));
//        
//        ss.save(nn);
//        tt.commit();
//        
//        PrintWriter out = response.getWriter();
//        out.write("ok");
        
        try {
            String iname = request.getParameter("itemname");
            String cat = request.getParameter("catagory");

            String unitprice = request.getParameter("unitprice");

            Session ss = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction tt = ss.beginTransaction();
            pojo.Item nn = new pojo.Item();
            int lastitemid = 0;
            pojo.Stock stockz = new pojo.Stock();

            nn.setCategory(cat);

            nn.setName(iname);
            nn.setUnitprice(Double.parseDouble(unitprice));
            ss.save(nn);

            Query query = ss.createQuery("from Item order by itemId DESC");
            query.setMaxResults(1);
            pojo.Item lastitemz = (pojo.Item) query.uniqueResult();

            stockz.setItemId(lastitemz.getItemId());
            stockz.setUnitQty(0);

            ss.save(stockz);
            tt.commit();

            PrintWriter out = response.getWriter();
            out.write("ok");
        } catch (Exception e) {
            System.out.println("----" + e);
        }
        
        
        
        
      
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
