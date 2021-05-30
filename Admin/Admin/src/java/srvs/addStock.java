package srvs;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class addStock extends HttpServlet {

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String itemID=request.getParameter("itemid");
        String Quantity=request.getParameter("qty");
        
        Session ss= util.NewHibernateUtil.getSessionFactory().openSession();
        Transaction tt=ss.beginTransaction();
        
        pojo.Stock nn=new pojo.Stock();
        
//        nn.setItemId(itemID);
//        nn.setUnitQty(Quantity);
        
        ss.save(nn);
        tt.commit();
       
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
