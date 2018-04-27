<%-- 
    Document   : ManageUsers
    Created on : Apr 26, 2018, 9:52:36 PM
    Author     : Mihai Rizea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>User management</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/eBooksStoreCSS.css" type="text/css"/>
    </head>
    <body>
        <div class="menu">
            <div class="btn"><i class="fa fa-user-circle-o" style="font-size:24px"></i> Manage eBooks</div>
            <div class="btn"><i class="fa fa-user-circle-o" style="font-size:24px"></i> Manage Users</div>
            <form action="./Logout">
                <button class="btn" type="submit"><i class="fa fa-user-secret" style="font-size:24px"></i> Logout</button>
            </form> 
        </div>        
        <form action="./ManageUsers" method="put">
        <table class="tablecenterdwithborder2">
            <tc>
                <tr>
                    <td class="tdr">
                        SSN:
                    </td>
                    <td>
                        <input class ="inputlargeonyellow" type="text" name="inputform_neweuser_SSN"/>
                    </td>
                    <td>

                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td class="tdr">
                        Username:
                    </td>
                    <td>
                        <input class ="inputlargeonyellow" type="text" name="inputform_neweuser_username"/>
                    </td>
                    <td>

                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td class="tdr">
                        Password:
                    </td>
                    <td>
                        <input class ="inputlargeonyellowpassword" type="password" name="inputform_neweuser_password"/>
                    </td>
                    <td>

                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td class="tdr">
                        Role:
                    </td>
                    <td>
                        <input class ="inputlargeonyellow" type="text" name="inputform_neweuser_role"/>                           
                    </td>
                    <td>

                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td>
                        <form action="InsertUser.jsp" method="post">
                            <input type="submit" name="insert_newebook" size="10" value="Insert" class="ebookstorebutton"/>
                        </form>
                    </td>                    
                    <td>
                        <form action="UpdateUser.jsp" method="post">
                            <input type="submit" name="update_ebook" size="10" value="Update" class="ebookstorebutton"/>
                        </form>    
                    </td>                    
                    <td>
                        <form action="DeleteUser.jsp" method="post">
                            <input type="submit" name="delete_ebook" size="10" value="Delete" class="ebookstorebutton"/>
                        </form>    
                    </td>
                    <td>
                        <form action="Cancel.jsp" method="post">
                            <input type="submit" name="cancel" size="10" value="Cancel" class="ebookstorebutton"/>
                        </form>    
                    </td>
                </tr>
            </tc>
        </table>
       </form>
            <%-- <table class="tablecenterdwithborder">
                <tr><td>SSN:</td><td><input type="text" name="inputform_neweuser_SSN"></input></td></tr>
                <tr><td>Username:</td><td><input type="text" name="inputform_neweuser_username"></input></td></tr>
                <tr><td>Pass:</td><td><input type="text"name="inputform_neweuser_password"></input></td></tr>
                <tr><td>Role:</td><td><input type="text"name="inputform_neweuser_role"></input></td></tr>
            </table>
            --%>
    </body>
</html>