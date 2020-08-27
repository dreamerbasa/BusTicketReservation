<%-- 
    Document   : InsertBus
    Created on : 20 Aug, 2020, 1:31:58 PM
    Author     : khwaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/MandalaBus/Logout" method="get" >
            <input type="submit" value="Logout" name="logoutbutton" />
        </form>
        <center>            
        <form action="insertbusdata" method="post" >
            <h1>InsertBus Details</h1>
            <input type="text" name="fromcity" placeholder="fromcity" value="" /><br>
            <input type="text" name="tocity" placeholder="tocity" value="" /><br>
            
            <input type="text" name="bname" placeholder="bname" value="" /><br>
            <input type="text" name="bcode" placeholder="bcode" value="" /><br>
            <input type="text" name="btype" placeholder="btype" value="" /><br>
            <input type="text" name="dept_time" placeholder="dept_time" value="" /><br>
            departure:<input type="date" name="dept_date" placeholder="dept_date" value="" /><br>
            <input type="text" name="dept_add" placeholder="dept_add" value="" /><br>
            <input type="number" name="duration"  placeholder="duration" value="" /><br>
            <input type="text" name="arr_time" placeholder="arr_time" value="" /><br>
            arrival:<input type="date" name="arr_date"  placeholder="arr_date"  value="" /><br>
            <input type="text" name="arr_add" placeholder="arr_add" value="" /><br>
            <input type="number" name="seats_capacity" placeholder="seats_capacity" value="" /><br>
            <input type="number" name="fare" placeholder="fare" value="" /><br>
            <input type="number" name="seats_avail" placeholder="seats_avail"  value="" />
            
        </form>
    </center>
        
        
    </body>
</html>
