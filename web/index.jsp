<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2022-01-03
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
  <h1>오늘의 인덱스</h1>
  <hr>
    <%
        for (int i = 1; i <= 10; i++) {
          out.print(i + " ");
        }
    %>
  <hr>
  <a href="formpage.jsp">회원가입</a>
  <a href="gradeInput.jsp">성적입력</a>
  <a href="gradeMultiInput.jsp">다중 성적부 입력</a>
  <a href="addressBook_main.jsp">DB에 주소록 입력</a>
<%--  <form action="result.jsp" method="get">--%>
<%--    <label for="title">제목: </label>--%>
<%--    <input type="text" id="title" name="title"></br>--%>
<%--    <label for="memo">내용: </label></br>--%>
<%--    <textarea cols="50" rows="20" placeholder="내용을 작성하세요." id="memo" name="memo"></textarea></br>--%>
<%--    <input type="submit" value="전송">--%>
<%--  </form>--%>
</body>
</html>
