<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGEYS_Iq3QYPyEHUu0pGtz0bsD1OVtsrdMMQ&s') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            margin: 50px;
            color: white;
        }
        .container {
           background: linear-gradient(to right, #020d1f, #0a2a43, #1e4d6d, #2a6c91);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            display: inline-block;
            color: #222;
            max-width: 500px;
        }
        h1 {
            color: #ff4757;
            font-size: 28px;
            font-weight: bold;
        }
        p {
            font-size: 18px;
            color: white;
        }
        .subject {
            font-size: 16px;
            font-weight: bold;
            color: white;
        }
        .logout-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: pink;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: 0.3s;
        }
        .logout-button:hover {
            background-color: #c0392b;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            StudentBean sb = (StudentBean) session.getAttribute("stubean");
            String name = sb.getName();
            String course = sb.getCourse();
            int totMarks = sb.getTotMarks();
            float per = sb.getPer();
            String res = sb.getResult();
        %>
        <h1>📚 Student Details 📚</h1>
        <p><strong>Name:</strong> <%= name %></p>
        <p><strong>Course:</strong> <%= course %></p>
        <p><strong>Total Marks:</strong> <%= totMarks %></p>
        <p><strong>Percentage:</strong> <%= per %>%</p>
        <p><strong>Result:</strong> <%= res %></p>
        <h2>📖 Subject Marks</h2>
        <p class="subject">Core Java: <%= sb.getMk().getCoreJava() %></p>
        <p class="subject">Advanced Java: <%= sb.getMk().getAdvJava() %></p>
        <p class="subject">UI: <%= sb.getMk().getUi() %></p>
        <p class="subject">Database: <%= sb.getMk().getDb() %></p>
        <p class="subject">Tools: <%= sb.getMk().getTools() %></p>
        <a href="logout2" class="logout-button">🚪 Logout</a>
    </div>
</body>
</html>
