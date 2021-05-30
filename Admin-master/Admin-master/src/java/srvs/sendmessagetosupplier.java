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
import org.hibernate.Session;
import org.hibernate.Transaction;


public class sendmessagetosupplier extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
                
             String suppliername = request.getParameter("suppliernamez");
             String sendedmessage = request.getParameter("messagedetails");
            System.out.println("comes to serveh");
                Session sess = util.NewHibernateUtil.getSessionFactory().openSession();
                Transaction tc = sess.beginTransaction();
                
                pojo.Sndmessagetosupplier sendmsg = new pojo.Sndmessagetosupplier();
                sendmsg.setSuppliername(suppliername);
                sendmsg.setSuppliermessage(sendedmessage);
                
                Date dd = new Date();
                SimpleDateFormat todaydate = new SimpleDateFormat("yyyy/MM/dd");
                String today = todaydate.format(dd);

                SimpleDateFormat todaytimez = new SimpleDateFormat("hh:mm:ss");
                String totime = todaytimez.format(dd);
                
                sendmsg.setSenddate(today);
                sendmsg.setSendtime(totime);
                sess.save(sendmsg);
                tc.commit();
                sess.close();
                
                response.getWriter().write("ok");
            
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
