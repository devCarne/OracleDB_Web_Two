<%@ page import="domain.Member" %><%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2022-01-03
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Member member = new Member(request.getParameter("name"), request.getParameter("tel_number"));
//    String title = request.getParameter("title");
//    String memo = request.getParameter("memo");

%>
<html>
<head>
    <style>
        div {
            width: 300px;
        }
    </style>
    <title>Title</title>
</head>
<body>
    데이터</br>
    이름 : <%= member.getName()%></br>
    전화번호 : <%= member.getTel()%></br>
<%--    <h1>나의 다이어리</h1>--%>
<%--    <h3>제목 : <%=title %></h3>--%>
<%--    <div>--%>
<%--        <p><% out.print(memo); %></p>--%>
<%--    </div>--%>

</body>
</html>
