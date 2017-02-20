<%-- 
    Document   : order
    Created on : Feb 7, 2017, 3:13:05 PM
    Author     : John Phillips
--%>

<%@page import="pizzamvc.PizzaOrder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>John's JSP Pizza Order</title>
        <link rel="stylesheet" href="mystyle.css">
    </head>
    <body>
        <h1>Thank you for your order!</h1>
        <h2>Order details:</h2>
        <p>Email = ${myOrder.email}</p>
        <p>Size = ${myOrder.size}</p>
        <p>Cust = ${myOrder.crust}</p>
        <p>Toppings: 
            <%
                // Checkboxes from a form may or may not be checked. We can use the
                // following code to get an array of the values that are checked.
                PizzaOrder po = (PizzaOrder) request.getAttribute("myOrder");
                double price = 0.0;
                
                if (po.getToppings() != null && po.getToppings().length != 0) {
                    for (String myTopping : po.getToppings()) {
                        out.println(myTopping + ", ");
                    }
                } else {
                    out.println(" no toppings were requested");
                }
                
                if (request.getParameter("size").equals("small")){
                    price = price + 5.00;
                } else if (request.getParameter("size").equals("medium")){
                    price = price + 6.00;
                } else if (request.getParameter("size").equals("large")){
                    price = price + 7.00;
                }
                
                if (request.getParameter("cust").equals("pan")){
                    price = price + 1.00;
                } else if (request.getParameter("crust").equals("hand-tossed")){
                    price = price + .50;
                }
                
                out.println("<p>Price: $" + price + "</p>");
            %>
        </p>
        <p><a href='home.html'>Return to home page</a></p>
    </body>
</html>
