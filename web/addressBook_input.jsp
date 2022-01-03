<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2022-01-03
  Time: 오후 5:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    Connection connection;
    Statement statement;
%>
<%
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");

        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1111");
        statement = connection.createStatement();

        String sql = "INSERT INTO ADDRESS_BOOK (NAME, TEL, ADDRESS) VALUES (" +
                "'" + request.getParameter("name") + "'," +
                " '" + request.getParameter("tel") + "'," +
                " '" + request.getParameter("address") + "')";
        statement.executeUpdate(sql);
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
