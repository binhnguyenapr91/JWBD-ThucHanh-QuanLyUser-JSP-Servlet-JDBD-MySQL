<%--
  Created by IntelliJ IDEA.
  User: binhnguyen
  Date: 18/05/2020
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Update User</title>
    <style>
        table {
            width: 500px;
            margin: 0 auto;
            border: 2px solid blue;
        }

        th {
            color: green;
            font-size: larger;
            font-weight: bold;
            border: 1px solid black;
            border-collapse: collapse;
        }

        td {
            text-align: center;
            border: 1px solid black;
            border-collapse: collapse;
        }

    </style>
</head>
<body>
<form method="post">
    <table>
        <tr>
            <td colspan="4"><h1>Update User</h1></td>
        </tr>
        <tr>
            <td colspan="4"><a href="/userServlet">Back To Listing User</a></td>
        </tr>
        <tr>
            <td>ID</td>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <tr>
            <td><input type="text" name="id" id="id" size="5" value="${requestScope["user"].getId()}"/></td>
            <td><input type="text" name="name" id="name" size="20" value="${requestScope["user"].getName()}"/></td>
            <td><input type="text" name="email" id="email" size="20" value="${requestScope["user"].getEmail()}"/></td>
            <td><input type="text" name="country" id="country" size="20" value="${requestScope["user"].getCountry()}"/></td>
        </tr>
        <tr>
            <td colspan="4"><input type="submit" value="Update"></td>
        </tr>
    </table>
</form>
</body>
</html>
