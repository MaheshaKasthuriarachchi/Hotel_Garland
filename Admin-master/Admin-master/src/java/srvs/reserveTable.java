
package srvs;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class reserveTable extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try {

            String Val1 = request.getParameter("TableCount");
            String TIMESLOT = request.getParameter("TimeSlot");
            String RESTABLENUM = request.getParameter("ResTableNum");
            String Val2 = request.getParameter("ReserveDate");


            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date res1 = sdf.parse(Val2);
            long rs1 = res1.getTime();
            java.sql.Date RESERVEDATE = new java.sql.Date(rs1);

            int TABLECOUNT = Integer.parseInt(Val1);
            
            Session session = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();

            pojo.ReserveTable RT = new pojo.ReserveTable();
            RT.setTime(TIMESLOT);
            RT.setReservedTables(RESTABLENUM);
            RT.setReserveDate(RESERVEDATE);
            RT.setTableCount(TABLECOUNT);            

            session.save(RT);
            transaction.commit();
            
            
            PrintWriter out = response.getWriter();
            out.write("ok");
            

        } catch (IOException | HibernateException e) {
            
        } catch (ParseException ex) {
            Logger.getLogger(reserveTable.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
