<%@page import="testboard.testboardDTO"%>
<%@page import="testboard.testboardDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    String num = request.getParameter("num");
     String title=request.getParameter("title");
    String writer=request.getParameter("writer");
    String content=request.getParameter("content");
    testboardDAO dao=new testboardDAO();
    testboardDTO dto=new testboardDTO(Integer.parseInt(num),writer,title,content,null);
    dao.updateBoard(dto);
    response.sendRedirect("boardlist.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>