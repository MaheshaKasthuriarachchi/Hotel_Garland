
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

public class updateRoomReservation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String Val1 = request.getParameter("roomno");
            String RoomType = request.getParameter("roomtype");
            String Val2 = request.getParameter("adcount");
            String Val3 = request.getParameter("chcount");
            String Val4 = request.getParameter("duration");
            String Val5 = request.getParameter("advance");
            
            
            String Val6 = request.getParameter("checkin");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date res1 = sdf.parse(Val6);
            long rs1 = res1.getTime();
            java.sql.Date CheckIn = new java.sql.Date(rs1);
            
            String Val7 = request.getParameter("checkout");
            java.util.Date res2 = sdf.parse(Val7);
            long rs2 = res2.getTime();
            java.sql.Date CheckOut = new java.sql.Date(rs2);
            
            int RoomNo = Integer.parseInt(Val1.trim());
            int Adults = Integer.parseInt(Val2.trim());
            int Children = Integer.parseInt(Val3.trim());
            int Duration = Integer.parseInt(Val4.trim());
            double Advance = Double.parseDouble(Val5.trim());
            
            HttpSession se = request.getSession();
            pojo.Rooms ee = (pojo.Rooms) se.getAttribute("updateroomid");
            
            Session hibses = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction tt = hibses.beginTransaction();
            ee.setRoomNumber(RoomNo);
            ee.setRoomType(RoomType);
            ee.setAdults(Adults);
            ee.setChildren(Children);
            ee.setDuration(Duration);
            ee.setAdvance(Advance);
            ee.setCheckIn(CheckIn);
            ee.setCheckOut(CheckOut);
            

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
