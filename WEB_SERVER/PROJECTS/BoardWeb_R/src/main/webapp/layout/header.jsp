<%@ page import="com.ssamz.biz.user.UserVO" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 프로그램</title>
</head>
<body>

	<hr>
	
<%
	UserVO user = (UserVO) session.getAttribute("user");
%>
	
	<a href="index.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<%	if (user == null) { %>
	<a href="insertUser.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;
	<a href="login.jsp">로그인</a>&nbsp;&nbsp;&nbsp;
<% } else { %>	
	
	<a href="insertBoard.jsp">글등록</a>&nbsp;&nbsp;&nbsp;
	<a href="logout_proc.jsp">로그아웃</a>&nbsp;&nbsp;&nbsp;
<% } %>	
	
	<hr>
	<br>
	
	
	
	
	
	
	
	
	
	