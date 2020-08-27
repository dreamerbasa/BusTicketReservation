<%-- 
    Document   : details
    Created on : 20-Aug-2020, 12:05:09 PM
    Author     : dream
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Passenger Details</title>
    </head>
    <body>
        
        <%
            //out.println(session.getAttribute("seatsSelected"));
            
            //ServletContext context = getServletContext();
            ArrayList<String> seatsL = (ArrayList<String>) session.getAttribute("seatsList");
           
                
                //ArrayList<String> seatsList = new ArrayList<String>();
                //StringTokenizer str = new StringTokenizer(seatsL,",");
               // for(int i=0;i<seatsL.size();i++)
               //     out.println(seatsL.get(i));
            
            int blocks=seatsL.size();  
           // int[][] arr=new int[blocks][3];
            int j=0;
        %>
        
        <form action="/MandalaBus/LockDetails" method="post" style="background-color: rgp(0,0,0,0.5);">
            
        <%while(j<blocks){%>
        
        <h4>seat<%=seatsL.get(j)%>:</h4> 
        <input type="text" placeholder="passenger name"  name="<%=j%>passname"/>      
        <input type="number" placeholder="passenger age" name="<%=j%>passage"/>            
       Male:<input type="radio" name="<%=j%>passgender" value="male" /> 
       Female:<input type="radio" name="<%=j%>passgender" value="female"  checked="checked"/> 
        <%j++;}%>
        <br>
        <br>
        <input type="text" placeholder="email id"  name="email"/>      
        <input type="number" placeholder="phoneno" name="phoneno"/>  
        <input type="submit" value="PAY"/>
        </form>
    </body>
</html>