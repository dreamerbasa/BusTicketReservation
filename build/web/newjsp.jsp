<%-- 
    Document   : newjsp
    Created on : 20 Aug, 2020, 12:07:03 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
          <% 
            // String busSelected = request.getParameter("param");
//             session.setAttribute("bid", busSelected);
//           context.setAttribute("bid",request.getParameter("selectedBus"));
//            ServletContext context=getServletContext(); 
           // out.println(busSelected);
           String al=session.getAttribute("seatsList").toString();
       al=al.substring(1,al.length()-1);
           String Query="INSERT INTO `txn`(`txnid`, `bid`, `email`, `phoneno`, `seats`) VALUES ('123','"+(String)session.getAttribute("bidnum") +"','"+ (String)session.getAttribute("email") +"','"+(String)session.getAttribute("phoneno")+"','"+al+"');";
           
           out.println(Query);
          %>
        
    </body>
</html>