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
            <div class="btn"><i class="fa fa-user-circle-o" style="font-size:24px"></i> Manage</div>
            <div class="btn"><i class="fa fa-shopping-cart" style="font-size:24px"></i> Orders</div>
            <div class="btn"><i class="fa fa-group" style="font-size:24px"></i> About us</div>
            <div class="btn"><i class="fa fa-address-book" style="font-size:24px"></i> Contact us</div>
            <div class="btn"><i class="fa fa-user-secret" style="font-size:24px"></i> Logout</div>
        </div>
        <table class="tablecenterdwithborder2">
            <tc>
                <tr>
                    <td class="tdr">
                        Username:
                    </td>
                    <td>
                        <input class ="inputlargeonyellow" type="text"/>
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
                        <input class ="inputlargeonyellowpassword" type="password"/>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td class="tdr">
                        User type:
                    </td>
                    <td>
                        <select>
                            <option>Admin</option>
                            <option>User</option>
                        </select>                           
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" name="insert_newebook" size="10" value="Insert" class="ebookstorebutton"/></td>                    
                    <td><input type="submit" name="update_ebook" size="10" value="Update" class="ebookstorebutton"/></td>                    
                    <td><input type="submit" name="delete_ebook" size="10" value="Delete" class="ebookstorebutton"/></td>                    
                    <td><input type="submit" name="cancel" size="10" value="Cancel" class="ebookstorebutton"/></td>                    
                </tr>
            </tc>
        </table>
        <table class="tablecenterdwithborder">
            <tc>
                <tr>
                    <td class="tdcbold">
                        Select
                    </td>
                    <td class="tdcbold">
                        Username
                    </td>
                    <td class="tdcbold">
                        Password
                    </td>
                    <td class="tdcbold">
                        Role<button class="button button1">Admin</button>
                    </td>
                </tr>
                <tr>
                    <td class="tdcbold2">
                        <input type="checkbox" name="first" value="admin">
                    </td>
                    <td class="tdcbold2">
                        admin
                    </td>
                    <td class="tdcbold2">
                        admin
                    </td>
                    <td class="tdcbold2">
                        admin
                    </td>                    
                </tr>
                <tr>
                    <td class="tdcbold2">
                        <input type="checkbox" name="first" value="admin">
                    </td>
                    <td class="tdcbold2">
                        mihai
                    </td>
                    <td class="tdcbold2">
                        test
                    </td>
                    <td class="tdcbold2">
                        user
                    </td>                    
                </tr>                
            </tc>
        </table>
    </body>
</html>