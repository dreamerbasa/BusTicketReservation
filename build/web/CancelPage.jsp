<%-- 
    Document   : CancelPage
    Created on : 21 Aug, 2020, 7:17:23 PM
    Author     : khwaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cancel Page</title>
        <link rel="stylesheet" type="text/css" href="images/searchResultsStyle.css">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 
    </head>
    <body style="margin-top: 10%"><center>
        <h2>Please Enter the following Details to Cancel tickets</h2>
        <form style="width:50%;padding: 3%;" class="table"  action="/MandalaBus/CancelLogic" method="post">
            <input class="form-control"   type="text" placeholder="Enter Ticket No." name="ticket" required="true"/>
            <input class="form-control"  type="text" placeholder="Enter email" name="email" required="true"/>    
            
            <input class="btn btn-primary" type="submit" value="Proceed to CANCEL"/>
        </form>
    </center>
    </body>
</html>
