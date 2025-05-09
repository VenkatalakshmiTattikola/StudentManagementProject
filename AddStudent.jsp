<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.AdminBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    /* Apply background image */
    body {
        font-family: Arial, sans-serif;
        background: url('https://i.pinimg.com/474x/f8/fe/74/f8fe74e49374c31ec8dd2dd9471b154f.jpg') no-repeat center center fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
        color: white;
        text-align: center;
    }

    /* Overlay to improve text readability */
    .overlay {
        background: rgba(0, 0, 0, 0.6); /* Dark transparent overlay */
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }

    /* Centered content container */
    .container {
        position: relative;
        background: rgba(255, 255, 255, 0.1); /* Light glass effect */
        padding: 20px;
        border-radius: 10px;
        width: 50%;
        margin: 100px auto;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.7);
        z-index: 1;
    }

    /* Heading style */
    h2 {
        margin-bottom: 20px;
        font-size: 26px;
    }

    /* Message styling */
    .message {
        font-size: 18px;
        margin-bottom: 20px;
    }

    /* Button styling */
    .buttons a {
        display: inline-block;
        margin: 10px;
        padding: 12px 20px;
        color: white;
        background: #ff6600;
        text-decoration: none;
        border-radius: 5px;
        font-size: 18px;
        transition: 0.3s;
    }

    /* Button hover effect */
    .buttons a:hover {
        background: #ff4500;
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
    <h2>Welcome, Admin: <%= ab.getfName() %></h2>
    <p class="message"><%= msg %></p>

    <div class="buttons">
        <a href="Student.html">Add Student</a>
        <a href="view">View All Students</a>
        <a href="logout">Logout</a>
    </div>
</div>
</body>
</html>
