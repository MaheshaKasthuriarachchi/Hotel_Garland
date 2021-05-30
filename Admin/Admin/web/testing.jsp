

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Testing </title>
    </head>
    <body>
        <h1>Hello World</h1>


        <select>
            
             <%
                                                             //java gahanna 
                                                            
                             Session ss =util.NewHibernateUtil.getSessionFactory().openSession();
                             Criteria cc =ss. createCriteria(pojo.Item.class);
                             List<pojo.Item> item =cc.list();
                                                            
                             for(pojo.Item im:item){
                                                                
                                                                
                                                            
                                                                
                                                            

                                                        %>

                                                        <option><%= im.getName() %></option>
            
  <%
                                }
                                                            
                                                            %>

        </select>
    </body>
</html>
