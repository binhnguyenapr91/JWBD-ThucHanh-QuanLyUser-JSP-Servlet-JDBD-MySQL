<%--
  Created by IntelliJ IDEA.
  User: binhnguyen
  Date: 18/05/2020
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add New User</title>
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
            <td colspan="3"><h1>Add New User</h1></td>
        </tr>
        <tr>
            <td colspan="3"><a href="/userServlet">Back To Listing User</a></td>
        </tr>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <tr>
            <td><input type="text" name="name" id="name" size="20"></td>
            <td><input type="text" name="email" id="email" size="20"></td>
            <td><input type="text" name="country" id="country" size="20"></td>
        </tr>
        <tr>
            <td colspan="3"><input type="submit" value="Save"></td>
        </tr>
    </table>
</form>
</body>
</html>

