<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="register.jsp" method="post">
    
    
        <label for="name">이름:</label>
        <input type="text" id="name" name="name" required/><br/><br/>
        
        <label for="tel">전화번호:</label>
        <input type="text" id="tel" name="tel" required/><br/><br/>
        
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" required/><br/><br/>
        
        <label for="pd">비밀번호:</label>
        <input type="password" id="pd" name="pd" required/><br/><br/>
        
        <input type="submit" value="회원가입"/>
    </form>
</body>
</html>
