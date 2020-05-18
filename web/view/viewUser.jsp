<%--
  Created by IntelliJ IDEA.
  User: binhnguyen
  Date: 18/05/2020
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View User</title>
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
    <table>
        <tr>
            <td colspan="4"><h1>View User</h1></td>
        </tr>
        <tr>
            <td colspan="4"><a href="/userServlet">Back To Listing User</a></td>
        </tr>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <tr>
            <td>${requestScope["user"].getId()}</td>
            <td>${requestScope["user"].getName()}</td>
            <td>${requestScope["user"].getEmail()}</td>
            <td>${requestScope["user"].getCountry()}</td>
        </tr>
    </table>
</body>
</html>
