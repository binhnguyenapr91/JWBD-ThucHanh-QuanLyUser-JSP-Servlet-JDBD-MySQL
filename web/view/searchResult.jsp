<%--
  Created by IntelliJ IDEA.
  User: binhnguyen
  Date: 18/05/2020
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Search User Result</title>
    <style>
        table{
            width: 500px;
            margin: 0 auto;
            border: 2px solid blue;
        }
        th{
            color: green;
            font-size: larger;
            font-weight: bold;
            border: 1px solid black;
            border-collapse: collapse;
        }
        td{
            text-align: center;
            border: 1px solid black;
            border-collapse: collapse;
        }

    </style>
</head>
<body>
<table>
    <tr>
        <td colspan="7"><h1>Search User Result</h1></td>
    </tr>
    <tr>
        <td colspan="7"><a href="/userServlet">Back to Listing</a></td>
    </tr>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th colspan="3">Functions</th>
    </tr>
    <c:forEach items="${result}" var="user">
        <tr>
            <td>${user.getId()}</td>
            <td>${user.getName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getCountry()}</td>
        </tr>

    </c:forEach>
</table>
</body>
</html>

