<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Marks</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://i.pinimg.com/474x/b4/9b/c8/b49bc811fed563d6c48463bc864ceb56.jpg') no-repeat center center fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
        color: white;
        text-align: center;
    }
    .overlay {
        background: rgba(0, 0, 0, 0.6); /* Dark overlay for better contrast */
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
    .container {
        position: relative;
        background: rgba(255, 255, 255, 0.1);
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
    input[type="text"] {
        width: 80%;
        padding: 8px;
        margin: 5px 0;
        border: none;
        border-radius: 5px;
        background: rgba(255, 255, 255, 0.2);
        color: white;
    }
    input[type="submit"] {
        padding: 10px 20px;
        background: #ff6600;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
    }
    input[type="submit"]:hover {
        background: #ff4500;
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
    <h2>Page Belongs to Admin: <%= ab.getfName() %></h2>
    
    <form action="update" method="post">
        <input type="hidden" name="rollno" value="<%= sb.getRollNo() %>">
        <p>Core Java: <input type="text" name="corejava" value="<%= sb.getMk().getCoreJava() %>"></p>
        <p>Adv Java: <input type="text" name="advjava" value="<%= sb.getMk().getAdvJava() %>"></p>
        <p>UI: <input type="text" name="ui" value="<%= sb.getMk().getUi() %>"></p>
        <p>DB: <input type="text" name="db" value="<%= sb.getMk().getDb() %>"></p>
        <p>Tools: <input type="text" name="tools" value="<%= sb.getMk().getTools() %>"></p>
        <input type="submit" value="Update Marks">
    </form>
</div>
</body>
</html>
