<%@page import="Tmember.TmemberDTO"%>
<%@page import="Tmember.TmemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("name");
    String tel=request.getParameter("tel");
    String id=request.getParameter("id");
    String pd=request.getParameter("pd");
    
    
    TmemberDAO dao=new TmemberDAO();
    TmemberDTO dto=new TmemberDTO(0,name,tel,id,pd);
    dao.insertBoard(dto);
    response.sendRedirect("login.jsp");
    

    
    
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