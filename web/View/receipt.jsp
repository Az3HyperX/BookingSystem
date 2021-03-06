<%-- 
    Document   : receipt
    Created on : Feb 8, 2022, 10:09:44 PM
    Author     : M S I
--%>

<%@page import="Model.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file = "head.jsp"%>
    </head>
    <body>
        <%@include file = "navigation.jsp"%>
        <div class="container loginContainer d-flex justify-content-between pd-12">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-8">
                        <div class="card shadow">
                            <div class="text-left logo p-2 px-5 pt-5"> <img src="<%= request.getContextPath()%>/images/LOGO-UTM.png" height="80" > </div>
                            <div class="invoice p-5">
                                <%
                                    Customer customer = (Customer) session.getAttribute("customer");
                                    String eventName = (String) session.getAttribute("eventName");
                                    String eventDate = (String) session.getAttribute("eventDate");
                                    double eventPrice = (Double) session.getAttribute("eventPrice");
                                %>
                                <h5>Your booking Confirmed!</h5> <span class="font-weight-bold d-block mt-4">Hello, <%=customer.getName()%></span> <span>You booking has been confirmed and we are looking forward meeting you!</span>
                                <div class="payment border-top mt-3 mb-3 border-bottom table-responsive">
                                    <table class="table table-borderless">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="py-2"> <span class="d-block text-muted">Name</span> <span><%= customer.getName()%></span> </div>
                                                </td>
                                                <td>
                                                    <div class="py-2"> <span class="d-block text-muted">Email</span> <span><%= customer.getEmail()%></span> </div>
                                                </td>
                                                <td>
                                                    <div class="py-2"> <span class="d-block text-muted">Age</span> <span><%= customer.getAge()%></span> </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="product border-bottom table-responsive">
                                    <table class="table table-borderless">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="py-2"> <span class="d-block text-muted">Booking Date</span> <span><%= eventDate%></span> </div>
                                                </td>
                                                <td>
                                                    <div class="py-2"> <span class="d-block text-muted">Payment</span> <span><img src="https://img.icons8.com/color/48/000000/mastercard.png" width="20" /></span> </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="product border-bottom table-responsive">
                                    <table class="table table-borderless">
                                        <tbody>
                                            <tr>
                                                <td width="60%"> <span class="font-weight-bold"></span>
                                                    <div class="product-qty"> <span class="d-block">Booking : </span> <span><%= eventName%></span> </div>
                                                </td>
                                                <td width="20%">
                                                    <div class="text-right"> <span class="font-weight-bold">RM<%=eventPrice%></span> </div>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="row d-flex justify-content-end">
                                    <div class="col-md-5">
                                        <table class="table table-borderless">
                                            <tbody class="totals">
                                                <tr class="border-top border-bottom">
                                                    <td>
                                                        <div class="text-left"> <span class="font-weight-bold">Subtotal</span> </div>
                                                    </td>
                                                    <td>
                                                        <div class="text-right"> <span class="font-weight-bold">RM<%=eventPrice%></span> </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <p>Please show this receipt when you arrive at the sport hall to proceed for payment!</p>
                                <p class="font-weight-bold mb-0">Thanks for using our service!</p> <span>Sport Hall Team</span>
                            </div>
                            <div class="d-flex justify-content-between footer p-3"> <span>Need Help? visit our <a href="#"> help center</a></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file = "footer.html"%>
    </body>

</html>
