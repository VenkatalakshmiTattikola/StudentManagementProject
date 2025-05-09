<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://i.pinimg.com/474x/53/b5/64/53b5647818dc310e8d3e6d58d6f8010d.jpg') no-repeat center center fixed;
        background-size: cover;
        color: white;
        text-align: center;
        padding: 20px;
        margin: 0;
    }
    .overlay {
        background: rgba(0, 0, 0, 0.6); /* Dark overlay for readability */
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
    .container {
        position: relative;
       background: rgba(0, 0, 0, 0.5); 
        padding: 20px;
        border-radius: 10px;
        width: 50%;
        margin: auto;
        box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.2);
        z-index: 1;
    }
    h2 {
        margin-bottom: 15px;
    }
    p {
        font-size: 18px;
        margin: 5px 0;
    }
    a {
        display: inline-block;
        margin: 10px;
        padding: 10px 20px;
        color: white;
        background-color: #ff6600;
        text-decoration: none;
        border-radius: 5px;
        transition: 0.3s;
    }
    a:hover {
        background-color: #ff4500;
    }
</style>
</head>
<body>
<div class="overlay"></div>
<div class="container">
<%
    AdminBean ab = (AdminBean) session.getAttribute("abean");
    StudentBean sb = (StudentBean) request.getAttribute("sbean");
%>
    <h2>Welcome, <%= ab.getfName() %>!</h2>
    <p><strong>Roll No:</strong> <%= sb.getRollNo() %></p>
    <p><strong>Core Java:</strong> <%= sb.getMk().getCoreJava() %></p>
    <p><strong>Advanced Java:</strong> <%= sb.getMk().getAdvJava() %></p>
    <p><strong>UI:</strong> <%= sb.getMk().getUi() %></p>
    <p><strong>Database:</strong> <%= sb.getMk().getDb() %></p>
    <p><strong>Tools:</strong> <%= sb.getMk().getTools() %></p>
    
    <a href="edit?rollno=<%= sb.getRollNo() %>">Edit Marks</a>
    <a href="logout">Logout</a>
</div>
</body>
</html>
