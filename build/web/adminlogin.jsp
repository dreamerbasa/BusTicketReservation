<%-- 
    Document   : adminlogin
    Created on : 20 Aug, 2020, 12:26:05 PM
    Author     : khwaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
        <title>Admin Login</title>
    </head>
    
    <body style="background-color:#000;">
        
    <center>
        
        <form action="/MandalaBus/LoginVerify" method="post" style="width: 30%; height:100%;background-color:rgb(255,255,255,0.5);padding: 20px;border-radius:20px;margin:10%" >
            <h1>Admin Login</h1>
  <div class="form-group" >
    <label for="exampleInputEmail1">Email address</label>
    
    <input type="text" class="form-control" name="au" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="ap" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
        </form></center>
    </body>
</html>
