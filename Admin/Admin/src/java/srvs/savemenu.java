
package srvs;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class savemenu extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            
        String fooname = request.getParameter("foodname");
        String type = request.getParameter("Mtype");
        String price = request.getParameter("uniprise");
        String pDetails = request.getParameter("PDetails");

        Session ss = util.NewHibernateUtil.getSessionFactory().openSession();
        Transaction tt = ss.beginTransaction();

        pojo.Menu nn = new pojo.Menu();

        nn.setFoodName(fooname);
        nn.setMenuType(type);
        nn.setPrice(Double.parseDouble(price));
        nn.setPortionSize(pDetails);

        ss.save(nn);
        tt.commit();

        PrintWriter out = response.getWriter();
        out.write("ok");
        
        } catch (IOException | HibernateException e) {
            
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
