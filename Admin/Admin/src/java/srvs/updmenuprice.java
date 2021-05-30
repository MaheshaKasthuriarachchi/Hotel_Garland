package srvs;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class updmenuprice extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String untprice = request.getParameter("untp");
            String PDetails = request.getParameter("pdetails");
            
            HttpSession se = request.getSession();
            pojo.Menu ee = (pojo.Menu) se.getAttribute("updatemenuid");
            
            Session hibses = util.NewHibernateUtil.getSessionFactory().openSession();
            Transaction tt = hibses.beginTransaction();
            
            ee.setPrice(Double.parseDouble(untprice));
            ee.setPortionSize(PDetails);

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
