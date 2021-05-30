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
import pojo.Stock;


public class addqtytofoodreceipy extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String receipyname = request.getParameter("recname");
            String qtyitem = request.getParameter("itemqty");
            String itemidz = request.getParameter("itemid");

            System.out.println("item id--" + itemidz);
            System.out.println("qty item--" + qtyitem);
            System.out.println("food name--" + receipyname);

            Session sess = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction tt = sess.beginTransaction();

            pojo.Item it = (pojo.Item) sess.load(pojo.Item.class, Integer.parseInt(itemidz));

            Criteria cc = sess.createCriteria(pojo.Stock.class);
            cc.add(Restrictions.eq("itemId", it.getItemId()));
            pojo.Stock stc = (pojo.Stock) cc.uniqueResult();

            Criteria c2 = sess.createCriteria(pojo.Foodrecipie.class);
            c2.add(Restrictions.eq("foodName", receipyname));
            pojo.Foodrecipie fr = (pojo.Foodrecipie) c2.uniqueResult();
            System.out.println("Food Receipy eke nama--"+fr.getFoodName() +"food id ekaa--------"+ fr.getFoodId());

            int stockqty = stc.getUnitQty();
            int requestqty = Integer.parseInt(qtyitem);

            int finalqty = stockqty - requestqty;
            System.out.println("quantity ekaaaa" + finalqty);
            PrintWriter out = response.getWriter();

            if (finalqty < 0) {
                System.out.println("aduiiii");
                out.write("qtyz");
            } else {
                System.out.println("wadiyyy");

                Criteria cri = sess.createCriteria(pojo.ItemFood.class);
                cri.add(Restrictions.eq("itemId", it.getItemId()));
                cri.add(Restrictions.eq("foodId", fr.getFoodId()));
                pojo.ItemFood itfd = (pojo.ItemFood) cri.uniqueResult();
                if (itfd == null) {

                    System.out.println("objrct eka na");
                    pojo.ItemFood fre = new pojo.ItemFood();
                    
                    fre.setFoodId(fr.getFoodId());
                    fre.setItemId(it.getItemId());
                    fre.setQuantity(requestqty);

                    stc.setUnitQty(stc.getUnitQty() - requestqty);

                    sess.save(fre);

                    sess.update(stc);
                    tt.commit();
                    out.write("ok");
                } else {

                    System.out.println("object eka naa");
                    itfd.setQuantity(itfd.getQuantity() + requestqty);
                    stc.setUnitQty(stc.getUnitQty() - requestqty);
                    
                    sess.update(itfd);

                    sess.update(stc);
                    tt.commit();
                    out.write("ok");
                }

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
