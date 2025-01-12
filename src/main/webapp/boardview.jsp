<%@page import="testboard.testboardDTO"%>
<%@page import="testboard.testboardDAO"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");
testboardDAO dao = new testboardDAO();
testboardDTO dto = dao.getOne(Integer.parseInt(num));
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        table { width:680px; text-align:center; }
        th    { width:100px; background-color:cyan; }
        td    { text-align:left; border:1px solid gray; }
    </style>
</head>
<body>

<table>
    <tr>
        <th>제목</th>
        <td><%=dto.getTitle() %></td>
    </tr>
    <tr>
        <th>작성자</th>
        <td><%=dto.getWriter()%></td>
    </tr>
    <tr>
        <th>작성일시</th>
        <td><%=dto.getRegtime() %></td>
    </tr>
    <tr>
        <th>내용</th>
        <td><%=dto.getContent() %></td>
    </tr>
</table>

<br>
<input type="button" value="목록보기" onclick="location.href='boardlist.jsp'">
<input type="button" value="수정"
       onclick="location.href='writeboard.jsp?num=<%=dto.getNum()%>'">
<input type="button" value="삭제"
       onclick="location.href='deleteboard.jsp?num=<%=dto.getNum()%>'">

</body>
</html>
