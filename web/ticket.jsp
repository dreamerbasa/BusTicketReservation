<%-- 
    Document   : ticket
    Created on : 20 Aug, 2020, 11:32:36 PM
    Author     : khwaj
--%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket Page</title>
    </head>
    <body style="margin:10%;"><table  style="width:100%;"><tr style="height:10px;"><td><img  src="images/MandalaBusIcon.png" style="height:20%;" class="img-thumbnail"></td><td style="text-align:left;"><h1>MandalaBus Ticket</h1></td></tr></table>
           
    <%
        Timestamp ts = new Timestamp(10000); 
Random random = new Random();    
     
 String TicketNo=ts.toString()+random.nextInt(1000);
        try{
        response.setContentType("text/html;charset=UTF-8");
        
            String url="jdbc:mysql://localhost:3306/otbs";
            String uname="khwaja";
            String pwd="khwaja";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection(url,uname,pwd);
            Statement statement=connection.createStatement();//3.
            
            
            String tidc=(String)session.getAttribute("tidnum");
            String bidc=(String)session.getAttribute("bidnum");
            ArrayList<String> als=(ArrayList<String>)session.getAttribute("seatsList");
            int num_seats=als.size();
//out.println(tidc+" "+bidc+" "+als);
  String al=session.getAttribute("seatsList").toString();
       al=al.substring(1,al.length()-1);
           String Q="INSERT INTO `txn`(`txnid`, `bid`, `email`, `phoneno`, `seats`) VALUES ('"+TicketNo+"','"+(String)session.getAttribute("bidnum") +"','"+ (String)session.getAttribute("email") +"','"+(String)session.getAttribute("phoneno")+"','"+al+"');";
                   statement.executeUpdate(Q); 
  %>
  <%
      
      
  String Query = "select * from `tours_data` where `tid`='"+tidc+"'";// should be generated  dynamically *********************************************
               ResultSet rs = statement.executeQuery(Query);
              if(rs.next()){
          %>
    
    
        <h3>Ticket Number:<%=TicketNo%></h3>
        <div>
            <h3>Journey From <%=rs.getString("fromcity")%> to <%=rs.getString("tocity")%> on <%=rs.getString("tourdate")%></h3>
         </div>
    
          
        <%
            }

  
  String q = "select * from `bus_data` where `bid`='"+bidc+"'";// should be generated  dynamically *********************************************
                rs = statement.executeQuery(q);
              if(rs.next()){
          %>
          
              
          <table width="100%"  style="text-align: center; font-weight: bold;">
              
                    <tr>
                        <td>Bus name:<%=rs.getString("bname")%></td>
                        <td>Departure:<%=rs.getString("dept_time")%></td>
                        <td>Duration:<%=rs.getString("duration")%>hours</td>
                        <td>Arrival:<%=rs.getString("arr_time")%></td>
                      </tr>
                    <tr>
                        <td>Bus code:<%=rs.getString("bcode")%></td>
                        <td>Dept Address:<%=rs.getString("dept_add")%></td>
                        <td></td>
                        <td>Arrival Date:<%=rs.getString("arr_date")%></td>
                    </tr>
                    <tr>
                        <td>Bus type:<%=rs.getString("btype")%></td>
                        <td></td>
                        <td></td>
                        <td>Arrival Address:<%=rs.getString("arr_add")%></td>
                    </tr>
                    
                </table>
                    <h3>seats selected:<%=als%></h3>                  
                    
                    <h3>Passenger Details:</h3>
                    <table border="1" width="100%" style="text-align: center;">
                        <tr><th>Passenger Name</th><th>Passenger Gender</th><th>Passenger Age</th></tr>
                        <%
                            try{
                            String[][] arr=(String[][])session.getAttribute("passDetails");
                            for(int b=0;b<arr.length;b++){%>
                        <tr><td><%=arr[b][0]%></td><td><%=arr[b][1]%></td><td><%=arr[b][2]%></td></tr>
                        <%  }

}
catch(Exception e){}
                        %>
                    </table>
                    <h3>email:<%=(String)session.getAttribute("email")%></h3>
                    <h3>phone no:<%=(String)session.getAttribute("phoneno")%></h3>
          
    <%  }
}
catch(SQLException e){}
finally{

session.invalidate();
}
%>
   
    </body>
</html>

