
package srvs;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class updateTableReservation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try {

            String Val1 = request.getParameter("tablecount");
            String TIMESLOT = request.getParameter("timeslot");
            String RESTABLENUM = request.getParameter("restablenum");
            String Val2 = request.getParameter("reservedate");


            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date res1 = sdf.parse(Val2);
            long rs1 = res1.getTime();
            java.sql.Date RESERVEDATE = new java.sql.Date(rs1);

            int TABLECOUNT = Integer.parseInt(Val1.trim());
            
            HttpSession se = request.getSession();
            pojo.ReserveTable ee = (pojo.ReserveTable) se.getAttribute("updatetableid");
            
            Session hibses = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction tt = hibses.beginTransaction();
            ee.setTime(TIMESLOT);
            ee.setReservedTables(RESTABLENUM);
            ee.setReserveDate(RESERVEDATE);
            ee.setTableCount(TABLECOUNT); 
            

            hibses.update(ee);
            tt.commit();
            PrintWriter wr = response.getWriter();
            wr.write("ok");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
