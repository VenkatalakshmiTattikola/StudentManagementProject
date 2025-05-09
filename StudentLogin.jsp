<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.StudentBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIQ9hI4xni50ZVTXQOFZQcXFJRuBr3DfnQXA&s') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            margin: 50px;
            color: white;
        }
        .container {
            background: 08326E;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            display: inline-block;
            color: #222;
        }
        h1 {
            color: #ff6b81;
            font-size: 30px;
            font-weight: bold;
        }
        p {
            font-size: 18px;
            color: #444;
        }
        a {
            display: inline-block;
            margin: 15px;
            padding: 12px 30px;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            border-radius: 30px;
            transition: all 0.3s;
        }
        .details {
            background: #17c0eb;
            color: white;
        }
        .logout {
            background: #e74c3c;
            color: white;
        }
        a:hover {
            transform: scale(1.1);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            StudentBean sb = (StudentBean) session.getAttribute("sbean");
            String roll = sb.getRollNo();
        %>
        <h1>🌟 Welcome, Student! 🌟</h1>
        <p><strong>Roll Number:</strong> <%= roll %></p>
        <p><strong>Name:</strong> <%= sb.getName() %></p>
        
        <a class="details" href="viewdetails?rollno=<%=roll%>">📘 View Details</a>
        <a class="logout" href="logout2">🚪 Logout</a>
    </div>
</body>
</html>
