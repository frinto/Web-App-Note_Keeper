<%-- 
    Document   : users
    Created on : Nov 1, 2017, 2:02:39 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <h1>Admin</h1>

        <table>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Email</th>
                <th>Active</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th></th>
                <th></th>
            </tr>


            <c:forEach var="item" items="${users}">
                <tr>
                    <td><c:out value="${item.username}"/></td>
                    <td><c:out value="${item.password}"/></td>
                    <td><c:out value="${item.email}"/></td>
                    <td><c:out value="${item.active}"/></td>
                    <td><c:out value="${item.firstname}"/></td>
                    <td><c:out value="${item.lastname}"/></td>
                    <td>
                        <form action="admin" method="post" >
                            <input type="submit" value="Delete">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="selectedUser" value="${item.username}">
                        </form>
                    </td>
                    <td>
                        <form action="admin" method="get">
                            <input type="submit" value="Edit">
                            <input type="hidden" name="action" value="view">
                            <input type="hidden" name="selectedUser" value="${item.username}">
                        </form>
                    </td>
                </tr>  
            </c:forEach>
        </table>

        <h1>Add Users</h1>
        <form action="admin" method="POST">
            Username: <input type="text" name="username" value=""><br>
            Password: <input type="password" name="password" value=""><br>
            Email:	  <input type="text" name="email" value=""><br>
            Active:	  <input type="number" name="active" min="0" max="1" value=""><br>
            Firstname:<input type="text" name="firstname" value=""><br>
            LastName: <input type="text" name="lastname" value=""><br>
            Role: 	  <input type="number" name="role" min="0" max="1" value=""><br>
            <input type="hidden" name="action" value="add">
            <input type="submit" value="Add User">
        </form>

        ${errorMessage}

    </body>
</html>
