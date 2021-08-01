<%@page import="com.spring.web.vo.CommentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
 //int comment_hId = Integer.parseInt(request.getParameter("comment_hId"));
   // System.out.print(comment_hId);
    CommentVO comment =(CommentVO)request.getAttribute("comment");
    System.out.print(comment);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="updateComment.do" method="post">
<input type="hidden" name="comment_hId" value="<%=comment.getComment_hId()%>">
<table border="1" cellpadding="0" cellspacing="0">

<tr>
	<th>Writer</td>
	<td>&nbsp;&nbsp;<%=comment.getComment_name()%></td>
</tr>
<tr>
	<th>Content</td>
	<td><input type="text" name="comment_content" value="<%=comment.getComment_content()%>" size="40" /></td>
</tr>

<tr>
	<td colspan="2" align="center"><input type="submit" value="Board Modify" /></td>
</tr>
</table>
</form>
</body>
</html>