<%-- 
    Document   : mainpage
    Created on : Apr 21, 2018, 12:16:41 PM
    Author     : Mihai Rizea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ebooks store</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <h1>Reading shapes you</h1>
        <div class="menu">
            <% String userRole = session.getAttribute("role").toString(); 
                if(userRole.equals("user")) {
            %>
            <div class="btn"><i class="fa fa-shopping-cart" style="font-size:24px"></i> Cart</div>
            <div class="btn"><i class="fa fa-group" style="font-size:24px"></i> About us</div>
            <div class="btn"><i class="fa fa-address-book" style="font-size:24px"></i> Contact us</div>
            <% } else {  %>
            <div class="btn"><i class="fa fa-user-circle-o" style="font-size:24px"></i> Manage eBooks</div>
            <div class="btn"><i class="fa fa-user-circle-o" style="font-size:24px"></i> Manage Users</div>
            <% } %>
            <form action="./Logout">
                <button class="btn" type="submit"><i class="fa fa-user-secret" style="font-size:24px"></i> Logout</button>
            </form>            
        </div>
    </body>
</html>
