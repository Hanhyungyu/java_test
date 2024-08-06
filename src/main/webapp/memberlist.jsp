<%@page import="Tmember.TmemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="Tmember.TmemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

TmemberDAO dao = new TmemberDAO();
List<TmemberDTO> list = dao.getBoardList();

%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
</head>
<body>
<table>
    <tr>
        <th class="bnum"    >번호    </th>
        <th class="name"  >이름   </th>
        <th class="tel" >전화번호  </th>
        <th class="ID">ID</th>
        <th class="pd">PD  </th>
    </tr>
<%
for (TmemberDTO dto : list) {
%>
    <tr>
        <td><%=dto.getbNum()%></td>
    
        <td><%=dto.getName() %></td>
        <td><%=dto.getTel() %></td>
        <td><%=dto.getId()%></td>
        <td><%=dto.getPd() %></td>
    </tr>
<%
}
%>
</table>
    </body>
    </html>