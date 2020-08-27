<%-- 
    Document   : TrxGate
    Created on : 20 Aug, 2020, 10:48:41 PM
    Author     : khwaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction GateWay</title>
    </head>
    <body><center>
        <h3>Please do not close the tab</h3>
        <h2>Enter Transaction Details</h2>
        <br><br>
        <form action="ticket.jsp" method="POST">
            Acc No:<input type="text" name="accno" value=""/><br><br>
            cvv   :<input type="text" name="cvv" value="" /><br><br>
            <input type="submit" value="proceed to pay"/><br><br>
        </form>
        </center>
    </body>
</html>
