<%-- 
    Document   : temp
    Created on : 19 Aug, 2020, 6:45:13 PM
    Author     : khwaj
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>MandalaBus Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
     
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
  }
  .container-fluid {
      
    padding: 60px 50px;
  }
  
  .logo {
    font-size: 180px;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
 
 
  </style>
   <%
   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
   LocalDateTime now = LocalDateTime.now();   

      %>
</head>
<body style="background-color:#f4511e;">

<div class="jumbotron text-center" style="background-image: url(https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80); background-size: 100%;">
    
    <img  src="images/MandalaBusIcon.png" class="img-thumbnail" style="width:20%;height:20%"> <h1>MandalaBus</h1> 
    
  <p>Your Journey is our Destination.</p> 
  
  <form class="form-inline" action="searchresults.jsp">
      <div class="input-group"><table>
              <tr><td><input type="text" class="form-control" size="50" name="from" placeholder="from city" required></td>
              <td><input type="text" class="form-control" size="50" name="to" placeholder="to city" required></td>
              <td><input type="date" class="form-control" name="date" min= <%=dtf.format(now)%> value="" /> </td></tr></table>
       <div class="input-group-btn">
          <input type="submit" class="btn btn-danger" value="search">
      </div>
    </div>
  </form>
</div>

<!-- Container (About Section) -->
<div class="container-fluid" style="background-color:#f4511e;">
  <div class="row">
    <div class="col-sm-8">
      <h4>Developers Of this Website</h4>
      <p>Khwaja Bilkhis (17311A0592)</p>   
      <p>Supraja Miryala(17311A0587)</p>  
      <p>Aishwarya Basani(17311A05B1)</p>   
      <p>Srivarsha Gobburi(17311A0561)</p>     
      
    </div>
     <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo"></span>
    </div>
   
  </div>
</div>



</body>
</html>
