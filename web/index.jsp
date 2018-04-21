<%-- 
    Document   : index
    Created on : Mar 17, 2018, 9:32:38 PM
    Author     : Mihai Rizea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href=".\css\eBooksStoreCSS.css" type="text/css"/>
        <title>Electronic books store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body class="thc">
        <h1>Welcome to Electronic Book Store</h1>
        <form action="./Login" method="POST">
        <table class="tablecenterdwithborder">
            <tc>
                <tr>
                    <td class="tdc">
                        Username:
                    </td>
                    <td>
                        <input class ="inputlargeonyellow" type="text" name="username"/>
                    </td>
                    
                </tr>
                <tr>
                    <td class="tdc">
                        Password:
                    </td>
                    <td>
                        <input class ="inputlargeonyellowpassword" type="password" name="password"/>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <input class="ebookstorebutton" type="submit" value="Login" name="login"/>
                    </td>
                </tr>
            </tc>
        </table>
       </form>     
    </body>
</html>
