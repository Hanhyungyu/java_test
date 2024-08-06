<%@page import="Tmember.TmemberDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Process</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    TmemberDAO dao=new TmemberDAO();
if(dao.checkLogin(username, password)){
	out.println("로그인성공");
	
	
	  response.sendRedirect("boardlist.jsp");
}else{
	out.println("로그인실패");
	
}

%>
</body>
</html>