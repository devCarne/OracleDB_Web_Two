<%@ page import="domain.Student" %><%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2022-01-03
  Time: 오후 4:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Student student = new Student(request.getParameter("name"), Integer.parseInt(request.getParameter("korean")),
        Integer.parseInt(request.getParameter("english")), Integer.parseInt(request.getParameter("math"))); %>
<html>
<head>
    <title>성적표</title>
</head>
<body>
    <div>
        <p>이름 : <%= student.getName()%></p>
        <p>총점 : <%= student.sum()%></p>
        <p>평균 : <%= student.average()%></p>
    </div>
</body>
</html>
