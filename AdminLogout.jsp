<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
session.removeAttribute("abean");
session.removeAttribute("alist");
session.invalidate();
%>
<h1 style="text-align:center;">Admin Logged out sucessfullyy...</h1>
<br>
<%@include file="home.html" %>
</body>
</html>