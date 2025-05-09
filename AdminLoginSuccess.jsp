<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "test.AdminBean" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('https://i.pinimg.com/736x/0e/2a/c9/0e2ac9437832a2b030c44e8801614556.jpg') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            margin: 50px;
            color: white;
        }
        .container {
            background: linear-gradient(to bottom, black, transparent);
            
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
        .nav-links {
            margin-top: 20px;
        }
        .nav-links a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            text-decoration: none;
            transition: 0.3s;
        }
        .nav-links a:hover {
            background-color: #2980b9;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <% AdminBean ab = (AdminBean)session.getAttribute("abean"); %>
        <h1>Welcome Admin: <%= ab.getfName() %> 👨‍💻</h1>
           <div class="nav-links">
            <a href="Student.html">➕ Add Student</a>
            <a href="view">📜 View All Students</a>
            <a href="logout">🚪 Logout</a>
        </div>
    </div>
</body>
</html>
