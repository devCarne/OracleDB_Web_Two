<%@ page import="java.util.ArrayList" %>
<%@ page import="domain.Student" %><%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2022-01-03
  Time: 오후 4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int studentCount = 0;
    ArrayList<Student> students = new ArrayList<>();
    Student student = new Student(request.getParameter("name"), Integer.parseInt(request.getParameter("korean")),
            Integer.parseInt(request.getParameter("english")), Integer.parseInt(request.getParameter("math")));

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="gradeMultiInput.jsp" method="get">
    이름 : <input type="text" name="name">
    국어 : <input type="text" name="korean">
    영어 : <input type="text" name="english">
    수학 : <input type="text" name="math">
    <input type="submit" value="입력">
</form>
<div>
    <p>이름 : <%= student.getName()%></p>
    <p>총점 : <%= student.sum()%></p>
    <p>평균 : <%= student.average()%></p>
</div>
</body>
</html>
