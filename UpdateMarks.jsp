<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://i.pinimg.com/474x/d7/14/a7/d714a77796e1970765371d106963f190.jpg') no-repeat center center fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
        color: white;
        text-align: center;
    }
    .overlay {
        background: rgba(0, 0, 0, 0.5); /* Dark overlay for better contrast */
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
    .container {
        position: relative;
         background: rgba(1, 0, 0, 0.2);
        padding: 20px;
        border-radius: 10px;
        width: 40%;
        margin: 50px auto;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.7);
        z-index: 1;
    }
    h2 {
        margin-bottom: 20px;
    }
    .buttons a {
        display: inline-block;
        margin: 10px;
        padding: 12px 20px;
        color: white;
        background:#333;
        text-decoration: none;
        border-radius: 5px;
        font-size: 18px;
        transition: 0.3s;
    }
    .buttons a:hover {
        background: #333;
    }
</style>
</head>
<body>
<div class="overlay"></div>
<div class="container">
<%
    AdminBean ab = (AdminBean) session.getAttribute("abean");
    String msg = (String) request.getAttribute("msg");
%>
    <h2>Page Belongs to Admin: <%= ab.getfName() %></h2>
    <p><%= msg %></p>

    <div class="buttons">
       
        <a href="view">StudentDetails</a>
        <a href="logout">Logout</a>
    </div>
</div>
</body>
</html>
