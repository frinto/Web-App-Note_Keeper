<%-- 
    Document   : notes
    Created on : Nov 1, 2017, 2:04:35 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <h1>User</h1>


        <h1>Notes</h1>

        <table>
            <tr>
                <th>Content</th>
                <th>Title</th>
                <th>Date Created</th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${notes}">
                <tr>
                    <td><c:out value="${item.contents}"/></td>
                    <td><c:out value="${item.title}"/></td>
                    <td><c:out value="${item.dateCreated}"/></td>
                    <td>
                        <form action="notes" method="post" >
                            <input type="submit" value="Delete">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="selectedNote" value="${item.noteID}">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <h1>Add Notes</h1>
        <form action="notes" method="POST">
            Title: <input type="text" name="title"><br>
            Contents: <input type="text" name="contents"><br>
            <input type="hidden" name="action" value="add">
            <input type="submit" value="Add Note">
        </form>
    </body>
</html>
