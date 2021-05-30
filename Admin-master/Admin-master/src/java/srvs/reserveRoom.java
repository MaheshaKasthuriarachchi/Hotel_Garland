package srvs;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

public class reserveRoom extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      try {

            String Val1 = request.getParameter("roomNo");
            String RoomType = request.getParameter("roomType");
            String Val2 = request.getParameter("adultsCount");
            String  Val3= request.getParameter("childrenCount");
            String Val4 = request.getParameter("duration");
            String Val5 = request.getParameter("advance");
            String Val6 = request.getParameter("checkin");
            String Val7 = request.getParameter("checkout");

            SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
            java.util.Date res1 = sdf.parse(Val6);
            java.util.Date res2 = sdf.parse(Val7);
            long rs1 = res1.getTime();
            long rs2 = res2.getTime();
            java.sql.Date CheckIn = new java.sql.Date(rs1);
            java.sql.Date CheckOut = new java.sql.Date(rs2);

            int RoomNo = Integer.parseInt(Val1);
            int Adults = Integer.parseInt(Val2);
            int Children = Integer.parseInt(Val3);
            int Duration = Integer.parseInt(Val4);
            double Advance = Double.parseDouble(Val5);


            
            Session session = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();

            pojo.Rooms RM = new pojo.Rooms();
            RM.setRoomNumber(RoomNo);
            RM.setRoomType(RoomType);
            RM.setAdults(Adults);
            RM.setChildren(Children);
            RM.setAdvance(Advance);
            RM.setCheckIn(CheckIn);
            RM.setCheckOut(CheckOut);
            RM.setDuration(Duration);
            

            session.save(RM);
            transaction.commit();
            
            
            PrintWriter out = response.getWriter();
            out.write("ok");
            

        } catch (IOException | HibernateException e) {
            
        } catch (ParseException ex) {
            Logger.getLogger(reserveRoom.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
