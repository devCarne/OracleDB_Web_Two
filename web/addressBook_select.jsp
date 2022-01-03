<%@ page import="java.sql.*" %><%--
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
    ResultSet resultSet;
%>
<%
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");

        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1111");
        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT * FROM address_book");
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>순번</th><th>이름</th><th>전화번호</th><th>주소</th>
        </tr>
        <%
            try {
                while (resultSet.next()) {
        %>
        <tr>
            <td><%= resultSet.getString(1) %></td>
            <td><%= resultSet.getString(2) %></td>
            <td><%= resultSet.getString(3) %></td>
            <td><%= resultSet.getString(4) %></td>
        </tr>
        <%
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>