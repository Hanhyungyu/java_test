<%@page import="testboard.testboardDTO"%>
<%@page import="testboard.testboardDAO"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    String title=request.getParameter("title");
    String writer=request.getParameter("writer");
    String content=request.getParameter("content");
    testboardDAO dao=new testboardDAO();
    testboardDTO dto=new testboardDTO(0,writer,title,content,null);
    dao.insertBoard(dto);
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