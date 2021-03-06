<%-- 
    Document   : manageBooking
    Created on : Jan 22, 2022, 2:55:46 PM
    Author     : Legion
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Booking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bookings</title>
        <!--Fonts-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        
        <style>
            .manageBookingTitle{
                font-size: 40px;
                font-weight: 600;
            } 
            
            thead{
                font-size: 20px;
                font-weight: 600;
                text-align: center;
            }
            .table-condensed
            {
                background-color: #62BDBD;
            }
            tbody{
                font-size: 18px;
                background-color: lightgray;
                text-align: center;
            }
        </style> 
        
        <%@include file = "head.jsp"%>
        
    </head>
    <body>
        <%@include file = "adminNav.jsp"%>       
        <div class="container">
            <div class="manageBookingTitle"><br><br>View Bookings</div>
            <div class="row justify-content">
                <div class="col-md-12">
                    <div class=" mt-5">  
                        <div style="padding-bottom: 30px;" class="container-fluid page-body-wrapper"> 
                          <div class="container">
                          <table class="table table-hover">
                              <thead class="table-condensed">
                                <tr>
                                  <td style="padding:20px 20px 20px 10px;">Booking ID</td>
                                  <td style="padding:20px 20px 20px 10px;">Customer ID</td>
                                  <td style="padding:20px 20px 20px 10px;">Date</td>
                                  <td style="padding:20px 20px 20px 10px;">Status</td>
                                  <td style="padding:20px 20px 20px 10px;">Amount to Pay</td>
                                  <td style="padding:20px 20px 20px 10px;">Hall Number</td>
                                  <td style="padding:20px 20px 20px 10px;">Session</td>
                                  <td style="padding:20px 20px 20px 10px;">Game</td>
                                  <td style="padding:20px 20px 20px 10px;"></td>
                                </tr>
                              </thead>
                              <%
                                List<Booking> ul = (List<Booking>)request.getAttribute("ul");
                                    for(int i=0;i<ul.size();i++){
                                   %>
                                   <tbody>
                                    <tr>
                                        <td style="padding:20px 20px 20px 10px;"><%=ul.get(i).getId()%></td>
                                        <td style="padding:20px 20px 20px 10px;"><%=ul.get(i).getCustomerId()%></td>
                                        <td style="padding:20px 20px 20px 10px;"><%=ul.get(i).getDate()%></td>
                                        <td style="padding:20px 20px 20px 10px;"><%=ul.get(i).getStatus()%></td>
                                        <td style="padding:20px 20px 20px 10px;"><%=ul.get(i).getAmountToPay()%></td>
                                        <td style="padding:20px 20px 20px 10px;"><%=ul.get(i).getHallNo()%></td>
                                        <td style="padding:20px 20px 20px 10px;"><%=ul.get(i).getSession()%></td>
                                        <td style="padding:20px 20px 20px 10px;"><%=ul.get(i).getGame()%></td>
                                        <td style="padding:10px;">
                                            <form method="get" action="DeleteBooking">
                                                <input type="hidden" name="id" value="<%=ul.get(i).getId()%>">
                                                <button type="submit" class="btn btn-danger">Delete</button>
                                            </form>
                                        </td>
                                   <% } %>
                                    </tr>
                                </tbody>                
                          </table>
                          </div>
                        </div>
                    </div>    
                </div>
            </div>
        </div>
    <%@include file = "footer.html"%>                                
    </body>
</html>
