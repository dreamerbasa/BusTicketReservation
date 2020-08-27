<%-- 
    Document   : view_seats
    Created on : 20-Aug-2020, 11:47:03 AM
    Author     : dream
--%>

<!--
TODO :
1. Line 19,20,21 -> database configuration
3. proceed.jsp file -> Line 26 give name of jsp which should be loaded
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    //session = request.getSession(false);
    
//Connecting to database
    String url = "jdbc:mysql://localhost:3306/otbs";
    String uname = "khwaja";
    String pwd = "khwaja";
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(url, uname, pwd);
    
String bids = (String)request.getParameter("bidnumber");
                bids=bids.substring(0,bids.length()-1);
                session.setAttribute("bidnum",bids );
String q="select seats_capacity from bus_data where bid="+bids;

Statement statement=conn.createStatement();
ResultSet rss=statement.executeQuery(q);
int n=0;//seats capacity
if(rss.next()){
    n=rss.getInt(1);
}

 q="select seats_avail from bus_data where bid="+bids;

 statement=conn.createStatement();
 rss=statement.executeQuery(q);
int a=0;//seats available
if(rss.next()){
    a=rss.getInt(1);
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Seats</title>
        <link rel="stylesheet" href="images/style.css">
        <script>
            //declaring global variable to keep track of user fare and seatsSelected
            var fare = 0;
            var totalFare = 0;
            
            var seatsSelc = new Array();
            var buttonClicks = new Array();//keeps track of seats selected
            var finalSeats = new Array();// gets seats selected when proceed button clicked
            for (var i = 1; i <= <%=n+1%>; i++) {
                    buttonClicks.push(0);
                    seatsSelc.push(0);
            }
            
            function getFareDetails(){
                // Initializing total fare html element
                document.getElementById("fare").innerHTML = totalFare;
            }
            
            function buttonClickCount(id){
                
                // this function keeps track of how many times button is clicked
                //If clicked = 0  => seat selected, so append seat number, display seat number, and calculate and display total fare
                //If clicked = 1  => seat selected, so delete seat number, display seat number, and calculate and display total fare
                if(buttonClicks[id] == 0 && document.getElementById(id.toString()).onclick){
                        document.getElementById(id.toString()).style.backgroundColor = "#B2BEB5";
                        seatsSelc[id] = document.getElementById(id.toString()).innerHTML;
                        //seats.splice(id,0,document.getElementById(id.toString()).innerHTML);
                        //seats.push(document.getElementById(id.toString()).innerHTML);
                        var booked = new Array();
                        for (var i = seatsSelc.length - 1; i >= 0; i--) {
                                if(seatsSelc[i] != 0)
                                        booked.push(seatsSelc[i]);
                        }
                        document.getElementById("seats").innerHTML = booked;
                        buttonClicks[id]++;
                        totalFare += fare;
                        document.getElementById("fare").innerHTML = totalFare;
                }
                else if(buttonClicks[id] == 1 && document.getElementById(id.toString()).onclick){
                        document.getElementById(id.toString()).style.backgroundColor = "#4CAF50";
                        seatsSelc.splice(id,1);
                        seatsSelc.splice(id,0,0);
                        var booked = new Array();
                        for (var i = seatsSelc.length - 1; i >= 0; i--) {
                                if(seatsSelc[i] != 0)
                                        booked.push(seatsSelc[i]);
                        }
                        //seats.pop();
                        document.getElementById("seats").innerHTML = booked;
                        buttonClicks[id] = 0;
                        totalFare -= fare;
                        document.getElementById("fare").innerHTML = totalFare;
                }
            }
        </script>
    </head>
    <body>
        <div class="topdiv" id="top">
<!-- 		TRIED TO DYNAMICALLY CREATE BUTTONS BUT ONCLICK WAS NOT SET CORRECTLY
                <script> 
                        createButtons();
                        setOnCLick();
                </script> -->

            <!--By default 24 buttons taken-->  
                
            <table border="1" style="table-layout:fixed;"> <tr>
            <%
                int j=1;
            while(j<=n/2){%>
            <td><button type="button" id="<%=j%>" class="button" onclick="buttonClickCount(<%=j%>)"><%=j%></button></td>
            
            <%j++;}%>
                </tr>
                <tr height="70px"></tr>
               
                <tr>
              <%while(j<=n){%>
              <td><button type="button" id="<%=j%>" class="button" onclick="buttonClickCount(<%=j%>)"><%=j%></button></td>
            
            <%j++;}%>
            </tr>
            </table>
            <h3>Only 1 seat per row is Available considering COVID pandemic</h3>
            <%
                
                //get bid using getParameter method
                //int bid = 2;// default set to test other functionalities
                //Getting the boarding, destination and fare details
                PreparedStatement st = conn.prepareStatement("select dept_add, arr_add,fare from bus_data where bid=?");
                st.setString(1,bids);
                ResultSet rs =  st.executeQuery();
                String boarding = "";
                String dest = "";
                int fare = 0;
                while(rs.next()){
                    boarding = rs.getString(1);
                    dest = rs.getString(2);
                    fare = rs.getInt(3);
                }
                //out.print(boarding+dest);
            %>
            <script type="text/javascript">
                //setting global variable fare -> used later to calculate totalFare
                fare = <%=fare%>;
            </script>
            <%
                
                //getting already locked seats to mark them red
                st = conn.prepareStatement("select seats, status from seatsdata where bid=? and status=1");
                st.setString(1,bids);
                rs =  st.executeQuery();
                
            %>
            <script type='text/javascript'>
                // Loading locked seats into array
                var bookedData = [
                            <% while(rs.next()){%>
                                <%=rs.getInt("seats")%>,
                <%}%>];
                //changing color of locked seats to read and disabling onclick
                for(var j=0;j<bookedData.length;j++){
                    document.getElementById(bookedData[j].toString()).style.backgroundColor = "red";
                    document.getElementById(bookedData[j].toString()).onclick = null;
                }
            </script>
	</div>
                <div class="bottomdiv">
		<h3>Fare Details :</h3>
		<p> Boarding point - <i id="boarding"><%=boarding%></i></p>
		<p> Dropping point - <i id="dropping"><%=dest%></i></p>
		<p> Seats Selected - <i id="seats"></i></p>
		<p> Total Fare - <i id="fare"></i></p><br>
		<button type="button" id="proceed" onclick="final()">Proceed</button>
                <script>
                        //Code to call proceed.jsp -> where we get redirected to nextPage.jsp(here named->details.jsp)
                        document.getElementById("fare").innerHTML = totalFare;
                        function final(){
                            //This method is called when proceed button is clicked.
                            //It gets final selected seats into array-> finalSeats
                            for(var i = 0;i<seatsSelc.length;i++)
                                if(seatsSelc[i] !=0){
                                    finalSeats.push(seatsSelc[i]);
                                }
                            if(finalSeats.length == 0 || finalSeats==null)
                                alert("Please select seats");
                            else{
                                //window.location="proceed.jsp";
                            
                            //document.write();
                            //Below code allows us to access finalSeats in scriptlet
                            window.location="http://localhost:8084/MandalaBus/proceed.jsp?finalSeats="+finalSeats;
                            }
                            //window.location.replace("http://localhost:8080/Final/view_seats.jsp?finalSeats="+finalSeats);                    
                            //below code takes us to details.jsp
//                            if(finalSeats.length == 0 || finalSeats==null)
//                                alert("Please select seats");
//                            else{
//                                <%//if(request.getParameter("finalSeats")!=null)
                                    //attributes(request);%>//
//                                window.location.href="proceed.jsp";}
                            
                        }
                </script>
                <%!
//                    private void attributes(HttpServletRequest request){
//                        //Getting finalSeats-> We get a string of comma-separated values
//                        HttpSession session = request.getSession();
//                        String seatsSelected = request.getParameter("finalSeats");
//                        session.setAttribute("seatsSelected", seatsSelected);
//                        //session.setAttribute("seatsSelected", seatsSelected);
//                        System.out.println("seats : "+seatsSelected);
//                        System.out.println(session.getAttribute("seatsSelected"));
//                    }
                %>

	</div>
	<!--</div>-->
    </body>
</html>