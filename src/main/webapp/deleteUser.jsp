<%@page import="com.spring.web.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    session.getAttribute("user_idx");
    
    System.out.print(session.getAttribute("user_idx"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteUser.jsp</title>
</head>
<body>
<h1>회원탈퇴</h1>

<form name="deleteUserForm" action="deleteUser.do" method="post">
<table border="1">
<input type="hidden" name="user_idx" value="<%=session.getAttribute("user_idx") %>">
<tr><th>비밀번호</th><td><input type="text" name="user_password"></td></tr>
<tr><td colspan="2" align="center">
<input type="submit" value="탈퇴하기">

</td></tr>
</table>
</form>
</body>
</html>