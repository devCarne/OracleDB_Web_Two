<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2022-01-03
  Time: 오후 5:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="addressBook_input.jsp" method="get">
        이름 : <input type="text" name="name">
        전화번호 : <input type="text" name="tel">
        주소 : <input type="text" name="address">
        <input type="submit" value="멤버 등록">
    </form>
    <a href="addressBook_select.jsp">멤버조회</a>
</body>
</html>
