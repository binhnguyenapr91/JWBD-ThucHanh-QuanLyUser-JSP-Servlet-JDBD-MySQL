<%--
  Created by IntelliJ IDEA.
  User: binhnguyen
  Date: 18/05/2020
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Find User By ID</title>
</head>
<body>
<form action="/userServlet?action=seachByCountry" method="post">
    <input type="text" name="country" size="20"/><input type="submit" value="Search"/>
</form>
</body>
</html>
