<%@page import="testboard.testboardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String num = request.getParameter("num");
testboardDAO dao = new testboardDAO();
dao.deletetestboard(Integer.parseInt(num));
response.sendRedirect("boardlist.jsp");
%>  