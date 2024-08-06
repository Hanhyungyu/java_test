<%@page import="testboard.testboardDTO"%>
<%@page import="testboard.testboardDAO"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");
testboardDAO dao = new testboardDAO();
List<testboardDTO> list =dao.getBoardList();


%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
</head>
<body>
<table>
    <tr>
        <th class="num"    >번호    </th>
        <th class="title"  >제목   </th>
        <th class="writer" >작성자  </th>
        <th class="content">내용</th>
        <th class="regtime">작성시간  </th>
    </tr>
<%
for (testboardDTO dto : list) {
%>
    <tr>
        <td><%=dto.getNum() %></td>
               <td style="text-align:left;">
            <a href="boardview.jsp?num=<%=dto.getNum() %>"><%=dto.getTitle() %></a>
        <td><%=dto.getTitle() %></td>
        <td><%=dto.getWriter() %></td>
        <td><%=dto.getContent()%></td>
        <td><%=dto.getRegtime() %></td>
    </tr>

<%
}
%>
</table>
   <a href="writeboard.jsp" class="button">글쓰기</a>
    </body>
    </html>