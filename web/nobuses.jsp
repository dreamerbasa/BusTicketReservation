<%-- 
    Document   : nobuses
    Created on : 20 Aug, 2020, 10:45:58 AM
    Author     : khwaj
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% Class.forName("com.mysql.jdbc.Driver");
        PrintWriter outt = response.getWriter();%>
    </head>
    <body>
      
        
<%!            
public class Actor{
String url="jdbc:mysql://localhost:3306/otbs";
String uname="khwaja";
String pwd="khwaja";
Connection connection=null;
Statement statement=null;
ResultSet rs=null;
public Actor(){
try{
connection=DriverManager.getConnection(url,uname,pwd);
statement=connection.createStatement();
}
catch(SQLException e){
e.printStackTrace();
}
}
public ResultSet getdata(String a){
try{ 
rs=statement.executeQuery(a);
}catch(Exception e){
e.printStackTrace();
}
return rs;
}
}
%>

<%
   
    String jd=request.getParameter("jdate");
    Date date=new SimpleDateFormat("yyyy-MM-dd").parse(jd);
    String query="SELECT tid FROM tours_data WHERE fromcity='"+request.getParameter("from")+"' AND tocity='"+request.getParameter("to")+"' AND tourdate='"+request.getParameter("jdate")+"';";
 // outt.println(query);
    Actor actor=new Actor();    
  
    ResultSet records=null;
    records=actor.getdata(query); 
    if(records.next()==false){
        outt.println("<h1>Sorry no buses where found!<h1>");
        
     %>
    <center> <img  src="images/sorry.gif" class="img-thumbnail" style="width:40%;height:50%"> </center>
     
     
     <%
    }else{
        //outt.println(records.getInt("tid"));
        session.setAttribute("tidnum", records.getString("tid"));
        RequestDispatcher rd=request.getRequestDispatcher("busesfound.jsp");    
        rd.forward(request, response);
    }
%>

    </body>
</html>
