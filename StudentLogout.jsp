<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout Page</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1QAUvlCGxfnPU9FTXVFLYUhPUqlmanveUEg&s') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            margin: 50px;
            color: white;
        }
        .container {
            background: 0048D;
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
            color: #333;
        }
        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: 0.3s;
        }
        .back-button:hover {
            background-color: #2980b9;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <% 
            session.removeAttribute("abean");
            session.removeAttribute("alist");
            session.invalidate();
        %>
        <h1>🚪 Logged Out Successfully!</h1>
        <p>You have been logged out of the system.</p>
        <a href="home.html" class="back-button">🏠 Go Back to Home</a>
    </div>
</body>
</html>
